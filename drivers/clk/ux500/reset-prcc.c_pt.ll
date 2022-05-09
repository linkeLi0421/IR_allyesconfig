; ModuleID = '/llk/IR_all_yes/drivers/clk/ux500/reset-prcc.c_pt.bc'
source_filename = "../drivers/clk/ux500/reset-prcc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.u8500_prcc_reset = type { %struct.reset_controller_dev, [5 x i32], [5 x ptr] }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@u8500_prcc_reset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013PRCC failed to remap for reset base %d (%08x)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"u8500_prcc_reset_init\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/ux500/reset-prcc.c\00", [33 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_init._entry_ptr = internal global ptr @u8500_prcc_reset_init._entry, section ".printk_index", align 4
@u8500_prcc_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @u8500_prcc_reset, ptr @u8500_prcc_reset_assert, ptr @u8500_prcc_reset_deassert, ptr @u8500_prcc_reset_status }, [16 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 180, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013PRCC failed to register reset controller\0A\00", [52 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_init._entry_ptr.5 = internal global ptr @u8500_prcc_reset_init._entry.3, section ".printk_index", align 4
@u8500_prcc_reset.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset_prcc\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"u8500_prcc_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PRCC cycle reset id %lu, bit %u\0A\00", [63 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@u8500_prcc_reset_assert.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"u8500_prcc_reset_assert\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PRCC assert reset id %lu, bit %u\0A\00", [62 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_deassert.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"u8500_prcc_reset_deassert\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"PRCC deassert reset id %lu, bit %u\0A\00", [60 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_status.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"u8500_prcc_reset_status\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PRCC check status on reset line id %lu, bit %u\0A\00", [48 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: invalid PRCC %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"u8500_prcc_reset_xlate\00", [41 x i8] zeroinitializer }, align 32
@u8500_prcc_reset_xlate._entry_ptr = internal global ptr @u8500_prcc_reset_xlate._entry, section ".printk_index", align 4
@u8500_prcc_reset_xlate.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"located reset line %d at PRCC %d bit %d\0A\00", [55 x i8] zeroinitializer }, align 32
@switch.table.u8500_prcc_reset = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.u8500_prcc_reset_assert = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.u8500_prcc_reset_deassert = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4], [40 x i8] zeroinitializer }, align 32
@switch.table.u8500_prcc_reset_status = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 4], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 168, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"u8500_prcc_reset_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 129, i32 39 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 180, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 74, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 95, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 108, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 122, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 149, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [34 x i8] c"../drivers/clk/ux500/reset-prcc.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 153, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [30 x i8] c"switch.table.u8500_prcc_reset\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [37 x i8] c"switch.table.u8500_prcc_reset_assert\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [39 x i8] c"switch.table.u8500_prcc_reset_deassert\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [37 x i8] c"switch.table.u8500_prcc_reset_status\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @u8500_prcc_reset_init._entry, ptr @u8500_prcc_reset_init._entry.3, ptr @u8500_prcc_reset_init._entry_ptr, ptr @u8500_prcc_reset_init._entry_ptr.5, ptr @u8500_prcc_reset_xlate._entry, ptr @u8500_prcc_reset_xlate._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @u8500_prcc_reset_ops, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @switch.table.u8500_prcc_reset, ptr @switch.table.u8500_prcc_reset_assert, ptr @switch.table.u8500_prcc_reset_deassert, ptr @switch.table.u8500_prcc_reset_status], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_prcc_reset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_prcc_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_prcc_reset_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u8500_prcc_reset_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.u8500_prcc_reset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.u8500_prcc_reset_assert to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.u8500_prcc_reset_deassert to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.u8500_prcc_reset_status to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @u8500_prcc_reset_init(ptr noundef %np, ptr noundef %ur) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %call = tail call ptr @ioremap(i32 noundef %1, i32 noundef 4096) #4
  %arrayidx2 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %arrayidx2, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0, i32 noundef %4) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1, align 4
  %call.1 = tail call ptr @ioremap(i32 noundef %6, i32 noundef 4096) #4
  %arrayidx2.1 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.1, ptr %arrayidx2.1, align 4
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %do.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1, align 4
  %call7.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1, i32 noundef %9) #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2, align 4
  %call.2 = tail call ptr @ioremap(i32 noundef %11, i32 noundef 4096) #4
  %arrayidx2.2 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 2, i32 2
  %12 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.2, ptr %arrayidx2.2, align 4
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %do.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

do.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2, align 4
  %call7.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 2, i32 noundef %14) #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.3, align 4
  %call.3 = tail call ptr @ioremap(i32 noundef %16, i32 noundef 4096) #4
  %arrayidx2.3 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.3, ptr %arrayidx2.3, align 4
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %do.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

do.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.3, align 4
  %call7.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 3, i32 noundef %19) #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4, align 4
  %call.4 = tail call ptr @ioremap(i32 noundef %21, i32 noundef 4096) #4
  %arrayidx2.4 = getelementptr %struct.u8500_prcc_reset, ptr %ur, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.4, ptr %arrayidx2.4, align 4
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %do.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

do.end.4:                                         ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.4, align 4
  %call7.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 4, i32 noundef %24) #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %do.end.4, %for.inc.3.for.inc.4_crit_edge
  %owner = getelementptr inbounds %struct.reset_controller_dev, ptr %ur, i32 0, i32 1
  %25 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %owner, align 4
  %26 = ptrtoint ptr %ur to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @u8500_prcc_reset_ops, ptr %ur, align 4
  %of_node = getelementptr inbounds %struct.reset_controller_dev, ptr %ur, i32 0, i32 5
  %27 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %np, ptr %of_node, align 4
  %of_reset_n_cells = getelementptr inbounds %struct.reset_controller_dev, ptr %ur, i32 0, i32 6
  %28 = ptrtoint ptr %of_reset_n_cells to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %of_reset_n_cells, align 4
  %of_xlate = getelementptr inbounds %struct.reset_controller_dev, ptr %ur, i32 0, i32 7
  %29 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @u8500_prcc_reset_xlate, ptr %of_xlate, align 4
  %call8 = tail call i32 @reset_controller_register(ptr noundef %ur) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc.4.if.end16_crit_edge, label %do.end13

for.inc.4.if.end16_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end13:                                         ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %for.inc.4.if.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_xlate(ptr nocapture noundef readnone %rcdev, ptr nocapture noundef readonly %reset_spec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %arrayidx2 = getelementptr %struct.of_phandle_args, ptr %reset_spec, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1, label %if.end.do.body13_crit_edge
    i32 2, label %if.end.do.body13_crit_edge38
    i32 3, label %if.end.do.body13_crit_edge39
    i32 5, label %if.end.do.body13_crit_edge40
    i32 6, label %if.end.do.body13_crit_edge41
  ]

if.end.do.body13_crit_edge41:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

if.end.do.body13_crit_edge40:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

if.end.do.body13_crit_edge39:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

if.end.do.body13_crit_edge38:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

if.end.do.body13_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %3) #7
  br label %cleanup

do.body13:                                        ; preds = %if.end.do.body13_crit_edge, %if.end.do.body13_crit_edge38, %if.end.do.body13_crit_edge39, %if.end.do.body13_crit_edge40, %if.end.do.body13_crit_edge41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u8500_prcc_reset_xlate.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u8500_prcc_reset_xlate, %if.then18)) #4
          to label %do.end21 [label %if.then18], !srcloc !46

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #6
  %mul = shl nuw nsw i32 %3, 5
  %add = add i32 %mul, %5
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @u8500_prcc_reset_xlate.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.17, i32 noundef %add, i32 noundef %3, i32 noundef %5) #4
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body13
  %mul22 = shl nuw nsw i32 %3, 5
  %add23 = add i32 %mul22, %5
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %add23, %do.end21 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %id, 5
  %switch.tableidx = add nsw i32 %div3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.u8500_prcc_reset_base.exit_crit_edge

entry.u8500_prcc_reset_base.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, label %switch.lookup

switch.hole_check.u8500_prcc_reset_base.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.u8500_prcc_reset, ptr %rcdev, i32 0, i32 2, i32 %switch.load
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  br label %u8500_prcc_reset_base.exit

u8500_prcc_reset_base.exit:                       ; preds = %switch.lookup, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, %entry.u8500_prcc_reset_base.exit_crit_edge
  %retval.0.i19 = phi ptr [ %4, %switch.lookup ], [ null, %entry.u8500_prcc_reset_base.exit_crit_edge ], [ null, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge ]
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u8500_prcc_reset.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u8500_prcc_reset, %if.then)) #4
          to label %do.body5 [label %if.then], !srcloc !46

if.then:                                          ; preds = %u8500_prcc_reset_base.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @u8500_prcc_reset.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.8, i32 noundef %id, i32 noundef %rem) #4
  br label %do.body5

do.body5:                                         ; preds = %if.then, %u8500_prcc_reset_base.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !47
  tail call void @arm_heavy_mb() #4
  %shl = shl nuw i32 1, %rem
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr8 = getelementptr i8, ptr %retval.0.i19, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #4, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !49
  tail call void @arm_heavy_mb() #4
  %add.ptr13 = getelementptr i8, ptr %retval.0.i19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %5) #4, !srcloc !48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %id, 5
  %switch.tableidx = add nsw i32 %div3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.u8500_prcc_reset_base.exit_crit_edge

entry.u8500_prcc_reset_base.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, label %switch.lookup

switch.hole_check.u8500_prcc_reset_base.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_assert, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.u8500_prcc_reset, ptr %rcdev, i32 0, i32 2, i32 %switch.load
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  br label %u8500_prcc_reset_base.exit

u8500_prcc_reset_base.exit:                       ; preds = %switch.lookup, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, %entry.u8500_prcc_reset_base.exit_crit_edge
  %retval.0.i12 = phi ptr [ %4, %switch.lookup ], [ null, %entry.u8500_prcc_reset_base.exit_crit_edge ], [ null, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge ]
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u8500_prcc_reset_assert.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u8500_prcc_reset_assert, %if.then)) #4
          to label %do.body5 [label %if.then], !srcloc !46

if.then:                                          ; preds = %u8500_prcc_reset_base.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @u8500_prcc_reset_assert.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.10, i32 noundef %id, i32 noundef %rem) #4
  br label %do.body5

do.body5:                                         ; preds = %if.then, %u8500_prcc_reset_base.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  tail call void @arm_heavy_mb() #4
  %shl = shl nuw i32 1, %rem
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr8 = getelementptr i8, ptr %retval.0.i12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #4, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %id, 5
  %switch.tableidx = add nsw i32 %div3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.u8500_prcc_reset_base.exit_crit_edge

entry.u8500_prcc_reset_base.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, label %switch.lookup

switch.hole_check.u8500_prcc_reset_base.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_deassert, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.u8500_prcc_reset, ptr %rcdev, i32 0, i32 2, i32 %switch.load
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  br label %u8500_prcc_reset_base.exit

u8500_prcc_reset_base.exit:                       ; preds = %switch.lookup, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, %entry.u8500_prcc_reset_base.exit_crit_edge
  %retval.0.i12 = phi ptr [ %4, %switch.lookup ], [ null, %entry.u8500_prcc_reset_base.exit_crit_edge ], [ null, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge ]
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u8500_prcc_reset_deassert.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u8500_prcc_reset_deassert, %if.then)) #4
          to label %do.body5 [label %if.then], !srcloc !46

if.then:                                          ; preds = %u8500_prcc_reset_base.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @u8500_prcc_reset_deassert.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.12, i32 noundef %id, i32 noundef %rem) #4
  br label %do.body5

do.body5:                                         ; preds = %if.then, %u8500_prcc_reset_base.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  %shl = shl nuw i32 1, %rem
  %5 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %add.ptr8 = getelementptr i8, ptr %retval.0.i12, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %5) #4, !srcloc !48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u8500_prcc_reset_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div3.i = lshr i32 %id, 5
  %switch.tableidx = add nsw i32 %div3.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 6
  br i1 %0, label %switch.hole_check, label %entry.u8500_prcc_reset_base.exit_crit_edge

entry.u8500_prcc_reset_base.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 55, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, label %switch.lookup

switch.hole_check.u8500_prcc_reset_base.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %u8500_prcc_reset_base.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.u8500_prcc_reset_status, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.u8500_prcc_reset, ptr %rcdev, i32 0, i32 2, i32 %switch.load
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  br label %u8500_prcc_reset_base.exit

u8500_prcc_reset_base.exit:                       ; preds = %switch.lookup, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge, %entry.u8500_prcc_reset_base.exit_crit_edge
  %retval.0.i15 = phi ptr [ %4, %switch.lookup ], [ null, %entry.u8500_prcc_reset_base.exit_crit_edge ], [ null, %switch.hole_check.u8500_prcc_reset_base.exit_crit_edge ]
  %rem = and i32 %id, 31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @u8500_prcc_reset_status.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@u8500_prcc_reset_status, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !46

if.then:                                          ; preds = %u8500_prcc_reset_base.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @u8500_prcc_reset_status.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.14, i32 noundef %id, i32 noundef %rem) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %u8500_prcc_reset_base.exit
  %add.ptr5 = getelementptr i8, ptr %retval.0.i15, i32 32
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %6 = xor i32 %5, -1
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 168, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @u8500_prcc_reset_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @u8500_prcc_reset_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 180, i32 3}
!8 = !{ptr @u8500_prcc_reset_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @u8500_prcc_reset_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @u8500_prcc_reset_ops, !11, !"u8500_prcc_reset_ops", i1 false, i1 false}
!11 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 129, i32 39}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 74, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @u8500_prcc_reset.__UNIQUE_ID_ddebug175, !13, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 95, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @u8500_prcc_reset_assert.__UNIQUE_ID_ddebug176, !18, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 108, i32 2}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @u8500_prcc_reset_deassert.__UNIQUE_ID_ddebug177, !22, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 122, i32 2}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @u8500_prcc_reset_status.__UNIQUE_ID_ddebug178, !26, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 149, i32 3}
!31 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @u8500_prcc_reset_xlate._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @u8500_prcc_reset_xlate._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ux500/reset-prcc.c", i32 153, i32 2}
!36 = !{ptr @u8500_prcc_reset_xlate.__UNIQUE_ID_ddebug179, !35, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i64 2148860924, i64 2148860929, i64 2148860942, i64 2148860986, i64 2148861020, i64 2148861041}
!47 = !{i64 2152481463}
!48 = !{i64 3993118}
!49 = !{i64 2152482565}
!50 = !{i64 2152487344}
!51 = !{i64 2152491606}
!52 = !{i64 3993536}
!53 = !{i64 2152496130}
