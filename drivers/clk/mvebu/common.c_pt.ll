; ModuleID = '/llk/IR_all_yes/drivers/clk/mvebu/common.c_pt.bc'
source_filename = "../drivers/clk/mvebu/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.coreclk_soc_desc = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.coreclk_ratio = type { i32, ptr }
%struct.clk_gating_ctrl = type { ptr, ptr, i32, ptr, i32 }
%struct.clk_gating_soc_desc = type { ptr, ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sscg\00", [27 x i8] zeroinitializer }, align 32
@kirkwood_fix_sscg_deviation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cannot get SSCG register node\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"kirkwood_fix_sscg_deviation\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/mvebu/common.c\00", [37 x i8] zeroinitializer }, align 32
@kirkwood_fix_sscg_deviation._entry_ptr = internal global ptr @kirkwood_fix_sscg_deviation._entry, section ".printk_index", align 4
@kirkwood_fix_sscg_deviation._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013cannot map SSCG register\0A\00", [36 x i8] zeroinitializer }, align 32
@kirkwood_fix_sscg_deviation._entry_ptr.6 = internal global ptr @kirkwood_fix_sscg_deviation._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"tclk\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cpuclk\00", [25 x i8] zeroinitializer }, align 32
@clk_data = internal global { %struct.clk_onecell_data, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ctrl_gating_lock\00", [47 x i8] zeroinitializer }, align 32
@ctrl_gating_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mvebu_clk_gating_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013mvebu-clk-gating: cannot instantiate more than one gateable clock device\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mvebu_clk_gating_setup\00", [41 x i8] zeroinitializer }, align 32
@mvebu_clk_gating_setup._entry_ptr = internal global ptr @mvebu_clk_gating_setup._entry, section ".printk_index", align 4
@clk_gate_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @mvebu_clk_gating_suspend, ptr @mvebu_clk_gating_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 51, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 53, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 59, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 110, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 111, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"clk_data\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 35, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 135, i32 36 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 170, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"ctrl_gating_lock\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 189, i32 1 }
@___asan_gen_.56 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 199, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 243, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"clk_gate_syscore_ops\00", align 1
@___asan_gen_.69 = private constant [30 x i8] c"../drivers/clk/mvebu/common.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 229, i32 27 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @kirkwood_fix_sscg_deviation._entry, ptr @kirkwood_fix_sscg_deviation._entry.4, ptr @kirkwood_fix_sscg_deviation._entry_ptr, ptr @kirkwood_fix_sscg_deviation._entry_ptr.6, ptr @mvebu_clk_gating_setup._entry, ptr @mvebu_clk_gating_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @clk_data, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @ctrl_gating_lock, ptr @ctrl, ptr @.str.12, ptr @.str.13, ptr @clk_gate_syscore_ops], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_fix_sscg_deviation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_fix_sscg_deviation._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_gating_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_clk_gating_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_gate_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kirkwood_fix_sscg_deviation(i32 noundef %system_clk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #8
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %out

if.end10:                                         ; preds = %if.end
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call2) #8, !srcloc !43
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !44
  %and = and i32 %1, 255
  %shr = lshr i32 %1, 8
  %and14 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and14)
  %cmp15.not = icmp ugt i32 %and, %and14
  br i1 %cmp15.not, label %if.end17, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end17:                                         ; preds = %if.end10
  %2 = zext i32 %and to i64
  %3 = zext i32 %and14 to i64
  %sub19 = sub nsw i64 %2, %3
  %conv20 = zext i32 %system_clk to i64
  %mul = mul nsw i64 %sub19, %conv20
  %mul21 = mul nuw nsw i32 %and, 192
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp196 = icmp ult i64 %mul, 4294967296
  br i1 %cmp196, label %if.then200, label %if.else206, !prof !45

if.then200:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv201 = trunc i64 %mul to i32
  %div204 = udiv i32 %conv201, %mul21
  br label %if.end210

if.else206:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul21, i64 %mul) #12, !srcloc !46
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t347 = trunc i64 %asmresult1.i to i32
  br label %if.end210

if.end210:                                        ; preds = %if.else206, %if.then200
  %freq_swing_half.0.off0 = phi i32 [ %div204, %if.then200 ], [ %extract.t347, %if.else206 ]
  %shr212 = lshr i32 %1, 16
  %and213 = and i32 %shr212, 3
  %5 = zext i32 %and213 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and213, label %if.end210.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb217
  ]

if.end210.sw.epilog_crit_edge:                    ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %conv216 = sub i32 %system_clk, %freq_swing_half.0.off0
  br label %sw.epilog

sw.bb217:                                         ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #10
  %conv220 = add i32 %freq_swing_half.0.off0, %system_clk
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb217, %sw.bb, %if.end210.sw.epilog_crit_edge
  %system_clk.addr.0 = phi i32 [ %system_clk, %if.end210.sw.epilog_crit_edge ], [ %conv220, %sw.bb217 ], [ %conv216, %sw.bb ]
  tail call void @iounmap(ptr noundef nonnull %call2) #8
  br label %out

out:                                              ; preds = %sw.epilog, %if.end10.out_crit_edge, %do.end7
  %system_clk.addr.1 = phi i32 [ %system_clk, %do.end7 ], [ %system_clk, %if.end10.out_crit_edge ], [ %system_clk.addr.0, %sw.epilog ]
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %do.end
  %retval.0 = phi i32 [ %system_clk, %do.end ], [ %system_clk.addr.1, %out ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_coreclk_setup(ptr noundef %np, ptr nocapture noundef readonly %desc) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %tclk_name = alloca ptr, align 4
  %cpuclk_name = alloca ptr, align 4
  %rclk_name = alloca ptr, align 4
  %mult = alloca i32, align 4
  %div = alloca i32, align 4
  %name190 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tclk_name) #8
  %0 = ptrtoint ptr %tclk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.7, ptr %tclk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cpuclk_name) #8
  %1 = ptrtoint ptr %cpuclk_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.8, ptr %cpuclk_name, align 4
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !47

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 117, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %num_ratios = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 7
  %2 = ptrtoint ptr %num_ratios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_ratios, align 4
  %add = add i32 %3, 2
  store i32 %add, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %get_refclk_freq = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 3
  %4 = ptrtoint ptr %get_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_refclk_freq, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %if.end23.if.end27_crit_edge, label %if.then25

if.end23.if.end27_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %add26 = add i32 %3, 3
  store i32 %add26, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end23.if.end27_crit_edge
  %6 = load i32, ptr getelementptr inbounds (%struct.clk_onecell_data, ptr @clk_data, i32 0, i32 1), align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !47

kcalloc.exit.thread:                              ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @clk_data, align 4
  br label %do.end48

if.end7.i.i:                                      ; preds = %if.end27
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  store ptr %call8.i.i, ptr @clk_data, align 4
  %tobool30.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool30.not, label %if.end7.i.i.do.end48_crit_edge, label %if.end64, !prof !47

if.end7.i.i.do.end48_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48

do.end48:                                         ; preds = %if.end7.i.i.do.end48_crit_edge, %kcalloc.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 129, i32 noundef 9, ptr noundef null) #8
  tail call void @iounmap(ptr noundef nonnull %call) #8
  br label %cleanup

if.end64:                                         ; preds = %if.end7.i.i
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %tclk_name, i32 noundef 1, i32 noundef 0) #8
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %call66 = call i32 %11(ptr noundef nonnull %call) #8
  %12 = ptrtoint ptr %tclk_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tclk_name, align 4
  %call67 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %13, ptr noundef null, i32 noundef 0, i32 noundef %call66) #8
  %14 = load ptr, ptr @clk_data, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call67, ptr %14, align 4
  %16 = load ptr, ptr @clk_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %cmp.i = icmp ugt ptr %18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end86, label %if.end64.if.end92_crit_edge, !prof !47

if.end64.if.end92_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

do.end86:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 140, i32 noundef 9, ptr noundef null) #8
  br label %if.end92

if.end92:                                         ; preds = %do.end86, %if.end64.if.end92_crit_edge
  %call.i283 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %cpuclk_name, i32 noundef 1, i32 noundef 1) #8
  %get_cpu_freq = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 1
  %19 = ptrtoint ptr %get_cpu_freq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_cpu_freq, align 4
  %call101 = call i32 %20(ptr noundef nonnull %call) #8
  %is_sscg_enabled = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 4
  %21 = ptrtoint ptr %is_sscg_enabled to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %is_sscg_enabled, align 4
  %tobool102.not = icmp eq ptr %22, null
  br i1 %tobool102.not, label %if.end92.if.end110_crit_edge, label %land.lhs.true

if.end92.if.end110_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true:                                    ; preds = %if.end92
  %fix_sscg_deviation = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 5
  %23 = ptrtoint ptr %fix_sscg_deviation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fix_sscg_deviation, align 4
  %tobool103.not = icmp eq ptr %24, null
  br i1 %tobool103.not, label %land.lhs.true.if.end110_crit_edge, label %land.lhs.true104

land.lhs.true.if.end110_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

land.lhs.true104:                                 ; preds = %land.lhs.true
  %call106 = call zeroext i1 %22(ptr noundef nonnull %call) #8
  br i1 %call106, label %if.then107, label %land.lhs.true104.if.end110_crit_edge

land.lhs.true104.if.end110_crit_edge:             ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %fix_sscg_deviation to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fix_sscg_deviation, align 4
  %call109 = call i32 %26(i32 noundef %call101) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %land.lhs.true104.if.end110_crit_edge, %land.lhs.true.if.end110_crit_edge, %if.end92.if.end110_crit_edge
  %rate.0 = phi i32 [ %call109, %if.then107 ], [ %call101, %land.lhs.true104.if.end110_crit_edge ], [ %call101, %land.lhs.true.if.end110_crit_edge ], [ %call101, %if.end92.if.end110_crit_edge ]
  %27 = ptrtoint ptr %cpuclk_name to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpuclk_name, align 4
  %call111 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %28, ptr noundef null, i32 noundef 0, i32 noundef %rate.0) #8
  %29 = load ptr, ptr @clk_data, align 4
  %arrayidx112 = getelementptr ptr, ptr %29, i32 1
  %30 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call111, ptr %arrayidx112, align 4
  %31 = load ptr, ptr @clk_data, align 4
  %arrayidx114 = getelementptr ptr, ptr %31, i32 1
  %32 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx114, align 4
  %cmp.i284 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i284, label %do.end131, label %if.end110.if.end137_crit_edge, !prof !47

if.end110.if.end137_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end137

do.end131:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 153, i32 noundef 9, ptr noundef null) #8
  br label %if.end137

if.end137:                                        ; preds = %do.end131, %if.end110.if.end137_crit_edge
  %34 = ptrtoint ptr %num_ratios to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_ratios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp294 = icmp sgt i32 %35, 0
  br i1 %cmp294, label %for.body.lr.ph, label %if.end137.for.end_crit_edge

if.end137.for.end_crit_edge:                      ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end137
  %ratios = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 6
  %get_clk_ratio = getelementptr inbounds %struct.coreclk_soc_desc, ptr %desc, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end179.for.body_crit_edge, %for.body.lr.ph
  %n.0295 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end179.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rclk_name) #8
  %36 = ptrtoint ptr %rclk_name to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -1 to ptr), ptr %rclk_name, align 4, !annotation !48
  %37 = ptrtoint ptr %ratios to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ratios, align 4
  %name = getelementptr %struct.coreclk_ratio, ptr %38, i32 %n.0295, i32 1
  %39 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %name, align 4
  store ptr %40, ptr %rclk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mult) #8
  %41 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %mult, align 4, !annotation !48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #8
  %42 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %div, align 4, !annotation !48
  %add147 = add nuw i32 %n.0295, 2
  %call.i285 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %rclk_name, i32 noundef 1, i32 noundef %add147) #8
  %43 = ptrtoint ptr %get_clk_ratio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %get_clk_ratio, align 4
  %45 = ptrtoint ptr %ratios to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ratios, align 4
  %arrayidx150 = getelementptr %struct.coreclk_ratio, ptr %46, i32 %n.0295
  %47 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx150, align 4
  call void %44(ptr noundef nonnull %call, i32 noundef %48, ptr noundef nonnull %mult, ptr noundef nonnull %div) #8
  %49 = ptrtoint ptr %rclk_name to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rclk_name, align 4
  %51 = ptrtoint ptr %cpuclk_name to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cpuclk_name, align 4
  %53 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mult, align 4
  %55 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %div, align 4
  %call151 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %50, ptr noundef %52, i32 noundef 0, i32 noundef %54, i32 noundef %56) #8
  %57 = load ptr, ptr @clk_data, align 4
  %arrayidx153 = getelementptr ptr, ptr %57, i32 %add147
  %58 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call151, ptr %arrayidx153, align 4
  %59 = load ptr, ptr @clk_data, align 4
  %arrayidx156 = getelementptr ptr, ptr %59, i32 %add147
  %60 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx156, align 4
  %cmp.i286 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %do.end173, label %for.body.if.end179_crit_edge, !prof !47

for.body.if.end179_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end179

do.end173:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 165, i32 noundef 9, ptr noundef null) #8
  br label %if.end179

if.end179:                                        ; preds = %do.end173, %for.body.if.end179_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mult) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rclk_name) #8
  %inc = add nuw nsw i32 %n.0295, 1
  %62 = ptrtoint ptr %num_ratios to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_ratios, align 4
  %cmp = icmp slt i32 %inc, %63
  br i1 %cmp, label %if.end179.for.body_crit_edge, label %if.end179.for.end_crit_edge

if.end179.for.end_crit_edge:                      ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end179.for.body_crit_edge:                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end179.for.end_crit_edge, %if.end137.for.end_crit_edge
  %.lcssa = phi i32 [ %35, %if.end137.for.end_crit_edge ], [ %63, %if.end179.for.end_crit_edge ]
  %64 = ptrtoint ptr %get_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_refclk_freq, align 4
  %tobool188.not = icmp eq ptr %65, null
  br i1 %tobool188.not, label %for.end.if.end234_crit_edge, label %if.then189

for.end.if.end234_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end234

if.then189:                                       ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name190) #8
  %66 = ptrtoint ptr %name190 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.10, ptr %name190, align 4
  %add192 = add i32 %.lcssa, 2
  %call.i287 = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %name190, i32 noundef 1, i32 noundef %add192) #8
  %67 = ptrtoint ptr %get_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_refclk_freq, align 4
  %call195 = call i32 %68(ptr noundef nonnull %call) #8
  %69 = ptrtoint ptr %name190 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name190, align 4
  %call196 = call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef %70, ptr noundef null, i32 noundef 0, i32 noundef %call195) #8
  %71 = load ptr, ptr @clk_data, align 4
  %72 = ptrtoint ptr %num_ratios to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_ratios, align 4
  %add198 = add i32 %73, 2
  %arrayidx199 = getelementptr ptr, ptr %71, i32 %add198
  %74 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call196, ptr %arrayidx199, align 4
  %75 = load ptr, ptr @clk_data, align 4
  %76 = load i32, ptr %num_ratios, align 4
  %add202 = add i32 %76, 2
  %arrayidx203 = getelementptr ptr, ptr %75, i32 %add202
  %77 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx203, align 4
  %cmp.i288 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i288, label %do.end220, label %if.then189.if.end226_crit_edge, !prof !47

if.then189.if.end226_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end226

do.end220:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 176, i32 noundef 9, ptr noundef null) #8
  br label %if.end226

if.end226:                                        ; preds = %do.end220, %if.then189.if.end226_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name190) #8
  br label %if.end234

if.end234:                                        ; preds = %if.end226, %for.end.if.end234_crit_edge
  call void @iounmap(ptr noundef nonnull %call) #8
  %call235 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull @clk_data) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end234, %do.end48, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cpuclk_name) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tclk_name) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mvebu_clk_gating_setup(ptr noundef %np, ptr nocapture noundef readonly %desc) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %do.end15, label %if.end31, !prof !47

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 248, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %call32 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end31.if.end36_crit_edge, label %if.then34

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call35 = tail call ptr @__clk_get_name(ptr noundef %call32) #8
  tail call void @clk_put(ptr noundef %call32) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end31.if.end36_crit_edge
  %default_parent.0 = phi ptr [ null, %if.end31.if.end36_crit_edge ], [ %call35, %if.then34 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 20) #14
  store ptr %call7.i.i, ptr @ctrl, align 4
  %tobool39.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool39.not, label %do.end57, label %if.end73.critedge, !prof !47

do.end57:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 258, i32 noundef 9, ptr noundef null) #8
  br label %ctrl_out

if.end73.critedge:                                ; preds = %if.end36
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ctrl_gating_lock, ptr %call7.i.i, align 8
  %base74 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %base74 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %base74, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end73.critedge
  %n.0 = phi i32 [ 0, %if.end73.critedge ], [ %inc, %for.cond.for.cond_crit_edge ]
  %arrayidx = getelementptr %struct.clk_gating_soc_desc, ptr %desc, i32 %n.0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool75.not = icmp eq ptr %5, null
  %inc = add i32 %n.0, 1
  br i1 %tobool75.not, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %num_gates = getelementptr inbounds %struct.clk_gating_ctrl, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %num_gates to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %n.0, ptr %num_gates, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.0, i32 4) #8
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !47

kcalloc.exit.thread:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load ptr, ptr @ctrl, align 4
  %gates199 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %gates199 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %gates199, align 4
  br label %do.end98

if.end7.i.i:                                      ; preds = %for.end
  %11 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %12 = load ptr, ptr @ctrl, align 4
  %gates = getelementptr inbounds %struct.clk_gating_ctrl, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %gates to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i, ptr %gates, align 4
  %tobool80.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool80.not, label %if.end7.i.i.do.end98_crit_edge, label %for.cond115.preheader, !prof !47

if.end7.i.i.do.end98_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end98

for.cond115.preheader:                            ; preds = %if.end7.i.i
  %14 = load ptr, ptr @ctrl, align 4
  %num_gates116201 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %num_gates116201 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_gates116201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp202 = icmp sgt i32 %16, 0
  br i1 %cmp202, label %for.cond115.preheader.for.body117_crit_edge, label %for.cond115.preheader.for.end165_crit_edge

for.cond115.preheader.for.end165_crit_edge:       ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end165

for.cond115.preheader.for.body117_crit_edge:      ; preds = %for.cond115.preheader
  br label %for.body117

do.end98:                                         ; preds = %if.end7.i.i.do.end98_crit_edge, %kcalloc.exit.thread
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 273, i32 noundef 9, ptr noundef null) #8
  %17 = load ptr, ptr @ctrl, align 4
  tail call void @kfree(ptr noundef %17) #8
  br label %ctrl_out

for.body117:                                      ; preds = %if.end156.for.body117_crit_edge, %for.cond115.preheader.for.body117_crit_edge
  %18 = phi ptr [ %36, %if.end156.for.body117_crit_edge ], [ %14, %for.cond115.preheader.for.body117_crit_edge ]
  %n.1203 = phi i32 [ %inc164, %if.end156.for.body117_crit_edge ], [ 0, %for.cond115.preheader.for.body117_crit_edge ]
  %arrayidx118 = getelementptr %struct.clk_gating_soc_desc, ptr %desc, i32 %n.1203
  %parent119 = getelementptr %struct.clk_gating_soc_desc, ptr %desc, i32 %n.1203, i32 1
  %19 = ptrtoint ptr %parent119 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent119, align 4
  %tobool120.not = icmp eq ptr %20, null
  %default_parent.0. = select i1 %tobool120.not, ptr %default_parent.0, ptr %20
  %21 = ptrtoint ptr %arrayidx118 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx118, align 4
  %flags = getelementptr %struct.clk_gating_soc_desc, ptr %desc, i32 %n.1203, i32 3
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %bit_idx = getelementptr %struct.clk_gating_soc_desc, ptr %desc, i32 %n.1203, i32 2
  %25 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bit_idx, align 4
  %conv = trunc i32 %26 to i8
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %18, align 4
  %call128 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef %22, ptr noundef %default_parent.0., i32 noundef %24, ptr noundef nonnull %call1, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef %28) #8
  %29 = load ptr, ptr @ctrl, align 4
  %gates129 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %gates129 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gates129, align 4
  %arrayidx130 = getelementptr ptr, ptr %31, i32 %n.1203
  %32 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call128, ptr %arrayidx130, align 4
  %33 = load ptr, ptr %gates129, align 4
  %arrayidx133 = getelementptr ptr, ptr %33, i32 %n.1203
  %34 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx133, align 4
  %cmp.i197 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %do.end150, label %for.body117.if.end156_crit_edge, !prof !47

for.body117.if.end156_crit_edge:                  ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

do.end150:                                        ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 282, i32 noundef 9, ptr noundef null) #8
  br label %if.end156

if.end156:                                        ; preds = %do.end150, %for.body117.if.end156_crit_edge
  %inc164 = add nuw nsw i32 %n.1203, 1
  %36 = load ptr, ptr @ctrl, align 4
  %num_gates116 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %num_gates116 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_gates116, align 4
  %cmp = icmp slt i32 %inc164, %38
  br i1 %cmp, label %if.end156.for.body117_crit_edge, label %if.end156.for.end165_crit_edge

if.end156.for.end165_crit_edge:                   ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end165

if.end156.for.body117_crit_edge:                  ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body117

for.end165:                                       ; preds = %if.end156.for.end165_crit_edge, %for.cond115.preheader.for.end165_crit_edge
  %.lcssa = phi ptr [ %14, %for.cond115.preheader.for.end165_crit_edge ], [ %36, %if.end156.for.end165_crit_edge ]
  %call166 = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @clk_gating_get_src, ptr noundef %.lcssa) #8
  tail call void @register_syscore_ops(ptr noundef nonnull @clk_gate_syscore_ops) #8
  br label %cleanup

ctrl_out:                                         ; preds = %do.end98, %do.end57
  tail call void @iounmap(ptr noundef nonnull %call1) #8
  br label %cleanup

cleanup:                                          ; preds = %ctrl_out, %for.end165, %do.end15, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clk_gating_get_src(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %entry.cleanup11_crit_edge, label %for.cond.preheader

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.cond.preheader:                               ; preds = %entry
  %2 = load ptr, ptr @ctrl, align 4
  %num_gates18 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %num_gates18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_gates18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp119 = icmp sgt i32 %4, 0
  br i1 %cmp119, label %for.body.lr.ph, label %for.cond.preheader.cleanup11_crit_edge

for.cond.preheader.cleanup11_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %5 = phi ptr [ %2, %for.body.lr.ph ], [ %19, %for.inc.for.body_crit_edge ]
  %n.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %gates = getelementptr inbounds %struct.clk_gating_ctrl, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %gates to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gates, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %n.020
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call ptr @__clk_get_hw(ptr noundef %9) #8
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call2, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit_idx, align 4
  %conv = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp4 = icmp eq i32 %11, %conv
  br i1 %cmp4, label %cleanup.thread, label %for.inc

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr @ctrl, align 4
  %gates7 = getelementptr inbounds %struct.clk_gating_ctrl, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %gates7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gates7, align 4
  %arrayidx8 = getelementptr ptr, ptr %16, i32 %n.020
  %17 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx8, align 4
  br label %cleanup11

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %n.020, 1
  %19 = load ptr, ptr @ctrl, align 4
  %num_gates = getelementptr inbounds %struct.clk_gating_ctrl, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %num_gates to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_gates, align 4
  %cmp1 = icmp slt i32 %inc, %21
  br i1 %cmp1, label %for.inc.for.body_crit_edge, label %for.inc.cleanup11_crit_edge

for.inc.cleanup11_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup11

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup11:                                        ; preds = %for.inc.cleanup11_crit_edge, %cleanup.thread, %for.cond.preheader.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  %retval.2 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup11_crit_edge ], [ %18, %cleanup.thread ], [ inttoptr (i32 -19 to ptr), %for.cond.preheader.cleanup11_crit_edge ], [ inttoptr (i32 -19 to ptr), %for.inc.cleanup11_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mvebu_clk_gating_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ctrl, align 4
  %base = getelementptr inbounds %struct.clk_gating_ctrl, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #8, !srcloc !43
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !49
  %5 = load ptr, ptr @ctrl, align 4
  %saved_reg = getelementptr inbounds %struct.clk_gating_ctrl, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %saved_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %saved_reg, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mvebu_clk_gating_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void @arm_heavy_mb() #8
  %0 = load ptr, ptr @ctrl, align 4
  %saved_reg = getelementptr inbounds %struct.clk_gating_ctrl, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %saved_reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %saved_reg, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %base = getelementptr inbounds %struct.clk_gating_ctrl, ptr %0, i32 0, i32 3
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mvebu/common.c", i32 51, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mvebu/common.c", i32 53, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @kirkwood_fix_sscg_deviation._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @kirkwood_fix_sscg_deviation._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/mvebu/common.c", i32 59, i32 3}
!10 = !{ptr @kirkwood_fix_sscg_deviation._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @kirkwood_fix_sscg_deviation._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mvebu/common.c", i32 110, i32 26}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/mvebu/common.c", i32 111, i32 28}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mvebu/common.c", i32 135, i32 36}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/mvebu/common.c", i32 170, i32 22}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/mvebu/common.c", i32 189, i32 1}
!22 = !{ptr @ctrl_gating_lock, !21, !"ctrl_gating_lock", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mvebu/common.c", i32 243, i32 3}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @mvebu_clk_gating_setup._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @mvebu_clk_gating_setup._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @clk_data, !29, !"clk_data", i1 false, i1 false}
!29 = !{!"../drivers/clk/mvebu/common.c", i32 35, i32 32}
!30 = !{ptr @ctrl, !31, !"ctrl", i1 false, i1 false}
!31 = !{!"../drivers/clk/mvebu/common.c", i32 199, i32 32}
!32 = !{ptr @clk_gate_syscore_ops, !33, !"clk_gate_syscore_ops", i1 false, i1 false}
!33 = !{!"../drivers/clk/mvebu/common.c", i32 229, i32 27}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{i64 4983883}
!44 = !{i64 2152564057}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2148605285, i64 2148605565, i64 2148605899, i64 2148606233}
!47 = !{!"branch_weights", i32 1, i32 2000}
!48 = !{!"auto-init"}
!49 = !{i64 2152575446}
!50 = !{i64 2152575665}
!51 = !{i64 4983465}
