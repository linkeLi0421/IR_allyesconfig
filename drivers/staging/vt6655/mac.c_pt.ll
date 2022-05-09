; ModuleID = '/llk/IR_all_yes/drivers/staging/vt6655/mac.c_pt.bc'
source_filename = "../drivers/staging/vt6655/mac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.vnt_private = type { ptr, ptr, ptr, i32, i32, i16, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, %struct.spinlock, [2 x i32], [2 x ptr], [2 x ptr], ptr, ptr, ptr, ptr, [2 x ptr], %struct.vnt_options, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, [6 x i8], i8, i32, i8, i32, i32, i8, i8, i8, i8, ptr, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i32, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i32, i8, i16, i8, i8, i8, i32, i8, i8, [4 x i8], [4 x i32], i8, i8, i32, i8, i8, i8, i8, i8, [15 x i8], [57 x i8], [15 x i8], [57 x i8], [57 x i8], [57 x i8], i8, i8, i8, i8, [256 x i8], i16, i16, %struct.work_struct, %struct.ieee80211_low_level_stats }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vnt_options = type { i32, i32, [2 x i32], i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.ieee80211_low_level_stats = type { i32, i32, i32, i32 }

@MACbSafeRxOff.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt6655_stage\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MACbSafeRxOff\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/staging/vt6655/mac.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x10)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeRxOff.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x11)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeRxOff.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x12)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeTxOff.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MACbSafeTxOff\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x20)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeTxOff.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x21)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeTxOff.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 101, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x24)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbSafeStop.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MACbSafeStop\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" MACbSafeRxOff == false)\0A\00", [38 x i8] zeroinitializer }, align 32
@MACbSafeStop.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.2, ptr @.str.12, i8 0, i8 108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c" MACbSafeTxOff == false)\0A\00", [38 x i8] zeroinitializer }, align 32
@MACvSetCurrAC0DescAddrEx.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MACvSetCurrAC0DescAddrEx\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x26)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACbPSWakeup.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MACbPSWakeup\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c" DBG_PORT80(0x33)\0A\00", [45 x i8] zeroinitializer }, align 32
@MACvSetKeyEntry.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MACvSetKeyEntry\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"1. offset: %d, Data: %X, KeyCtl:%X\0A\00", [60 x i8] zeroinitializer }, align 32
@MACvSetKeyEntry.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"2. offset: %d, Data: %X\0A\00", [39 x i8] zeroinitializer }, align 32
@MACvSetKeyEntry.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 -54, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"3.(%d) offset: %d, Data: %X\0A\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 328, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 336, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 348, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 383, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 391, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 404, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 430, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 435, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 638, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 742, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 783, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 799, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [32 x i8] c"../drivers/staging/vt6655/mac.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 809, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbIsRegBitsOff(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byRegOfs, i8 noundef zeroext %byTestBits) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %conv = zext i8 %byRegOfs to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %and3 = and i8 %2, %byTestBits
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3)
  %tobool.not = icmp eq i8 %and3, 0
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbIsIntDisable(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 88
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  ret i1 %tobool.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetShortRetryLimit(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byRetryLimit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %byRetryLimit) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetLongRetryLimit(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byRetryLimit) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %byRetryLimit) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetLoopbackMode(ptr nocapture noundef readonly %priv, i8 noundef zeroext %byLoopbackMode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %shl = shl i8 %byLoopbackMode, 6
  %add.ptr = getelementptr i8, ptr %1, i32 82
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 63
  %or8 = or i8 %3, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %or8) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSaveContext(ptr nocapture noundef readonly %priv, ptr noundef %cxt_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  tail call void @mmiocpy(ptr noundef %cxt_buf, ptr noundef %1, i32 noundef 256) #4
  %add.ptr = getelementptr i8, ptr %1, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #4, !srcloc !61
  %add.ptr1 = getelementptr i8, ptr %cxt_buf, i32 256
  tail call void @mmiocpy(ptr noundef %add.ptr1, ptr noundef %1, i32 noundef 128) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvRestoreContext(ptr nocapture noundef readonly %priv, ptr noundef %cxt_buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #4, !srcloc !61
  %add.ptr1 = getelementptr i8, ptr %cxt_buf, i32 256
  tail call void @mmiocpy(ptr noundef %1, ptr noundef %add.ptr1, i32 noundef 128) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  %add.ptr3 = getelementptr i8, ptr %1, i32 86
  %add.ptr4 = getelementptr i8, ptr %cxt_buf, i32 86
  tail call void @mmiocpy(ptr noundef %add.ptr3, ptr noundef %add.ptr4, i32 noundef 6) #4
  %add.ptr5 = getelementptr i8, ptr %1, i32 32
  %add.ptr6 = getelementptr i8, ptr %cxt_buf, i32 32
  tail call void @mmiocpy(ptr noundef %add.ptr5, ptr noundef %add.ptr6, i32 noundef 47) #4
  %add.ptr7 = getelementptr i8, ptr %cxt_buf, i32 80
  %2 = ptrtoint ptr %add.ptr7 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr7, align 1
  %add.ptr8 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %3) #4, !srcloc !61
  %add.ptr9 = getelementptr i8, ptr %1, i32 96
  %add.ptr10 = getelementptr i8, ptr %cxt_buf, i32 96
  tail call void @mmiocpy(ptr noundef %add.ptr9, ptr noundef %add.ptr10, i32 noundef 12) #4
  %add.ptr11 = getelementptr i8, ptr %cxt_buf, i32 128
  %4 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr11, align 4
  %add.ptr12 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #4, !srcloc !63
  %add.ptr13 = getelementptr i8, ptr %cxt_buf, i32 136
  %7 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr13, align 4
  %add.ptr14 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %9) #4, !srcloc !63
  %add.ptr15 = getelementptr i8, ptr %cxt_buf, i32 144
  %10 = ptrtoint ptr %add.ptr15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr15, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #4, !srcloc !63
  %add.ptr17 = getelementptr i8, ptr %cxt_buf, i32 152
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr17, align 4
  %add.ptr18 = getelementptr i8, ptr %1, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %15) #4, !srcloc !63
  %add.ptr19 = getelementptr i8, ptr %cxt_buf, i32 160
  %16 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr19, align 4
  %add.ptr20 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %18) #4, !srcloc !63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbSoftwareReset(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 1) #4, !srcloc !61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.013 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.013, 1
  %cmp = icmp ult i16 %ww.013, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %ww.0.lcssa = phi i16 [ %ww.013, %for.body.for.end_crit_edge ], [ -16, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa)
  %cmp5 = icmp ne i16 %ww.0.lcssa, -16
  ret i1 %cmp5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbSafeSoftwareReset(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  %abyTmpRegData = alloca [384 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %abyTmpRegData) #4
  %0 = call ptr @memset(ptr %abyTmpRegData, i32 255, i32 384)
  %port_offset.i = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %1 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %port_offset.i, align 4
  call void @mmiocpy(ptr noundef nonnull %abyTmpRegData, ptr noundef %2, i32 noundef 256) #4
  %add.ptr.i = getelementptr i8, ptr %2, i32 79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #4, !srcloc !61
  %add.ptr1.i = getelementptr inbounds i8, ptr %abyTmpRegData, i32 256
  call void @mmiocpy(ptr noundef %add.ptr1.i, ptr noundef %2, i32 noundef 128) #4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #4, !srcloc !61
  %3 = ptrtoint ptr %port_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %port_offset.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %4, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  call void @arm_heavy_mb() #4
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i5, i8 1) #4, !srcloc !61
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %ww.013.i = phi i16 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %5 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i5) #4, !srcloc !56
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.MACbSoftwareReset.exit_crit_edge, label %for.inc.i

for.body.i.MACbSoftwareReset.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %MACbSoftwareReset.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i16 %ww.013.i, 1
  %cmp.i = icmp ult i16 %ww.013.i, -17
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.MACbSoftwareReset.exit_crit_edge

for.inc.i.MACbSoftwareReset.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %MACbSoftwareReset.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

MACbSoftwareReset.exit:                           ; preds = %for.inc.i.MACbSoftwareReset.exit_crit_edge, %for.body.i.MACbSoftwareReset.exit_crit_edge
  %ww.0.lcssa.i = phi i16 [ %ww.013.i, %for.body.i.MACbSoftwareReset.exit_crit_edge ], [ -16, %for.inc.i.MACbSoftwareReset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -16, i16 %ww.0.lcssa.i)
  %cmp5.i = icmp ne i16 %ww.0.lcssa.i, -16
  call void @MACvRestoreContext(ptr noundef %priv, ptr noundef nonnull %abyTmpRegData)
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %abyTmpRegData) #4
  ret i1 %cmp5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbSafeRxOff(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #4, !srcloc !63
  %add.ptr1 = getelementptr i8, ptr %1, i32 156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2048) #4, !srcloc !63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.0123 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.body19_crit_edge, label %for.inc

for.body.for.body19_crit_edge:                    ; preds = %for.body
  br label %for.body19

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.0123, 1
  %cmp = icmp ult i16 %ww.0123, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeRxOff, %if.then12)) #4
          to label %cleanup [label %if.then12], !srcloc !64

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeRxOff.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.3) #4
  br label %cleanup

for.body19:                                       ; preds = %for.inc26.for.body19_crit_edge, %for.body.for.body19_crit_edge
  %ww.1124 = phi i16 [ %inc27, %for.inc26.for.body19_crit_edge ], [ 0, %for.body.for.body19_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %do.body50, label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nuw i16 %ww.1124, 1
  %cmp17 = icmp ult i16 %ww.1124, -17
  br i1 %cmp17, label %for.inc26.for.body19_crit_edge, label %do.body33

for.inc26.for.body19_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body19

do.body33:                                        ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeRxOff, %if.then45)) #4
          to label %cleanup [label %if.then45], !srcloc !64

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeRxOff.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.4) #4
  br label %cleanup

do.body50:                                        ; preds = %for.body19
  %add.ptr51 = getelementptr i8, ptr %1, i32 84
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %7 = and i8 %6, -5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %7) #4, !srcloc !61
  br label %for.body63

for.body63:                                       ; preds = %for.inc71.for.body63_crit_edge, %do.body50
  %ww.2125 = phi i16 [ 0, %do.body50 ], [ %inc72, %for.inc71.for.body63_crit_edge ]
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %9 = and i8 %8, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool68.not = icmp eq i8 %9, 0
  br i1 %tobool68.not, label %for.body63.cleanup_crit_edge, label %for.inc71

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc71:                                        ; preds = %for.body63
  %inc72 = add nuw i16 %ww.2125, 1
  %cmp61 = icmp ult i16 %ww.2125, -17
  br i1 %cmp61, label %for.inc71.for.body63_crit_edge, label %do.body78

for.inc71.for.body63_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body63

do.body78:                                        ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeRxOff, %if.then90)) #4
          to label %cleanup [label %if.then90], !srcloc !64

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeRxOff.__UNIQUE_ID_ddebug352, ptr noundef nonnull @.str.5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body78, %for.body63.cleanup_crit_edge, %if.then45, %do.body33, %if.then12, %do.body
  %retval.0 = phi i1 [ false, %if.then12 ], [ false, %if.then45 ], [ false, %if.then90 ], [ false, %do.body ], [ false, %do.body33 ], [ false, %do.body78 ], [ true, %for.body63.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbSafeTxOff(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2048) #4, !srcloc !63
  %add.ptr1 = getelementptr i8, ptr %1, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 2048) #4, !srcloc !63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %ww.0123 = phi i16 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %3 = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.body19_crit_edge, label %for.inc

for.body.for.body19_crit_edge:                    ; preds = %for.body
  br label %for.body19

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.0123, 1
  %cmp = icmp ult i16 %ww.0123, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeTxOff, %if.then12)) #4
          to label %cleanup [label %if.then12], !srcloc !64

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeTxOff.__UNIQUE_ID_ddebug353, ptr noundef nonnull @.str.7) #4
  br label %cleanup

for.body19:                                       ; preds = %for.inc26.for.body19_crit_edge, %for.body.for.body19_crit_edge
  %ww.1124 = phi i16 [ %inc27, %for.inc26.for.body19_crit_edge ], [ 0, %for.body.for.body19_crit_edge ]
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #4, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  br i1 %tobool23.not, label %do.body50, label %for.inc26

for.inc26:                                        ; preds = %for.body19
  %inc27 = add nuw i16 %ww.1124, 1
  %cmp17 = icmp ult i16 %ww.1124, -17
  br i1 %cmp17, label %for.inc26.for.body19_crit_edge, label %do.body33

for.inc26.for.body19_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body19

do.body33:                                        ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeTxOff, %if.then45)) #4
          to label %cleanup [label %if.then45], !srcloc !64

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeTxOff.__UNIQUE_ID_ddebug354, ptr noundef nonnull @.str.8) #4
  br label %cleanup

do.body50:                                        ; preds = %for.body19
  %add.ptr51 = getelementptr i8, ptr %1, i32 84
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %7 = and i8 %6, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr51, i8 %7) #4, !srcloc !61
  br label %for.body63

for.body63:                                       ; preds = %for.inc71.for.body63_crit_edge, %do.body50
  %ww.2125 = phi i16 [ 0, %do.body50 ], [ %inc72, %for.inc71.for.body63_crit_edge ]
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr51) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool68.not = icmp sgt i8 %8, -1
  br i1 %tobool68.not, label %for.body63.cleanup_crit_edge, label %for.inc71

for.body63.cleanup_crit_edge:                     ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc71:                                        ; preds = %for.body63
  %inc72 = add nuw i16 %ww.2125, 1
  %cmp61 = icmp ult i16 %ww.2125, -17
  br i1 %cmp61, label %for.inc71.for.body63_crit_edge, label %do.body78

for.inc71.for.body63_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body63

do.body78:                                        ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeTxOff, %if.then90)) #4
          to label %cleanup [label %if.then90], !srcloc !64

if.then90:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeTxOff.__UNIQUE_ID_ddebug355, ptr noundef nonnull @.str.9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then90, %do.body78, %for.body63.cleanup_crit_edge, %if.then45, %do.body33, %if.then12, %do.body
  %retval.0 = phi i1 [ false, %if.then12 ], [ false, %if.then45 ], [ false, %if.then90 ], [ false, %do.body ], [ false, %do.body33 ], [ false, %do.body78 ], [ true, %for.body63.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbSafeStop(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 87
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %3) #4, !srcloc !61
  %call3 = tail call zeroext i1 @MACbSafeRxOff(ptr noundef %priv)
  br i1 %call3, label %if.end12, label %do.body4

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeStop.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeStop, %if.then8)) #4
          to label %do.end10 [label %if.then8], !srcloc !64

if.then8:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeStop.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.11) #4
  br label %do.end10

do.end10:                                         ; preds = %if.then8, %do.body4
  %call11 = tail call zeroext i1 @MACbSafeSoftwareReset(ptr noundef %priv)
  br label %cleanup

if.end12:                                         ; preds = %entry
  %call13 = tail call zeroext i1 @MACbSafeTxOff(ptr noundef %priv)
  br i1 %call13, label %do.body33, label %do.body15

do.body15:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbSafeStop.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbSafeStop, %if.then27)) #4
          to label %do.end30 [label %if.then27], !srcloc !64

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbSafeStop.__UNIQUE_ID_ddebug357, ptr noundef nonnull @.str.12) #4
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %do.body15
  %call31 = tail call zeroext i1 @MACbSafeSoftwareReset(ptr noundef %priv)
  br label %cleanup

do.body33:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr35 = getelementptr i8, ptr %1, i32 84
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %5) #4, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %do.body33, %do.end30, %do.end10
  %retval.0 = phi i1 [ true, %do.body33 ], [ false, %do.end30 ], [ false, %do.end10 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbShutdown(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !63
  %2 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 82
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 63
  %or8.i = or i8 %5, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %or8.i) #4, !srcloc !61
  %call = tail call zeroext i1 @MACbSafeStop(ptr noundef %priv)
  %6 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_offset, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 82
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  %9 = and i8 %8, 63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 %9) #4
  ret i1 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvInitialize(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 18
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, -4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %3) #4, !srcloc !61
  %add.ptr3 = getelementptr i8, ptr %1, i32 17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 2) #4, !srcloc !61
  %4 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 1) #4, !srcloc !61
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ww.013.i = phi i16 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp ne i8 %7, 0
  %inc.i = add nuw i16 %ww.013.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %ww.013.i)
  %cmp.i = icmp ult i16 %ww.013.i, -17
  %or.cond = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond, label %for.body.i.for.body.i_crit_edge, label %MACbSoftwareReset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

MACbSoftwareReset.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr5 = getelementptr i8, ptr %1, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 2) #4, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 1) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetCurrRx0DescAddr(ptr nocapture noundef readonly %priv, i32 noundef %curr_desc_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 148
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr2 = getelementptr i8, ptr %1, i32 150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 8) #4, !srcloc !61
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ww.025 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp ne i8 %5, 0
  %inc = add nuw i16 %ww.025, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %ww.025)
  %cmp = icmp ult i16 %ww.025, -17
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr12 = getelementptr i8, ptr %1, i32 152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %curr_desc_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #4, !srcloc !63
  br i1 %tobool.not, label %for.end.if.end18_crit_edge, label %if.then16

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !61
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetCurrRx1DescAddr(ptr nocapture noundef readonly %priv, i32 noundef %curr_desc_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 156
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr2 = getelementptr i8, ptr %1, i32 158
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 8) #4, !srcloc !61
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ww.025 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp ne i8 %5, 0
  %inc = add nuw i16 %ww.025, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %ww.025)
  %cmp = icmp ult i16 %ww.025, -17
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr12 = getelementptr i8, ptr %1, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %curr_desc_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #4, !srcloc !63
  br i1 %tobool.not, label %for.end.if.end18_crit_edge, label %if.then16

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !61
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetCurrTx0DescAddrEx(ptr nocapture noundef readonly %priv, i32 noundef %curr_desc_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 124
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr2 = getelementptr i8, ptr %1, i32 126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 8) #4, !srcloc !61
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %ww.025 = phi i16 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp ne i8 %5, 0
  %inc = add nuw i16 %ww.025, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17, i16 %ww.025)
  %cmp = icmp ult i16 %ww.025, -17
  %or.cond = select i1 %tobool9.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr12 = getelementptr i8, ptr %1, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %curr_desc_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %6) #4, !srcloc !63
  br i1 %tobool.not, label %for.end.if.end18_crit_edge, label %if.then16

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !61
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %for.end.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetCurrAC0DescAddrEx(ptr nocapture noundef readonly %priv, i32 noundef %curr_desc_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 132
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %3 = and i8 %2, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body.preheader_crit_edge, label %if.then

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr2 = getelementptr i8, ptr %1, i32 134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 8) #4, !srcloc !61
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %ww.040 = phi i16 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %5 = and i8 %4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %for.body.if.end22_crit_edge, label %for.inc

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

for.inc:                                          ; preds = %for.body
  %inc = add nuw i16 %ww.040, 1
  %cmp = icmp ult i16 %ww.040, -17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACvSetCurrAC0DescAddrEx.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACvSetCurrAC0DescAddrEx, %if.then20)) #4
          to label %if.end22 [label %if.then20], !srcloc !64

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACvSetCurrAC0DescAddrEx.__UNIQUE_ID_ddebug358, ptr noundef nonnull @.str.14) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %do.body, %for.body.if.end22_crit_edge
  %add.ptr23 = getelementptr i8, ptr %1, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %curr_desc_addr) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %6) #4, !srcloc !63
  br i1 %tobool.not, label %if.end22.if.end29_crit_edge, label %if.then27

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 8) #4, !srcloc !61
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end22.if.end29_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetCurrTXDescAddr(i32 noundef %iTxType, ptr nocapture noundef readonly %priv, i32 noundef %curr_desc_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %iTxType to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %iTxType, label %entry.if.end3_crit_edge [
    i32 1, label %if.then
    i32 0, label %if.then2
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @MACvSetCurrAC0DescAddrEx(ptr noundef %priv, i32 noundef %curr_desc_addr)
  br label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @MACvSetCurrTx0DescAddrEx(ptr noundef %priv, i32 noundef %curr_desc_addr)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then, %entry.if.end3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvTimer0MicroSDelay(ptr nocapture noundef readonly %priv, i32 noundef %uDelay) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  %add.ptr1 = getelementptr i8, ptr %1, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %uDelay) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 3) #4, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %uDelay)
  %cmp427.not = icmp eq i32 %uDelay, 0
  br label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.inc11.for.cond3.preheader_crit_edge, %entry
  %ii.029 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11.for.cond3.preheader_crit_edge ]
  br i1 %cmp427.not, label %for.cond3.preheader.for.inc11_crit_edge, label %for.cond3.preheader.for.body5_crit_edge

for.cond3.preheader.for.body5_crit_edge:          ; preds = %for.cond3.preheader
  br label %for.body5

for.cond3.preheader.for.inc11_crit_edge:          ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc11

for.cond3:                                        ; preds = %for.body5
  %inc = add nuw i32 %uu.028, 1
  %exitcond.not = icmp eq i32 %inc, %uDelay
  br i1 %exitcond.not, label %for.cond3.for.inc11_crit_edge, label %for.cond3.for.body5_crit_edge

for.cond3.for.body5_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body5

for.cond3.for.inc11_crit_edge:                    ; preds = %for.cond3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc11

for.body5:                                        ; preds = %for.cond3.for.body5_crit_edge, %for.cond3.preheader.for.body5_crit_edge
  %uu.028 = phi i32 [ %inc, %for.cond3.for.body5_crit_edge ], [ 0, %for.cond3.preheader.for.body5_crit_edge ]
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp7 = icmp ne i8 %3, 0
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %or.cond = and i1 %cmp7, %tobool.not
  br i1 %or.cond, label %for.cond3, label %if.then

if.then:                                          ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  br label %cleanup

for.inc11:                                        ; preds = %for.cond3.for.inc11_crit_edge, %for.cond3.preheader.for.inc11_crit_edge
  %inc12 = add nuw nsw i32 %ii.029, 1
  %exitcond30.not = icmp eq i32 %inc12, 66
  br i1 %exitcond30.not, label %for.end13, label %for.inc11.for.cond3.preheader_crit_edge

for.inc11.for.cond3.preheader_crit_edge:          ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond3.preheader

for.end13:                                        ; preds = %for.inc11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  br label %cleanup

cleanup:                                          ; preds = %for.end13, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvOneShotTimer1MicroSec(ptr nocapture noundef readonly %priv, i32 noundef %uDelayTime) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #4, !srcloc !61
  %add.ptr1 = getelementptr i8, ptr %1, i32 188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %2 = tail call i32 @llvm.bswap.i32(i32 %uDelayTime) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 3) #4, !srcloc !61
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetMISCFifo(ptr nocapture noundef readonly %priv, i16 noundef zeroext %offset, i32 noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 273, i16 %offset)
  %cmp = icmp ugt i16 %offset, 273
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %2 = tail call i16 @llvm.bswap.i16(i16 %offset) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #4, !srcloc !66
  %add.ptr2 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %3 = tail call i32 @llvm.bswap.i32(i32 %data) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %3) #4, !srcloc !63
  %add.ptr3 = getelementptr i8, ptr %1, i32 182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 256) #4, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @MACbPSWakeup(ptr nocapture noundef readonly %priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 97
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %and3.i = and i8 %2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %entry
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %4 = and i8 %3, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %4) #4, !srcloc !61
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body
  %ww.033 = phi i32 [ 0, %do.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %for.inc, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %ww.033, 1
  %exitcond.not = icmp eq i32 %inc, 65520
  br i1 %exitcond.not, label %do.body14, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

do.body14:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACbPSWakeup.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACbPSWakeup, %if.then19)) #4
          to label %cleanup [label %if.then19], !srcloc !64

if.then19:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACbPSWakeup.__UNIQUE_ID_ddebug359, ptr noundef nonnull @.str.16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %do.body14, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ false, %if.then19 ], [ false, %do.body14 ], [ true, %for.body.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvSetKeyEntry(ptr nocapture noundef readonly %priv, i16 noundef zeroext %wKeyCtl, i32 noundef %uEntryIdx, i32 noundef %uKeyIdx, ptr nocapture noundef readonly %pbyAddr, ptr nocapture noundef readonly %pdwKey, i8 noundef zeroext %local_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %local_id)
  %cmp = icmp ult i8 %local_id, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = trunc i32 %uEntryIdx to i16
  %3 = mul i16 %2, 22
  %conv3 = add i16 %3, 32
  %conv4 = zext i16 %wKeyCtl to i32
  %shl = shl nuw i32 %conv4, 16
  %add.ptr = getelementptr i8, ptr %pbyAddr, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr, align 1
  %conv5 = zext i8 %5 to i32
  %add.ptr6 = getelementptr i8, ptr %pbyAddr, i32 5
  %6 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr6, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw nsw i32 %conv8, 8
  %or10 = or i32 %shl9, %conv5
  %or13 = or i32 %or10, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACvSetKeyEntry, %if.then16)) #4
          to label %do.end [label %if.then16], !srcloc !64

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv17 = zext i16 %conv3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACvSetKeyEntry.__UNIQUE_ID_ddebug360, ptr noundef nonnull @.str.18, i32 noundef %conv17, i32 noundef %or13, i32 noundef %conv4) #4
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %add.ptr20 = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv3) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %8) #4, !srcloc !66
  %add.ptr21 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %9 = tail call i32 @llvm.bswap.i32(i32 %or13) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %9) #4, !srcloc !63
  %add.ptr22 = getelementptr i8, ptr %1, i32 182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 256) #4, !srcloc !66
  %inc = add i16 %3, 33
  %add.ptr23 = getelementptr i8, ptr %pbyAddr, i32 3
  %10 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr23, align 1
  %conv24 = zext i8 %11 to i32
  %add.ptr27 = getelementptr i8, ptr %pbyAddr, i32 2
  %12 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr27, align 1
  %conv28 = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv24, 16
  %15 = shl nuw nsw i32 %conv28, 8
  %shl30 = or i32 %15, %14
  %add.ptr31 = getelementptr i8, ptr %pbyAddr, i32 1
  %16 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr31, align 1
  %conv32 = zext i8 %17 to i32
  %or33 = or i32 %shl30, %conv32
  %shl34 = shl nuw i32 %or33, 8
  %18 = ptrtoint ptr %pbyAddr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pbyAddr, align 1
  %conv35 = zext i8 %19 to i32
  %or36 = or i32 %shl34, %conv35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACvSetKeyEntry, %if.then49)) #4
          to label %do.end53 [label %if.then49], !srcloc !64

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv50 = zext i16 %inc to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACvSetKeyEntry.__UNIQUE_ID_ddebug361, ptr noundef nonnull @.str.19, i32 noundef %conv50, i32 noundef %or36) #4
  br label %do.end53

do.end53:                                         ; preds = %if.then49, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %20 = tail call i16 @llvm.bswap.i16(i16 %inc) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %20) #4, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or36) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 256) #4, !srcloc !66
  %inc57 = add i16 %3, 34
  %uKeyIdx.tr = trunc i32 %uKeyIdx to i16
  %22 = shl i16 %uKeyIdx.tr, 2
  %conv61 = add i16 %inc57, %22
  %conv77 = zext i16 %conv61 to i32
  br label %do.body64

do.body64:                                        ; preds = %do.end81.do.body64_crit_edge, %do.end53
  %pdwKey.addr.0143 = phi ptr [ %pdwKey, %do.end53 ], [ %incdec.ptr, %do.end81.do.body64_crit_edge ]
  %ii.0142 = phi i32 [ 0, %do.end53 ], [ %inc88, %do.end81.do.body64_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@MACvSetKeyEntry, %if.then76)) #4
          to label %do.end81 [label %if.then76], !srcloc !64

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #6
  %add78 = add nuw nsw i32 %ii.0142, %conv77
  %23 = ptrtoint ptr %pdwKey.addr.0143 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pdwKey.addr.0143, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @MACvSetKeyEntry.__UNIQUE_ID_ddebug362, ptr noundef nonnull @.str.20, i32 noundef %ii.0142, i32 noundef %add78, i32 noundef %24) #4
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.body64
  %25 = trunc i32 %ii.0142 to i16
  %conv84 = add i16 %conv61, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv84) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr20, i16 %26) #4, !srcloc !66
  %incdec.ptr = getelementptr i32, ptr %pdwKey.addr.0143, i32 1
  %27 = ptrtoint ptr %pdwKey.addr.0143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pdwKey.addr.0143, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %29) #4, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr22, i16 256) #4, !srcloc !66
  %inc88 = add nuw nsw i32 %ii.0142, 1
  %exitcond.not = icmp eq i32 %inc88, 4
  br i1 %exitcond.not, label %do.end81.cleanup_crit_edge, label %do.end81.do.body64_crit_edge

do.end81.do.body64_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body64

do.end81.cleanup_crit_edge:                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %do.end81.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @MACvDisableKeyEntry(ptr nocapture noundef readonly %priv, i32 noundef %uEntryIdx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %port_offset = getelementptr inbounds %struct.vnt_private, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %port_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_offset, align 4
  %2 = trunc i32 %uEntryIdx to i16
  %3 = mul i16 %2, 22
  %conv1 = add i16 %3, 32
  %add.ptr = getelementptr i8, ptr %1, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv1) #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %4) #4, !srcloc !66
  %add.ptr2 = getelementptr i8, ptr %1, i32 184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #4, !srcloc !63
  %add.ptr3 = getelementptr i8, ptr %1, i32 182
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr3, i16 256) #4, !srcloc !66
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/vt6655/mac.c", i32 328, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug350, !1, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/vt6655/mac.c", i32 336, i32 3}
!8 = !{ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug351, !7, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/staging/vt6655/mac.c", i32 348, i32 3}
!11 = !{ptr @MACbSafeRxOff.__UNIQUE_ID_ddebug352, !10, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/vt6655/mac.c", i32 383, i32 3}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug353, !13, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/vt6655/mac.c", i32 391, i32 3}
!18 = !{ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug354, !17, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/vt6655/mac.c", i32 404, i32 3}
!21 = !{ptr @MACbSafeTxOff.__UNIQUE_ID_ddebug355, !20, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/staging/vt6655/mac.c", i32 430, i32 3}
!24 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @MACbSafeStop.__UNIQUE_ID_ddebug356, !23, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/staging/vt6655/mac.c", i32 435, i32 3}
!28 = !{ptr @MACbSafeStop.__UNIQUE_ID_ddebug357, !27, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/vt6655/mac.c", i32 638, i32 3}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @MACvSetCurrAC0DescAddrEx.__UNIQUE_ID_ddebug358, !30, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/vt6655/mac.c", i32 742, i32 3}
!35 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @MACbPSWakeup.__UNIQUE_ID_ddebug359, !34, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/staging/vt6655/mac.c", i32 783, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug360, !38, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/vt6655/mac.c", i32 799, i32 2}
!43 = !{ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug361, !42, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/vt6655/mac.c", i32 809, i32 3}
!46 = !{ptr @MACvSetKeyEntry.__UNIQUE_ID_ddebug362, !45, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 5035737}
!57 = !{i64 2152575082}
!58 = !{i64 5035957}
!59 = !{i64 2152576306}
!60 = !{i64 2152576687}
!61 = !{i64 5035342}
!62 = !{i64 2152577661}
!63 = !{i64 5035539}
!64 = !{i64 2149009157, i64 2149009162, i64 2149009175, i64 2149009219, i64 2149009253, i64 2149009274}
!65 = !{i64 2152577111}
!66 = !{i64 5034919}
