; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/mv98dx3236.c_pt.bc'
source_filename = "../drivers/clk/mvebu/mv98dx3236.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.coreclk_ratio = type { i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__of_table_mv98dx3236_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mv98dx3236-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mv98dx3236_clk_init }, section "__clk_of_table", align 4
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"marvell,mv98dx3236-gating-clock\00", [32 x i8] zeroinitializer }, align 32
@mv98dx3236_core_clocks = internal constant { %struct.coreclk_soc_desc, [32 x i8] } { %struct.coreclk_soc_desc { ptr @mv98dx3236_get_tclk_freq, ptr @mv98dx3236_get_cpu_freq, ptr @mv98dx3236_get_clk_ratio, ptr null, ptr null, ptr null, ptr @mv98dx3236_core_ratios, i32 2 }, [32 x i8] zeroinitializer }, align 32
@mv98dx3236_gating_desc = internal constant [7 x %struct.clk_gating_soc_desc] [%struct.clk_gating_soc_desc { ptr @.str.8, ptr null, i32 3, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.9, ptr null, i32 4, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.10, ptr null, i32 5, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.11, ptr null, i32 17, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.12, ptr null, i32 18, i32 0 }, %struct.clk_gating_soc_desc { ptr @.str.13, ptr null, i32 22, i32 0 }, %struct.clk_gating_soc_desc zeroinitializer], section ".init.rodata", align 4
@mv98dx3236_core_ratios = internal constant [2 x %struct.coreclk_ratio] [%struct.coreclk_ratio { i32 0, ptr @.str.6 }, %struct.coreclk_ratio { i32 1, ptr @.str.7 }], section ".init.rodata", align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,armadaxp-98dx4251\00", [38 x i8] zeroinitializer }, align 32
@mv98dx4251_cpu_frequencies = internal unnamed_addr constant [8 x i32] [i32 400000000, i32 0, i32 667000000, i32 800000000, i32 0, i32 0, i32 0, i32 0], section ".init.rodata", align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,armadaxp-98dx3236\00", [38 x i8] zeroinitializer }, align 32
@mv98dx3236_cpu_frequencies = internal unnamed_addr constant [8 x i32] [i32 0, i32 667000000, i32 400000000, i32 800000000, i32 0, i32 800000000, i32 0, i32 0], section ".init.rodata", align 4
@mv98dx3236_get_cpu_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013CPU freq select unsupported %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mv98dx3236_get_cpu_freq\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/mvebu/mv98dx3236.c\00", [33 x i8] zeroinitializer }, align 32
@mv98dx3236_get_cpu_freq._entry_ptr = internal global ptr @mv98dx3236_get_cpu_freq._entry, section ".printk_index", align 4
@mv98dx4251_cpu_ddr_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx3236_cpu_ddr_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx4251_cpu_mpll_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 2, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 2, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@mv98dx3236_cpu_mpll_ratios = internal unnamed_addr constant [8 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 3, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1]], section ".init.rodata", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ddrclk\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ge1\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ge0\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pex00\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sdio\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb0\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xor0\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 171, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant [23 x i8] c"mv98dx3236_core_clocks\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 145, i32 38 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 76, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 78, i32 36 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 82, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 93, i32 41 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 94, i32 42 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 159, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 160, i32 4 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 161, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 162, i32 4 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 163, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [34 x i8] c"../drivers/clk/mvebu/mv98dx3236.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 164, i32 4 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__of_table_mv98dx3236_clk, ptr @mv98dx3236_get_cpu_freq._entry, ptr @mv98dx3236_get_cpu_freq._entry_ptr, ptr @.str, ptr @mv98dx3236_core_clocks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv98dx3236_core_clocks to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mv98dx3236_get_cpu_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv98dx3236_clk_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #4
  tail call void @mvebu_coreclk_setup(ptr noundef %np, ptr noundef nonnull @mv98dx3236_core_clocks) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mvebu_clk_gating_setup(ptr noundef nonnull %call, ptr noundef nonnull @mv98dx3236_gating_desc) #7
  tail call void @of_node_put(ptr noundef nonnull %call) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_coreclk_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mvebu_clk_gating_setup(ptr noundef, ptr noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mv98dx3236_get_tclk_freq(ptr nocapture noundef readnone %sar) #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 200000000
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mv98dx3236_get_cpu_freq(ptr noundef %sar) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  %1 = lshr i32 %0, 10
  %2 = trunc i32 %1 to i8
  %conv = and i8 %2, 7
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else:                                          ; preds = %entry
  %call3 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.do.end_crit_edge, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end8:                                          ; preds = %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %mv98dx3236_cpu_frequencies.sink = phi ptr [ @mv98dx4251_cpu_frequencies, %entry.if.end8_crit_edge ], [ @mv98dx3236_cpu_frequencies, %if.else.if.end8_crit_edge ]
  %idxprom6 = zext i8 %conv to i32
  %arrayidx7 = getelementptr [8 x i32], ptr %mv98dx3236_cpu_frequencies.sink, i32 0, i32 %idxprom6
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %cpu_freq.0 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cpu_freq.0)
  %tobool9.not = icmp eq i32 %cpu_freq.0, 0
  br i1 %tobool9.not, label %if.end8.do.end_crit_edge, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %if.else.do.end_crit_edge
  %conv12 = zext i8 %conv to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv12) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end, %if.end8.if.end14_crit_edge
  %cpu_freq.020 = phi i32 [ 0, %do.end ], [ %cpu_freq.0, %if.end8.if.end14_crit_edge ]
  ret i32 %cpu_freq.020
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mv98dx3236_get_clk_ratio(ptr noundef %sar, i32 noundef %id, ptr nocapture noundef writeonly %mult, ptr nocapture noundef writeonly %div) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %sar) #4, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  %1 = lshr i32 %0, 10
  %and = and i32 %1, 7
  %2 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %id, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.else, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %sw.bb
  %call6 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.else.sw.epilog_crit_edge, label %if.else.sw.epilog.sink.split_crit_edge

if.else.sw.epilog.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %call15 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.else22, label %sw.bb14.sw.epilog.sink.split_crit_edge

sw.bb14.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.else22:                                        ; preds = %sw.bb14
  %call23 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.else22.sw.epilog_crit_edge, label %if.else22.sw.epilog.sink.split_crit_edge

if.else22.sw.epilog.sink.split_crit_edge:         ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

if.else22.sw.epilog_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.else22.sw.epilog.sink.split_crit_edge, %sw.bb14.sw.epilog.sink.split_crit_edge, %if.else.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %mv98dx4251_cpu_mpll_ratios.sink45 = phi ptr [ @mv98dx4251_cpu_ddr_ratios, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @mv98dx3236_cpu_ddr_ratios, %if.else.sw.epilog.sink.split_crit_edge ], [ @mv98dx4251_cpu_mpll_ratios, %sw.bb14.sw.epilog.sink.split_crit_edge ], [ @mv98dx3236_cpu_mpll_ratios, %if.else22.sw.epilog.sink.split_crit_edge ]
  %arrayidx18 = getelementptr [8 x [2 x i32]], ptr %mv98dx4251_cpu_mpll_ratios.sink45, i32 0, i32 %and
  %3 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx18, align 4
  %5 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %mult, align 4
  %arrayidx21 = getelementptr [8 x [2 x i32]], ptr %mv98dx4251_cpu_mpll_ratios.sink45, i32 0, i32 %and, i32 1
  %6 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx21, align 4
  %8 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %div, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.else22.sw.epilog_crit_edge, %if.else.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__of_table_mv98dx3236_clk, !1, !"__of_table_mv98dx3236_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 180, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 171, i32 39}
!4 = !{ptr @mv98dx3236_core_clocks, !5, !"mv98dx3236_core_clocks", i1 false, i1 false}
!5 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 145, i32 38}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 76, i32 31}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 78, i32 36}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 82, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @mv98dx3236_get_cpu_freq._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @mv98dx3236_get_cpu_freq._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mv98dx4251_cpu_frequencies, !17, !"mv98dx4251_cpu_frequencies", i1 false, i1 false}
!17 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 60, i32 18}
!18 = !{ptr @mv98dx3236_cpu_frequencies, !19, !"mv98dx3236_cpu_frequencies", i1 false, i1 false}
!19 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 50, i32 18}
!20 = !{ptr @mv98dx4251_cpu_ddr_ratios, !21, !"mv98dx4251_cpu_ddr_ratios", i1 false, i1 false}
!21 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 112, i32 30}
!22 = !{ptr @mv98dx3236_cpu_ddr_ratios, !23, !"mv98dx3236_cpu_ddr_ratios", i1 false, i1 false}
!23 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 102, i32 30}
!24 = !{ptr @mv98dx4251_cpu_mpll_ratios, !25, !"mv98dx4251_cpu_mpll_ratios", i1 false, i1 false}
!25 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 107, i32 30}
!26 = !{ptr @mv98dx3236_cpu_mpll_ratios, !27, !"mv98dx3236_cpu_mpll_ratios", i1 false, i1 false}
!27 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 97, i32 30}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 93, i32 41}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 94, i32 42}
!32 = !{ptr @mv98dx3236_core_ratios, !33, !"mv98dx3236_core_ratios", i1 false, i1 false}
!33 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 92, i32 35}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 159, i32 4}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 160, i32 4}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 161, i32 4}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 162, i32 4}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 163, i32 4}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 164, i32 4}
!46 = !{ptr @mv98dx3236_gating_desc, !47, !"mv98dx3236_gating_desc", i1 false, i1 false}
!47 = !{!"../drivers/clk/mvebu/mv98dx3236.c", i32 158, i32 41}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4029921}
!58 = !{i64 2151591336}
!59 = !{i64 2151593988}
