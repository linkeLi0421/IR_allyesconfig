; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/dove-divider.c_pt.bc'
source_filename = "../drivers/clk/mvebu/dove-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_onecell_data = type { ptr, i32 }
%struct.dove_clk = type { ptr, %struct.clk_hw, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }

@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/mvebu/dove-divider.c\00", [63 x i8] zeroinitializer }, align 32
@dove_divider_clocks = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@dove_divider_data = internal global { %struct.clk_onecell_data, [24 x i8] } { %struct.clk_onecell_data { ptr @dove_divider_clocks, i32 4 }, [24 x i8] zeroinitializer }, align 32
@core_pll = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@dove_hw_clocks = internal global { [4 x %struct.dove_clk], [32 x i8] } { [4 x %struct.dove_clk] [%struct.dove_clk { ptr @.str.7, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 1, i8 6, i8 7, i8 0, ptr @axi_divider }, %struct.dove_clk { ptr @.str.8, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 8, i8 13, i8 14, i8 0, ptr null }, %struct.dove_clk { ptr @.str.9, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 15, i8 20, i8 21, i8 0, ptr null }, %struct.dove_clk { ptr @.str.10, %struct.clk_hw zeroinitializer, ptr null, ptr @dove_divider_lock, i8 22, i8 27, i8 28, i8 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"core-pll\00", [23 x i8] zeroinitializer }, align 32
@dove_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dove_recalc_rate, ptr @dove_round_rate, ptr null, ptr null, ptr null, ptr @dove_set_clock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@dove_recalc_rate.__UNIQUE_ID_ddebug162 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str, ptr @.str.4, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dove_divider\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dove_recalc_rate\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s(): %s divider=%u parent=%lu rate=%lu\0A\00", [55 x i8] zeroinitializer }, align 32
@dove_round_rate.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.5, ptr @.str, ptr @.str.4, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dove_round_rate\00", [16 x i8] zeroinitializer }, align 32
@dove_set_clock.__UNIQUE_ID_ddebug164 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str, ptr @.str.4, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dove_set_clock\00", [17 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@dove_divider_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@axi_divider = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 -1, i32 2, i32 1, i32 3, i32 4, i32 6, i32 5, i32 7, i32 8, i32 10, i32 9, i32 0], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmeta\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dove_divider_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 253, i32 6 }
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"dove_divider_clocks\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 241, i32 20 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"dove_divider_data\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 243, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [9 x i8] c"core_pll\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 215, i32 20 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"dove_hw_clocks\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 186, i32 24 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 216, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"dove_divider_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 155, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 105, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 124, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 141, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 188, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"dove_divider_lock\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"axi_divider\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 184, i32 12 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 195, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 201, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 207, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [36 x i8] c"../drivers/clk/mvebu/dove-divider.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 182, i32 8 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @.str, ptr @dove_divider_clocks, ptr @dove_divider_data, ptr @core_pll, ptr @dove_hw_clocks, ptr @.str.1, ptr @dove_divider_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dove_divider_lock, ptr @axi_divider, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_divider_clocks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_divider_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pll to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_hw_clocks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dove_divider_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_divider to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dove_divider_clk_init(ptr noundef %np) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %name.i.i = alloca [32 x i8], align 1
  %init.i.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 253, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = load ptr, ptr @core_pll, align 4
  %call.i = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 2000000000) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end42, label %dove_divider_init.exit.thread

dove_divider_init.exit.thread:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %1 = getelementptr inbounds i8, ptr %init.i.i, i32 20
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %parent_names2.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 2
  %parent_data.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 3
  %parent_hws.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 4
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #6
  %2 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #6
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 33554431, ptr %1, align 4
  %4 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name.i.i, ptr %init.i.i, align 4
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @dove_divider_ops, ptr %ops.i.i, align 4
  %6 = ptrtoint ptr %parent_names2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @core_pll, ptr %parent_names2.i.i, align 4
  %7 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %parent_data.i.i, align 4
  %8 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %parent_hws.i.i, align 4
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %flags.i.i, align 4
  %10 = load ptr, ptr @dove_hw_clocks, align 4
  %call.i.i = call i32 @strlcpy(ptr noundef nonnull %name.i.i, ptr noundef %10, i32 noundef 32) #6
  store ptr %init.i.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 1, i32 2), align 4
  store ptr %call, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 2), align 4
  %11 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 5), align 1
  %12 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 4), align 4
  %sub.i.i = add i8 %11, 1
  %add.i.i = sub i8 %sub.i.i, %12
  store i8 %add.i.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 7), align 1
  %call12.i.i = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 0, i32 1)) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #6
  store ptr %call12.i.i, ptr @dove_divider_clocks, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #6
  %13 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554431, ptr %1, align 4
  %15 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %name.i.i, ptr %init.i.i, align 4
  %16 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @dove_divider_ops, ptr %ops.i.i, align 4
  %17 = ptrtoint ptr %parent_names2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @core_pll, ptr %parent_names2.i.i, align 4
  %18 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_data.i.i, align 4
  %19 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %parent_hws.i.i, align 4
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %flags.i.i, align 4
  %21 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1), align 4
  %call.i.1.i = call i32 @strlcpy(ptr noundef nonnull %name.i.i, ptr noundef %21, i32 noundef 32) #6
  store ptr %init.i.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 1, i32 2), align 4
  store ptr %call, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 2), align 4
  %22 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 5), align 1
  %23 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 4), align 4
  %sub.i.1.i = add i8 %22, 1
  %add.i.1.i = sub i8 %sub.i.1.i, %23
  store i8 %add.i.1.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 7), align 1
  %call12.i.1.i = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 1, i32 1)) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #6
  store ptr %call12.i.1.i, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #6
  %24 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #6
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 33554431, ptr %1, align 4
  %26 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %name.i.i, ptr %init.i.i, align 4
  %27 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @dove_divider_ops, ptr %ops.i.i, align 4
  %28 = ptrtoint ptr %parent_names2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @core_pll, ptr %parent_names2.i.i, align 4
  %29 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %parent_data.i.i, align 4
  %30 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %parent_hws.i.i, align 4
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags.i.i, align 4
  %32 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2), align 4
  %call.i.2.i = call i32 @strlcpy(ptr noundef nonnull %name.i.i, ptr noundef %32, i32 noundef 32) #6
  store ptr %init.i.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 1, i32 2), align 4
  store ptr %call, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 2), align 4
  %33 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 5), align 1
  %34 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 4), align 4
  %sub.i.2.i = add i8 %33, 1
  %add.i.2.i = sub i8 %sub.i.2.i, %34
  store i8 %add.i.2.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 7), align 1
  %call12.i.2.i = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 2, i32 1)) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #6
  store ptr %call12.i.2.i, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 2), align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name.i.i) #6
  %35 = call ptr @memset(ptr %name.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #6
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 33554431, ptr %1, align 4
  %37 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %name.i.i, ptr %init.i.i, align 4
  %38 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @dove_divider_ops, ptr %ops.i.i, align 4
  %39 = ptrtoint ptr %parent_names2.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @core_pll, ptr %parent_names2.i.i, align 4
  %40 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %parent_data.i.i, align 4
  %41 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %parent_hws.i.i, align 4
  %42 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags.i.i, align 4
  %43 = load ptr, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3), align 4
  %call.i.3.i = call i32 @strlcpy(ptr noundef nonnull %name.i.i, ptr noundef %43, i32 noundef 32) #6
  store ptr %init.i.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 1, i32 2), align 4
  store ptr %call, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 2), align 4
  %44 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 5), align 1
  %45 = load i8, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 4), align 4
  %sub.i.3.i = add i8 %44, 1
  %add.i.3.i = sub i8 %sub.i.3.i, %45
  store i8 %add.i.3.i, ptr getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 7), align 1
  %call12.i.3.i = call ptr @clk_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.dove_clk], ptr @dove_hw_clocks, i32 0, i32 3, i32 1)) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name.i.i) #6
  store ptr %call12.i.3.i, ptr getelementptr inbounds ([4 x ptr], ptr @dove_divider_clocks, i32 0, i32 3), align 4
  %call59 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @dove_divider_data) #6
  br label %cleanup

do.end42:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 256, i32 noundef 9, ptr noundef null) #6
  tail call void @iounmap(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %dove_divider_init.exit.thread, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %base.i = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !48
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  %div_bit_start.i = getelementptr i8, ptr %hw, i32 20
  %4 = ptrtoint ptr %div_bit_start.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div_bit_start.i, align 4
  %conv.i = zext i8 %5 to i32
  %shr.i = lshr i32 %3, %conv.i
  %div_bit_size.i = getelementptr i8, ptr %hw, i32 23
  %6 = ptrtoint ptr %div_bit_size.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %div_bit_size.i, align 1
  %conv1.i = zext i8 %7 to i32
  %shl.i = shl nsw i32 -1, %conv1.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %shr.i, %neg.i
  %divider_table.i = getelementptr i8, ptr %hw, i32 24
  %8 = ptrtoint ptr %divider_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %divider_table.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.dove_get_divider.exit_crit_edge, label %if.then.i

entry.dove_get_divider.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dove_get_divider.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %9, i32 %and.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  br label %dove_get_divider.exit

dove_get_divider.exit:                            ; preds = %if.then.i, %entry.dove_get_divider.exit_crit_edge
  %divider.0.i = phi i32 [ %11, %if.then.i ], [ %and.i, %entry.dove_get_divider.exit_crit_edge ]
  %div12 = lshr i32 %divider.0.i, 1
  %add = add i32 %div12, %parent
  %div2 = udiv i32 %add, %divider.0.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dove_recalc_rate.__UNIQUE_ID_ddebug162, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dove_recalc_rate, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !49

if.then:                                          ; preds = %dove_get_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dove_recalc_rate.__UNIQUE_ID_ddebug162, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, ptr noundef %13, i32 noundef %divider.0.i, i32 noundef %parent, i32 noundef %div2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %dove_get_divider.exit
  ret i32 %div2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent, align 4
  %div48.i = lshr i32 %rate, 1
  %add.i = add i32 %1, %div48.i
  %div1.i = udiv i32 %add.i, %rate
  %divider_table.i = getelementptr i8, ptr %hw, i32 24
  %2 = ptrtoint ptr %divider_table.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %divider_table.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not50.i = icmp eq i32 %5, 0
  br i1 %tobool3.not50.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %6 = phi i32 [ %8, %for.inc.i.for.body.i_crit_edge ], [ %5, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %6)
  %cmp.i = icmp eq i32 %div1.i, %6
  br i1 %cmp.i, label %for.body.i.dove_calc_divider.exit_crit_edge, label %for.inc.i

for.body.i.dove_calc_divider.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dove_calc_divider.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.051.i, 1
  %arrayidx.i = getelementptr i32, ptr %3, i32 %inc.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %div_bit_size.i = getelementptr i8, ptr %hw, i32 23
  %9 = ptrtoint ptr %div_bit_size.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %div_bit_size.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %shl.i)
  %cmp20.not.i = icmp ult i32 %div1.i, %shl.i
  br i1 %cmp20.not.i, label %if.else23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %shl.i, -1
  br label %dove_calc_divider.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %rate)
  %cmp24.i = icmp ult i32 %add.i, %rate
  br i1 %cmp24.i, label %if.else23.i.if.end_crit_edge, label %if.else23.i.dove_calc_divider.exit_crit_edge

if.else23.i.dove_calc_divider.exit_crit_edge:     ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dove_calc_divider.exit

if.else23.i.if.end_crit_edge:                     ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dove_calc_divider.exit:                           ; preds = %if.else23.i.dove_calc_divider.exit_crit_edge, %if.then22.i, %for.body.i.dove_calc_divider.exit_crit_edge
  %retval.1.i = phi i32 [ %sub.i, %if.then22.i ], [ %div1.i, %if.else23.i.dove_calc_divider.exit_crit_edge ], [ %i.051.i, %for.body.i.dove_calc_divider.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp = icmp slt i32 %retval.1.i, 0
  br i1 %cmp, label %dove_calc_divider.exit.cleanup_crit_edge, label %dove_calc_divider.exit.if.end_crit_edge

dove_calc_divider.exit.if.end_crit_edge:          ; preds = %dove_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dove_calc_divider.exit.cleanup_crit_edge:         ; preds = %dove_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dove_calc_divider.exit.if.end_crit_edge, %if.else23.i.if.end_crit_edge
  %retval.1.i25 = phi i32 [ %retval.1.i, %dove_calc_divider.exit.if.end_crit_edge ], [ 1, %if.else23.i.if.end_crit_edge ]
  %div2728 = lshr i32 %retval.1.i25, 1
  %add = add i32 %div2728, %1
  %div2 = udiv i32 %add, %retval.1.i25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dove_round_rate.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dove_round_rate, %if.then7)) #6
          to label %cleanup [label %if.then7], !srcloc !49

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dove_round_rate.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef %12, i32 noundef %retval.1.i25, i32 noundef %1, i32 noundef %div2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end, %dove_calc_divider.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %dove_calc_divider.exit.cleanup_crit_edge ], [ %div2, %if.then7 ], [ %div2, %if.end ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dove_set_clock(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %div48.i = lshr i32 %rate, 1
  %add.i = add i32 %div48.i, %parent_rate
  %div1.i = udiv i32 %add.i, %rate
  %divider_table.i = getelementptr i8, ptr %hw, i32 24
  %0 = ptrtoint ptr %divider_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %divider_table.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not50.i = icmp eq i32 %3, 0
  br i1 %tobool3.not50.i, label %for.cond.preheader.i.cleanup_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.cleanup_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %4 = phi i32 [ %6, %for.inc.i.for.body.i_crit_edge ], [ %3, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.051.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %4)
  %cmp.i = icmp eq i32 %div1.i, %4
  br i1 %cmp.i, label %for.body.i.dove_calc_divider.exit_crit_edge, label %for.inc.i

for.body.i.dove_calc_divider.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dove_calc_divider.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.051.i, 1
  %arrayidx.i = getelementptr i32, ptr %1, i32 %inc.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq i32 %6, 0
  br i1 %tobool3.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i:                                        ; preds = %entry
  %div_bit_size.i = getelementptr i8, ptr %hw, i32 23
  %7 = ptrtoint ptr %div_bit_size.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %div_bit_size.i, align 1
  %conv.i = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %rate)
  %cmp14.i = icmp uge i32 %add.i, %rate
  %div1.i.highbits = lshr i32 %div1.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div1.i.highbits)
  %cmp16.not.i = icmp eq i32 %div1.i.highbits, 0
  %or.cond.i = select i1 %cmp14.i, i1 %cmp16.not.i, i1 false
  br i1 %or.cond.i, label %if.else.i.dove_calc_divider.exit_crit_edge, label %if.else.i.cleanup_crit_edge

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.i.dove_calc_divider.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dove_calc_divider.exit

dove_calc_divider.exit:                           ; preds = %if.else.i.dove_calc_divider.exit_crit_edge, %for.body.i.dove_calc_divider.exit_crit_edge
  %retval.1.i = phi i32 [ %div1.i, %if.else.i.dove_calc_divider.exit_crit_edge ], [ %i.051.i, %for.body.i.dove_calc_divider.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i)
  %cmp = icmp slt i32 %retval.1.i, 0
  br i1 %cmp, label %dove_calc_divider.exit.cleanup_crit_edge, label %do.body

dove_calc_divider.exit.cleanup_crit_edge:         ; preds = %dove_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %dove_calc_divider.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dove_set_clock.__UNIQUE_ID_ddebug164, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dove_set_clock, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !49

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dove_set_clock.__UNIQUE_ID_ddebug164, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, ptr noundef %10, i32 noundef %retval.1.i, i32 noundef %parent_rate, i32 noundef %rate) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %div_bit_start = getelementptr i8, ptr %hw, i32 20
  %11 = ptrtoint ptr %div_bit_start to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %div_bit_start, align 4
  %conv = zext i8 %12 to i32
  %shl = shl i32 %retval.1.i, %conv
  %div_bit_size = getelementptr i8, ptr %hw, i32 23
  %13 = ptrtoint ptr %div_bit_size to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %div_bit_size, align 1
  %conv7 = zext i8 %14 to i32
  %shl8 = shl nsw i32 -1, %conv7
  %neg = xor i32 %shl8, -1
  %shl11 = shl i32 %neg, %conv
  %div_bit_load = getelementptr i8, ptr %hw, i32 22
  %15 = ptrtoint ptr %div_bit_load to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %div_bit_load, align 2
  %conv12 = zext i8 %16 to i32
  %shl13 = shl nuw i32 1, %conv12
  %lock = getelementptr i8, ptr %hw, i32 16
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_lock(ptr noundef %18) #6
  %base = getelementptr i8, ptr %hw, i32 12
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !48
  %22 = or i32 %21, 262144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #6, !srcloc !50
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #6, !srcloc !48
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  %or6.i = or i32 %shl13, %shl11
  %neg.i = xor i32 %or6.i, -1
  %and.i = and i32 %24, %neg.i
  %or7.i = or i32 %and.i, %shl
  %25 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %25) #6, !srcloc !50
  %or9.i = or i32 %or7.i, %shl13
  %26 = tail call i32 @llvm.bswap.i32(i32 %or9.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %26) #6, !srcloc !50
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %25) #6, !srcloc !50
  %28 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %29) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dove_calc_divider.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %for.cond.preheader.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %retval.1.i, %dove_calc_divider.exit.cleanup_crit_edge ], [ -22, %if.else.i.cleanup_crit_edge ], [ -22, %for.cond.preheader.i.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !25, !27, !29, !31, !33, !34, !36}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 253, i32 6}
!2 = !{ptr @dove_divider_clocks, !3, !"dove_divider_clocks", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 241, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 216, i32 2}
!6 = !{ptr @core_pll, !7, !"core_pll", i1 false, i1 false}
!7 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 215, i32 20}
!8 = !{ptr @dove_divider_ops, !9, !"dove_divider_ops", i1 false, i1 false}
!9 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 155, i32 29}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 105, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @dove_recalc_rate.__UNIQUE_ID_ddebug162, !11, !"__UNIQUE_ID_ddebug162", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 124, i32 2}
!17 = !{ptr @dove_round_rate.__UNIQUE_ID_ddebug163, !16, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 141, i32 2}
!20 = !{ptr @dove_set_clock.__UNIQUE_ID_ddebug164, !19, !"__UNIQUE_ID_ddebug164", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 188, i32 11}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 195, i32 11}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 201, i32 11}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 207, i32 11}
!29 = !{ptr @dove_hw_clocks, !30, !"dove_hw_clocks", i1 false, i1 false}
!30 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 186, i32 24}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 182, i32 8}
!33 = !{ptr @dove_divider_lock, !32, !"dove_divider_lock", i1 false, i1 false}
!34 = !{ptr @axi_divider, !35, !"axi_divider", i1 false, i1 false}
!35 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 184, i32 12}
!36 = !{ptr @dove_divider_data, !37, !"dove_divider_data", i1 false, i1 false}
!37 = !{!"../drivers/clk/mvebu/dove-divider.c", i32 243, i32 32}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{i64 4554083}
!49 = !{i64 2148920735, i64 2148920740, i64 2148920753, i64 2148920797, i64 2148920831, i64 2148920852}
!50 = !{i64 4553665}
