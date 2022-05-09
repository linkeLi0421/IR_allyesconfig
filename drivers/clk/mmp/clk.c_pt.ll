; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmp_clk_unit = type { i32, ptr, %struct.clk_onecell_data }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.mmp_param_fixed_rate_clk = type { i32, ptr, ptr, i32, i32 }
%struct.mmp_param_fixed_factor_clk = type { i32, ptr, ptr, i32, i32, i32 }
%struct.mmp_param_general_gate_clk = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.mmp_param_gate_clk = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.mmp_param_mux_clk = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr }
%struct.mmp_param_div_clk = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }

@mmp_register_fixed_rate_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mmp_register_fixed_rate_clks\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/mmp/clk.c\00", [42 x i8] zeroinitializer }, align 32
@mmp_register_fixed_rate_clks._entry_ptr = internal global ptr @mmp_register_fixed_rate_clks._entry, section ".printk_index", align 4
@mmp_register_fixed_factor_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmp_register_fixed_factor_clks\00", [33 x i8] zeroinitializer }, align 32
@mmp_register_fixed_factor_clks._entry_ptr = internal global ptr @mmp_register_fixed_factor_clks._entry, section ".printk_index", align 4
@mmp_register_general_gate_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mmp_register_general_gate_clks\00", [33 x i8] zeroinitializer }, align 32
@mmp_register_general_gate_clks._entry_ptr = internal global ptr @mmp_register_general_gate_clks._entry, section ".printk_index", align 4
@mmp_register_gate_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmp_register_gate_clks\00", [41 x i8] zeroinitializer }, align 32
@mmp_register_gate_clks._entry_ptr = internal global ptr @mmp_register_gate_clks._entry, section ".printk_index", align 4
@mmp_register_mux_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmp_register_mux_clks\00", [42 x i8] zeroinitializer }, align 32
@mmp_register_mux_clks._entry_ptr = internal global ptr @mmp_register_mux_clks._entry, section ".printk_index", align 4
@mmp_register_div_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.7, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mmp_register_div_clks\00", [42 x i8] zeroinitializer }, align 32
@mmp_register_div_clks._entry_ptr = internal global ptr @mmp_register_div_clks._entry, section ".printk_index", align 4
@mmp_clk_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013CLK %d has invalid pointer %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmp_clk_add\00", [20 x i8] zeroinitializer }, align 32
@mmp_clk_add._entry_ptr = internal global ptr @mmp_clk_add._entry, section ".printk_index", align 4
@mmp_clk_add._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013CLK %d is invalid\0A\00", [43 x i8] zeroinitializer }, align 32
@mmp_clk_add._entry_ptr.12 = internal global ptr @mmp_clk_add._entry.10, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 39, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 61, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 87, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 115, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 143, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 170, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 183, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [25 x i8] c"../drivers/clk/mmp/clk.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 187, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mmp_clk_add._entry, ptr @mmp_clk_add._entry.10, ptr @mmp_clk_add._entry_ptr, ptr @mmp_clk_add._entry_ptr.12, ptr @mmp_register_div_clks._entry, ptr @mmp_register_div_clks._entry_ptr, ptr @mmp_register_fixed_factor_clks._entry, ptr @mmp_register_fixed_factor_clks._entry_ptr, ptr @mmp_register_fixed_rate_clks._entry, ptr @mmp_register_fixed_rate_clks._entry_ptr, ptr @mmp_register_gate_clks._entry, ptr @mmp_register_gate_clks._entry_ptr, ptr @mmp_register_general_gate_clks._entry, ptr @mmp_register_general_gate_clks._entry_ptr, ptr @mmp_register_mux_clks._entry, ptr @mmp_register_mux_clks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_fixed_rate_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_fixed_factor_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_general_gate_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_gate_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_mux_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_register_div_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_add._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_clk_init(ptr noundef %np, ptr noundef %unit, i32 noundef %nr_clks) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_clks, i32 4) #5
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !44

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %clk_table1 = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  %3 = ptrtoint ptr %clk_table1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8.i.i, ptr %clk_table1, align 4
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nr_clks, ptr %unit, align 4
  %clk_data = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 2
  %5 = ptrtoint ptr %clk_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %clk_data, align 4
  %clk_num = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nr_clks, ptr %clk_num, align 4
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %clk_data) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_fixed_rate_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp29 = icmp sgt i32 %size, 0
  br i1 %cmp29, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %clks, i32 %i.030, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %clks, i32 %i.030, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %clks, i32 %i.030, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %fixed_rate = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %clks, i32 %i.030, i32 4
  %6 = ptrtoint ptr %fixed_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fixed_rate, align 4
  %call = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %7) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %9) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_fixed_rate_clk, ptr %clks, i32 %i.030
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_table, align 4
  %arrayidx12 = getelementptr ptr, ptr %13, i32 %11
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call, ptr %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.030, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_fixed_factor_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp32 = icmp sgt i32 %size, 0
  br i1 %cmp32, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033, i32 5
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %mult = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033, i32 3
  %6 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mult, align 4
  %div = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033, i32 4
  %8 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div, align 4
  %call = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef %11) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_fixed_factor_clk, ptr %clks, i32 %i.033
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then10

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_table, align 4
  %arrayidx13 = getelementptr ptr, ptr %15, i32 %13
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %arrayidx13, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.033, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_general_gate_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, ptr noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp38 = icmp sgt i32 %size, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %offset = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %7
  %bit_idx = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 5
  %8 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bit_idx, align 4
  %gate_flags = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 6
  %10 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gate_flags, align 1
  %lock = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039, i32 7
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %call = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %add.ptr, i8 noundef zeroext %9, i8 noundef zeroext %11, ptr noundef %13) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, ptr noundef %15) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_general_gate_clk, ptr %clks, i32 %i.039
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not = icmp eq i32 %17, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk_table, align 4
  %arrayidx15 = getelementptr ptr, ptr %19, i32 %17
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_gate_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, ptr noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp44 = icmp sgt i32 %size, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %offset = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %7
  %mask = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 5
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %val_enable = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 6
  %10 = ptrtoint ptr %val_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val_enable, align 4
  %val_disable = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 7
  %12 = ptrtoint ptr %val_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val_disable, align 4
  %gate_flags = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 8
  %14 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gate_flags, align 4
  %lock = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045, i32 9
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call = tail call ptr @mmp_clk_register_gate(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %add.ptr, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %17) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef %19) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_gate_clk, ptr %clks, i32 %i.045
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_table, align 4
  %arrayidx17 = getelementptr ptr, ptr %23, i32 %21
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmp_clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_mux_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, ptr noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp44 = icmp sgt i32 %size, 0
  br i1 %cmp44, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %num_parents = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 3
  %4 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_parents, align 4
  %flags = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %offset = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 5
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %9
  %shift = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 6
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 4
  %width = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 7
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %conv = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %mux_flags = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 8
  %14 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mux_flags, align 2
  %lock = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045, i32 9
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %call = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %1, ptr noundef %3, i8 noundef zeroext %5, i32 noundef %7, ptr noundef %add.ptr, i8 noundef zeroext %11, i32 noundef %sub, i8 noundef zeroext %15, ptr noundef null, ptr noundef %17) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef %19) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_mux_clk, ptr %clks, i32 %i.045
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then14

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_table, align 4
  %arrayidx17 = getelementptr ptr, ptr %23, i32 %21
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %arrayidx17, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_register_div_clks(ptr nocapture noundef readonly %unit, ptr nocapture noundef readonly %clks, ptr noundef %base, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp41 = icmp sgt i32 %size, 0
  br i1 %cmp41, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %name = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %parent_name = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 2
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_name, align 4
  %flags = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %offset = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 4
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %base, i32 %7
  %shift = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 5
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 4
  %width = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 6
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 1
  %div_flags = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 7
  %12 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %div_flags, align 2
  %lock = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042, i32 8
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  %call = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %1, ptr noundef %3, i32 noundef %5, ptr noundef %add.ptr, i8 noundef zeroext %9, i8 noundef zeroext %11, i8 noundef zeroext %13, ptr noundef null, ptr noundef %15) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, ptr noundef %17) #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_param_div_clk, ptr %clks, i32 %i.042
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then13

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_table, align 4
  %arrayidx16 = getelementptr ptr, ptr %21, i32 %19
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then13, %if.end.for.inc_crit_edge, %do.end
  %inc = add nuw nsw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %size
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_clk_add(ptr nocapture noundef readonly %unit, i32 noundef %id, ptr noundef %clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %clk, null
  %cmp.i = icmp ugt ptr %clk, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %id, ptr noundef %clk) #9
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %id)
  %cmp.not = icmp ugt i32 %1, %id
  br i1 %cmp.not, label %if.end7, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %id) #9
  br label %return

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %clk_table = getelementptr inbounds %struct.mmp_clk_unit, ptr %unit, i32 0, i32 1
  %2 = ptrtoint ptr %clk_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_table, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clk, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end7, %do.end4, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk.c", i32 39, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmp_register_fixed_rate_clks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmp_register_fixed_rate_clks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk.c", i32 61, i32 4}
!8 = !{ptr @mmp_register_fixed_factor_clks._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mmp_register_fixed_factor_clks._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mmp/clk.c", i32 87, i32 4}
!12 = !{ptr @mmp_register_general_gate_clks._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mmp_register_general_gate_clks._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mmp/clk.c", i32 115, i32 4}
!16 = !{ptr @mmp_register_gate_clks._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @mmp_register_gate_clks._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mmp/clk.c", i32 143, i32 4}
!20 = !{ptr @mmp_register_mux_clks._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mmp_register_mux_clks._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mmp/clk.c", i32 170, i32 4}
!24 = !{ptr @mmp_register_div_clks._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mmp_register_div_clks._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/mmp/clk.c", i32 183, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mmp_clk_add._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mmp_clk_add._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mmp/clk.c", i32 187, i32 3}
!33 = !{ptr @mmp_clk_add._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @mmp_clk_add._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 1, i32 2000}
