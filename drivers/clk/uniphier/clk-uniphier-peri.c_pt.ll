; ModuleID = '/llk/IR_all_yes/drivers/clk/uniphier/clk-uniphier-peri.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-peri.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.uniphier_clk_gate_data = type { ptr, i32, i32 }
%struct.uniphier_clk_data = type { ptr, i32, i32, %union.anon }
%union.anon = type { %struct.uniphier_clk_mux_data }
%struct.uniphier_clk_mux_data = type { [8 x ptr], i32, i32, [8 x i32], [8 x i32] }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart0\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"uart\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart1\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart2\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uart3\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-common\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c0\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c3\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c4\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scssi0\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@uniphier_ld4_peri_clk_data = dso_local constant { <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, %struct.uniphier_clk_data }>, [336 x i8] } { <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, %struct.uniphier_clk_data }> <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str, i32 3, i32 0, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 19 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.2, i32 3, i32 1, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 20 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.3, i32 3, i32 2, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 21 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.4, i32 3, i32 3, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 22 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.5, i32 3, i32 -1, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 32, i32 1 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.7, i32 3, i32 4, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.5, i32 36, i32 5 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.8, i32 3, i32 5, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.5, i32 36, i32 6 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.9, i32 3, i32 6, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.5, i32 36, i32 7 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.10, i32 3, i32 7, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.5, i32 36, i32 8 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.11, i32 3, i32 8, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.5, i32 36, i32 9 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.12, i32 3, i32 11, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 32, i32 17 }, [92 x i8] undef } }, %struct.uniphier_clk_data zeroinitializer }>, [336 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c5\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c6\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scssi1\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scssi2\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scssi3\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcssi\00", [26 x i8] zeroinitializer }, align 32
@uniphier_pro4_peri_clk_data = dso_local constant { <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, %struct.uniphier_clk_data }>, [492 x i8] } { <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } }, %struct.uniphier_clk_data }> <{ { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str, i32 3, i32 0, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 19 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.2, i32 3, i32 1, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 20 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.3, i32 3, i32 2, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 21 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.4, i32 3, i32 3, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.1, i32 36, i32 22 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.7, i32 3, i32 4, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 24 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.8, i32 3, i32 5, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 25 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.9, i32 3, i32 6, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 26 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.10, i32 3, i32 7, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 27 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.11, i32 3, i32 8, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 28 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.14, i32 3, i32 9, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 29 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.15, i32 3, i32 10, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.6, i32 36, i32 30 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.12, i32 3, i32 11, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 32, i32 17 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.16, i32 3, i32 12, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 32, i32 18 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.17, i32 3, i32 13, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 32, i32 19 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.18, i32 3, i32 14, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 32, i32 20 }, [92 x i8] undef } }, { ptr, i32, i32, { %struct.uniphier_clk_gate_data, [92 x i8] } } { ptr @.str.19, i32 3, i32 15, { %struct.uniphier_clk_gate_data, [92 x i8] } { %struct.uniphier_clk_gate_data { ptr @.str.13, i32 36, i32 14 }, [92 x i8] undef } }, %struct.uniphier_clk_data zeroinitializer }>, [492 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 28, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 29, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 30, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 31, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 32, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 33, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 34, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 35, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 36, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 37, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 38, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"uniphier_ld4_peri_clk_data\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 27, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 52, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 53, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 55, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 56, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 57, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 58, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [28 x i8] c"uniphier_pro4_peri_clk_data\00", align 1
@___asan_gen_.84 = private constant [44 x i8] c"../drivers/clk/uniphier/clk-uniphier-peri.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 42, i32 32 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @uniphier_ld4_peri_clk_data, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @uniphier_pro4_peri_clk_data], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_ld4_peri_clk_data to i32), i32 1392, i32 1728, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_pro4_peri_clk_data to i32), i32 1972, i32 2464, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 29, i32 2}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 30, i32 2}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 31, i32 2}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 32, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 33, i32 2}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 34, i32 2}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 35, i32 2}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 36, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 37, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 38, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @uniphier_ld4_peri_clk_data, !26, !"uniphier_ld4_peri_clk_data", i1 false, i1 false}
!26 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 27, i32 32}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 52, i32 2}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 53, i32 2}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 55, i32 2}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 56, i32 2}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 57, i32 2}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 58, i32 2}
!39 = !{ptr @uniphier_pro4_peri_clk_data, !40, !"uniphier_pro4_peri_clk_data", i1 false, i1 false}
!40 = !{!"../drivers/clk/uniphier/clk-uniphier-peri.c", i32 42, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
