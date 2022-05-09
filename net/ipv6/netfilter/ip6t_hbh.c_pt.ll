; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_hbh.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_hbh.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
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
%struct.ip6t_opts = type { i32, i8, i8, [16 x i16], i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [42 x i8] c"ip6t_hbh.file=net/ipv6/netfilter/ip6t_hbh\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [21 x i8] c"ip6t_hbh.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [75 x i8] c"ip6t_hbh.description=Xtables: IPv6 Hop-By-Hop and Destination Header match\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [52 x i8] c"ip6t_hbh.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias622 = internal constant [24 x i8] c"ip6t_hbh.alias=ip6t_dst\00", section ".modinfo", align 1
@hbh_mt6_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hbh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hbh_mt6, ptr @hbh_mt6_check, ptr null, ptr null, ptr null, i32 40, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"dst\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hbh_mt6, ptr @hbh_mt6_check, ptr null, ptr null, ptr null, i32 40, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_hbh__636_210_hbh_mt6_init6 = internal global ptr @hbh_mt6_init, section ".initcall6.init", align 4
@__exitcall_hbh_mt6_exit = internal global ptr @hbh_mt6_exit, section ".exitcall.exit", align 4
@hbh_mt6.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ip6t_hbh\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hbh_mt6\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"net/ipv6/netfilter/ip6t_hbh.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"IPv6 OPTS LEN %u %u \00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ip6t_hbh: IPv6 OPTS LEN %u %u \00", [33 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"len %02X %04X %02X \00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ip6t_hbh: len %02X %04X %02X \00", [34 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Strict \00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip6t_hbh: Strict \00", [46 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"#%d \00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6t_hbh: #%d \00", [17 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Tbad %02X %02X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip6t_hbh: Tbad %02X %02X\0A\00", [38 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Tok \00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6t_hbh: Tok \00", [17 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Lbad %02X %04X\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ip6t_hbh: Lbad %02X %04X\0A\00", [38 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Lok \00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ip6t_hbh: Lok \00", [17 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Pad1\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ip6t_hbh: Pad1\0A\00", [16 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"len%04X\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip6t_hbh: len%04X\0A\00", [45 x i8] zeroinitializer }, align 32
@hbh_mt6.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.23, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"new pointer is too large!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ip6t_hbh: new pointer is too large!\0A\00", [59 x i8] zeroinitializer }, align 32
@hbh_mt6_check.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hbh_mt6_check\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown flags %X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip6t_hbh: unknown flags %X\0A\00", [36 x i8] zeroinitializer }, align 32
@hbh_mt6_check.__UNIQUE_ID_ddebug635 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.2, ptr @.str.28, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Not strict - not implemented\00", [35 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ip6t_hbh: Not strict - not implemented\00", [57 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 81, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 83, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 98, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 99, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 111, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 115, i32 5 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 132, i32 6 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 136, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 139, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 144, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 148, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 168, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private constant [33 x i8] c"../net/ipv6/netfilter/ip6t_hbh.c\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.118, i32 173, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias622, ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_hbh_mt6_exit, ptr @__initcall__kmod_ip6t_hbh__636_210_hbh_mt6_init6, ptr @hbh_mt6_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hbh_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_matches(ptr noundef nonnull @hbh_mt6_reg, i32 noundef 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hbh_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @hbh_mt6_reg, i32 noundef 2) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @hbh_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_optsh = alloca %struct.ipv6_opt_hdr, align 1
  %ptr = alloca i32, align 4
  %_opttype = alloca i8, align 1
  %_optlen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_optsh) #4
  %0 = ptrtoint ptr %_optsh to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %_optsh, align 1, !annotation !80
  %1 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %_optsh, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !80
  %3 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #4
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_opttype) #4
  %7 = ptrtoint ptr %_opttype to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %_opttype, align 1, !annotation !80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_optlen) #4
  %8 = ptrtoint ptr %_optlen to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %_optlen, align 1, !annotation !80
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par, align 4
  %cmp = icmp eq ptr %10, @hbh_mt6_reg
  %cond = select i1 %cmp, i32 0, i32 60
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %ptr, i32 noundef %cond, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp2.not = icmp eq i32 %call, -2
  br i1 %cmp2.not, label %if.then.cleanup308_crit_edge, label %if.then3

if.then.cleanup308_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup308

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %11 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup308

if.end4:                                          ; preds = %entry
  %12 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ptr, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %18 = add i32 %13, %17
  %sub.i4.i = sub i32 %15, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !81

if.end.i.i:                                       ; preds = %if.end4
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then7_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then7_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %13, ptr noundef nonnull %_optsh, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then7_crit_edge, label %lor.lhs.false.i.i.if.end9_crit_edge

lor.lhs.false.i.i.if.end9_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

lor.lhs.false.i.i.if.then7_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

skb_header_pointer.exit:                          ; preds = %if.end4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %13
  %cmp6 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp6, label %skb_header_pointer.exit.if.then7_crit_edge, label %skb_header_pointer.exit.if.end9_crit_edge

skb_header_pointer.exit.if.end9_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

skb_header_pointer.exit.if.then7_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %skb_header_pointer.exit.if.then7_crit_edge, %lor.lhs.false.i.i.if.then7_crit_edge, %if.end.i.i.if.then7_crit_edge
  %hotdrop8 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %21 = ptrtoint ptr %hotdrop8 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %hotdrop8, align 2
  br label %cleanup308

if.end9:                                          ; preds = %skb_header_pointer.exit.if.end9_crit_edge, %lor.lhs.false.i.i.if.end9_crit_edge
  %retval.0.i.i440 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end9_crit_edge ], [ %_optsh, %lor.lhs.false.i.i.if.end9_crit_edge ]
  %hdrlen10 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i440, i32 0, i32 1
  %22 = ptrtoint ptr %hdrlen10 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hdrlen10, align 1
  %conv = zext i8 %23 to i32
  %add = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add, 8
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %26 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr, align 4
  %sub = sub i32 %25, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp11 = icmp ult i32 %sub, %shl
  br i1 %cmp11, label %if.end9.cleanup308_crit_edge, label %do.body

if.end9.cleanup308_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup308

do.body:                                          ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then18)) #4
          to label %do.body22 [label %if.then18], !srcloc !82

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %hdrlen10 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %hdrlen10, align 1
  %conv20 = zext i8 %29 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.4, i32 noundef %shl, i32 noundef %conv20) #4
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then34)) #4
          to label %do.end51 [label %if.then34], !srcloc !82

if.then34:                                        ; preds = %do.body22
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %5, align 4
  %flags = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %flags, align 4
  %34 = and i8 %33, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool37.not = icmp eq i8 %34, 0
  br i1 %tobool37.not, label %if.then34.lor.end_crit_edge, label %lor.rhs

if.then34.lor.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %shl)
  %cmp39 = icmp eq i32 %31, %shl
  %invflags = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 2
  %35 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %invflags, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %38 = icmp ne i8 %37, 0
  %tobool48 = xor i1 %cmp39, %38
  %phi.cast = zext i1 %tobool48 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then34.lor.end_crit_edge
  %39 = phi i32 [ 1, %if.then34.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.6, i32 noundef %31, i32 noundef %shl, i32 noundef %39) #4
  br label %do.end51

do.end51:                                         ; preds = %lor.end, %do.body22
  %flags52 = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %flags52 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags52, align 4
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool55.not = icmp eq i8 %42, 0
  br i1 %tobool55.not, label %do.end51.lor.end70_crit_edge, label %lor.rhs56

do.end51.lor.end70_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end70

lor.rhs56:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #6
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %shl)
  %cmp58 = icmp eq i32 %44, %shl
  %invflags60 = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 2
  %45 = ptrtoint ptr %invflags60 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %invflags60, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %48 = icmp ne i8 %47, 0
  %tobool69 = xor i1 %cmp58, %48
  br label %lor.end70

lor.end70:                                        ; preds = %lor.rhs56, %do.end51.lor.end70_crit_edge
  %49 = phi i1 [ true, %do.end51.lor.end70_crit_edge ], [ %tobool69, %lor.rhs56 ]
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ptr, align 4
  %add73 = add i32 %51, 2
  store i32 %add73, ptr %ptr, align 4
  %sub74 = or i32 %add, 6
  %52 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool78.not = icmp eq i8 %52, 0
  br i1 %tobool78.not, label %lor.end70.cleanup308_crit_edge, label %do.body81

lor.end70.cleanup308_crit_edge:                   ; preds = %lor.end70
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup308

do.body81:                                        ; preds = %lor.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then93)) #4
          to label %do.body97 [label %if.then93], !srcloc !82

if.then93:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.8) #4
  br label %do.body97

do.body97:                                        ; preds = %if.then93, %do.body81
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then109)) #4
          to label %do.end113 [label %if.then109], !srcloc !82

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #6
  %optsnr = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 4
  %53 = ptrtoint ptr %optsnr to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %optsnr, align 2
  %conv110 = zext i8 %54 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.10, i32 noundef %conv110) #4
  br label %do.end113

do.end113:                                        ; preds = %if.then109, %do.body97
  %optsnr114 = getelementptr inbounds %struct.ip6t_opts, ptr %5, i32 0, i32 4
  %55 = ptrtoint ptr %optsnr114 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %optsnr114, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp116495 = icmp eq i8 %56, 0
  br i1 %cmp116495, label %do.end113.for.end_crit_edge, label %if.end121.lr.ph

do.end113.for.end_crit_edge:                      ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end121.lr.ph:                                  ; preds = %do.end113
  %data.i409 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %tobool2.not.i.i412 = icmp eq ptr %skb, null
  br label %if.end121

if.end121:                                        ; preds = %if.end298.if.end121_crit_edge, %if.end121.lr.ph
  %temp.0497 = phi i32 [ 0, %if.end121.lr.ph ], [ %inc, %if.end298.if.end121_crit_edge ]
  %hdrlen.0496 = phi i32 [ %sub74, %if.end121.lr.ph ], [ %sub300, %if.end298.if.end121_crit_edge ]
  %57 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ptr, align 4
  %59 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i, align 4
  %61 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i, align 8
  %63 = add i32 %58, %62
  %sub.i4.i407 = sub i32 %60, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i407)
  %cmp.not.i.i408 = icmp slt i32 %sub.i4.i407, 1
  br i1 %cmp.not.i.i408, label %if.end.i.i413, label %skb_header_pointer.exit419, !prof !81

if.end.i.i413:                                    ; preds = %if.end121
  br i1 %tobool2.not.i.i412, label %if.end.i.i413.for.end_crit_edge, label %lor.lhs.false.i.i417

if.end.i.i413.for.end_crit_edge:                  ; preds = %if.end.i.i413
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

lor.lhs.false.i.i417:                             ; preds = %if.end.i.i413
  %call.i.i414 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %58, ptr noundef nonnull %_opttype, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i414)
  %cmp3.i.i415 = icmp slt i32 %call.i.i414, 0
  br i1 %cmp3.i.i415, label %lor.lhs.false.i.i417.for.end_crit_edge, label %lor.lhs.false.i.i417.if.end126_crit_edge

lor.lhs.false.i.i417.if.end126_crit_edge:         ; preds = %lor.lhs.false.i.i417
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

lor.lhs.false.i.i417.for.end_crit_edge:           ; preds = %lor.lhs.false.i.i417
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

skb_header_pointer.exit419:                       ; preds = %if.end121
  %64 = ptrtoint ptr %data.i409 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i409, align 4
  %add.ptr.i.i410 = getelementptr i8, ptr %65, i32 %58
  %cmp123 = icmp eq ptr %add.ptr.i.i410, null
  br i1 %cmp123, label %skb_header_pointer.exit419.for.end_crit_edge, label %skb_header_pointer.exit419.if.end126_crit_edge

skb_header_pointer.exit419.if.end126_crit_edge:   ; preds = %skb_header_pointer.exit419
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end126

skb_header_pointer.exit419.for.end_crit_edge:     ; preds = %skb_header_pointer.exit419
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end126:                                        ; preds = %skb_header_pointer.exit419.if.end126_crit_edge, %lor.lhs.false.i.i417.if.end126_crit_edge
  %retval.0.i.i418451 = phi ptr [ %add.ptr.i.i410, %skb_header_pointer.exit419.if.end126_crit_edge ], [ %_opttype, %lor.lhs.false.i.i417.if.end126_crit_edge ]
  %66 = ptrtoint ptr %retval.0.i.i418451 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %retval.0.i.i418451, align 1
  %arrayidx = getelementptr %struct.ip6t_opts, ptr %5, i32 0, i32 3, i32 %temp.0497
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx, align 2
  %70 = lshr i16 %69, 8
  %71 = zext i8 %67 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %70, i16 %71)
  %cmp130.not = icmp eq i16 %70, %71
  br i1 %cmp130.not, label %do.body156, label %do.body133

do.body133:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then145)) #4
          to label %cleanup308 [label %if.then145], !srcloc !82

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %retval.0.i.i418451 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %retval.0.i.i418451, align 1
  %conv146 = zext i8 %73 to i32
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx, align 2
  %76 = lshr i16 %75, 8
  %77 = zext i16 %76 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.12, i32 noundef %conv146, i32 noundef %77) #4
  br label %cleanup308

do.body156:                                       ; preds = %if.end126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then168)) #4
          to label %if.end172 [label %if.then168], !srcloc !82

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.14) #4
  br label %if.end172

if.end172:                                        ; preds = %if.then168, %do.body156
  %78 = ptrtoint ptr %retval.0.i.i418451 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %retval.0.i.i418451, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool173.not = icmp eq i8 %79, 0
  br i1 %tobool173.not, label %do.body236, label %if.then174

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hdrlen.0496)
  %cmp175 = icmp ult i32 %hdrlen.0496, 2
  br i1 %cmp175, label %if.then174.for.end_crit_edge, label %if.end178

if.then174.for.end_crit_edge:                     ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end178:                                        ; preds = %if.then174
  %80 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ptr, align 4
  %add179 = add i32 %81, 1
  %82 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i.i, align 4
  %84 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %data_len.i.i, align 8
  %add179.neg = xor i32 %81, -1
  %.neg481 = add i32 %83, %add179.neg
  %sub.i4.i422 = sub i32 %.neg481, %85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i422)
  %cmp.not.i.i423 = icmp slt i32 %sub.i4.i422, 1
  br i1 %cmp.not.i.i423, label %if.end.i.i428, label %skb_header_pointer.exit434, !prof !81

if.end.i.i428:                                    ; preds = %if.end178
  br i1 %tobool2.not.i.i412, label %if.end.i.i428.for.end_crit_edge, label %lor.lhs.false.i.i432

if.end.i.i428.for.end_crit_edge:                  ; preds = %if.end.i.i428
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

lor.lhs.false.i.i432:                             ; preds = %if.end.i.i428
  %call.i.i429 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add179, ptr noundef nonnull %_optlen, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i429)
  %cmp3.i.i430 = icmp slt i32 %call.i.i429, 0
  br i1 %cmp3.i.i430, label %lor.lhs.false.i.i432.for.end_crit_edge, label %lor.lhs.false.i.i432.if.end184_crit_edge

lor.lhs.false.i.i432.if.end184_crit_edge:         ; preds = %lor.lhs.false.i.i432
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end184

lor.lhs.false.i.i432.for.end_crit_edge:           ; preds = %lor.lhs.false.i.i432
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

skb_header_pointer.exit434:                       ; preds = %if.end178
  %86 = ptrtoint ptr %data.i409 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %data.i409, align 4
  %add.ptr.i.i425 = getelementptr i8, ptr %87, i32 %add179
  %cmp181 = icmp eq ptr %add.ptr.i.i425, null
  br i1 %cmp181, label %skb_header_pointer.exit434.for.end_crit_edge, label %skb_header_pointer.exit434.if.end184_crit_edge

skb_header_pointer.exit434.if.end184_crit_edge:   ; preds = %skb_header_pointer.exit434
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end184

skb_header_pointer.exit434.for.end_crit_edge:     ; preds = %skb_header_pointer.exit434
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end184:                                        ; preds = %skb_header_pointer.exit434.if.end184_crit_edge, %lor.lhs.false.i.i432.if.end184_crit_edge
  %retval.0.i.i433461 = phi ptr [ %add.ptr.i.i425, %skb_header_pointer.exit434.if.end184_crit_edge ], [ %_optlen, %lor.lhs.false.i.i432.if.end184_crit_edge ]
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx, align 2
  %90 = and i16 %89, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %90)
  %cmp191.not = icmp eq i16 %90, 255
  br i1 %cmp191.not, label %if.end184.do.body217_crit_edge, label %land.lhs.true

if.end184.do.body217_crit_edge:                   ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body217

land.lhs.true:                                    ; preds = %if.end184
  %91 = ptrtoint ptr %retval.0.i.i433461 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %retval.0.i.i433461, align 1
  %93 = trunc i16 %89 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %93)
  %cmp195.not = icmp eq i8 %92, %93
  br i1 %cmp195.not, label %land.lhs.true.do.body217_crit_edge, label %do.body198

land.lhs.true.do.body217_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body217

do.body198:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %cleanup.thread466)) #4
          to label %cleanup308 [label %cleanup.thread466], !srcloc !82

cleanup.thread466:                                ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #6
  %conv190.le = zext i16 %90 to i32
  %94 = ptrtoint ptr %retval.0.i.i433461 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %retval.0.i.i433461, align 1
  %conv211 = zext i8 %95 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.16, i32 noundef %conv211, i32 noundef %conv190.le) #4
  br label %cleanup308

do.body217:                                       ; preds = %land.lhs.true.do.body217_crit_edge, %if.end184.do.body217_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then229)) #4
          to label %cleanup.thread469 [label %if.then229], !srcloc !82

if.then229:                                       ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.18) #4
  br label %cleanup.thread469

cleanup.thread469:                                ; preds = %if.then229, %do.body217
  %96 = ptrtoint ptr %retval.0.i.i433461 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %retval.0.i.i433461, align 1
  %conv233 = zext i8 %97 to i32
  %add234 = add nuw nsw i32 %conv233, 2
  br label %do.body253

do.body236:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then248)) #4
          to label %do.body253 [label %if.then248], !srcloc !82

if.then248:                                       ; preds = %do.body236
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.20) #4
  br label %do.body253

do.body253:                                       ; preds = %if.then248, %do.body236, %cleanup.thread469
  %optlen.2 = phi i32 [ 1, %if.then248 ], [ %add234, %cleanup.thread469 ], [ 1, %do.body236 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then265)) #4
          to label %do.end268 [label %if.then265], !srcloc !82

if.then265:                                       ; preds = %do.body253
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug632, ptr noundef nonnull @.str.22, i32 noundef %optlen.2) #4
  br label %do.end268

do.end268:                                        ; preds = %if.then265, %do.body253
  %98 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ptr, align 4
  %100 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i, align 4
  %sub270 = sub i32 %101, %optlen.2
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %sub270)
  %cmp271 = icmp ugt i32 %99, %sub270
  call void @__sanitizer_cov_trace_cmp4(i32 %hdrlen.0496, i32 %optlen.2)
  %cmp273 = icmp ult i32 %hdrlen.0496, %optlen.2
  %or.cond374 = select i1 %cmp271, i1 true, i1 %cmp273
  br i1 %or.cond374, label %land.lhs.true275, label %do.end268.if.end298_crit_edge

do.end268.if.end298_crit_edge:                    ; preds = %do.end268
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end298

land.lhs.true275:                                 ; preds = %do.end268
  %102 = ptrtoint ptr %optsnr114 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %optsnr114, align 2
  %conv277 = zext i8 %103 to i32
  %sub278 = add nsw i32 %conv277, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.0497, i32 %sub278)
  %cmp279 = icmp ult i32 %temp.0497, %sub278
  br i1 %cmp279, label %do.body282, label %land.lhs.true275.if.end298_crit_edge

land.lhs.true275.if.end298_crit_edge:             ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end298

do.body282:                                       ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6, %if.then294)) #4
          to label %for.end [label %if.then294], !srcloc !82

if.then294:                                       ; preds = %do.body282
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.24) #4
  br label %for.end

if.end298:                                        ; preds = %land.lhs.true275.if.end298_crit_edge, %do.end268.if.end298_crit_edge
  %add299 = add i32 %99, %optlen.2
  %104 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add299, ptr %ptr, align 4
  %sub300 = sub i32 %hdrlen.0496, %optlen.2
  %inc = add nuw nsw i32 %temp.0497, 1
  %105 = ptrtoint ptr %optsnr114 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %optsnr114, align 2
  %conv115 = zext i8 %106 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv115)
  %cmp116 = icmp uge i32 %inc, %conv115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub300)
  %cmp118 = icmp eq i32 %sub300, 0
  %or.cond = select i1 %cmp116, i1 true, i1 %cmp118
  br i1 %or.cond, label %if.end298.for.end_crit_edge, label %if.end298.if.end121_crit_edge

if.end298.if.end121_crit_edge:                    ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end121

if.end298.for.end_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %if.end298.for.end_crit_edge, %if.then294, %do.body282, %skb_header_pointer.exit434.for.end_crit_edge, %lor.lhs.false.i.i432.for.end_crit_edge, %if.end.i.i428.for.end_crit_edge, %if.then174.for.end_crit_edge, %skb_header_pointer.exit419.for.end_crit_edge, %lor.lhs.false.i.i417.for.end_crit_edge, %if.end.i.i413.for.end_crit_edge, %do.end113.for.end_crit_edge
  %temp.0489 = phi i32 [ %temp.0497, %do.body282 ], [ %temp.0497, %if.then294 ], [ 0, %do.end113.for.end_crit_edge ], [ %inc, %if.end298.for.end_crit_edge ], [ %temp.0497, %skb_header_pointer.exit419.for.end_crit_edge ], [ %temp.0497, %if.end.i.i413.for.end_crit_edge ], [ %temp.0497, %lor.lhs.false.i.i417.for.end_crit_edge ], [ %temp.0497, %if.then174.for.end_crit_edge ], [ %temp.0497, %skb_header_pointer.exit434.for.end_crit_edge ], [ %temp.0497, %if.end.i.i428.for.end_crit_edge ], [ %temp.0497, %lor.lhs.false.i.i432.for.end_crit_edge ]
  %107 = ptrtoint ptr %optsnr114 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %optsnr114, align 2
  %conv302 = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.0489, i32 %conv302)
  %cmp303 = icmp eq i32 %temp.0489, %conv302
  %. = select i1 %cmp303, i1 %49, i1 false
  br label %cleanup308

cleanup308:                                       ; preds = %for.end, %cleanup.thread466, %do.body198, %if.then145, %do.body133, %lor.end70.cleanup308_crit_edge, %if.end9.cleanup308_crit_edge, %if.then7, %if.then3, %if.then.cleanup308_crit_edge
  %retval.3 = phi i1 [ false, %if.then7 ], [ false, %if.then3 ], [ false, %if.then.cleanup308_crit_edge ], [ false, %if.end9.cleanup308_crit_edge ], [ %49, %lor.end70.cleanup308_crit_edge ], [ false, %if.then145 ], [ %., %for.end ], [ false, %do.body133 ], [ false, %cleanup.thread466 ], [ false, %do.body198 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_optlen) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_opttype) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_optsh) #4
  ret i1 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hbh_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_opts, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %tobool.not = icmp ult i8 %3, 2
  br i1 %tobool.not, label %if.end7, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6_check.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !82

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6_check.__UNIQUE_ID_ddebug634, ptr noundef nonnull @.str.27, i32 noundef %conv6) #4
  br label %cleanup

if.end7:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ip6t_opts, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %flags, align 4
  %8 = and i8 %7, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool10.not = icmp eq i8 %8, 0
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %do.body12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hbh_mt6_check.__UNIQUE_ID_ddebug635, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hbh_mt6_check, %if.then24)) #4
          to label %cleanup [label %if.then24], !srcloc !82

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hbh_mt6_check.__UNIQUE_ID_ddebug635, ptr noundef nonnull @.str.29) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body12, %if.end7.cleanup_crit_edge, %if.then4, %do.body
  %retval.0 = phi i32 [ -22, %if.then4 ], [ -22, %if.then24 ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %do.body ], [ -22, %do.body12 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70}
!llvm.module.flags = !{!71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description620, !4, !"__UNIQUE_ID_description620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 21, i32 1}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 22, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias622, !8, !"__UNIQUE_ID_alias622", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 23, i32 1}
!9 = !{ptr @__initcall__kmod_ip6t_hbh__636_210_hbh_mt6_init6, !10, !"__initcall__kmod_ip6t_hbh__636_210_hbh_mt6_init6", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 210, i32 1}
!11 = !{ptr @__exitcall_hbh_mt6_exit, !12, !"__exitcall_hbh_mt6_exit", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 211, i32 1}
!13 = !{ptr @hbh_mt6_reg, !14, !"hbh_mt6_reg", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 180, i32 24}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 81, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug623, !16, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!21 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 83, i32 2}
!24 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug624, !23, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 98, i32 3}
!28 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug625, !27, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 99, i32 3}
!32 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug626, !31, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!33 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 111, i32 5}
!36 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug627, !35, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!37 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 115, i32 5}
!40 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug628, !39, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 132, i32 6}
!44 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug629, !43, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!45 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 136, i32 5}
!48 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug630, !47, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!49 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 139, i32 5}
!52 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug631, !51, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!53 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 144, i32 4}
!56 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug632, !55, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 148, i32 5}
!60 = !{ptr @hbh_mt6.__UNIQUE_ID_ddebug633, !59, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!61 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 168, i32 3}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @hbh_mt6_check.__UNIQUE_ID_ddebug634, !63, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!66 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv6/netfilter/ip6t_hbh.c", i32 173, i32 3}
!69 = !{ptr @hbh_mt6_check.__UNIQUE_ID_ddebug635, !68, !"__UNIQUE_ID_ddebug635", i1 false, i1 false}
!70 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!71 = !{i32 1, !"wchar_size", i32 2}
!72 = !{i32 1, !"min_enum_size", i32 4}
!73 = !{i32 8, !"branch-target-enforcement", i32 0}
!74 = !{i32 8, !"sign-return-address", i32 0}
!75 = !{i32 8, !"sign-return-address-all", i32 0}
!76 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!77 = !{i32 7, !"uwtable", i32 1}
!78 = !{i32 7, !"frame-pointer", i32 2}
!79 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!80 = !{!"auto-init"}
!81 = !{!"branch_weights", i32 1, i32 2000}
!82 = !{i64 2148956398, i64 2148956403, i64 2148956416, i64 2148956460, i64 2148956494, i64 2148956515}
