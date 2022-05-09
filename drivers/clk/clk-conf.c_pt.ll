; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-conf.c_pt.bc'
source_filename = "../drivers/clk/clk-conf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+of_clk_set_defaults\22, \22a\22\09"
module asm "\09.weak\09__crc_of_clk_set_defaults\09\09\09\09"
module asm "\09.long\09__crc_of_clk_set_defaults\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_clk_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22of_clk_set_defaults\22\09\09\09\09\09"
module asm "__kstrtabns_of_clk_set_defaults:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__kstrtab_of_clk_set_defaults = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_clk_set_defaults = external dso_local constant [0 x i8], align 1
@__ksymtab_of_clk_set_defaults = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_clk_set_defaults to i32), ptr @__kstrtab_of_clk_set_defaults, ptr @__kstrtabns_of_clk_set_defaults }, section "___ksymtab_gpl+of_clk_set_defaults", align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"assigned-clock-parents\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"#clock-cells\00", [19 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry = internal constant %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 24, ptr null, ptr null }, align 1
@.str.2 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013clk: invalid value of clock-parents property at %pOF\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__set_clk_parents\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/clk/clk-conf.c\00", [41 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry_ptr = internal global ptr @__set_clk_parents._entry, section ".printk_index", align 4
@__set_clk_parents._entry.5 = internal constant %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 42, ptr null, ptr null }, align 1
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014clk: couldn't get parent clock %d for %pOF\0A\00", [50 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry_ptr.7 = internal global ptr @__set_clk_parents._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"assigned-clocks\00", [16 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 58, ptr null, ptr null }, align 1
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014clk: couldn't get assigned clock %d for %pOF\0A\00", [48 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry_ptr.11 = internal global ptr @__set_clk_parents._entry.9, section ".printk_index", align 4
@__set_clk_parents._entry.12 = internal constant %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 66, ptr null, ptr null }, align 1
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013clk: failed to reparent %s to %s: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@__set_clk_parents._entry_ptr.14 = internal global ptr @__set_clk_parents._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"assigned-clock-rates\00", [43 x i8] zeroinitializer }, align 32
@__set_clk_rates._entry = internal constant %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 103, ptr null, ptr null }, align 1
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014clk: couldn't get clock %d for %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__set_clk_rates\00", [16 x i8] zeroinitializer }, align 32
@__set_clk_rates._entry_ptr = internal global ptr @__set_clk_rates._entry, section ".printk_index", align 4
@__set_clk_rates._entry.18 = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 111, ptr null, ptr null }, align 1
@.str.19 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013clk: couldn't set %s clk rate to %u (%d), current rate: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@__set_clk_rates._entry_ptr.20 = internal global ptr @__set_clk_rates._entry.18, section ".printk_index", align 4
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 20, i32 49 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 21, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 23, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 5 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 46, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 57, i32 5 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 65, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 85, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 102, i32 6 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [26 x i8] c"../drivers/clk/clk-conf.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 109, i32 5 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__ksymtab_of_clk_set_defaults, ptr @__set_clk_parents._entry, ptr @__set_clk_parents._entry.12, ptr @__set_clk_parents._entry.5, ptr @__set_clk_parents._entry.9, ptr @__set_clk_parents._entry_ptr, ptr @__set_clk_parents._entry_ptr.11, ptr @__set_clk_parents._entry_ptr.14, ptr @__set_clk_parents._entry_ptr.7, ptr @__set_clk_rates._entry, ptr @__set_clk_rates._entry.18, ptr @__set_clk_rates._entry_ptr, ptr @__set_clk_rates._entry_ptr.20, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @of_clk_set_defaults(ptr noundef %node, i1 noundef zeroext %clk_supplier) #0 align 64 {
entry:
  %clkspec.i10 = alloca %struct.of_phandle_args, align 4
  %rate.i = alloca i32, align 4
  %clkspec.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i) #4
  %0 = call ptr @memset(ptr %clkspec.i, i32 255, i32 72)
  %call.i = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %node, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -22
  br i1 %cmp.i, label %if.end.thread.i, label %if.end.i

if.end.thread.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull %node) #7
  br label %__set_clk_parents.exit.thread

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2106.i = icmp sgt i32 %call.i, 0
  br i1 %cmp2106.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.__set_clk_parents.exit.thread_crit_edge

if.end.i.__set_clk_parents.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_parents.exit.thread

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %index.0107.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %node, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %index.0107.i, ptr noundef nonnull %clkspec.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i)
  %cmp6.i = icmp eq i32 %call.i.i, -2
  br i1 %cmp6.i, label %if.then5.i.for.inc.i_crit_edge, label %if.then5.i.__set_clk_parents.exit.thread25_crit_edge

if.then5.i.__set_clk_parents.exit.thread25_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_parents.exit.thread25

if.then5.i.for.inc.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end8.i:                                        ; preds = %for.body.i
  %1 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clkspec.i, align 4
  %cmp9.i = icmp ne ptr %2, %node
  %brmerge.i = or i1 %cmp9.i, %clk_supplier
  br i1 %brmerge.i, label %if.end11.i, label %if.end8.i.__set_clk_parents.exit.thread_crit_edge

if.end8.i.__set_clk_parents.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_parents.exit.thread

if.end11.i:                                       ; preds = %if.end8.i
  %call12.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec.i) #4
  %cmp.i.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.i, label %if.end25.i

if.then14.i:                                      ; preds = %if.end11.i
  %cmp16.not.i = icmp eq ptr %call12.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.not.i, label %if.then14.i.__set_clk_parents.exit.thread25_crit_edge, label %do.end20.i

if.then14.i.__set_clk_parents.exit.thread25_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_parents.exit.thread25

do.end20.i:                                       ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call12.i to i32
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %index.0107.i, ptr noundef nonnull %node) #7
  br label %__set_clk_parents.exit

if.end25.i:                                       ; preds = %if.end11.i
  %call.i98.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %node, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %index.0107.i, ptr noundef nonnull %clkspec.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %cmp27.i = icmp slt i32 %call.i98.i, 0
  br i1 %cmp27.i, label %if.end25.i.err.i_crit_edge, label %if.end29.i

if.end25.i.err.i_crit_edge:                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err.i

if.end29.i:                                       ; preds = %if.end25.i
  %4 = ptrtoint ptr %clkspec.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clkspec.i, align 4
  %cmp31.i = icmp ne ptr %5, %node
  %brmerge97.i = or i1 %cmp31.i, %clk_supplier
  br i1 %brmerge97.i, label %if.end35.i, label %if.end29.i.err.i_crit_edge

if.end29.i.err.i_crit_edge:                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err.i

if.end35.i:                                       ; preds = %if.end29.i
  %call36.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec.i) #4
  %cmp.i99.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99.i, label %if.then38.i, label %if.end49.i

if.then38.i:                                      ; preds = %if.end35.i
  %cmp40.not.i = icmp eq ptr %call36.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp40.not.i, label %if.then38.i.err.i_crit_edge, label %do.end44.i

if.then38.i.err.i_crit_edge:                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err.i

do.end44.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call36.i to i32
  %call46.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %index.0107.i, ptr noundef nonnull %node) #7
  br label %err.i

if.end49.i:                                       ; preds = %if.end35.i
  %call50.i = call i32 @clk_set_parent(ptr noundef %call36.i, ptr noundef %call12.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %do.end55.i, label %if.end49.i.if.end60.i_crit_edge

if.end49.i.if.end60.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

do.end55.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #6
  %call57.i = call ptr @__clk_get_name(ptr noundef %call36.i) #4
  %call58.i = call ptr @__clk_get_name(ptr noundef %call12.i) #4
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %call57.i, ptr noundef %call58.i, i32 noundef %call50.i) #7
  br label %if.end60.i

if.end60.i:                                       ; preds = %do.end55.i, %if.end49.i.if.end60.i_crit_edge
  call void @clk_put(ptr noundef %call36.i) #4
  call void @clk_put(ptr noundef %call12.i) #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end60.i, %if.then5.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %index.0107.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i.__set_clk_parents.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.__set_clk_parents.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_parents.exit.thread

err.i:                                            ; preds = %do.end44.i, %if.then38.i.err.i_crit_edge, %if.end29.i.err.i_crit_edge, %if.end25.i.err.i_crit_edge
  %rc.0.i = phi i32 [ %6, %do.end44.i ], [ -517, %if.then38.i.err.i_crit_edge ], [ %call.i98.i, %if.end25.i.err.i_crit_edge ], [ 0, %if.end29.i.err.i_crit_edge ]
  call void @clk_put(ptr noundef %call12.i) #4
  br label %__set_clk_parents.exit

__set_clk_parents.exit.thread:                    ; preds = %for.inc.i.__set_clk_parents.exit.thread_crit_edge, %if.end8.i.__set_clk_parents.exit.thread_crit_edge, %if.end.i.__set_clk_parents.exit.thread_crit_edge, %if.end.thread.i
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #4
  br label %if.end3

__set_clk_parents.exit.thread25:                  ; preds = %if.then14.i.__set_clk_parents.exit.thread25_crit_edge, %if.then5.i.__set_clk_parents.exit.thread25_crit_edge
  %retval.0.i.ph = phi i32 [ -517, %if.then14.i.__set_clk_parents.exit.thread25_crit_edge ], [ %call.i.i, %if.then5.i.__set_clk_parents.exit.thread25_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #4
  br label %cleanup

__set_clk_parents.exit:                           ; preds = %err.i, %do.end20.i
  %retval.0.i = phi i32 [ %rc.0.i, %err.i ], [ %3, %do.end20.i ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %__set_clk_parents.exit.cleanup_crit_edge, label %__set_clk_parents.exit.if.end3_crit_edge

__set_clk_parents.exit.if.end3_crit_edge:         ; preds = %__set_clk_parents.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

__set_clk_parents.exit.cleanup_crit_edge:         ; preds = %__set_clk_parents.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %__set_clk_parents.exit.if.end3_crit_edge, %__set_clk_parents.exit.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %clkspec.i10) #4
  %7 = call ptr @memset(ptr %clkspec.i10, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #4
  %8 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %rate.i, align 4, !annotation !46
  %call.i11 = call ptr @of_find_property(ptr noundef nonnull %node, ptr noundef nonnull @.str.15, ptr noundef null) #4
  %call1.i12 = call ptr @of_prop_next_u32(ptr noundef %call.i11, ptr noundef null, ptr noundef nonnull %rate.i) #4
  %tobool.not58.i = icmp eq ptr %call1.i12, null
  br i1 %tobool.not58.i, label %if.end3.__set_clk_rates.exit_crit_edge, label %if.end3.for.body.i13_crit_edge

if.end3.for.body.i13_crit_edge:                   ; preds = %if.end3
  br label %for.body.i13

if.end3.__set_clk_rates.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_rates.exit

for.body.i13:                                     ; preds = %for.inc.i20.for.body.i13_crit_edge, %if.end3.for.body.i13_crit_edge
  %index.060.i = phi i32 [ %index.1.i, %for.inc.i20.for.body.i13_crit_edge ], [ 0, %if.end3.for.body.i13_crit_edge ]
  %cur.059.i = phi ptr [ %call33.i, %for.inc.i20.for.body.i13_crit_edge ], [ %call1.i12, %if.end3.for.body.i13_crit_edge ]
  %9 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool2.not.i = icmp eq i32 %10, 0
  br i1 %tobool2.not.i, label %for.body.i13.if.end32.i_crit_edge, label %if.then.i

for.body.i13.if.end32.i_crit_edge:                ; preds = %for.body.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end32.i

if.then.i:                                        ; preds = %for.body.i13
  %call.i.i14 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %node, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef -1, i32 noundef %index.060.i, ptr noundef nonnull %clkspec.i10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp.i15 = icmp slt i32 %call.i.i14, 0
  br i1 %cmp.i15, label %if.then4.i, label %if.end.i17

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i14)
  %cmp5.i = icmp eq i32 %call.i.i14, -2
  br i1 %cmp5.i, label %if.then4.i.for.inc.i20_crit_edge, label %if.then4.i.__set_clk_rates.exit_crit_edge

if.then4.i.__set_clk_rates.exit_crit_edge:        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_rates.exit

if.then4.i.for.inc.i20_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i20

if.end.i17:                                       ; preds = %if.then.i
  %11 = ptrtoint ptr %clkspec.i10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkspec.i10, align 4
  %cmp7.i = icmp ne ptr %12, %node
  %brmerge.i16 = or i1 %cmp7.i, %clk_supplier
  br i1 %brmerge.i16, label %if.end10.i, label %if.end.i17.__set_clk_rates.exit_crit_edge

if.end.i17.__set_clk_rates.exit_crit_edge:        ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_rates.exit

if.end10.i:                                       ; preds = %if.end.i17
  %call11.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %clkspec.i10) #4
  %cmp.i.i18 = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i18, label %if.then13.i, label %if.end20.i

if.then13.i:                                      ; preds = %if.end10.i
  %cmp15.not.i = icmp eq ptr %call11.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.not.i, label %if.then13.i.__set_clk_rates.exit_crit_edge, label %do.end.i

if.then13.i.__set_clk_rates.exit_crit_edge:       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_rates.exit

do.end.i:                                         ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call11.i to i32
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %index.060.i, ptr noundef nonnull %node) #7
  br label %__set_clk_rates.exit

if.end20.i:                                       ; preds = %if.end10.i
  %14 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rate.i, align 4
  %call21.i = call i32 @clk_set_rate(ptr noundef %call11.i, i32 noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %do.end26.i, label %if.end20.i.if.end31.i_crit_edge

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %call28.i = call ptr @__clk_get_name(ptr noundef %call11.i) #4
  %16 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate.i, align 4
  %call29.i = call i32 @clk_get_rate(ptr noundef %call11.i) #4
  %call30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %call28.i, i32 noundef %17, i32 noundef %call21.i, i32 noundef %call29.i) #7
  br label %if.end31.i

if.end31.i:                                       ; preds = %do.end26.i, %if.end20.i.if.end31.i_crit_edge
  call void @clk_put(ptr noundef %call11.i) #4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end31.i, %for.body.i13.if.end32.i_crit_edge
  %inc.i19 = add i32 %index.060.i, 1
  br label %for.inc.i20

for.inc.i20:                                      ; preds = %if.end32.i, %if.then4.i.for.inc.i20_crit_edge
  %index.1.i = phi i32 [ %index.060.i, %if.then4.i.for.inc.i20_crit_edge ], [ %inc.i19, %if.end32.i ]
  %call33.i = call ptr @of_prop_next_u32(ptr noundef %call.i11, ptr noundef nonnull %cur.059.i, ptr noundef nonnull %rate.i) #4
  %tobool.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool.not.i, label %for.inc.i20.__set_clk_rates.exit_crit_edge, label %for.inc.i20.for.body.i13_crit_edge

for.inc.i20.for.body.i13_crit_edge:               ; preds = %for.inc.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i13

for.inc.i20.__set_clk_rates.exit_crit_edge:       ; preds = %for.inc.i20
  call void @__sanitizer_cov_trace_pc() #6
  br label %__set_clk_rates.exit

__set_clk_rates.exit:                             ; preds = %for.inc.i20.__set_clk_rates.exit_crit_edge, %do.end.i, %if.then13.i.__set_clk_rates.exit_crit_edge, %if.end.i17.__set_clk_rates.exit_crit_edge, %if.then4.i.__set_clk_rates.exit_crit_edge, %if.end3.__set_clk_rates.exit_crit_edge
  %retval.0.i21 = phi i32 [ %13, %do.end.i ], [ -517, %if.then13.i.__set_clk_rates.exit_crit_edge ], [ 0, %if.end3.__set_clk_rates.exit_crit_edge ], [ 0, %for.inc.i20.__set_clk_rates.exit_crit_edge ], [ 0, %if.end.i17.__set_clk_rates.exit_crit_edge ], [ %call.i.i14, %if.then4.i.__set_clk_rates.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %clkspec.i10) #4
  br label %cleanup

cleanup:                                          ; preds = %__set_clk_rates.exit, %__set_clk_parents.exit.cleanup_crit_edge, %__set_clk_parents.exit.thread25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i21, %__set_clk_rates.exit ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i, %__set_clk_parents.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %__set_clk_parents.exit.thread25 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__ksymtab_of_clk_set_defaults, !1, !"__ksymtab_of_clk_set_defaults", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-conf.c", i32 144, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-conf.c", i32 20, i32 49}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-conf.c", i32 21, i32 8}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-conf.c", i32 23, i32 3}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__set_clk_parents._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @__set_clk_parents._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-conf.c", i32 41, i32 5}
!14 = !{ptr @__set_clk_parents._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @__set_clk_parents._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-conf.c", i32 46, i32 41}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-conf.c", i32 57, i32 5}
!20 = !{ptr @__set_clk_parents._entry.9, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @__set_clk_parents._entry_ptr.11, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-conf.c", i32 65, i32 4}
!24 = !{ptr @__set_clk_parents._entry.12, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @__set_clk_parents._entry_ptr.14, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-conf.c", i32 85, i32 2}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-conf.c", i32 102, i32 6}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @__set_clk_rates._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @__set_clk_rates._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/clk-conf.c", i32 109, i32 5}
!35 = !{ptr @__set_clk_rates._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @__set_clk_rates._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
