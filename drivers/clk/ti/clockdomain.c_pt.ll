; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clockdomain.c_pt.bc'
source_filename = "../drivers/clk/ti/clockdomain.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@omap2_clkops_enable_clkdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: %s: %s: no clkdm set ?!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"omap2_clkops_enable_clkdm\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/clk/ti/clockdomain.c\00", [35 x i8] zeroinitializer }, align 32
@omap2_clkops_enable_clkdm._entry_ptr = internal global ptr @omap2_clkops_enable_clkdm._entry, section ".printk_index", align 4
@omap2_clkops_enable_clkdm._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013%s: %s: %s: clkfw-based clockdomain control disabled ?!\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2_clkops_enable_clkdm._entry_ptr.5 = internal global ptr @omap2_clkops_enable_clkdm._entry.3, section ".printk_index", align 4
@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: could not enable %s's clockdomain %s: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@omap2_clkops_disable_clkdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap2_clkops_disable_clkdm\00", [37 x i8] zeroinitializer }, align 32
@omap2_clkops_disable_clkdm._entry_ptr = internal global ptr @omap2_clkops_disable_clkdm._entry, section ".printk_index", align 4
@omap2_clkops_disable_clkdm._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.7, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap2_clkops_disable_clkdm._entry_ptr.9 = internal global ptr @omap2_clkops_disable_clkdm._entry.8, section ".printk_index", align 4
@omap2_init_clk_clkdm.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clockdomain\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap2_init_clk_clkdm\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"clock: associated clk %s to clkdm %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: clock: associated clk %s to clkdm %s\0A\00", [54 x i8] zeroinitializer }, align 32
@omap2_init_clk_clkdm.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"clock: could not associate clk %s to clkdm %s\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: clock: could not associate clk %s to clkdm %s\0A\00", [45 x i8] zeroinitializer }, align 32
@ti_clkdm_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,clockdomain\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@of_ti_clockdomain_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: %s: Failed get %pOF' clock nr %d (%ld)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"of_ti_clockdomain_setup\00", [40 x i8] zeroinitializer }, align 32
@of_ti_clockdomain_setup._entry_ptr = internal global ptr @of_ti_clockdomain_setup._entry, section ".printk_index", align 4
@of_ti_clockdomain_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: can't setup clkdm for basic clk %s\0A\00", [54 x i8] zeroinitializer }, align 32
@of_ti_clockdomain_setup._entry_ptr.20 = internal global ptr @of_ti_clockdomain_setup._entry.18, section ".printk_index", align 4
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 50, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 56, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 62, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 84, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 90, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 119, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 123, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 143, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [32 x i8] c"../drivers/clk/ti/clockdomain.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 149, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @of_ti_clockdomain_setup._entry, ptr @of_ti_clockdomain_setup._entry.18, ptr @of_ti_clockdomain_setup._entry_ptr, ptr @of_ti_clockdomain_setup._entry_ptr.20, ptr @omap2_clkops_disable_clkdm._entry, ptr @omap2_clkops_disable_clkdm._entry.8, ptr @omap2_clkops_disable_clkdm._entry_ptr, ptr @omap2_clkops_disable_clkdm._entry_ptr.9, ptr @omap2_clkops_enable_clkdm._entry, ptr @omap2_clkops_enable_clkdm._entry.3, ptr @omap2_clkops_enable_clkdm._entry_ptr, ptr @omap2_clkops_enable_clkdm._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clkops_enable_clkdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clkops_enable_clkdm._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clkops_disable_clkdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_clkops_disable_clkdm._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_clockdomain_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_clockdomain_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clkops_enable_clkdm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ti_clk_get_features() #4
  %2 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call6, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1, ptr noundef %call13) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_enable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %clkdm_clk_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm_clk_enable, align 4
  %7 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm, align 4
  %clk17 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk17, align 4
  %call18 = tail call i32 %6(ptr noundef %8, ptr noundef %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %do.end35, !prof !50

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end35:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %clkdm_name = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 9
  %11 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 63, i32 noundef 9, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, ptr noundef %call36, ptr noundef %12, i32 noundef %call18) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end15.cleanup_crit_edge, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end11 ], [ %call18, %do.end35 ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_get_features() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clkops_disable_clkdm(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %0 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @ti_clk_get_features() #4
  %2 = ptrtoint ptr %call6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call6, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.7, ptr noundef %call13) #7
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_clk_disable = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %clkdm_clk_disable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm_clk_disable, align 4
  %7 = ptrtoint ptr %clkdm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm, align 4
  %clk17 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %clk17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk17, align 4
  %call18 = tail call i32 %6(ptr noundef %8, ptr noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end11, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_init_clk_clkdm(ptr nocapture noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clkdm_name = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clkdm_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %clk1 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %clk1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk1, align 4
  %call = tail call ptr @__clk_get_name(ptr noundef %3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %4 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clkdm_lookup = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clkdm_lookup to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clkdm_lookup, align 4
  %7 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clkdm_name, align 4
  %call3 = tail call ptr %6(ptr noundef %8) #4
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.body15, label %do.body

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_init_clk_clkdm, %if.then11)) #4
          to label %do.end [label %if.then11], !srcloc !51

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %call, ptr noundef %10) #4
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %clkdm14 = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 10
  %11 = ptrtoint ptr %clkdm14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %clkdm14, align 4
  br label %cleanup

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap2_init_clk_clkdm, %if.then27)) #4
          to label %cleanup [label %if.then27], !srcloc !51

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %clkdm_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clkdm_name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef %call, ptr noundef %13) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %do.body15, %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_dt_clockdomains_setup() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @ti_clkdm_match_table, ptr noundef null) #4
  %tobool.not5 = icmp eq ptr %call.i, null
  br i1 %tobool.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %np.06 = phi ptr [ %call.i4, %for.body.for.body_crit_edge ], [ %call.i, %entry.for.body_crit_edge ]
  tail call fastcc void @of_ti_clockdomain_setup(ptr noundef nonnull %np.06) #8
  %call.i4 = tail call ptr @of_find_matching_node_and_match(ptr noundef nonnull %np.06, ptr noundef nonnull @ti_clkdm_match_table, ptr noundef null) #4
  %tobool.not = icmp eq ptr %call.i4, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_ti_clockdomain_setup(ptr noundef %node) unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp31.not = icmp eq i32 %call, 0
  br i1 %cmp31.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call1 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef %i.032) #4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call1 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17, ptr noundef %node, i32 noundef %i.032, i32 noundef %2) #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call5 = tail call ptr @__clk_get_hw(ptr noundef %call1) #4
  %call6 = tail call zeroext i1 @omap2_clk_is_hw_omap(ptr noundef %call5) #4
  br i1 %call6, label %if.end14, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call ptr @__clk_get_name(ptr noundef %call1) #4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %call12) #7
  tail call void @clk_put(ptr noundef %call1) #4
  br label %for.inc

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %clkdm_name16 = getelementptr inbounds %struct.clk_hw_omap, ptr %call5, i32 0, i32 9
  %3 = ptrtoint ptr %clkdm_name16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %clkdm_name16, align 4
  %call17 = tail call i32 @omap2_init_clk_clkdm(ptr noundef %call5)
  tail call void @clk_put(ptr noundef %call1) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end14, %do.end10, %do.end
  %inc = add nuw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @omap2_clk_is_hw_omap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clockdomain.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap2_clkops_enable_clkdm._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap2_clkops_enable_clkdm._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/clockdomain.c", i32 56, i32 3}
!8 = !{ptr @omap2_clkops_enable_clkdm._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap2_clkops_enable_clkdm._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/clockdomain.c", i32 62, i32 2}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/clockdomain.c", i32 84, i32 3}
!14 = !{ptr @omap2_clkops_disable_clkdm._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap2_clkops_disable_clkdm._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @omap2_clkops_disable_clkdm._entry.8, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/clockdomain.c", i32 90, i32 3}
!18 = !{ptr @omap2_clkops_disable_clkdm._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/ti/clockdomain.c", i32 119, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug175, !20, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!24 = !{ptr @.str.13, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/ti/clockdomain.c", i32 123, i32 3}
!27 = !{ptr @omap2_init_clk_clkdm.__UNIQUE_ID_ddebug176, !26, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!28 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ti_clkdm_match_table, !30, !"ti_clkdm_match_table", i1 false, i1 false}
!30 = !{!"../drivers/clk/ti/clockdomain.c", i32 160, i32 34}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/ti/clockdomain.c", i32 143, i32 4}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @of_ti_clockdomain_setup._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @of_ti_clockdomain_setup._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/ti/clockdomain.c", i32 149, i32 4}
!38 = !{ptr @of_ti_clockdomain_setup._entry.18, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @of_ti_clockdomain_setup._entry_ptr.20, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 1, i32 2000}
!50 = !{!"branch_weights", i32 2000, i32 1}
!51 = !{i64 2148725029, i64 2148725034, i64 2148725047, i64 2148725091, i64 2148725125, i64 2148725146}
