; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_frag.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_frag.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.frag_hdr = type { i8, i8, i16, i32 }
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
%struct.ip6t_frag = type { [2 x i32], i32, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [44 x i8] c"ip6t_frag.file=net/ipv6/netfilter/ip6t_frag\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [22 x i8] c"ip6t_frag.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [51 x i8] c"ip6t_frag.description=Xtables: IPv6 fragment match\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [53 x i8] c"ip6t_frag.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@frag_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"frag\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @frag_mt6, ptr @frag_mt6_check, ptr null, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_frag__635_131_frag_mt6_init6 = internal global ptr @frag_mt6_init, section ".initcall6.init", align 4
@__exitcall_frag_mt6_exit = internal global ptr @frag_mt6_exit, section ".exitcall.exit", align 4
@frag_mt6.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip6t_frag\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"frag_mt6\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/ipv6/netfilter/ip6t_frag.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INFO %04X \00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip6t_frag: INFO %04X \00", [42 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 14, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OFFSET %04X \00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ip6t_frag: OFFSET %04X \00", [40 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RES %02X %04X\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ip6t_frag: RES %02X %04X\00", [39 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MF %04X \00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ip6t_frag: MF %04X \00", [44 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ID %u %08X\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip6t_frag: ID %u %08X\0A\00", [41 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IPv6 FRAG id %02X \00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ip6t_frag: IPv6 FRAG id %02X \00", [34 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.15, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"res %02X %02X%04X %02X \00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ip6t_frag: res %02X %02X%04X %02X \00", [61 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug631 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"first %02X %02X %02X \00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ip6t_frag: first %02X %02X %02X \00", [63 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug632 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.19, i8 0, i8 20, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mf %02X %02X %02X \00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ip6t_frag: mf %02X %02X %02X \00", [34 x i8] zeroinitializer }, align 32
@frag_mt6.__UNIQUE_ID_ddebug633 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.21, i8 0, i8 21, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"last %02X %02X %02X\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ip6t_frag: last %02X %02X %02X\0A\00", [32 x i8] zeroinitializer }, align 32
@id_match.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"id_match\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"id_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ip6t_frag: id_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@id_match.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" result %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ip6t_frag:  result %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PASS\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@frag_mt6_check.__UNIQUE_ID_ddebug634 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"frag_mt6_check\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown flags %X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip6t_frag: unknown flags %X\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 56, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 57, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 58, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 59, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 60, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 63, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 67, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 72, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 82, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 27, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 30, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [34 x i8] c"../net/ipv6/netfilter/ip6t_frag.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 106, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_frag_mt6_exit, ptr @__initcall__kmod_ip6t_frag__635_131_frag_mt6_init6, ptr @frag_mt6_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @frag_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @frag_mt6_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @frag_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @frag_mt6_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @frag_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_frag = alloca %struct.frag_hdr, align 8
  %ptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_frag) #4
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %_frag to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %_frag, align 8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ptr, align 4
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %ptr, i32 noundef 44, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call)
  %cmp1.not = icmp eq i32 %call, -2
  br i1 %cmp1.not, label %if.then.cleanup_crit_edge, label %if.then2

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %5 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup

if.end3:                                          ; preds = %entry
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ptr, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i1.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 7
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !81

if.end.i.i:                                       ; preds = %if.end3
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_frag, i32 noundef 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i.do.body_crit_edge

lor.lhs.false.i.i.do.body_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

lor.lhs.false.i.i.if.then6_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

skb_header_pointer.exit:                          ; preds = %if.end3
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  %cmp5 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp5, label %skb_header_pointer.exit.if.then6_crit_edge, label %skb_header_pointer.exit.do.body_crit_edge

skb_header_pointer.exit.do.body_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

skb_header_pointer.exit.if.then6_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %skb_header_pointer.exit.if.then6_crit_edge, %lor.lhs.false.i.i.if.then6_crit_edge, %if.end.i.i.if.then6_crit_edge
  %hotdrop7 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop7, align 2
  br label %cleanup

do.body:                                          ; preds = %skb_header_pointer.exit.do.body_crit_edge, %lor.lhs.false.i.i.do.body_crit_edge
  %retval.0.i.i410 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.do.body_crit_edge ], [ %_frag, %lor.lhs.false.i.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then12)) #4
          to label %do.body14 [label %if.then12], !srcloc !82

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %frag_off = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %16 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %frag_off, align 2
  %conv = zext i16 %17 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.4, i32 noundef %conv) #4
  br label %do.body14

do.body14:                                        ; preds = %if.then12, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then26)) #4
          to label %do.body32 [label %if.then26], !srcloc !82

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %frag_off27 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %18 = ptrtoint ptr %frag_off27 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %frag_off27, align 2
  %20 = and i16 %19, -8
  %and = zext i16 %20 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.6, i32 noundef %and) #4
  br label %do.body32

do.body32:                                        ; preds = %if.then26, %do.body14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then44)) #4
          to label %do.body52 [label %if.then44], !srcloc !82

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #6
  %reserved = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 1
  %21 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reserved, align 1
  %conv45 = zext i8 %22 to i32
  %frag_off46 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %23 = ptrtoint ptr %frag_off46 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %frag_off46, align 2
  %25 = and i16 %24, 6
  %and48 = zext i16 %25 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.8, i32 noundef %conv45, i32 noundef %and48) #4
  br label %do.body52

do.body52:                                        ; preds = %if.then44, %do.body32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then64)) #4
          to label %do.body71 [label %if.then64], !srcloc !82

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #6
  %frag_off65 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %26 = ptrtoint ptr %frag_off65 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %frag_off65, align 2
  %28 = and i16 %27, 1
  %and67 = zext i16 %28 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.10, i32 noundef %and67) #4
  br label %do.body71

do.body71:                                        ; preds = %if.then64, %do.body52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then83)) #4
          to label %do.body88 [label %if.then83], !srcloc !82

if.then83:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #6
  %identification = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 3
  %29 = ptrtoint ptr %identification to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %identification, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.12, i32 noundef %30, i32 noundef %30) #4
  br label %do.body88

do.body88:                                        ; preds = %if.then83, %do.body71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then100)) #4
          to label %do.body116 [label %if.then100], !srcloc !82

if.then100:                                       ; preds = %do.body88
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %3, align 4
  %arrayidx102 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx102, align 4
  %identification103 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 3
  %35 = ptrtoint ptr %identification103 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %identification103, align 4
  %invflags = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %invflags, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool106 = icmp ne i8 %39, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_match.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !82

if.then.i:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i = select i1 %tobool106, i32 33, i32 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_match.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.25, i32 noundef %cond.i, i32 noundef %32, i32 noundef %36, i32 noundef %34) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then100
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %32)
  %cmp.not.i = icmp uge i32 %36, %32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %34)
  %cmp5.i = icmp ule i32 %36, %34
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool7.i = xor i1 %narrow.i, %tobool106
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_match.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then21.i)) #4
          to label %id_match.exit [label %if.then21.i], !srcloc !82

if.then21.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %cond24.i = select i1 %tobool7.i, ptr @.str.28, ptr @.str.29
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_match.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond24.i) #4
  br label %id_match.exit

id_match.exit:                                    ; preds = %if.then21.i, %do.end.i
  %conv112 = zext i1 %tobool7.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.14, i32 noundef %conv112) #4
  br label %do.body116

do.body116:                                       ; preds = %id_match.exit, %do.body88
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then128)) #4
          to label %do.body152 [label %if.then128], !srcloc !82

if.then128:                                       ; preds = %do.body116
  %flags = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flags, align 4
  %42 = and i8 %41, 4
  %and130 = zext i8 %42 to i32
  %reserved131 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 1
  %43 = ptrtoint ptr %reserved131 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reserved131, align 1
  %conv132 = zext i8 %44 to i32
  %frag_off133 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %45 = ptrtoint ptr %frag_off133 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %frag_off133, align 2
  %47 = and i16 %46, 6
  %and135 = zext i16 %47 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool139.not = icmp eq i8 %42, 0
  br i1 %tobool139.not, label %if.then128.land.end_crit_edge, label %land.rhs

if.then128.land.end_crit_edge:                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %if.then128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool142.not = icmp eq i8 %44, 0
  br i1 %tobool142.not, label %lor.rhs, label %land.rhs.land.end_crit_edge

land.rhs.land.end_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

lor.rhs:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool146 = icmp eq i16 %47, 0
  %phi.cast366 = zext i1 %tobool146 to i32
  br label %land.end

land.end:                                         ; preds = %lor.rhs, %land.rhs.land.end_crit_edge, %if.then128.land.end_crit_edge
  %48 = phi i32 [ 1, %if.then128.land.end_crit_edge ], [ 0, %land.rhs.land.end_crit_edge ], [ %phi.cast366, %lor.rhs ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.16, i32 noundef %and130, i32 noundef %conv132, i32 noundef %and135, i32 noundef %48) #4
  br label %do.body152

do.body152:                                       ; preds = %land.end, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug631, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then164)) #4
          to label %do.body186 [label %if.then164], !srcloc !82

if.then164:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #6
  %flags165 = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %flags165 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %flags165, align 4
  %51 = and i8 %50, 8
  %and167 = zext i8 %51 to i32
  %frag_off168 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %52 = ptrtoint ptr %frag_off168 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %frag_off168, align 2
  %54 = and i16 %53, -8
  %and170 = zext i16 %54 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool174.not = icmp eq i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool179 = icmp eq i16 %54, 0
  %narrow = select i1 %tobool174.not, i1 true, i1 %tobool179
  %55 = zext i1 %narrow to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug631, ptr noundef nonnull @.str.18, i32 noundef %and167, i32 noundef %and170, i32 noundef %55) #4
  br label %do.body186

do.body186:                                       ; preds = %if.then164, %do.body152
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug632, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then198)) #4
          to label %do.body222 [label %if.then198], !srcloc !82

if.then198:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #6
  %flags199 = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %flags199 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %flags199, align 4
  %58 = and i8 %57, 16
  %and201 = zext i8 %58 to i32
  %frag_off202 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %59 = ptrtoint ptr %frag_off202 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %frag_off202, align 2
  %61 = and i16 %60, 1
  %and204 = zext i16 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool208.not = icmp eq i8 %58, 0
  %spec.select = select i1 %tobool208.not, i32 1, i32 %and204
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug632, ptr noundef nonnull @.str.20, i32 noundef %and201, i32 noundef %and204, i32 noundef %spec.select) #4
  br label %do.body222

do.body222:                                       ; preds = %if.then198, %do.body186
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6.__UNIQUE_ID_ddebug633, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then234)) #4
          to label %do.end255 [label %if.then234], !srcloc !82

if.then234:                                       ; preds = %do.body222
  call void @__sanitizer_cov_trace_pc() #6
  %flags235 = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %flags235 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %flags235, align 4
  %64 = and i8 %63, 32
  %and237 = zext i8 %64 to i32
  %frag_off238 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %65 = ptrtoint ptr %frag_off238 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %frag_off238, align 2
  %67 = and i16 %66, 1
  %and240 = zext i16 %67 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool244.not = icmp eq i8 %64, 0
  %68 = xor i32 %and240, 1
  %spec.select367 = select i1 %tobool244.not, i32 1, i32 %68
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6.__UNIQUE_ID_ddebug633, ptr noundef nonnull @.str.22, i32 noundef %and237, i32 noundef %and240, i32 noundef %spec.select367) #4
  br label %do.end255

do.end255:                                        ; preds = %if.then234, %do.body222
  %69 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %3, align 4
  %arrayidx259 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %71 = ptrtoint ptr %arrayidx259 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx259, align 4
  %identification260 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 3
  %73 = ptrtoint ptr %identification260 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %identification260, align 4
  %invflags261 = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 3
  %75 = ptrtoint ptr %invflags261 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %invflags261, align 1
  %77 = and i8 %76, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool264 = icmp ne i8 %77, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_match.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then.i396)) #4
          to label %do.end.i401 [label %if.then.i396], !srcloc !82

if.then.i396:                                     ; preds = %do.end255
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i395 = select i1 %tobool264, i32 33, i32 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_match.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.25, i32 noundef %cond.i395, i32 noundef %70, i32 noundef %74, i32 noundef %72) #4
  br label %do.end.i401

do.end.i401:                                      ; preds = %if.then.i396, %do.end255
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %70)
  %cmp.not.i397 = icmp uge i32 %74, %70
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %72)
  %cmp5.i398 = icmp ule i32 %74, %72
  %narrow.i399 = and i1 %cmp.not.i397, %cmp5.i398
  %tobool7.i400 = xor i1 %narrow.i399, %tobool264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @id_match.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6, %if.then21.i403)) #4
          to label %id_match.exit404 [label %if.then21.i403], !srcloc !82

if.then21.i403:                                   ; preds = %do.end.i401
  call void @__sanitizer_cov_trace_pc() #6
  %cond24.i402 = select i1 %tobool7.i400, ptr @.str.28, ptr @.str.29
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @id_match.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond24.i402) #4
  br label %id_match.exit404

id_match.exit404:                                 ; preds = %if.then21.i403, %do.end.i401
  br i1 %tobool7.i400, label %land.lhs.true, label %id_match.exit404.cleanup_crit_edge

id_match.exit404.cleanup_crit_edge:               ; preds = %id_match.exit404
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %id_match.exit404
  %flags271 = getelementptr inbounds %struct.ip6t_frag, ptr %3, i32 0, i32 2
  %78 = ptrtoint ptr %flags271 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %flags271, align 4
  %80 = and i8 %79, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool274.not = icmp eq i8 %80, 0
  br i1 %tobool274.not, label %land.lhs.true.land.lhs.true283_crit_edge, label %land.lhs.true275

land.lhs.true.land.lhs.true283_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true283

land.lhs.true275:                                 ; preds = %land.lhs.true
  %reserved276 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 1
  %81 = ptrtoint ptr %reserved276 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %reserved276, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool278.not = icmp eq i8 %82, 0
  br i1 %tobool278.not, label %lor.lhs.false, label %land.lhs.true275.cleanup_crit_edge

land.lhs.true275.cleanup_crit_edge:               ; preds = %land.lhs.true275
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true275
  %frag_off279 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %83 = ptrtoint ptr %frag_off279 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %frag_off279, align 2
  %85 = and i16 %84, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %tobool282.not = icmp eq i16 %85, 0
  br i1 %tobool282.not, label %lor.lhs.false.land.lhs.true283_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.land.lhs.true283_crit_edge:         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true283

land.lhs.true283:                                 ; preds = %lor.lhs.false.land.lhs.true283_crit_edge, %land.lhs.true.land.lhs.true283_crit_edge
  %86 = and i8 %79, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool287.not = icmp eq i8 %86, 0
  br i1 %tobool287.not, label %land.lhs.true283.land.lhs.true293_crit_edge, label %land.lhs.true288

land.lhs.true283.land.lhs.true293_crit_edge:      ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true293

land.lhs.true288:                                 ; preds = %land.lhs.true283
  %frag_off289 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %87 = ptrtoint ptr %frag_off289 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %frag_off289, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %88)
  %tobool292.not = icmp ult i16 %88, 8
  br i1 %tobool292.not, label %land.lhs.true288.land.lhs.true293_crit_edge, label %land.lhs.true288.cleanup_crit_edge

land.lhs.true288.cleanup_crit_edge:               ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true288.land.lhs.true293_crit_edge:      ; preds = %land.lhs.true288
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true293

land.lhs.true293:                                 ; preds = %land.lhs.true288.land.lhs.true293_crit_edge, %land.lhs.true283.land.lhs.true293_crit_edge
  %89 = and i8 %79, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool297.not = icmp eq i8 %89, 0
  br i1 %tobool297.not, label %land.lhs.true293.land.rhs303_crit_edge, label %land.lhs.true298

land.lhs.true293.land.rhs303_crit_edge:           ; preds = %land.lhs.true293
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs303

land.lhs.true298:                                 ; preds = %land.lhs.true293
  %frag_off299 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %90 = ptrtoint ptr %frag_off299 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %frag_off299, align 2
  %92 = and i16 %91, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool302.not = icmp eq i16 %92, 0
  br i1 %tobool302.not, label %land.lhs.true298.cleanup_crit_edge, label %land.lhs.true298.land.rhs303_crit_edge

land.lhs.true298.land.rhs303_crit_edge:           ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs303

land.lhs.true298.cleanup_crit_edge:               ; preds = %land.lhs.true298
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs303:                                      ; preds = %land.lhs.true298.land.rhs303_crit_edge, %land.lhs.true293.land.rhs303_crit_edge
  %93 = and i8 %79, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool307.not = icmp eq i8 %93, 0
  br i1 %tobool307.not, label %land.rhs303.cleanup_crit_edge, label %land.rhs308

land.rhs303.cleanup_crit_edge:                    ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs308:                                      ; preds = %land.rhs303
  call void @__sanitizer_cov_trace_pc() #6
  %frag_off309 = getelementptr inbounds %struct.frag_hdr, ptr %retval.0.i.i410, i32 0, i32 2
  %94 = ptrtoint ptr %frag_off309 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %frag_off309, align 2
  %96 = and i16 %95, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool312 = icmp eq i16 %96, 0
  br label %cleanup

cleanup:                                          ; preds = %land.rhs308, %land.rhs303.cleanup_crit_edge, %land.lhs.true298.cleanup_crit_edge, %land.lhs.true288.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true275.cleanup_crit_edge, %id_match.exit404.cleanup_crit_edge, %if.then6, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ false, %if.then2 ], [ false, %if.then.cleanup_crit_edge ], [ false, %land.lhs.true298.cleanup_crit_edge ], [ false, %land.lhs.true288.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %land.lhs.true275.cleanup_crit_edge ], [ false, %id_match.exit404.cleanup_crit_edge ], [ true, %land.rhs303.cleanup_crit_edge ], [ %tobool312, %land.rhs308 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_frag) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @frag_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_frag, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %invflags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %tobool.not = icmp ult i8 %3, 4
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @frag_mt6_check.__UNIQUE_ID_ddebug634, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@frag_mt6_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !82

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @frag_mt6_check.__UNIQUE_ID_ddebug634, ptr noundef nonnull @.str.32, i32 noundef %conv6) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.body ]
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
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description620, !4, !"__UNIQUE_ID_description620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 19, i32 1}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 20, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_frag__635_131_frag_mt6_init6, !8, !"__initcall__kmod_ip6t_frag__635_131_frag_mt6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 131, i32 1}
!9 = !{ptr @__exitcall_frag_mt6_exit, !10, !"__exitcall_frag_mt6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 132, i32 1}
!11 = !{ptr @frag_mt6_reg, !12, !"frag_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 112, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 56, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug624, !14, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 57, i32 2}
!22 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug625, !21, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 58, i32 2}
!26 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug626, !25, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 59, i32 2}
!30 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug627, !29, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 60, i32 2}
!34 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug628, !33, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 63, i32 2}
!38 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug629, !37, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 67, i32 2}
!42 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug630, !41, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!43 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 72, i32 2}
!46 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug631, !45, !"__UNIQUE_ID_ddebug631", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 77, i32 2}
!50 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug632, !49, !"__UNIQUE_ID_ddebug632", i1 false, i1 false}
!51 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 82, i32 2}
!54 = !{ptr @frag_mt6.__UNIQUE_ID_ddebug633, !53, !"__UNIQUE_ID_ddebug633", i1 false, i1 false}
!55 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 27, i32 2}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @id_match.__UNIQUE_ID_ddebug622, !57, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!60 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 30, i32 2}
!63 = !{ptr @id_match.__UNIQUE_ID_ddebug623, !62, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!64 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/ipv6/netfilter/ip6t_frag.c", i32 106, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @frag_mt6_check.__UNIQUE_ID_ddebug634, !68, !"__UNIQUE_ID_ddebug634", i1 false, i1 false}
!71 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{!"branch_weights", i32 2000, i32 1}
!82 = !{i64 2148955287, i64 2148955292, i64 2148955305, i64 2148955349, i64 2148955383, i64 2148955404}
