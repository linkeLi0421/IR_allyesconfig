; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/sckc.c_pt.bc'
source_filename = "../drivers/clk/at91/sckc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_slow_bits = type { i32, i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_sama5d4_slow_osc = type { %struct.clk_hw, ptr, ptr, i32, i8 }
%struct.clk_slow_rc_osc = type { %struct.clk_hw, ptr, ptr, i32, i32, i32 }
%struct.clk_slow_osc = type { %struct.clk_hw, ptr, ptr, i32 }
%struct.clk_sam9x5_slow = type { %struct.clk_hw, ptr, ptr, i8 }

@__of_table_at91sam9x5_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sama5d3_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d3_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sam9x60_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sam9x60-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sam9x60_sckc_setup }, section "__clk_of_table", align 4
@__of_table_sama5d4_clk_sckc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-sckc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d4_sckc_setup }, section "__clk_of_table", align 4
@at91sam9x5_bits = internal constant { %struct.clk_slow_bits, [16 x i8] } { %struct.clk_slow_bits { i32 1, i32 2, i32 4, i32 8 }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"slow_rc_osc\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"slow_osc\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atmel,at91sam9x5-clk-slow-osc\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,osc-bypass\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,at91sam9x5-clk-slow\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slowck\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/clk/at91/sckc.c\00", [40 x i8] zeroinitializer }, align 32
@slow_rc_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_slow_rc_osc_prepare, ptr @clk_slow_rc_osc_unprepare, ptr @clk_slow_rc_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_slow_rc_osc_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_slow_rc_osc_recalc_accuracy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@system_state = external dso_local local_unnamed_addr global i32, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@slow_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_slow_osc_prepare, ptr @clk_slow_osc_unprepare, ptr @clk_slow_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sam9x5_slow_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_sam9x5_slow_set_parent, ptr @clk_sam9x5_slow_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91sam9x60_bits = internal constant { %struct.clk_slow_bits, [16 x i8] } { %struct.clk_slow_bits { i32 0, i32 2, i32 4, i32 16777216 }, [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"md_slck\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"td_slck\00", [24 x i8] zeroinitializer }, align 32
@__const.of_sama5d4_sckc_setup.parent_names = private unnamed_addr constant [2 x ptr] [ptr @.str, ptr @.str.1], align 8
@sama5d4_slow_osc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_sama5d4_slow_osc_prepare, ptr null, ptr @clk_sama5d4_slow_osc_is_prepared, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@at91sama5d4_bits = internal constant { %struct.clk_slow_bits, [16 x i8] } { %struct.clk_slow_bits { i32 0, i32 0, i32 0, i32 8 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [16 x i8] c"at91sam9x5_bits\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 434, i32 35 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 369, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 369, i32 49 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 389, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 394, i32 41 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 396, i32 40 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 409, i32 50 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 421, i32 6 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"slow_rc_osc_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 216, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"slow_osc_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 111, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [16 x i8] c"sam9x5_slow_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 312, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"at91sam9x60_bits\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 455, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 497, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 503, i32 60 }
@___asan_gen_.51 = private unnamed_addr constant [21 x i8] c"sama5d4_slow_osc_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 561, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"at91sama5d4_bits\00", align 1
@___asan_gen_.55 = private constant [27 x i8] c"../drivers/clk/at91/sckc.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 566, i32 35 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__of_table_at91sam9x5_clk_sckc, ptr @__of_table_sam9x60_clk_sckc, ptr @__of_table_sama5d3_clk_sckc, ptr @__of_table_sama5d4_clk_sckc, ptr @at91sam9x5_bits, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @slow_rc_osc_ops, ptr @slow_osc_ops, ptr @sam9x5_slow_ops, ptr @at91sam9x60_bits, ptr @.str.7, ptr @.str.8, ptr @sama5d4_slow_osc_ops, ptr @at91sama5d4_bits], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slow_rc_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slow_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_slow_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x60_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sama5d4_slow_osc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sama5d4_bits to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_sckc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91sam9x5_sckc_register(ptr noundef %np, i32 noundef 75) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d3_sckc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @at91sam9x5_sckc_register(ptr noundef %np, i32 noundef 500) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sam9x60_sckc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  %1 = ptrtoint ptr %parent_names to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %parent_names, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_names, align 8
  %call1 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 93750000, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.unregister_slow_rc_crit_edge, label %if.end8

if.end4.unregister_slow_rc_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end8:                                          ; preds = %if.end4
  %call.i = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i, null
  %arrayidx10 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx10, align 4
  %call12 = tail call fastcc ptr @at91_clk_register_slow_osc(ptr noundef nonnull %call, ptr noundef %5, ptr noundef nonnull %call5, i32 noundef 5000000, i1 noundef zeroext %tobool.i, ptr noundef nonnull @at91sam9x60_bits) #10
  %cmp.i92 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.end8.unregister_slow_rc_crit_edge, label %if.end15

if.end8.unregister_slow_rc_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end15:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 12) #11
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.end15.unregister_slow_osc_crit_edge, label %if.end20

if.end15.unregister_slow_osc_crit_edge:           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_osc

if.end20:                                         ; preds = %if.end15
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %call7.i.i, align 8
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_names, align 8
  %call22 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.7, ptr noundef %9, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 0, i32 noundef 0) #7
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %hws, align 4
  %cmp.i93 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.end20.clk_data_free_crit_edge, label %if.end28

if.end20.clk_data_free_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_data_free

if.end28:                                         ; preds = %if.end20
  %call29 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %call, ptr noundef nonnull @.str.8, ptr noundef nonnull %parent_names, ptr noundef nonnull @at91sam9x60_bits) #10
  %arrayidx31 = getelementptr %struct.clk_hw_onecell_data, ptr %call7.i.i, i32 2
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call29, ptr %arrayidx31, align 8
  %cmp.i94 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.end28.unregister_md_slck_crit_edge, label %if.end36

if.end28.unregister_md_slck_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_md_slck

if.end36:                                         ; preds = %if.end28
  %call37 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end36.cleanup_crit_edge, label %do.end, !prof !49

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 510, i32 noundef 9, ptr noundef null) #7
  %12 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx31, align 8
  call void @clk_hw_unregister(ptr noundef %13) #7
  call void @kfree(ptr noundef %13) #7
  br label %unregister_md_slck

unregister_md_slck:                               ; preds = %do.end, %if.end28.unregister_md_slck_crit_edge
  %14 = ptrtoint ptr %hws to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hws, align 4
  call void @clk_hw_unregister(ptr noundef %15) #7
  br label %clk_data_free

clk_data_free:                                    ; preds = %unregister_md_slck, %if.end20.clk_data_free_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %unregister_slow_osc

unregister_slow_osc:                              ; preds = %clk_data_free, %if.end15.unregister_slow_osc_crit_edge
  call void @clk_hw_unregister(ptr noundef %call12) #7
  call void @kfree(ptr noundef %call12) #7
  br label %unregister_slow_rc

unregister_slow_rc:                               ; preds = %unregister_slow_osc, %if.end8.unregister_slow_rc_crit_edge, %if.end4.unregister_slow_rc_crit_edge
  call void @clk_hw_unregister(ptr noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %unregister_slow_rc, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d4_sckc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %xtal_name = alloca ptr, align 4
  %parent_names = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %xtal_name) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %1 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %parent_names, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent_names, align 8
  %call1 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %4, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 32768, i32 noundef 250000000, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %5 = ptrtoint ptr %xtal_name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %xtal_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 28) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end4.unregister_slow_rc_crit_edge, label %if.end9

if.end4.unregister_slow_rc_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end9:                                          ; preds = %if.end4
  %arrayidx10 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx10, align 4
  %9 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sama5d4_slow_osc_ops, ptr %ops, align 4
  %parent_names11 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xtal_name, ptr %parent_names11, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %flags, align 4
  %init12 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %init12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %init, ptr %init12, align 8
  %sckcr = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %sckcr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %sckcr, align 4
  %startup_usec = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %call7.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %startup_usec to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1200000, ptr %startup_usec, align 4
  %bits = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at91sama5d4_bits, ptr %bits, align 8
  %call14 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end9.free_slow_osc_data_crit_edge

if.end9.free_slow_osc_data_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_slow_osc_data

if.end17:                                         ; preds = %if.end9
  %call18 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %parent_names, ptr noundef nonnull @at91sama5d4_bits) #10
  %cmp.i72 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i72, label %if.end17.unregister_slow_osc_crit_edge, label %if.end21

if.end17.unregister_slow_osc_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_osc

if.end21:                                         ; preds = %if.end17
  %call22 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %do.end, !prof !49

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 618, i32 noundef 9, ptr noundef null) #7
  call void @clk_hw_unregister(ptr noundef %call18) #7
  call void @kfree(ptr noundef %call18) #7
  br label %unregister_slow_osc

unregister_slow_osc:                              ; preds = %do.end, %if.end17.unregister_slow_osc_crit_edge
  call void @clk_hw_unregister(ptr noundef nonnull %call7.i.i) #7
  br label %free_slow_osc_data

free_slow_osc_data:                               ; preds = %unregister_slow_osc, %if.end9.free_slow_osc_data_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %unregister_slow_rc

unregister_slow_rc:                               ; preds = %free_slow_osc_data, %if.end4.unregister_slow_rc_crit_edge
  call void @clk_hw_unregister(ptr noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %unregister_slow_rc, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %xtal_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91sam9x5_sckc_register(ptr noundef %np, i32 noundef %rc_osc_startup_us) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = load i64, ptr @__const.of_sama5d4_sckc_setup.parent_names, align 8
  %1 = ptrtoint ptr %parent_names to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %parent_names, align 8
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_names, align 8
  %call1 = tail call fastcc ptr @at91_clk_register_slow_rc_osc(ptr noundef nonnull %call, ptr noundef %3, i32 noundef %rc_osc_startup_us) #10
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end17.thread

if.then7:                                         ; preds = %if.end4
  %call8 = tail call ptr @of_get_compatible_child(ptr noundef %np, ptr noundef nonnull @.str.2) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.unregister_slow_rc_crit_edge, label %if.end17

if.then7.unregister_slow_rc_crit_edge:            ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end17.thread:                                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i1 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.3, ptr noundef null) #7
  br label %if.end20

if.end17:                                         ; preds = %if.then7
  %call12 = tail call ptr @of_clk_get_parent_name(ptr noundef nonnull %call8, i32 noundef 0) #7
  %call.i = tail call ptr @of_find_property(ptr noundef nonnull %call8, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %call14 = tail call ptr @of_get_compatible_child(ptr noundef %np, ptr noundef nonnull @.str.4) #7
  %tobool18.not = icmp eq ptr %call12, null
  br i1 %tobool18.not, label %if.end17.unregister_slow_rc_crit_edge, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end17.unregister_slow_rc_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end20:                                         ; preds = %if.end17.if.end20_crit_edge, %if.end17.thread
  %bypass.0.in11.in = phi ptr [ %call.i1, %if.end17.thread ], [ %call.i, %if.end17.if.end20_crit_edge ]
  %xtal_name.010 = phi ptr [ %call5, %if.end17.thread ], [ %call12, %if.end17.if.end20_crit_edge ]
  %child.09 = phi ptr [ null, %if.end17.thread ], [ %call14, %if.end17.if.end20_crit_edge ]
  %bypass.0.in11 = icmp ne ptr %bypass.0.in11.in, null
  %arrayidx21 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx21, align 4
  %call23 = tail call fastcc ptr @at91_clk_register_slow_osc(ptr noundef nonnull %call, ptr noundef %5, ptr noundef nonnull %xtal_name.010, i32 noundef 1200000, i1 noundef zeroext %bypass.0.in11, ptr noundef nonnull @at91sam9x5_bits) #10
  %cmp.i3 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i3, label %if.end20.unregister_slow_rc_crit_edge, label %if.end26

if.end20.unregister_slow_rc_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_rc

if.end26:                                         ; preds = %if.end20
  %call27 = call fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef nonnull %parent_names, ptr noundef nonnull @at91sam9x5_bits) #10
  %cmp.i4 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i4, label %if.end26.unregister_slow_osc_crit_edge, label %if.end30

if.end26.unregister_slow_osc_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %unregister_slow_osc

if.end30:                                         ; preds = %if.end26
  %tobool31.not = icmp eq ptr %child.09, null
  br i1 %tobool31.not, label %if.else34, label %if.then32

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %child.09, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call27) #7
  br label %if.end36

if.else34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call27) #7
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then32
  %ret.0 = phi i32 [ %call33, %if.then32 ], [ %call35, %if.else34 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool37.not = icmp eq i32 %ret.0, 0
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %do.end, !prof !49

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 421, i32 noundef 9, ptr noundef null) #7
  call void @clk_hw_unregister(ptr noundef %call27) #7
  call void @kfree(ptr noundef %call27) #7
  br label %unregister_slow_osc

unregister_slow_osc:                              ; preds = %do.end, %if.end26.unregister_slow_osc_crit_edge
  call void @clk_hw_unregister(ptr noundef %call23) #7
  call void @kfree(ptr noundef %call23) #7
  br label %unregister_slow_rc

unregister_slow_rc:                               ; preds = %unregister_slow_osc, %if.end20.unregister_slow_rc_crit_edge, %if.end17.unregister_slow_rc_crit_edge, %if.then7.unregister_slow_rc_crit_edge
  call void @clk_hw_unregister(ptr noundef %call1) #7
  call void @kfree(ptr noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %unregister_slow_rc, %if.end36.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_slow_rc_osc(ptr noundef %sckcr, ptr noundef %name, i32 noundef %startup) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %tobool.not = icmp eq ptr %sckcr, null
  %tobool1.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 32) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @slow_rc_osc_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %flags, align 4
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init9, align 8
  %sckcr10 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sckcr10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sckcr, ptr %sckcr10, align 4
  %bits11 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %bits11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @at91sam9x5_bits, ptr %bits11, align 8
  %frequency12 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %frequency12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32768, ptr %frequency12, align 4
  %accuracy13 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %accuracy13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50000000, ptr %accuracy13, align 8
  %startup_usec = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %startup_usec to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %startup, ptr %startup_usec, align 4
  %call16 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end6.cleanup_crit_edge, label %if.then18

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %14 = inttoptr i32 %call16 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then18 ], [ %call7.i.i, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_slow_osc(ptr noundef %sckcr, ptr noundef %name, ptr noundef %parent_name, i32 noundef %startup, i1 noundef zeroext %bypass, ptr noundef %bits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  %tobool.not = icmp eq ptr %sckcr, null
  %tobool1.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %parent_name, null
  %or.cond45 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond45, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 24) #11
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @slow_osc_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %6 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %7 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %flags, align 4
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %init, ptr %init11, align 8
  %sckcr12 = getelementptr inbounds %struct.clk_slow_osc, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %sckcr12 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sckcr, ptr %sckcr12, align 4
  %startup_usec = getelementptr inbounds %struct.clk_slow_osc, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %startup_usec to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %startup, ptr %startup_usec, align 4
  %bits13 = getelementptr inbounds %struct.clk_slow_osc, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bits13 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %bits, ptr %bits13, align 8
  br i1 %bypass, label %do.body, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  call void @arm_heavy_mb() #7
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %sckcr) #7, !srcloc !51
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !52
  %15 = ptrtoint ptr %bits13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bits13, align 8
  %cr_osc32en = getelementptr inbounds %struct.clk_slow_bits, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cr_osc32en to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cr_osc32en, align 4
  %neg = xor i32 %18, -1
  %and = and i32 %14, %neg
  %cr_osc32byp = getelementptr inbounds %struct.clk_slow_bits, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %cr_osc32byp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cr_osc32byp, align 4
  %or = or i32 %and, %20
  %21 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %sckcr, i32 %21) #7, !srcloc !53
  br label %if.end20

if.end20:                                         ; preds = %do.body, %if.end8.if.end20_crit_edge
  %call23 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.cleanup_crit_edge, label %if.then25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %22 = inttoptr i32 %call23 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.then25 ], [ %call7.i.i, %if.end20.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at91_clk_register_sam9x5_slow(ptr noundef %sckcr, ptr noundef %name, ptr noundef %parent_names, ptr noundef %bits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %tobool.not = icmp eq ptr %sckcr, null
  %tobool1.not = icmp eq ptr %name, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  %tobool3.not = icmp eq ptr %parent_names, null
  %or.cond1 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 24) #11
  %tobool7.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sam9x5_slow_ops, ptr %ops, align 4
  %parent_names12 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names12, align 4
  %num_parents13 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %num_parents13, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags, align 4
  %init15 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init15, align 8
  %sckcr16 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %sckcr16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sckcr, ptr %sckcr16, align 4
  %bits17 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %bits17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %bits, ptr %bits17, align 8
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %sckcr) #7, !srcloc !51
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !54
  %cr_oscsel = getelementptr inbounds %struct.clk_slow_bits, ptr %bits, i32 0, i32 3
  %13 = ptrtoint ptr %cr_oscsel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cr_oscsel, align 4
  %and = and i32 %14, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21 = icmp ne i32 %and, 0
  %conv23 = zext i1 %tobool21 to i8
  %parent = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv23, ptr %parent, align 4
  %call26 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end10.cleanup_crit_edge, label %if.then28

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then28:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %16 = inttoptr i32 %call26 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then28 ], [ %call7.i.i, %if.end10.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_slow_rc_osc_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !55
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !56
  %bits = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %or = or i32 %7, %3
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %8) #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %9 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp ult i32 %9, 3
  %startup_usec = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 5
  %10 = ptrtoint ptr %startup_usec to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %startup_usec, align 4
  br i1 %cmp, label %cond.false8, label %if.else

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %11) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %11, 1
  tail call void @usleep_range_state(i32 noundef %11, i32 noundef %add, i32 noundef 2) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.false8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_slow_rc_osc_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !58
  %bits = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %neg = xor i32 %7, -1
  %and = and i32 %3, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %8) #7, !srcloc !53
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_slow_rc_osc_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !59
  %bits = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_slow_rc_osc_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frequency = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %frequency, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_slow_rc_osc_recalc_accuracy(ptr nocapture noundef readonly %hw, i32 noundef %parent_acc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %accuracy = getelementptr inbounds %struct.clk_slow_rc_osc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %accuracy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %accuracy, align 4
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_slow_osc_prepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !60
  %bits = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %cr_osc32byp = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cr_osc32byp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_osc32byp, align 4
  %cr_osc32en = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cr_osc32en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr_osc32en, align 4
  %or = or i32 %9, %7
  %and = and i32 %or, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !61
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bits, align 4
  %cr_osc32en7 = getelementptr inbounds %struct.clk_slow_bits, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %cr_osc32en7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cr_osc32en7, align 4
  %or8 = or i32 %13, %3
  %14 = tail call i32 @llvm.bswap.i32(i32 %or8)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %14) #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %15 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp = icmp ult i32 %15, 3
  %startup_usec = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 3
  %16 = ptrtoint ptr %startup_usec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %startup_usec, align 4
  br i1 %cmp, label %cond.false14, label %if.else

cond.false14:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #7
  br label %cleanup

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %17, 1
  tail call void @usleep_range_state(i32 noundef %17, i32 noundef %add, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %cond.false14, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_slow_osc_unprepare(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !62
  %bits = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %cr_osc32byp = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cr_osc32byp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_osc32byp, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !63
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bits, align 4
  %cr_osc32en = getelementptr inbounds %struct.clk_slow_bits, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %cr_osc32en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_osc32en, align 4
  %neg = xor i32 %11, -1
  %and6 = and i32 %3, %neg
  %12 = tail call i32 @llvm.bswap.i32(i32 %and6)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %12) #7, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_slow_osc_is_prepared(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  %bits = getelementptr inbounds %struct.clk_slow_osc, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %cr_osc32byp = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %cr_osc32byp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_osc32byp, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cr_osc32en = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %cr_osc32en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr_osc32en, align 4
  %and6 = and i32 %9, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7 = icmp ne i32 %and6, 0
  %lnot.ext = zext i1 %tobool7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %lnot.ext, %if.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sam9x5_slow_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr1 = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool.not = icmp eq i8 %index, 0
  %bits = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %cr_oscsel = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cr_oscsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_oscsel, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true, label %land.lhs.true9

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %if.else

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.end
  br i1 %tobool6.not, label %if.then17, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bits, align 4
  %cr_oscsel19 = getelementptr inbounds %struct.clk_slow_bits, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cr_oscsel19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_oscsel19, align 4
  %or = or i32 %11, %3
  br label %do.body

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bits, align 4
  %cr_oscsel21 = getelementptr inbounds %struct.clk_slow_bits, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cr_oscsel21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cr_oscsel21, align 4
  %neg = xor i32 %15, -1
  %and22 = and i32 %3, %neg
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then17
  %tmp2.0 = phi i32 [ %or, %if.then17 ], [ %and22, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !66
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %tmp2.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %16) #7, !srcloc !53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %17 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp24 = icmp ult i32 %17, 3
  br i1 %cmp24, label %if.then26, label %if.else27

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 32641696) #7
  br label %cleanup

if.else27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 152, i32 noundef 153, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else27, %if.then26, %land.lhs.true9.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true9.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.else27 ], [ 0, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_sam9x5_slow_get_parent(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sckcr = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %sckcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sckcr, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !51
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  %bits = getelementptr inbounds %struct.clk_sam9x5_slow, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bits, align 4
  %cr_oscsel = getelementptr inbounds %struct.clk_slow_bits, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cr_oscsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr_oscsel, align 4
  %and = and i32 %7, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %conv = zext i1 %tobool to i8
  ret i8 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_sama5d4_slow_osc_prepare(ptr nocapture noundef %hw) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %sckcr = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %sckcr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sckcr, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !51
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !69
  %bits = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bits, align 4
  %cr_oscsel = getelementptr inbounds %struct.clk_slow_bits, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cr_oscsel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cr_oscsel, align 4
  %and = and i32 %9, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end6, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_state to i32))
  %10 = load i32, ptr @system_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp ult i32 %10, 3
  %startup_usec = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %hw, i32 0, i32 3
  %11 = ptrtoint ptr %startup_usec to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %startup_usec, align 4
  br i1 %cmp, label %cond.false12, label %if.else

cond.false12:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %12, 1
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %add, i32 noundef 2) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %cond.false12, %if.end.cleanup.sink.split_crit_edge
  %14 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_sama5d4_slow_osc_is_prepared(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.clk_sama5d4_slow_osc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !68
  %2 = zext i8 %1 to i32
  ret i32 %2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__of_table_at91sam9x5_clk_sckc, !1, !"__of_table_at91sam9x5_clk_sckc", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/sckc.c", i32 445, i32 1}
!2 = !{ptr @__of_table_sama5d3_clk_sckc, !3, !"__of_table_sama5d3_clk_sckc", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/sckc.c", i32 452, i32 1}
!4 = !{ptr @__of_table_sam9x60_clk_sckc, !5, !"__of_table_sam9x60_clk_sckc", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/sckc.c", i32 526, i32 1}
!6 = !{ptr @__of_table_sama5d4_clk_sckc, !7, !"__of_table_sama5d4_clk_sckc", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/sckc.c", i32 632, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/sckc.c", i32 369, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/sckc.c", i32 369, i32 49}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/sckc.c", i32 389, i32 39}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/sckc.c", i32 394, i32 41}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/sckc.c", i32 396, i32 40}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/sckc.c", i32 409, i32 50}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/at91/sckc.c", i32 421, i32 6}
!22 = !{ptr @slow_rc_osc_ops, !23, !"slow_rc_osc_ops", i1 false, i1 false}
!23 = !{!"../drivers/clk/at91/sckc.c", i32 216, i32 29}
!24 = !{ptr @slow_osc_ops, !25, !"slow_osc_ops", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/sckc.c", i32 111, i32 29}
!26 = !{ptr @sam9x5_slow_ops, !27, !"sam9x5_slow_ops", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/sckc.c", i32 312, i32 29}
!28 = !{ptr @at91sam9x5_bits, !29, !"at91sam9x5_bits", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/sckc.c", i32 434, i32 35}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/sckc.c", i32 497, i32 21}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/sckc.c", i32 503, i32 60}
!34 = !{ptr @at91sam9x60_bits, !35, !"at91sam9x60_bits", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/sckc.c", i32 455, i32 35}
!36 = !{ptr @sama5d4_slow_osc_ops, !37, !"sama5d4_slow_osc_ops", i1 false, i1 false}
!37 = !{!"../drivers/clk/at91/sckc.c", i32 561, i32 29}
!38 = !{ptr @at91sama5d4_bits, !39, !"at91sama5d4_bits", i1 false, i1 false}
!39 = !{!"../drivers/clk/at91/sckc.c", i32 566, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2152551442}
!51 = !{i64 4993218}
!52 = !{i64 2152552407}
!53 = !{i64 4992800}
!54 = !{i64 2152571620}
!55 = !{i64 2152558210}
!56 = !{i64 2152559099}
!57 = !{i64 2152561873}
!58 = !{i64 2152562764}
!59 = !{i64 2152564471}
!60 = !{i64 2152545247}
!61 = !{i64 2152545473}
!62 = !{i64 2152547963}
!63 = !{i64 2152548190}
!64 = !{i64 2152550051}
!65 = !{i64 2152567827}
!66 = !{i64 2152568029}
!67 = !{i64 2152570803}
!68 = !{i8 0, i8 2}
!69 = !{i64 2152580317}
