; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_ah.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_ah.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ip_auth_hdr = type { i8, i8, i16, i32, i32, [0 x i8] }
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
%struct.ip6t_ah = type { [2 x i32], i32, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [40 x i8] c"ip6t_ah.file=net/ipv6/netfilter/ip6t_ah\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [20 x i8] c"ip6t_ah.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [49 x i8] c"ip6t_ah.description=Xtables: IPv6 IPsec-AH match\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [51 x i8] c"ip6t_ah.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@ah_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ah\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ah_mt6, ptr @ah_mt6_check, ptr null, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_ah__631_116_ah_mt6_init6 = internal global ptr @ah_mt6_init, section ".initcall6.init", align 4
@__exitcall_ah_mt6_exit = internal global ptr @ah_mt6_exit, section ".exitcall.exit", align 4
@ah_mt6.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ip6t_ah\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ah_mt6\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/ipv6/netfilter/ip6t_ah.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IPv6 AH LEN %u %u \00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ip6t_ah: IPv6 AH LEN %u %u \00", [36 x i8] zeroinitializer }, align 32
@ah_mt6.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RES %04X \00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ip6t_ah: RES %04X \00", [45 x i8] zeroinitializer }, align 32
@ah_mt6.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SPI %u %08X\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ip6t_ah: SPI %u %08X\0A\00", [42 x i8] zeroinitializer }, align 32
@ah_mt6.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IPv6 AH spi %02X \00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip6t_ah: IPv6 AH spi %02X \00", [37 x i8] zeroinitializer }, align 32
@ah_mt6.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"len %02X %04X %02X \00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip6t_ah: len %02X %04X %02X \00", [35 x i8] zeroinitializer }, align 32
@ah_mt6.__UNIQUE_ID_ddebug629 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"res %02X %04X %02X\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ip6t_ah: res %02X %04X %02X\0A\00", [35 x i8] zeroinitializer }, align 32
@spi_match.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spi_match\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"spi_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ip6t_ah: spi_match:%c 0x%x <= 0x%x <= 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@spi_match.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 8, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" result %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ip6t_ah:  result %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PASS\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FAILED\00", [25 x i8] zeroinitializer }, align 32
@ah_mt6_check.__UNIQUE_ID_ddebug630 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ah_mt6_check\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unknown flags %X\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ip6t_ah: unknown flags %X\0A\00", [37 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 60, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 61, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 62, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 64, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 68, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 73, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 29, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 32, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [32 x i8] c"../net/ipv6/netfilter/ip6t_ah.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 91, i32 3 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_ah_mt6_exit, ptr @__initcall__kmod_ip6t_ah__631_116_ah_mt6_init6, ptr @ah_mt6_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ah_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @ah_mt6_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ah_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ah_mt6_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ah_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_ah = alloca %struct.ip_auth_hdr, align 4
  %ptr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %_ah) #4
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = call ptr @memset(ptr %_ah, i32 255, i32 12)
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ptr) #4
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %ptr, align 4
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %ptr, i32 noundef 51, ptr noundef null, ptr noundef null) #4
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 11
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !65

if.end.i.i:                                       ; preds = %if.end3
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then6_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %7, ptr noundef nonnull %_ah, i32 noundef 12) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then6_crit_edge, label %lor.lhs.false.i.i.if.end8_crit_edge

lor.lhs.false.i.i.if.end8_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

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
  br i1 %cmp5, label %skb_header_pointer.exit.if.then6_crit_edge, label %skb_header_pointer.exit.if.end8_crit_edge

skb_header_pointer.exit.if.end8_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

skb_header_pointer.exit.if.then6_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then6

if.then6:                                         ; preds = %skb_header_pointer.exit.if.then6_crit_edge, %lor.lhs.false.i.i.if.then6_crit_edge, %if.end.i.i.if.then6_crit_edge
  %hotdrop7 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %15 = ptrtoint ptr %hotdrop7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %hotdrop7, align 2
  br label %cleanup

if.end8:                                          ; preds = %skb_header_pointer.exit.if.end8_crit_edge, %lor.lhs.false.i.i.if.end8_crit_edge
  %retval.0.i.i247 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end8_crit_edge ], [ %_ah, %lor.lhs.false.i.i.if.end8_crit_edge ]
  %hdrlen9 = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 1
  %16 = ptrtoint ptr %hdrlen9 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hdrlen9, align 1
  %conv = zext i8 %17 to i32
  %add = shl nuw nsw i32 %conv, 2
  %shl = add nuw nsw i32 %add, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then13)) #4
          to label %do.body17 [label %if.then13], !srcloc !66

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %hdrlen9 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdrlen9, align 1
  %conv15 = zext i8 %19 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.4, i32 noundef %shl, i32 noundef %conv15) #4
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then29)) #4
          to label %do.body34 [label %if.then29], !srcloc !66

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #6
  %reserved = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 2
  %20 = ptrtoint ptr %reserved to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %reserved, align 2
  %conv30 = zext i16 %21 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.6, i32 noundef %conv30) #4
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %do.body17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then46)) #4
          to label %do.body51 [label %if.then46], !srcloc !66

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #6
  %spi = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 3
  %22 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spi, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.8, i32 noundef %23, i32 noundef %23) #4
  br label %do.body51

do.body51:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then63)) #4
          to label %do.body78 [label %if.then63], !srcloc !66

if.then63:                                        ; preds = %do.body51
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %3, align 4
  %arrayidx65 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx65, align 4
  %spi66 = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 3
  %28 = ptrtoint ptr %spi66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %spi66, align 4
  %invflags = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 3
  %30 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %invflags, align 1
  %32 = and i8 %31, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool68 = icmp ne i8 %32, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then.i)) #4
          to label %do.end.i [label %if.then.i], !srcloc !66

if.then.i:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i = select i1 %tobool68, i32 33, i32 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.17, i32 noundef %cond.i, i32 noundef %25, i32 noundef %29, i32 noundef %27) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then63
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %25)
  %cmp.not.i = icmp uge i32 %29, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %27)
  %cmp5.i = icmp ule i32 %29, %27
  %narrow.i = and i1 %cmp.not.i, %cmp5.i
  %tobool7.i = xor i1 %narrow.i, %tobool68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then21.i)) #4
          to label %spi_match.exit [label %if.then21.i], !srcloc !66

if.then21.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %cond24.i = select i1 %tobool7.i, ptr @.str.20, ptr @.str.21
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond24.i) #4
  br label %spi_match.exit

spi_match.exit:                                   ; preds = %if.then21.i, %do.end.i
  %conv74 = zext i1 %tobool7.i to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.10, i32 noundef %conv74) #4
  br label %do.body78

do.body78:                                        ; preds = %spi_match.exit, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then90)) #4
          to label %do.body109 [label %if.then90], !srcloc !66

if.then90:                                        ; preds = %do.body78
  %hdrlen91 = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %hdrlen91 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hdrlen91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool93.not = icmp eq i32 %34, 0
  br i1 %tobool93.not, label %if.then90.lor.end_crit_edge, label %lor.rhs

if.then90.lor.end_crit_edge:                      ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.end

lor.rhs:                                          ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %shl)
  %cmp95 = icmp eq i32 %34, %shl
  %conv96 = zext i1 %cmp95 to i32
  %invflags97 = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 3
  %35 = ptrtoint ptr %invflags97 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %invflags97, align 1
  %37 = lshr i8 %36, 1
  %.lobit = and i8 %37, 1
  %38 = zext i8 %.lobit to i32
  %xor = xor i32 %38, %conv96
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then90.lor.end_crit_edge
  %39 = phi i32 [ 1, %if.then90.lor.end_crit_edge ], [ %xor, %lor.rhs ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %shl, i32 noundef %39) #4
  br label %do.body109

do.body109:                                       ; preds = %lor.end, %do.body78
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6.__UNIQUE_ID_ddebug629, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then121)) #4
          to label %do.end135 [label %if.then121], !srcloc !66

if.then121:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #6
  %hdrres = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 2
  %40 = ptrtoint ptr %hdrres to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hdrres, align 4
  %conv122 = zext i8 %41 to i32
  %reserved123 = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 2
  %42 = ptrtoint ptr %reserved123 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %reserved123, align 2
  %conv124 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool127.not = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool130 = icmp eq i16 %43, 0
  %narrow = select i1 %tobool127.not, i1 true, i1 %tobool130
  %44 = zext i1 %narrow to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6.__UNIQUE_ID_ddebug629, ptr noundef nonnull @.str.14, i32 noundef %conv122, i32 noundef %conv124, i32 noundef %44) #4
  br label %do.end135

do.end135:                                        ; preds = %if.then121, %do.body109
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  %arrayidx139 = getelementptr [2 x i32], ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx139, align 4
  %spi140 = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 3
  %49 = ptrtoint ptr %spi140 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %spi140, align 4
  %invflags141 = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %invflags141 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %invflags141, align 1
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool144 = icmp ne i8 %53, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then.i233)) #4
          to label %do.end.i238 [label %if.then.i233], !srcloc !66

if.then.i233:                                     ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #6
  %cond.i232 = select i1 %tobool144, i32 33, i32 32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.17, i32 noundef %cond.i232, i32 noundef %46, i32 noundef %50, i32 noundef %48) #4
  br label %do.end.i238

do.end.i238:                                      ; preds = %if.then.i233, %do.end135
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %46)
  %cmp.not.i234 = icmp uge i32 %50, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp5.i235 = icmp ule i32 %50, %48
  %narrow.i236 = and i1 %cmp.not.i234, %cmp5.i235
  %tobool7.i237 = xor i1 %narrow.i236, %tobool144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spi_match.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6, %if.then21.i240)) #4
          to label %spi_match.exit241 [label %if.then21.i240], !srcloc !66

if.then21.i240:                                   ; preds = %do.end.i238
  call void @__sanitizer_cov_trace_pc() #6
  %cond24.i239 = select i1 %tobool7.i237, ptr @.str.20, ptr @.str.21
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @spi_match.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond24.i239) #4
  br label %spi_match.exit241

spi_match.exit241:                                ; preds = %if.then21.i240, %do.end.i238
  br i1 %tobool7.i237, label %land.lhs.true, label %spi_match.exit241.cleanup_crit_edge

spi_match.exit241.cleanup_crit_edge:              ; preds = %spi_match.exit241
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %spi_match.exit241
  %hdrlen151 = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 1
  %54 = ptrtoint ptr %hdrlen151 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hdrlen151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool152.not = icmp eq i32 %55, 0
  br i1 %tobool152.not, label %land.lhs.true.land.rhs166_crit_edge, label %lor.lhs.false

land.lhs.true.land.rhs166_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs166

lor.lhs.false:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %shl)
  %cmp154 = icmp ne i32 %55, %shl
  %56 = ptrtoint ptr %invflags141 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %invflags141, align 1
  %58 = and i8 %57, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %59 = icmp ne i8 %58, 0
  %tobool165.not = xor i1 %cmp154, %59
  br i1 %tobool165.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.land.rhs166_crit_edge

lor.lhs.false.land.rhs166_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs166

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs166:                                      ; preds = %lor.lhs.false.land.rhs166_crit_edge, %land.lhs.true.land.rhs166_crit_edge
  %hdrres167 = getelementptr inbounds %struct.ip6t_ah, ptr %3, i32 0, i32 2
  %60 = ptrtoint ptr %hdrres167 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hdrres167, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool169.not = icmp eq i8 %61, 0
  br i1 %tobool169.not, label %land.rhs166.cleanup_crit_edge, label %land.rhs170

land.rhs166.cleanup_crit_edge:                    ; preds = %land.rhs166
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.rhs170:                                      ; preds = %land.rhs166
  call void @__sanitizer_cov_trace_pc() #6
  %reserved171 = getelementptr inbounds %struct.ip_auth_hdr, ptr %retval.0.i.i247, i32 0, i32 2
  %62 = ptrtoint ptr %reserved171 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %reserved171, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool173 = icmp eq i16 %63, 0
  br label %cleanup

cleanup:                                          ; preds = %land.rhs170, %land.rhs166.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %spi_match.exit241.cleanup_crit_edge, %if.then6, %if.then2, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then6 ], [ false, %if.then2 ], [ false, %if.then.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %spi_match.exit241.cleanup_crit_edge ], [ true, %land.rhs166.cleanup_crit_edge ], [ %tobool173, %land.rhs170 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ptr) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %_ah) #4
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ah_mt6_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %invflags = getelementptr inbounds %struct.ip6t_ah, ptr %1, i32 0, i32 3
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ah_mt6_check.__UNIQUE_ID_ddebug630, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ah_mt6_check, %if.then4)) #4
          to label %cleanup [label %if.then4], !srcloc !66

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ah_mt6_check.__UNIQUE_ID_ddebug630, ptr noundef nonnull @.str.24, i32 noundef %conv6) #4
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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description620, !4, !"__UNIQUE_ID_description620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_ah__631_116_ah_mt6_init6, !8, !"__initcall__kmod_ip6t_ah__631_116_ah_mt6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 116, i32 1}
!9 = !{ptr @__exitcall_ah_mt6_exit, !10, !"__exitcall_ah_mt6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 117, i32 1}
!11 = !{ptr @ah_mt6_reg, !12, !"ah_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 97, i32 24}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 60, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug624, !14, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!19 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 61, i32 2}
!22 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug625, !21, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 62, i32 2}
!26 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug626, !25, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 64, i32 2}
!30 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug627, !29, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 68, i32 2}
!34 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug628, !33, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 73, i32 2}
!38 = !{ptr @ah_mt6.__UNIQUE_ID_ddebug629, !37, !"__UNIQUE_ID_ddebug629", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 29, i32 2}
!42 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @spi_match.__UNIQUE_ID_ddebug622, !41, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!44 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 32, i32 2}
!47 = !{ptr @spi_match.__UNIQUE_ID_ddebug623, !46, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv6/netfilter/ip6t_ah.c", i32 91, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ah_mt6_check.__UNIQUE_ID_ddebug630, !52, !"__UNIQUE_ID_ddebug630", i1 false, i1 false}
!55 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{i64 2148954449, i64 2148954454, i64 2148954467, i64 2148954511, i64 2148954545, i64 2148954566}
