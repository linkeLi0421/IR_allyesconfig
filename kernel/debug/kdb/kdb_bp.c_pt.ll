; ModuleID = '/llk/IR_all_yes/kernel/debug/kdb/kdb_bp.c_pt.bc'
source_filename = "../kernel/debug/kdb/kdb_bp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct._kdb_bp = type { i32, i16, i32 }
%struct._kdbtab = type { ptr, ptr, ptr, ptr, i16, i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.kgdb_arch = type { [4 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@kdb_breakpoints = dso_local global { [16 x %struct._kdb_bp], [32 x i8] } zeroinitializer, align 32
@kdb_flags = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: bp %d bp_enabled %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__func__.kdb_bp_install = private unnamed_addr constant [15 x i8] c"kdb_bp_install\00", align 1
@__func__.kdb_bp_remove = private unnamed_addr constant [14 x i8] c"kdb_bp_remove\00", align 1
@bptab = internal global { [6 x %struct._kdbtab], [32 x i8] } { [6 x %struct._kdbtab] [%struct._kdbtab { ptr @.str.6, ptr @kdb_bp, ptr @.str.7, ptr @.str.8, i16 0, i32 1073741888, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.9, ptr @kdb_bp, ptr @.str.7, ptr @.str.10, i16 0, i32 1073741888, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.11, ptr @kdb_bc, ptr @.str.12, ptr @.str.13, i16 0, i32 64, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.14, ptr @kdb_bc, ptr @.str.12, ptr @.str.15, i16 0, i32 64, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.16, ptr @kdb_bc, ptr @.str.12, ptr @.str.17, i16 0, i32 64, %struct.list_head zeroinitializer }, %struct._kdbtab { ptr @.str.18, ptr @kdb_ss, ptr @.str.19, ptr @.str.20, i16 1, i32 1073741888, %struct.list_head zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@arch_kgdb_ops = external dso_local local_unnamed_addr constant %struct.kgdb_arch, align 4
@bphcmd = internal global { %struct._kdbtab, [32 x i8] } { %struct._kdbtab { ptr @.str.21, ptr @kdb_bp, ptr @.str.7, ptr @.str.41, i16 0, i32 1073741888, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: bp_installed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@__func__._kdb_bp_install = private unnamed_addr constant [16 x i8] c"_kdb_bp_install\00", align 1
@kdb_state = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: delayed bp\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: failed to set breakpoint at 0x%lx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"Software breakpoints are unavailable.\0A  Boot the kernel with rodata=off\0A  OR use hw breaks: help bph\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"regs->ip = 0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bp\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"[<vaddr>]\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Set/Display breakpoints\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bl\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Display breakpoints\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bc\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"<bpnum>\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Clear Breakpoint\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"be\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enable Breakpoint\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bd\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Disable Breakpoint\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ss\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Single Step\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bph\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"You already have a breakpoint at 0x%08lx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BP #%d at \00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A    is enabled \00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A    is disabled\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"  addr at %016lx, hardtype=%d installed=%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@kdb_rwtypes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Instruction(i)\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Instruction(Register)\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Data Write\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I/O\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Data Access\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"datar\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dataw\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inst\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"*\00", [30 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Breakpoint %d at 0x%lx cleared\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Breakpoint %d at 0x%lx enabled\00", [33 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Breakpoint %d at 0x%lx disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[datar [length]|dataw [length]]   Set hw brk\00", [51 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"kdb_breakpoints\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 25, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 182, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"bptab\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 525, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"bphcmd\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 565, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 133, i32 14 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 141, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 154, i32 14 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 157, i32 15 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 111, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 526, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 528, i32 12 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 529, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 532, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 535, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 538, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 540, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 541, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 544, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 547, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 550, i32 12 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 553, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 556, i32 12 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 558, i32 12 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 559, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 329, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 348, i32 15 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 240, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 241, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 245, i32 14 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 247, i32 14 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 249, i32 13 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 252, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant [12 x i8] c"kdb_rwtypes\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 32, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 33, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 34, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 35, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 36, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 37, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 55, i32 34 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 57, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 59, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 411, i32 22 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 454, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 465, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 477, i32 15 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [29 x i8] c"../kernel/debug/kdb/kdb_bp.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 569, i32 10 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @kdb_breakpoints, ptr @.str, ptr @bptab, ptr @bphcmd, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @kdb_rwtypes, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_breakpoints to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bptab to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bphcmd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kdb_rwtypes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_bp_install(ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 0, %entry ], [ %inc, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %bp_enabled = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 1
  %1 = ptrtoint ptr %bp_enabled to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %bp_enabled, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.kdb_bp_install, i32 noundef %i.015, i32 noundef %bf.cast) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %bp_enabled1 = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 1
  %2 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load2 = load i16, ptr %bp_enabled1, align 4
  %3 = and i16 %bf.load2, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool6.not = icmp eq i16 %3, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %4 = load i32, ptr @kdb_flags, align 4
  %and.i = and i32 %4, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then7.if.end.i_crit_edge, label %if.then.i

if.then7.if.end.i_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load.i = load i16, ptr %bp_enabled1, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 9
  %bf.clear.i = and i16 %bf.lshr.i, 1
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %call.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__._kdb_bp_install, i32 noundef %bf.cast.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then7.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %6 = load i32, ptr @kdb_state, align 4
  %and1.i = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load4.i = load i16, ptr %bp_enabled1, align 4
  %bf.clear5.i = and i16 %bf.load4.i, -257
  store i16 %bf.clear5.i, ptr %bp_enabled1, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %8 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load8.i = load i16, ptr %bp_enabled1, align 4
  %9 = and i16 %bf.load8.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool12.not.i = icmp eq i16 %9, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end6.i.if.end9_crit_edge

if.end6.i.if.end9_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end14.i:                                       ; preds = %if.end6.i
  %10 = and i16 %bf.load8.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool20.not.i = icmp eq i16 %10, 0
  br i1 %tobool20.not.i, label %lor.lhs.false.i, label %if.end14.i.if.then28.i_crit_edge

if.end14.i.if.then28.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

lor.lhs.false.i:                                  ; preds = %if.end14.i
  %11 = and i16 %bf.load8.i, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool25.not.i = icmp eq i16 %11, 0
  %and26.i = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  %or.cond.i = select i1 %tobool25.not.i, i1 true, i1 %tobool27.not.i
  br i1 %or.cond.i, label %if.end34.i, label %lor.lhs.false.i.if.then28.i_crit_edge

lor.lhs.false.i.if.then28.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then28.i

if.then28.i:                                      ; preds = %lor.lhs.false.i.if.then28.i_crit_edge, %if.end14.i.if.then28.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %12 = load i32, ptr @kdb_flags, align 4
  %and29.i = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then28.i.if.end33.i_crit_edge, label %if.then31.i

if.then28.i.if.end33.i_crit_edge:                 ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i

if.then31.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %call32.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__._kdb_bp_install) #7
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then31.i, %if.then28.i.if.end33.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %13 = load i32, ptr @kdb_flags, align 4
  %and.i.i = and i32 %13, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end33.i.kdb_handle_bp.exit.i_crit_edge, label %if.then.i.i

if.end33.i.kdb_handle_bp.exit.i_crit_edge:        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %kdb_handle_bp.exit.i

if.then.i.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.5, i32 noundef %15) #7
  br label %kdb_handle_bp.exit.i

kdb_handle_bp.exit.i:                             ; preds = %if.then.i.i, %if.end33.i.kdb_handle_bp.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %16 = load i32, ptr @kdb_state, align 4
  %or.i.i.i = or i32 %16, 32
  store i32 %or.i.i.i, ptr @kdb_state, align 4
  %17 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %bp_enabled1, align 4
  %bf.clear2.i.i = and i16 %bf.load.i.i, -385
  %bf.set3.i.i = or i16 %bf.clear2.i.i, 128
  store i16 %bf.set3.i.i, ptr %bp_enabled1, align 4
  br label %if.end9

if.end34.i:                                       ; preds = %lor.lhs.false.i
  %bf.lshr36.i = lshr i16 %bf.load8.i, 10
  %bf.clear37.i = and i16 %bf.lshr36.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear37.i)
  %tobool39.not.i = icmp eq i16 %bf.clear37.i, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %if.else.i

if.then40.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %call41.i = tail call i32 @dbg_set_sw_break(i32 noundef %19) #7
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast38.i = zext i16 %bf.clear37.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 4) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 4), align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %bph_length.i = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 2
  %23 = ptrtoint ptr %bph_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bph_length.i, align 4
  %call48.i = tail call i32 %20(i32 noundef %22, i32 noundef %24, i32 noundef %bf.cast38.i) #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then40.i
  %ret.0.i = phi i32 [ %call48.i, %if.else.i ], [ %call41.i, %if.then40.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp.i, label %if.then50.i, label %if.else55.i

if.then50.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load52.i = load i16, ptr %bp_enabled1, align 4
  %bf.set54.i = or i16 %bf.load52.i, 512
  store i16 %bf.set54.i, ptr %bp_enabled1, align 4
  br label %if.end9

if.else55.i:                                      ; preds = %if.end49.i
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %call57.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__._kdb_bp_install, i32 noundef %27) #7
  %28 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load59.i = load i16, ptr %bp_enabled1, align 4
  %29 = and i16 %bf.load59.i, 15360
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool63.not.i = icmp eq i16 %29, 0
  br i1 %tobool63.not.i, label %if.then64.i, label %if.else55.i.if.end9_crit_edge

if.else55.i.if.end9_crit_edge:                    ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then64.i:                                      ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call65.i = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.4) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then64.i, %if.else55.i.if.end9_crit_edge, %if.then50.i, %kdb_handle_bp.exit.i, %if.end6.i.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdb_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_bp_remove() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %entry
  %i.015 = phi i32 [ 15, %entry ], [ %dec, %if.end9.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_flags to i32))
  %0 = load i32, ptr @kdb_flags, align 4
  %and = and i32 %0, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %bp_enabled = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 1
  %1 = ptrtoint ptr %bp_enabled to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %bp_enabled, align 4
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.kdb_bp_remove, i32 noundef %i.015, i32 noundef %bf.cast) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %bp_enabled1 = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 1
  %2 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load2 = load i16, ptr %bp_enabled1, align 4
  %3 = and i16 %bf.load2, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool6.not = icmp eq i16 %3, 0
  br i1 %tobool6.not, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then7:                                         ; preds = %if.end
  %4 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %bp_enabled1, align 4
  %5 = and i16 %bf.load.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i, label %if.then7.if.end9_crit_edge, label %if.end.i

if.then7.if.end9_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end.i:                                         ; preds = %if.then7
  %bf.lshr2.i = lshr i16 %bf.load.i, 10
  %bf.clear3.i = and i16 %bf.lshr2.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear3.i)
  %tobool5.not.i = icmp eq i16 %bf.clear3.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @dbg_remove_sw_break(i32 noundef %7) #7
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast4.i = zext i16 %bf.clear3.i to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 5) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 5), align 4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %bph_length.i = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %i.015, i32 2
  %11 = ptrtoint ptr %bph_length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bph_length.i, align 4
  %call13.i = tail call i32 %8(i32 noundef %10, i32 noundef %12, i32 noundef %bf.cast4.i) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i, %if.then6.i
  %ret.0.i = phi i32 [ %call13.i, %if.else.i ], [ %call.i, %if.then6.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp.i = icmp eq i32 %ret.0.i, 0
  br i1 %cmp.i, label %if.then15.i, label %if.end14.i.if.end9_crit_edge

if.end14.i.if.end9_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then15.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bp_enabled1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load17.i = load i16, ptr %bp_enabled1, align 4
  %bf.clear18.i = and i16 %bf.load17.i, -513
  store i16 %bf.clear18.i, ptr %bp_enabled1, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then15.i, %if.end14.i.if.end9_crit_edge, %if.then7.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %dec = add nsw i32 %i.015, -1
  %cmp.not = icmp eq i32 %i.015, 0
  br i1 %cmp.not, label %for.end, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @kdb_initbptab() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @kdb_breakpoints, i32 0, i32 192)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %bp.04 = phi ptr [ @kdb_breakpoints, %entry ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %bp_free = getelementptr inbounds %struct._kdb_bp, ptr %bp.04, i32 0, i32 1
  %1 = ptrtoint ptr %bp_free to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load = load i16, ptr %bp_free, align 4
  %bf.set = or i16 %bf.load, -32768
  store i16 %bf.set, ptr %bp_free, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %incdec.ptr = getelementptr %struct._kdb_bp, ptr %bp.04, i32 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  tail call void @kdb_register_table(ptr noundef nonnull @bptab, i32 noundef 6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.kgdb_arch, ptr @arch_kgdb_ops, i32 0, i32 1), align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kdb_register_table(ptr noundef nonnull @bphcmd, i32 noundef 1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_register_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_set_sw_break(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dbg_remove_sw_break(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_bp(i32 noundef %argc, ptr noundef %argv) #0 align 64 {
entry:
  %symname = alloca ptr, align 4
  %offset = alloca i32, align 4
  %nextarg = alloca i32, align 4
  %template = alloca %struct._kdb_bp, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %symname) #7
  %0 = ptrtoint ptr %symname to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %symname, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %1 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %offset, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nextarg) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %template) #7
  %2 = call ptr @memset(ptr %template, i32 0, i32 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp = icmp eq i32 %argc, 0
  br i1 %cmp, label %for.body.preheader, label %if.end3

for.body.preheader:                               ; preds = %entry
  %bf.load = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef nonnull @kdb_breakpoints, i32 noundef 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.preheader.for.inc_crit_edge
  %bf.load.1 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.1)
  %tobool.not.1 = icmp sgt i16 %bf.load.1, -1
  br i1 %tobool.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), i32 noundef 1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %bf.load.2 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.2)
  %tobool.not.2 = icmp sgt i16 %bf.load.2, -1
  br i1 %tobool.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), i32 noundef 2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %bf.load.3 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.3)
  %tobool.not.3 = icmp sgt i16 %bf.load.3, -1
  br i1 %tobool.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), i32 noundef 3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %bf.load.4 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.4)
  %tobool.not.4 = icmp sgt i16 %bf.load.4, -1
  br i1 %tobool.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), i32 noundef 4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %bf.load.5 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.5)
  %tobool.not.5 = icmp sgt i16 %bf.load.5, -1
  br i1 %tobool.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), i32 noundef 5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %bf.load.6 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.6)
  %tobool.not.6 = icmp sgt i16 %bf.load.6, -1
  br i1 %tobool.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), i32 noundef 6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %bf.load.7 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.7)
  %tobool.not.7 = icmp sgt i16 %bf.load.7, -1
  br i1 %tobool.not.7, label %if.end.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), i32 noundef 7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %bf.load.8 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.8)
  %tobool.not.8 = icmp sgt i16 %bf.load.8, -1
  br i1 %tobool.not.8, label %if.end.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.8

if.end.8:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), i32 noundef 8)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.end.8, %for.inc.7.for.inc.8_crit_edge
  %bf.load.9 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.9)
  %tobool.not.9 = icmp sgt i16 %bf.load.9, -1
  br i1 %tobool.not.9, label %if.end.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.9

if.end.9:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), i32 noundef 9)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.end.9, %for.inc.8.for.inc.9_crit_edge
  %bf.load.10 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.10)
  %tobool.not.10 = icmp sgt i16 %bf.load.10, -1
  br i1 %tobool.not.10, label %if.end.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.10

if.end.10:                                        ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), i32 noundef 10)
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.end.10, %for.inc.9.for.inc.10_crit_edge
  %bf.load.11 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.11)
  %tobool.not.11 = icmp sgt i16 %bf.load.11, -1
  br i1 %tobool.not.11, label %if.end.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.11

if.end.11:                                        ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), i32 noundef 11)
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.end.11, %for.inc.10.for.inc.11_crit_edge
  %bf.load.12 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.12)
  %tobool.not.12 = icmp sgt i16 %bf.load.12, -1
  br i1 %tobool.not.12, label %if.end.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.12

if.end.12:                                        ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), i32 noundef 12)
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.end.12, %for.inc.11.for.inc.12_crit_edge
  %bf.load.13 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.13)
  %tobool.not.13 = icmp sgt i16 %bf.load.13, -1
  br i1 %tobool.not.13, label %if.end.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.13

if.end.13:                                        ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), i32 noundef 13)
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.end.13, %for.inc.12.for.inc.13_crit_edge
  %bf.load.14 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.14)
  %tobool.not.14 = icmp sgt i16 %bf.load.14, -1
  br i1 %tobool.not.14, label %if.end.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.14

if.end.14:                                        ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), i32 noundef 14)
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.14, %for.inc.13.for.inc.14_crit_edge
  %bf.load.15 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.15)
  %tobool.not.15 = icmp sgt i16 %bf.load.15, -1
  br i1 %tobool.not.15, label %if.end.15, label %for.inc.14.cleanup_crit_edge

for.inc.14.cleanup_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.15:                                        ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @kdb_printbp(ptr noundef getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), i32 noundef 15)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %3 = ptrtoint ptr %nextarg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %nextarg, align 4
  %call = call i32 @kdbgetaddrarg(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %template, ptr noundef nonnull %offset, ptr noundef nonnull %symname) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %4 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %call12 = call i32 @kgdb_validate_break_address(i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body18.preheader, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body18.preheader:                             ; preds = %if.end10
  %bf.load20 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20)
  %tobool23.not = icmp sgt i16 %bf.load20, -1
  br i1 %tobool23.not, label %for.inc26, label %for.body18.preheader.if.end32_crit_edge

for.body18.preheader.if.end32_crit_edge:          ; preds = %for.body18.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26:                                        ; preds = %for.body18.preheader
  %bf.load20.1 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.1)
  %tobool23.not.1 = icmp sgt i16 %bf.load20.1, -1
  br i1 %tobool23.not.1, label %for.inc26.1, label %for.inc26.if.end32_crit_edge

for.inc26.if.end32_crit_edge:                     ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.1:                                      ; preds = %for.inc26
  %bf.load20.2 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.2)
  %tobool23.not.2 = icmp sgt i16 %bf.load20.2, -1
  br i1 %tobool23.not.2, label %for.inc26.2, label %for.inc26.1.if.end32_crit_edge

for.inc26.1.if.end32_crit_edge:                   ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.2:                                      ; preds = %for.inc26.1
  %bf.load20.3 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.3)
  %tobool23.not.3 = icmp sgt i16 %bf.load20.3, -1
  br i1 %tobool23.not.3, label %for.inc26.3, label %for.inc26.2.if.end32_crit_edge

for.inc26.2.if.end32_crit_edge:                   ; preds = %for.inc26.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.3:                                      ; preds = %for.inc26.2
  %bf.load20.4 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.4)
  %tobool23.not.4 = icmp sgt i16 %bf.load20.4, -1
  br i1 %tobool23.not.4, label %for.inc26.4, label %for.inc26.3.if.end32_crit_edge

for.inc26.3.if.end32_crit_edge:                   ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.4:                                      ; preds = %for.inc26.3
  %bf.load20.5 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.5)
  %tobool23.not.5 = icmp sgt i16 %bf.load20.5, -1
  br i1 %tobool23.not.5, label %for.inc26.5, label %for.inc26.4.if.end32_crit_edge

for.inc26.4.if.end32_crit_edge:                   ; preds = %for.inc26.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.5:                                      ; preds = %for.inc26.4
  %bf.load20.6 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.6)
  %tobool23.not.6 = icmp sgt i16 %bf.load20.6, -1
  br i1 %tobool23.not.6, label %for.inc26.6, label %for.inc26.5.if.end32_crit_edge

for.inc26.5.if.end32_crit_edge:                   ; preds = %for.inc26.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.6:                                      ; preds = %for.inc26.5
  %bf.load20.7 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.7)
  %tobool23.not.7 = icmp sgt i16 %bf.load20.7, -1
  br i1 %tobool23.not.7, label %for.inc26.7, label %for.inc26.6.if.end32_crit_edge

for.inc26.6.if.end32_crit_edge:                   ; preds = %for.inc26.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.7:                                      ; preds = %for.inc26.6
  %bf.load20.8 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.8)
  %tobool23.not.8 = icmp sgt i16 %bf.load20.8, -1
  br i1 %tobool23.not.8, label %for.inc26.8, label %for.inc26.7.if.end32_crit_edge

for.inc26.7.if.end32_crit_edge:                   ; preds = %for.inc26.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.8:                                      ; preds = %for.inc26.7
  %bf.load20.9 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.9)
  %tobool23.not.9 = icmp sgt i16 %bf.load20.9, -1
  br i1 %tobool23.not.9, label %for.inc26.9, label %for.inc26.8.if.end32_crit_edge

for.inc26.8.if.end32_crit_edge:                   ; preds = %for.inc26.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.9:                                      ; preds = %for.inc26.8
  %bf.load20.10 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.10)
  %tobool23.not.10 = icmp sgt i16 %bf.load20.10, -1
  br i1 %tobool23.not.10, label %for.inc26.10, label %for.inc26.9.if.end32_crit_edge

for.inc26.9.if.end32_crit_edge:                   ; preds = %for.inc26.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.10:                                     ; preds = %for.inc26.9
  %bf.load20.11 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.11)
  %tobool23.not.11 = icmp sgt i16 %bf.load20.11, -1
  br i1 %tobool23.not.11, label %for.inc26.11, label %for.inc26.10.if.end32_crit_edge

for.inc26.10.if.end32_crit_edge:                  ; preds = %for.inc26.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.11:                                     ; preds = %for.inc26.10
  %bf.load20.12 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.12)
  %tobool23.not.12 = icmp sgt i16 %bf.load20.12, -1
  br i1 %tobool23.not.12, label %for.inc26.12, label %for.inc26.11.if.end32_crit_edge

for.inc26.11.if.end32_crit_edge:                  ; preds = %for.inc26.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.12:                                     ; preds = %for.inc26.11
  %bf.load20.13 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.13)
  %tobool23.not.13 = icmp sgt i16 %bf.load20.13, -1
  br i1 %tobool23.not.13, label %for.inc26.13, label %for.inc26.12.if.end32_crit_edge

for.inc26.12.if.end32_crit_edge:                  ; preds = %for.inc26.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.13:                                     ; preds = %for.inc26.12
  %bf.load20.14 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.14)
  %tobool23.not.14 = icmp sgt i16 %bf.load20.14, -1
  br i1 %tobool23.not.14, label %for.inc26.14, label %for.inc26.13.if.end32_crit_edge

for.inc26.13.if.end32_crit_edge:                  ; preds = %for.inc26.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.14:                                     ; preds = %for.inc26.13
  %bf.load20.15 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load20.15)
  %tobool23.not.15 = icmp sgt i16 %bf.load20.15, -1
  br i1 %tobool23.not.15, label %for.inc26.14.cleanup_crit_edge, label %for.inc26.14.if.end32_crit_edge

for.inc26.14.if.end32_crit_edge:                  ; preds = %for.inc26.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

for.inc26.14.cleanup_crit_edge:                   ; preds = %for.inc26.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %for.inc26.14.if.end32_crit_edge, %for.inc26.13.if.end32_crit_edge, %for.inc26.12.if.end32_crit_edge, %for.inc26.11.if.end32_crit_edge, %for.inc26.10.if.end32_crit_edge, %for.inc26.9.if.end32_crit_edge, %for.inc26.8.if.end32_crit_edge, %for.inc26.7.if.end32_crit_edge, %for.inc26.6.if.end32_crit_edge, %for.inc26.5.if.end32_crit_edge, %for.inc26.4.if.end32_crit_edge, %for.inc26.3.if.end32_crit_edge, %for.inc26.2.if.end32_crit_edge, %for.inc26.1.if.end32_crit_edge, %for.inc26.if.end32_crit_edge, %for.body18.preheader.if.end32_crit_edge
  %bp.1112.lcssa = phi ptr [ @kdb_breakpoints, %for.body18.preheader.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), %for.inc26.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), %for.inc26.1.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), %for.inc26.2.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), %for.inc26.3.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), %for.inc26.4.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), %for.inc26.5.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), %for.inc26.6.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), %for.inc26.7.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), %for.inc26.8.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), %for.inc26.9.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), %for.inc26.10.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), %for.inc26.11.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), %for.inc26.12.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), %for.inc26.13.if.end32_crit_edge ], [ getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), %for.inc26.14.if.end32_crit_edge ]
  %bpno.1111.lcssa = phi i32 [ 0, %for.body18.preheader.if.end32_crit_edge ], [ 1, %for.inc26.if.end32_crit_edge ], [ 2, %for.inc26.1.if.end32_crit_edge ], [ 3, %for.inc26.2.if.end32_crit_edge ], [ 4, %for.inc26.3.if.end32_crit_edge ], [ 5, %for.inc26.4.if.end32_crit_edge ], [ 6, %for.inc26.5.if.end32_crit_edge ], [ 7, %for.inc26.6.if.end32_crit_edge ], [ 8, %for.inc26.7.if.end32_crit_edge ], [ 9, %for.inc26.8.if.end32_crit_edge ], [ 10, %for.inc26.9.if.end32_crit_edge ], [ 11, %for.inc26.10.if.end32_crit_edge ], [ 12, %for.inc26.11.if.end32_crit_edge ], [ 13, %for.inc26.12.if.end32_crit_edge ], [ 14, %for.inc26.13.if.end32_crit_edge ], [ 15, %for.inc26.14.if.end32_crit_edge ]
  %6 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %argv, align 4
  %call33 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(4) @.str.21) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp eq i32 %call33, 0
  %bp_type = getelementptr inbounds %struct._kdb_bp, ptr %template, i32 0, i32 1
  %8 = ptrtoint ptr %bp_type to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load36 = load i16, ptr %bp_type, align 4
  %bf.clear = and i16 %bf.load36, -15361
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end32
  %bf.set = or i16 %bf.clear, 1024
  %9 = ptrtoint ptr %bp_type to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %bf.set, ptr %bp_type, align 4
  %call37 = call fastcc i32 @kdb_parsebp(i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull %nextarg, ptr noundef nonnull %template)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.then35.if.end45_crit_edge, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35.if.end45_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bp_type to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %bf.clear, ptr %bp_type, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then35.if.end45_crit_edge
  %bf.load50 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50)
  %tobool53.not = icmp sgt i16 %bf.load50, -1
  br i1 %tobool53.not, label %land.lhs.true, label %if.end45.for.inc61_crit_edge

if.end45.for.inc61_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61

land.lhs.true:                                    ; preds = %if.end45
  %11 = load i32, ptr @kdb_breakpoints, align 4
  %12 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp56 = icmp eq i32 %11, %13
  br i1 %cmp56, label %land.lhs.true.if.then57_crit_edge, label %land.lhs.true.for.inc61_crit_edge

land.lhs.true.for.inc61_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61

land.lhs.true.if.then57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then57:                                        ; preds = %land.lhs.true.15.if.then57_crit_edge, %land.lhs.true.14.if.then57_crit_edge, %land.lhs.true.13.if.then57_crit_edge, %land.lhs.true.12.if.then57_crit_edge, %land.lhs.true.11.if.then57_crit_edge, %land.lhs.true.10.if.then57_crit_edge, %land.lhs.true.9.if.then57_crit_edge, %land.lhs.true.8.if.then57_crit_edge, %land.lhs.true.7.if.then57_crit_edge, %land.lhs.true.6.if.then57_crit_edge, %land.lhs.true.5.if.then57_crit_edge, %land.lhs.true.4.if.then57_crit_edge, %land.lhs.true.3.if.then57_crit_edge, %land.lhs.true.2.if.then57_crit_edge, %land.lhs.true.1.if.then57_crit_edge, %land.lhs.true.if.then57_crit_edge
  %.lcssa = phi i32 [ %11, %land.lhs.true.if.then57_crit_edge ], [ %14, %land.lhs.true.1.if.then57_crit_edge ], [ %17, %land.lhs.true.2.if.then57_crit_edge ], [ %20, %land.lhs.true.3.if.then57_crit_edge ], [ %23, %land.lhs.true.4.if.then57_crit_edge ], [ %26, %land.lhs.true.5.if.then57_crit_edge ], [ %29, %land.lhs.true.6.if.then57_crit_edge ], [ %32, %land.lhs.true.7.if.then57_crit_edge ], [ %35, %land.lhs.true.8.if.then57_crit_edge ], [ %38, %land.lhs.true.9.if.then57_crit_edge ], [ %41, %land.lhs.true.10.if.then57_crit_edge ], [ %44, %land.lhs.true.11.if.then57_crit_edge ], [ %47, %land.lhs.true.12.if.then57_crit_edge ], [ %50, %land.lhs.true.13.if.then57_crit_edge ], [ %53, %land.lhs.true.14.if.then57_crit_edge ], [ %56, %land.lhs.true.15.if.then57_crit_edge ]
  %call59 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.22, i32 noundef %.lcssa) #7
  br label %cleanup

for.inc61:                                        ; preds = %land.lhs.true.for.inc61_crit_edge, %if.end45.for.inc61_crit_edge
  %bf.load50.1 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.1)
  %tobool53.not.1 = icmp sgt i16 %bf.load50.1, -1
  br i1 %tobool53.not.1, label %land.lhs.true.1, label %for.inc61.for.inc61.1_crit_edge

for.inc61.for.inc61.1_crit_edge:                  ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.1

land.lhs.true.1:                                  ; preds = %for.inc61
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), align 4
  %15 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp56.1 = icmp eq i32 %14, %16
  br i1 %cmp56.1, label %land.lhs.true.1.if.then57_crit_edge, label %land.lhs.true.1.for.inc61.1_crit_edge

land.lhs.true.1.for.inc61.1_crit_edge:            ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.1

land.lhs.true.1.if.then57_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.1:                                      ; preds = %land.lhs.true.1.for.inc61.1_crit_edge, %for.inc61.for.inc61.1_crit_edge
  %bf.load50.2 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.2)
  %tobool53.not.2 = icmp sgt i16 %bf.load50.2, -1
  br i1 %tobool53.not.2, label %land.lhs.true.2, label %for.inc61.1.for.inc61.2_crit_edge

for.inc61.1.for.inc61.2_crit_edge:                ; preds = %for.inc61.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.2

land.lhs.true.2:                                  ; preds = %for.inc61.1
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), align 4
  %18 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp56.2 = icmp eq i32 %17, %19
  br i1 %cmp56.2, label %land.lhs.true.2.if.then57_crit_edge, label %land.lhs.true.2.for.inc61.2_crit_edge

land.lhs.true.2.for.inc61.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.2

land.lhs.true.2.if.then57_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.2:                                      ; preds = %land.lhs.true.2.for.inc61.2_crit_edge, %for.inc61.1.for.inc61.2_crit_edge
  %bf.load50.3 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.3)
  %tobool53.not.3 = icmp sgt i16 %bf.load50.3, -1
  br i1 %tobool53.not.3, label %land.lhs.true.3, label %for.inc61.2.for.inc61.3_crit_edge

for.inc61.2.for.inc61.3_crit_edge:                ; preds = %for.inc61.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.3

land.lhs.true.3:                                  ; preds = %for.inc61.2
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), align 4
  %21 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp56.3 = icmp eq i32 %20, %22
  br i1 %cmp56.3, label %land.lhs.true.3.if.then57_crit_edge, label %land.lhs.true.3.for.inc61.3_crit_edge

land.lhs.true.3.for.inc61.3_crit_edge:            ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.3

land.lhs.true.3.if.then57_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.3:                                      ; preds = %land.lhs.true.3.for.inc61.3_crit_edge, %for.inc61.2.for.inc61.3_crit_edge
  %bf.load50.4 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.4)
  %tobool53.not.4 = icmp sgt i16 %bf.load50.4, -1
  br i1 %tobool53.not.4, label %land.lhs.true.4, label %for.inc61.3.for.inc61.4_crit_edge

for.inc61.3.for.inc61.4_crit_edge:                ; preds = %for.inc61.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.4

land.lhs.true.4:                                  ; preds = %for.inc61.3
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), align 4
  %24 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp56.4 = icmp eq i32 %23, %25
  br i1 %cmp56.4, label %land.lhs.true.4.if.then57_crit_edge, label %land.lhs.true.4.for.inc61.4_crit_edge

land.lhs.true.4.for.inc61.4_crit_edge:            ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.4

land.lhs.true.4.if.then57_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.4:                                      ; preds = %land.lhs.true.4.for.inc61.4_crit_edge, %for.inc61.3.for.inc61.4_crit_edge
  %bf.load50.5 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.5)
  %tobool53.not.5 = icmp sgt i16 %bf.load50.5, -1
  br i1 %tobool53.not.5, label %land.lhs.true.5, label %for.inc61.4.for.inc61.5_crit_edge

for.inc61.4.for.inc61.5_crit_edge:                ; preds = %for.inc61.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.5

land.lhs.true.5:                                  ; preds = %for.inc61.4
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), align 4
  %27 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp56.5 = icmp eq i32 %26, %28
  br i1 %cmp56.5, label %land.lhs.true.5.if.then57_crit_edge, label %land.lhs.true.5.for.inc61.5_crit_edge

land.lhs.true.5.for.inc61.5_crit_edge:            ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.5

land.lhs.true.5.if.then57_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.5:                                      ; preds = %land.lhs.true.5.for.inc61.5_crit_edge, %for.inc61.4.for.inc61.5_crit_edge
  %bf.load50.6 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.6)
  %tobool53.not.6 = icmp sgt i16 %bf.load50.6, -1
  br i1 %tobool53.not.6, label %land.lhs.true.6, label %for.inc61.5.for.inc61.6_crit_edge

for.inc61.5.for.inc61.6_crit_edge:                ; preds = %for.inc61.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.6

land.lhs.true.6:                                  ; preds = %for.inc61.5
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), align 4
  %30 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp56.6 = icmp eq i32 %29, %31
  br i1 %cmp56.6, label %land.lhs.true.6.if.then57_crit_edge, label %land.lhs.true.6.for.inc61.6_crit_edge

land.lhs.true.6.for.inc61.6_crit_edge:            ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.6

land.lhs.true.6.if.then57_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.6:                                      ; preds = %land.lhs.true.6.for.inc61.6_crit_edge, %for.inc61.5.for.inc61.6_crit_edge
  %bf.load50.7 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.7)
  %tobool53.not.7 = icmp sgt i16 %bf.load50.7, -1
  br i1 %tobool53.not.7, label %land.lhs.true.7, label %for.inc61.6.for.inc61.7_crit_edge

for.inc61.6.for.inc61.7_crit_edge:                ; preds = %for.inc61.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.7

land.lhs.true.7:                                  ; preds = %for.inc61.6
  %32 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), align 4
  %33 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp56.7 = icmp eq i32 %32, %34
  br i1 %cmp56.7, label %land.lhs.true.7.if.then57_crit_edge, label %land.lhs.true.7.for.inc61.7_crit_edge

land.lhs.true.7.for.inc61.7_crit_edge:            ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.7

land.lhs.true.7.if.then57_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.7:                                      ; preds = %land.lhs.true.7.for.inc61.7_crit_edge, %for.inc61.6.for.inc61.7_crit_edge
  %bf.load50.8 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.8)
  %tobool53.not.8 = icmp sgt i16 %bf.load50.8, -1
  br i1 %tobool53.not.8, label %land.lhs.true.8, label %for.inc61.7.for.inc61.8_crit_edge

for.inc61.7.for.inc61.8_crit_edge:                ; preds = %for.inc61.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.8

land.lhs.true.8:                                  ; preds = %for.inc61.7
  %35 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), align 4
  %36 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp56.8 = icmp eq i32 %35, %37
  br i1 %cmp56.8, label %land.lhs.true.8.if.then57_crit_edge, label %land.lhs.true.8.for.inc61.8_crit_edge

land.lhs.true.8.for.inc61.8_crit_edge:            ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.8

land.lhs.true.8.if.then57_crit_edge:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.8:                                      ; preds = %land.lhs.true.8.for.inc61.8_crit_edge, %for.inc61.7.for.inc61.8_crit_edge
  %bf.load50.9 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.9)
  %tobool53.not.9 = icmp sgt i16 %bf.load50.9, -1
  br i1 %tobool53.not.9, label %land.lhs.true.9, label %for.inc61.8.for.inc61.9_crit_edge

for.inc61.8.for.inc61.9_crit_edge:                ; preds = %for.inc61.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.9

land.lhs.true.9:                                  ; preds = %for.inc61.8
  %38 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), align 4
  %39 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp56.9 = icmp eq i32 %38, %40
  br i1 %cmp56.9, label %land.lhs.true.9.if.then57_crit_edge, label %land.lhs.true.9.for.inc61.9_crit_edge

land.lhs.true.9.for.inc61.9_crit_edge:            ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.9

land.lhs.true.9.if.then57_crit_edge:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.9:                                      ; preds = %land.lhs.true.9.for.inc61.9_crit_edge, %for.inc61.8.for.inc61.9_crit_edge
  %bf.load50.10 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.10)
  %tobool53.not.10 = icmp sgt i16 %bf.load50.10, -1
  br i1 %tobool53.not.10, label %land.lhs.true.10, label %for.inc61.9.for.inc61.10_crit_edge

for.inc61.9.for.inc61.10_crit_edge:               ; preds = %for.inc61.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.10

land.lhs.true.10:                                 ; preds = %for.inc61.9
  %41 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), align 4
  %42 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp56.10 = icmp eq i32 %41, %43
  br i1 %cmp56.10, label %land.lhs.true.10.if.then57_crit_edge, label %land.lhs.true.10.for.inc61.10_crit_edge

land.lhs.true.10.for.inc61.10_crit_edge:          ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.10

land.lhs.true.10.if.then57_crit_edge:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.10:                                     ; preds = %land.lhs.true.10.for.inc61.10_crit_edge, %for.inc61.9.for.inc61.10_crit_edge
  %bf.load50.11 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.11)
  %tobool53.not.11 = icmp sgt i16 %bf.load50.11, -1
  br i1 %tobool53.not.11, label %land.lhs.true.11, label %for.inc61.10.for.inc61.11_crit_edge

for.inc61.10.for.inc61.11_crit_edge:              ; preds = %for.inc61.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.11

land.lhs.true.11:                                 ; preds = %for.inc61.10
  %44 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), align 4
  %45 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp56.11 = icmp eq i32 %44, %46
  br i1 %cmp56.11, label %land.lhs.true.11.if.then57_crit_edge, label %land.lhs.true.11.for.inc61.11_crit_edge

land.lhs.true.11.for.inc61.11_crit_edge:          ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.11

land.lhs.true.11.if.then57_crit_edge:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.11:                                     ; preds = %land.lhs.true.11.for.inc61.11_crit_edge, %for.inc61.10.for.inc61.11_crit_edge
  %bf.load50.12 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.12)
  %tobool53.not.12 = icmp sgt i16 %bf.load50.12, -1
  br i1 %tobool53.not.12, label %land.lhs.true.12, label %for.inc61.11.for.inc61.12_crit_edge

for.inc61.11.for.inc61.12_crit_edge:              ; preds = %for.inc61.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.12

land.lhs.true.12:                                 ; preds = %for.inc61.11
  %47 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), align 4
  %48 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp56.12 = icmp eq i32 %47, %49
  br i1 %cmp56.12, label %land.lhs.true.12.if.then57_crit_edge, label %land.lhs.true.12.for.inc61.12_crit_edge

land.lhs.true.12.for.inc61.12_crit_edge:          ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.12

land.lhs.true.12.if.then57_crit_edge:             ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.12:                                     ; preds = %land.lhs.true.12.for.inc61.12_crit_edge, %for.inc61.11.for.inc61.12_crit_edge
  %bf.load50.13 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.13)
  %tobool53.not.13 = icmp sgt i16 %bf.load50.13, -1
  br i1 %tobool53.not.13, label %land.lhs.true.13, label %for.inc61.12.for.inc61.13_crit_edge

for.inc61.12.for.inc61.13_crit_edge:              ; preds = %for.inc61.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.13

land.lhs.true.13:                                 ; preds = %for.inc61.12
  %50 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), align 4
  %51 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp56.13 = icmp eq i32 %50, %52
  br i1 %cmp56.13, label %land.lhs.true.13.if.then57_crit_edge, label %land.lhs.true.13.for.inc61.13_crit_edge

land.lhs.true.13.for.inc61.13_crit_edge:          ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.13

land.lhs.true.13.if.then57_crit_edge:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.13:                                     ; preds = %land.lhs.true.13.for.inc61.13_crit_edge, %for.inc61.12.for.inc61.13_crit_edge
  %bf.load50.14 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.14)
  %tobool53.not.14 = icmp sgt i16 %bf.load50.14, -1
  br i1 %tobool53.not.14, label %land.lhs.true.14, label %for.inc61.13.for.inc61.14_crit_edge

for.inc61.13.for.inc61.14_crit_edge:              ; preds = %for.inc61.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.14

land.lhs.true.14:                                 ; preds = %for.inc61.13
  %53 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), align 4
  %54 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp56.14 = icmp eq i32 %53, %55
  br i1 %cmp56.14, label %land.lhs.true.14.if.then57_crit_edge, label %land.lhs.true.14.for.inc61.14_crit_edge

land.lhs.true.14.for.inc61.14_crit_edge:          ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.14

land.lhs.true.14.if.then57_crit_edge:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.14:                                     ; preds = %land.lhs.true.14.for.inc61.14_crit_edge, %for.inc61.13.for.inc61.14_crit_edge
  %bf.load50.15 = load i16, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load50.15)
  %tobool53.not.15 = icmp sgt i16 %bf.load50.15, -1
  br i1 %tobool53.not.15, label %land.lhs.true.15, label %for.inc61.14.for.inc61.15_crit_edge

for.inc61.14.for.inc61.15_crit_edge:              ; preds = %for.inc61.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.15

land.lhs.true.15:                                 ; preds = %for.inc61.14
  %56 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), align 4
  %57 = ptrtoint ptr %template to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %template, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp56.15 = icmp eq i32 %56, %58
  br i1 %cmp56.15, label %land.lhs.true.15.if.then57_crit_edge, label %land.lhs.true.15.for.inc61.15_crit_edge

land.lhs.true.15.for.inc61.15_crit_edge:          ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc61.15

land.lhs.true.15.if.then57_crit_edge:             ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.inc61.15:                                     ; preds = %land.lhs.true.15.for.inc61.15_crit_edge, %for.inc61.14.for.inc61.15_crit_edge
  %bp_enabled = getelementptr inbounds %struct._kdb_bp, ptr %template, i32 0, i32 1
  %59 = ptrtoint ptr %bp_enabled to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load65 = load i16, ptr %bp_enabled, align 4
  %bf.set67 = or i16 %bf.load65, 16384
  store i16 %bf.set67, ptr %bp_enabled, align 4
  %60 = call ptr @memcpy(ptr %bp.1112.lcssa, ptr %template, i32 12)
  %bp_free68 = getelementptr inbounds %struct._kdb_bp, ptr %bp.1112.lcssa, i32 0, i32 1
  %61 = ptrtoint ptr %bp_free68 to i32
  call void @__asan_load2_noabort(i32 %61)
  %bf.load69 = load i16, ptr %bp_free68, align 4
  %bf.clear70 = and i16 %bf.load69, 32767
  store i16 %bf.clear70, ptr %bp_free68, align 4
  call fastcc void @kdb_printbp(ptr noundef %bp.1112.lcssa, i32 noundef %bpno.1111.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %for.inc61.15, %if.then57, %if.then35.cleanup_crit_edge, %for.inc26.14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.15, %for.inc.14.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then57 ], [ 0, %for.inc61.15 ], [ %call, %if.end3.cleanup_crit_edge ], [ -15, %if.end6.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call37, %if.then35.cleanup_crit_edge ], [ 0, %if.end.15 ], [ 0, %for.inc.14.cleanup_crit_edge ], [ -10, %for.inc26.14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %template) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nextarg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %symname) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kdb_bc(i32 noundef %argc, ptr nocapture noundef readonly %argv) #0 align 64 {
entry:
  %addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr) #7
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %addr, align 4, !annotation !107
  %1 = ptrtoint ptr %argv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %argv, align 4
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end6_crit_edge, label %if.else

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(3) @.str.16) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  %.126 = select i1 %cmp3, i32 2, i32 0
  br label %if.end6

if.end6:                                          ; preds = %if.else, %entry.if.end6_crit_edge
  %cmd.0 = phi i32 [ 1, %entry.if.end6_crit_edge ], [ %.126, %if.else ]
  %3 = xor i1 %cmp, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %argc)
  %cmp7.not = icmp eq i32 %argc, 1
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %arrayidx10 = getelementptr ptr, ptr %argv, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 4
  %call11 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(2) @.str.37) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.end9.for.body33.preheader_crit_edge, label %if.else14

if.end9.for.body33.preheader_crit_edge:           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33.preheader

if.else14:                                        ; preds = %if.end9
  %call16 = call i32 @kdbgetularg(ptr noundef %5, ptr noundef nonnull %addr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %if.else14.cleanup_crit_edge

if.else14.cleanup_crit_edge:                      ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.else14
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp19 = icmp ult i32 %7, 16
  br i1 %cmp19, label %if.then20, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end18
  %8 = load i32, ptr @kdb_breakpoints, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %7)
  %cmp23 = icmp eq i32 %8, %7
  br i1 %cmp23, label %for.body.preheader.if.then24_crit_edge, label %for.inc

for.body.preheader.if.then24_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %inc = add nuw nsw i32 %7, 1
  br label %for.body33.preheader

if.then24:                                        ; preds = %for.inc.14.if.then24_crit_edge, %for.inc.13.if.then24_crit_edge, %for.inc.12.if.then24_crit_edge, %for.inc.11.if.then24_crit_edge, %for.inc.10.if.then24_crit_edge, %for.inc.9.if.then24_crit_edge, %for.inc.8.if.then24_crit_edge, %for.inc.7.if.then24_crit_edge, %for.inc.6.if.then24_crit_edge, %for.inc.5.if.then24_crit_edge, %for.inc.4.if.then24_crit_edge, %for.inc.3.if.then24_crit_edge, %for.inc.2.if.then24_crit_edge, %for.inc.1.if.then24_crit_edge, %for.inc.if.then24_crit_edge, %for.body.preheader.if.then24_crit_edge
  %i.0129.lcssa = phi i32 [ 0, %for.body.preheader.if.then24_crit_edge ], [ 1, %for.inc.if.then24_crit_edge ], [ 2, %for.inc.1.if.then24_crit_edge ], [ 3, %for.inc.2.if.then24_crit_edge ], [ 4, %for.inc.3.if.then24_crit_edge ], [ 5, %for.inc.4.if.then24_crit_edge ], [ 6, %for.inc.5.if.then24_crit_edge ], [ 7, %for.inc.6.if.then24_crit_edge ], [ 8, %for.inc.7.if.then24_crit_edge ], [ 9, %for.inc.8.if.then24_crit_edge ], [ 10, %for.inc.9.if.then24_crit_edge ], [ 11, %for.inc.10.if.then24_crit_edge ], [ 12, %for.inc.11.if.then24_crit_edge ], [ 13, %for.inc.12.if.then24_crit_edge ], [ 14, %for.inc.13.if.then24_crit_edge ], [ 15, %for.inc.14.if.then24_crit_edge ]
  %inc25 = add nuw nsw i32 %i.0129.lcssa, 1
  br label %for.body33.preheader

for.inc:                                          ; preds = %for.body.preheader
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp23.1 = icmp eq i32 %9, %7
  br i1 %cmp23.1, label %for.inc.if.then24_crit_edge, label %for.inc.1

for.inc.if.then24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.1:                                        ; preds = %for.inc
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp23.2 = icmp eq i32 %10, %7
  br i1 %cmp23.2, label %for.inc.1.if.then24_crit_edge, label %for.inc.2

for.inc.1.if.then24_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.2:                                        ; preds = %for.inc.1
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %7)
  %cmp23.3 = icmp eq i32 %11, %7
  br i1 %cmp23.3, label %for.inc.2.if.then24_crit_edge, label %for.inc.3

for.inc.2.if.then24_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.3:                                        ; preds = %for.inc.2
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %7)
  %cmp23.4 = icmp eq i32 %12, %7
  br i1 %cmp23.4, label %for.inc.3.if.then24_crit_edge, label %for.inc.4

for.inc.3.if.then24_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.4:                                        ; preds = %for.inc.3
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %7)
  %cmp23.5 = icmp eq i32 %13, %7
  br i1 %cmp23.5, label %for.inc.4.if.then24_crit_edge, label %for.inc.5

for.inc.4.if.then24_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.5:                                        ; preds = %for.inc.4
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %7)
  %cmp23.6 = icmp eq i32 %14, %7
  br i1 %cmp23.6, label %for.inc.5.if.then24_crit_edge, label %for.inc.6

for.inc.5.if.then24_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.6:                                        ; preds = %for.inc.5
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %7)
  %cmp23.7 = icmp eq i32 %15, %7
  br i1 %cmp23.7, label %for.inc.6.if.then24_crit_edge, label %for.inc.7

for.inc.6.if.then24_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.7:                                        ; preds = %for.inc.6
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %7)
  %cmp23.8 = icmp eq i32 %16, %7
  br i1 %cmp23.8, label %for.inc.7.if.then24_crit_edge, label %for.inc.8

for.inc.7.if.then24_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.8:                                        ; preds = %for.inc.7
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 9), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp23.9 = icmp eq i32 %17, %7
  br i1 %cmp23.9, label %for.inc.8.if.then24_crit_edge, label %for.inc.9

for.inc.8.if.then24_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.9:                                        ; preds = %for.inc.8
  %18 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 10), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %7)
  %cmp23.10 = icmp eq i32 %18, %7
  br i1 %cmp23.10, label %for.inc.9.if.then24_crit_edge, label %for.inc.10

for.inc.9.if.then24_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.10:                                       ; preds = %for.inc.9
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 11), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %7)
  %cmp23.11 = icmp eq i32 %19, %7
  br i1 %cmp23.11, label %for.inc.10.if.then24_crit_edge, label %for.inc.11

for.inc.10.if.then24_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.11:                                       ; preds = %for.inc.10
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 12), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %7)
  %cmp23.12 = icmp eq i32 %20, %7
  br i1 %cmp23.12, label %for.inc.11.if.then24_crit_edge, label %for.inc.12

for.inc.11.if.then24_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.12:                                       ; preds = %for.inc.11
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 13), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %7)
  %cmp23.13 = icmp eq i32 %21, %7
  br i1 %cmp23.13, label %for.inc.12.if.then24_crit_edge, label %for.inc.13

for.inc.12.if.then24_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.13:                                       ; preds = %for.inc.12
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 14), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %7)
  %cmp23.14 = icmp eq i32 %22, %7
  br i1 %cmp23.14, label %for.inc.13.if.then24_crit_edge, label %for.inc.14

for.inc.13.if.then24_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.inc.14:                                       ; preds = %for.inc.13
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %7)
  %cmp23.15 = icmp eq i32 %23, %7
  br i1 %cmp23.15, label %for.inc.14.if.then24_crit_edge, label %for.inc.14.for.end85.thread_crit_edge

for.inc.14.for.end85.thread_crit_edge:            ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85.thread

for.inc.14.if.then24_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then24

for.body33.preheader:                             ; preds = %if.then24, %if.then20, %if.end9.for.body33.preheader_crit_edge
  %lowbp.0.ph = phi i32 [ 0, %if.end9.for.body33.preheader_crit_edge ], [ %i.0129.lcssa, %if.then24 ], [ %7, %if.then20 ]
  %highbp.0.ph = phi i32 [ 16, %if.end9.for.body33.preheader_crit_edge ], [ %inc25, %if.then24 ], [ %inc, %if.then20 ]
  %arrayidx30 = getelementptr [16 x %struct._kdb_bp], ptr @kdb_breakpoints, i32 0, i32 %lowbp.0.ph
  br label %for.body33

for.body33:                                       ; preds = %for.inc82.for.body33_crit_edge, %for.body33.preheader
  %i.1135 = phi i32 [ %inc83, %for.inc82.for.body33_crit_edge ], [ %lowbp.0.ph, %for.body33.preheader ]
  %done.0134 = phi i32 [ %done.1, %for.inc82.for.body33_crit_edge ], [ 0, %for.body33.preheader ]
  %bp.1131 = phi ptr [ %incdec.ptr84, %for.inc82.for.body33_crit_edge ], [ %arrayidx30, %for.body33.preheader ]
  %bp_free = getelementptr inbounds %struct._kdb_bp, ptr %bp.1131, i32 0, i32 1
  %24 = ptrtoint ptr %bp_free to i32
  call void @__asan_load2_noabort(i32 %24)
  %bf.load = load i16, ptr %bp_free, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool34.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool34.not, label %if.end36, label %for.body33.for.inc82_crit_edge

for.body33.for.inc82_crit_edge:                   ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc82

if.end36:                                         ; preds = %for.body33
  %inc37 = add i32 %done.0134, 1
  %25 = zext i32 %cmd.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd.0, label %if.end36.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb46
    i32 2, label %sw.bb54
  ]

if.end36.sw.epilog_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear = and i16 %bf.load, -16385
  %26 = ptrtoint ptr %bp_free to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.clear, ptr %bp_free, align 4
  %27 = ptrtoint ptr %bp.1131 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bp.1131, align 4
  %call40 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.38, i32 noundef %i.1135, i32 noundef %28) #7
  %29 = ptrtoint ptr %bp.1131 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %bp.1131, align 4
  %30 = ptrtoint ptr %bp_free to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load43 = load i16, ptr %bp_free, align 4
  %bf.set45 = or i16 %bf.load43, -32768
  store i16 %bf.set45, ptr %bp_free, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %bf.set50 = or i16 %bf.load, 16384
  %31 = ptrtoint ptr %bp_free to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %bf.set50, ptr %bp_free, align 4
  %32 = ptrtoint ptr %bp.1131 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bp.1131, align 4
  %call52 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.39, i32 noundef %i.1135, i32 noundef %33) #7
  %call53 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.28) #7
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end36
  %34 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool60.not = icmp eq i16 %34, 0
  br i1 %tobool60.not, label %sw.bb54.sw.epilog_crit_edge, label %if.end62

sw.bb54.sw.epilog_crit_edge:                      ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end62:                                         ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear65 = and i16 %bf.load, -16385
  %35 = ptrtoint ptr %bp_free to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %bf.clear65, ptr %bp_free, align 4
  %36 = ptrtoint ptr %bp.1131 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bp.1131, align 4
  %call68 = call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.40, i32 noundef %i.1135, i32 noundef %37) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end62, %sw.bb54.sw.epilog_crit_edge, %sw.bb46, %sw.bb, %if.end36.sw.epilog_crit_edge
  %38 = ptrtoint ptr %bp_free to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load69 = load i16, ptr %bp_free, align 4
  %39 = and i16 %bf.load69, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool73.not = icmp ne i16 %39, 0
  %or.cond = select i1 %tobool73.not, i1 %3, i1 false
  br i1 %or.cond, label %if.then76, label %sw.epilog.for.inc82_crit_edge

sw.epilog.for.inc82_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc82

if.then76:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %bf.clear79 = and i16 %bf.load69, -257
  %40 = ptrtoint ptr %bp_free to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %bf.clear79, ptr %bp_free, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %41 = load i32, ptr @kdb_state, align 4
  %and = and i32 %41, -129
  store i32 %and, ptr @kdb_state, align 4
  br label %for.inc82

for.inc82:                                        ; preds = %if.then76, %sw.epilog.for.inc82_crit_edge, %for.body33.for.inc82_crit_edge
  %done.1 = phi i32 [ %done.0134, %for.body33.for.inc82_crit_edge ], [ %inc37, %if.then76 ], [ %inc37, %sw.epilog.for.inc82_crit_edge ]
  %inc83 = add i32 %i.1135, 1
  %incdec.ptr84 = getelementptr %struct._kdb_bp, ptr %bp.1131, i32 1
  %exitcond.not = icmp eq i32 %inc83, %highbp.0.ph
  br i1 %exitcond.not, label %for.end85, label %for.inc82.for.body33_crit_edge

for.inc82.for.body33_crit_edge:                   ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body33

for.end85:                                        ; preds = %for.inc82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.1)
  %tobool86.not = icmp eq i32 %done.1, 0
  br i1 %tobool86.not, label %for.end85.for.end85.thread_crit_edge, label %for.end85.cleanup_crit_edge

for.end85.cleanup_crit_edge:                      ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.end85.for.end85.thread_crit_edge:             ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85.thread

for.end85.thread:                                 ; preds = %for.end85.for.end85.thread_crit_edge, %for.inc.14.for.end85.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.end85.thread, %for.end85.cleanup_crit_edge, %if.else14.cleanup_crit_edge, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end6.cleanup_crit_edge ], [ %call16, %if.else14.cleanup_crit_edge ], [ -13, %for.end85.thread ], [ 0, %for.end85.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kdb_ss(i32 noundef %argc, ptr nocapture noundef readnone %argv) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp.not = icmp eq i32 %argc, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kdb_state to i32))
  %0 = load i32, ptr @kdb_state, align 4
  %or = or i32 %0, 32
  store i32 %or, ptr @kdb_state, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1003, %if.end ], [ -2, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kdb_printbp(ptr nocapture noundef readonly %bp, i32 noundef %i) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %bp_type.i = getelementptr inbounds %struct._kdb_bp, ptr %bp, i32 0, i32 1
  %0 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %bp_type.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 10
  %bf.clear.i = and i16 %bf.lshr.i, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %bf.clear.i)
  %cmp6.i = icmp ugt i16 %bf.clear.i, 4
  br i1 %cmp6.i, label %entry.kdb_bptype.exit_crit_edge, label %if.end.i

entry.kdb_bptype.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %kdb_bptype.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bf.cast.i = zext i16 %bf.clear.i to i32
  %arrayidx.i = getelementptr [5 x ptr], ptr @kdb_rwtypes, i32 0, i32 %bf.cast.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  br label %kdb_bptype.exit

kdb_bptype.exit:                                  ; preds = %if.end.i, %entry.kdb_bptype.exit_crit_edge
  %retval.0.i = phi ptr [ %2, %if.end.i ], [ @.str.19, %entry.kdb_bptype.exit_crit_edge ]
  %call1 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.23, ptr noundef %retval.0.i) #7
  %call2 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.24, i32 noundef %i) #7
  %3 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bp, align 4
  tail call void @kdb_symbol_print(i32 noundef %4, ptr noundef null, i32 noundef 12) #7
  %5 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %bp_type.i, align 4
  %6 = and i16 %bf.load, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  %.str.26..str.25 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call4 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull %.str.26..str.25) #7
  %7 = ptrtoint ptr %bp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bp, align 4
  %9 = ptrtoint ptr %bp_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load6 = load i16, ptr %bp_type.i, align 4
  %bf.lshr7 = lshr i16 %bf.load6, 10
  %bf.clear8 = and i16 %bf.lshr7, 15
  %bf.cast9 = zext i16 %bf.clear8 to i32
  %bf.lshr11 = lshr i16 %bf.load6, 9
  %bf.clear12 = and i16 %bf.lshr11, 1
  %bf.cast13 = zext i16 %bf.clear12 to i32
  %call14 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.27, i32 noundef %8, i32 noundef %bf.cast9, i32 noundef %bf.cast13) #7
  %call15 = tail call i32 (ptr, ...) @kdb_printf(ptr noundef nonnull @.str.28) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetaddrarg(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kgdb_validate_break_address(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kdb_parsebp(i32 noundef %argc, ptr nocapture noundef readonly %argv, ptr nocapture noundef %nextargp, ptr nocapture noundef %bp) unnamed_addr #0 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nextargp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nextargp, align 4
  %bph_length = getelementptr inbounds %struct._kdb_bp, ptr %bp, i32 0, i32 2
  %2 = ptrtoint ptr %bph_length to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %bph_length, align 4
  %add = add i32 %argc, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp.not = icmp eq i32 %add, %1
  br i1 %cmp.not, label %entry.if.end41_crit_edge, label %if.then

entry.if.end41_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %argv, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strncasecmp(ptr noundef %4, ptr noundef nonnull @.str.34, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.if.end22_crit_edge, label %if.else

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else:                                          ; preds = %if.then
  %call4 = tail call i32 @strncasecmp(ptr noundef %4, ptr noundef nonnull @.str.35, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end22_crit_edge, label %if.else11

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else11:                                        ; preds = %if.else
  %call13 = tail call i32 @strncasecmp(ptr noundef %4, ptr noundef nonnull @.str.36, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.else11.if.end22_crit_edge, label %if.else11.cleanup42_crit_edge

if.else11.cleanup42_crit_edge:                    ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.else11.if.end22_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.else11.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %.sink = phi i16 [ 4096, %if.then.if.end22_crit_edge ], [ 2048, %if.else.if.end22_crit_edge ], [ 1024, %if.else11.if.end22_crit_edge ]
  %bp_type7 = getelementptr inbounds %struct._kdb_bp, ptr %bp, i32 0, i32 1
  %5 = ptrtoint ptr %bp_type7 to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load8 = load i16, ptr %bp_type7, align 4
  %bf.clear9 = and i16 %bf.load8, -15361
  %bf.set10 = or i16 %bf.clear9, %.sink
  store i16 %bf.set10, ptr %bp_type7, align 4
  %6 = ptrtoint ptr %bph_length to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %bph_length, align 4
  %inc = add i32 %1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %argc)
  %cmp25.not = icmp eq i32 %1, %argc
  br i1 %cmp25.not, label %if.end22.if.end36_crit_edge, label %if.then26

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then26:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #7
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %len, align 4, !annotation !107
  %arrayidx27 = getelementptr ptr, ptr %argv, i32 %inc
  %8 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx27, align 4
  %call28 = call i32 @kdbgetularg(ptr noundef %9, ptr noundef nonnull %len) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  br i1 %tobool.not, label %if.end30, label %if.then26.cleanup.thread_crit_edge

if.then26.cleanup.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end30:                                         ; preds = %if.then26
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %11)
  %cmp31 = icmp ugt i32 %11, 8
  br i1 %cmp31, label %if.end30.cleanup.thread_crit_edge, label %cleanup

if.end30.cleanup.thread_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end30.cleanup.thread_crit_edge, %if.then26.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end30.cleanup.thread_crit_edge ], [ %call28, %if.then26.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %cleanup42

cleanup:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %bph_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %bph_length, align 4
  %inc35 = add i32 %1, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #7
  br label %if.end36

if.end36:                                         ; preds = %cleanup, %if.end22.if.end36_crit_edge
  %nextarg.1 = phi i32 [ %inc35, %cleanup ], [ %inc, %if.end22.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %nextarg.1)
  %cmp38.not = icmp eq i32 %add, %nextarg.1
  br i1 %cmp38.not, label %if.end36.if.end41_crit_edge, label %if.end36.cleanup42_crit_edge

if.end36.cleanup42_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup42

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %if.end36.if.end41_crit_edge, %entry.if.end41_crit_edge
  %nextarg.2 = phi i32 [ %add, %if.end36.if.end41_crit_edge ], [ %1, %entry.if.end41_crit_edge ]
  %13 = ptrtoint ptr %nextargp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %nextarg.2, ptr %nextargp, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %if.end36.cleanup42_crit_edge, %cleanup.thread, %if.else11.cleanup42_crit_edge
  %retval.1 = phi i32 [ 0, %if.end41 ], [ -2, %if.else11.cleanup42_crit_edge ], [ -2, %if.end36.cleanup42_crit_edge ], [ %retval.0.ph, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kdb_symbol_print(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kdbgetularg(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 182, i32 15}
!2 = !{ptr @__func__.kdb_bp_install, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 183, i32 8}
!4 = !{ptr @__func__.kdb_bp_remove, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 214, i32 8}
!6 = !{ptr @kdb_breakpoints, !7, !"kdb_breakpoints", i1 false, i1 false}
!7 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 25, i32 10}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 133, i32 14}
!10 = !{ptr @__func__._kdb_bp_install, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 134, i32 7}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 141, i32 15}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 154, i32 14}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 157, i32 15}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 111, i32 14}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 526, i32 12}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 528, i32 12}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 529, i32 11}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 532, i32 12}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 535, i32 11}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 538, i32 12}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 540, i32 12}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 541, i32 11}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 544, i32 12}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 547, i32 11}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 550, i32 12}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 553, i32 11}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 556, i32 12}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 558, i32 12}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 559, i32 11}
!50 = !{ptr @bptab, !51, !"bptab", i1 false, i1 false}
!51 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 525, i32 17}
!52 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 329, i32 22}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 348, i32 15}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 240, i32 13}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 241, i32 13}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 245, i32 14}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 247, i32 14}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 249, i32 13}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 252, i32 13}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 33, i32 2}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 34, i32 2}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 35, i32 2}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 36, i32 2}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 37, i32 2}
!78 = !{ptr @kdb_rwtypes, !79, !"kdb_rwtypes", i1 false, i1 false}
!79 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 32, i32 14}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 55, i32 34}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 57, i32 39}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 59, i32 39}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 411, i32 22}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 454, i32 15}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 465, i32 15}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 477, i32 15}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 569, i32 10}
!96 = !{ptr @bphcmd, !97, !"bphcmd", i1 false, i1 false}
!97 = !{!"../kernel/debug/kdb/kdb_bp.c", i32 565, i32 17}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
