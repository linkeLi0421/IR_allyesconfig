; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk.c_pt.bc'
source_filename = "../drivers/clk/imx/clk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_ccm_lock\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_ccm_lock\09\09\09\09"
module asm "\09.long\09__crc_imx_ccm_lock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_ccm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_ccm_lock\22\09\09\09\09\09"
module asm "__kstrtabns_imx_ccm_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_unregister_hw_clocks\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_unregister_hw_clocks\09\09\09\09"
module asm "\09.long\09__crc_imx_unregister_hw_clocks\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_unregister_hw_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_unregister_hw_clocks\22\09\09\09\09\09"
module asm "__kstrtabns_imx_unregister_hw_clocks:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_check_clk_hws\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_check_clk_hws\09\09\09\09"
module asm "\09.long\09__crc_imx_check_clk_hws\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_check_clk_hws:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_check_clk_hws\22\09\09\09\09\09"
module asm "__kstrtabns_imx_check_clk_hws:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_obtain_fixed_clk_hw\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_obtain_fixed_clk_hw\09\09\09\09"
module asm "\09.long\09__crc_imx_obtain_fixed_clk_hw\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_obtain_fixed_clk_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_obtain_fixed_clk_hw\22\09\09\09\09\09"
module asm "__kstrtabns_imx_obtain_fixed_clk_hw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx_ccm_lock\00", [19 x i8] zeroinitializer }, align 32
@imx_ccm_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_imx_ccm_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_ccm_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_ccm_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_ccm_lock to i32), ptr @__kstrtab_imx_ccm_lock, ptr @__kstrtabns_imx_ccm_lock }, section "___ksymtab_gpl+imx_ccm_lock", align 4
@__kstrtab_imx_unregister_hw_clocks = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_unregister_hw_clocks = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_unregister_hw_clocks = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_unregister_hw_clocks to i32), ptr @__kstrtab_imx_unregister_hw_clocks, ptr @__kstrtabns_imx_unregister_hw_clocks }, section "___ksymtab_gpl+imx_unregister_hw_clocks", align 4
@imx_check_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013i.MX clk %u: register failed with %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_check_clocks\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/imx/clk.c\00", [42 x i8] zeroinitializer }, align 32
@imx_check_clocks._entry_ptr = internal global ptr @imx_check_clocks._entry, section ".printk_index", align 4
@imx_check_clk_hws._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.4, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_check_clk_hws\00", [46 x i8] zeroinitializer }, align 32
@imx_check_clk_hws._entry_ptr = internal global ptr @imx_check_clk_hws._entry, section ".printk_index", align 4
@__kstrtab_imx_check_clk_hws = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_check_clk_hws = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_check_clk_hws = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_check_clk_hws to i32), ptr @__kstrtab_imx_check_clk_hws, ptr @__kstrtabns_imx_check_clk_hws }, section "___ksymtab_gpl+imx_check_clk_hws", align 4
@__kstrtab_imx_obtain_fixed_clk_hw = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_obtain_fixed_clk_hw = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_obtain_fixed_clk_hw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_obtain_fixed_clk_hw to i32), ptr @__kstrtab_imx_obtain_fixed_clk_hw, ptr @__kstrtabns_imx_obtain_fixed_clk_hw }, section "___ksymtab_gpl+imx_obtain_fixed_clk_hw", align 4
@__setup_str_imx_keep_uart_earlycon = internal constant [9 x i8] c"earlycon\00", section ".init.rodata", align 1
@__setup_imx_keep_uart_earlycon = internal global %struct.obs_kernel_param { ptr @__setup_str_imx_keep_uart_earlycon, ptr @imx_keep_uart_clocks_param, i32 0 }, section ".init.setup", align 4
@__setup_str_imx_keep_uart_earlyprintk = internal constant [12 x i8] c"earlyprintk\00", section ".init.rodata", align 1
@__setup_imx_keep_uart_earlyprintk = internal global %struct.obs_kernel_param { ptr @__setup_str_imx_keep_uart_earlyprintk, ptr @imx_keep_uart_clocks_param, i32 0 }, section ".init.setup", align 4
@imx_enabled_uart_clocks = internal global { i32, [28 x i8] } zeroinitializer, align 32
@imx_keep_uart_clocks = internal global { i1, [31 x i8] } zeroinitializer, align 32
@imx_uart_clocks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@of_stdout = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_mxc_clk__173_209_imx_clk_disable_uart7s = internal global ptr @imx_clk_disable_uart, section ".initcall7s.init", align 4
@__UNIQUE_ID_file174 = internal constant [37 x i8] c"mxc_clk.file=drivers/clk/imx/mxc-clk\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [23 x i8] c"mxc_clk.license=GPL v2\00", section ".modinfo", align 1
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"/clocks/%s\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [13 x i8] c"imx_ccm_lock\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 17, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 53, i32 4 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 63, i32 4 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"imx_enabled_uart_clocks\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 152, i32 12 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"imx_keep_uart_clocks\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"imx_uart_clocks\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 153, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.38 = private constant [25 x i8] c"../drivers/clk/imx/clk.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 74, i32 31 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__initcall__kmod_mxc_clk__173_209_imx_clk_disable_uart7s, ptr @__ksymtab_imx_ccm_lock, ptr @__ksymtab_imx_check_clk_hws, ptr @__ksymtab_imx_obtain_fixed_clk_hw, ptr @__ksymtab_imx_unregister_hw_clocks, ptr @__setup_imx_keep_uart_earlycon, ptr @__setup_imx_keep_uart_earlyprintk, ptr @imx_check_clk_hws._entry, ptr @imx_check_clk_hws._entry_ptr, ptr @imx_check_clocks._entry, ptr @imx_check_clocks._entry_ptr, ptr @.str, ptr @imx_ccm_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @imx_enabled_uart_clocks, ptr @imx_keep_uart_clocks, ptr @imx_uart_clocks, ptr @.str.5], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_ccm_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_check_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_check_clk_hws._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_enabled_uart_clocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_keep_uart_clocks to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_uart_clocks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_unregister_clocks(ptr nocapture noundef readonly %clks, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_unregister(ptr noundef %1) #9
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_unregister_hw_clocks(ptr nocapture noundef readonly %hws, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3.not = icmp eq i32 %count, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %hws, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_hw_unregister(ptr noundef %1) #9
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_mmdc_mask_handshake(ptr noundef %ccm_base, i32 noundef %chn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ccm_base, i32 4
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !49
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chn)
  %cmp = icmp eq i32 %chn, 0
  %cond = select i1 %cmp, i32 131072, i32 65536
  %or = or i32 %1, %cond
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #9, !srcloc !50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_check_clocks(ptr nocapture noundef readonly %clks, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.not = icmp eq i32 %count, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.010, i32 noundef %2) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_check_clk_hws(ptr nocapture noundef readonly %clks, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp9.not = icmp eq i32 %count, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.010
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %i.010, i32 noundef %2) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clock(ptr noundef %name, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %phandle.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %phandle.i) #9
  %0 = getelementptr inbounds i8, ptr %phandle.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %call1.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %name) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, label %if.end.i

entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_obtain_fixed_clock_from_dt.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %call1.i, ptr noundef null) #9
  %2 = ptrtoint ptr %phandle.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %phandle.i, align 4
  tail call void @kfree(ptr noundef nonnull %call1.i) #9
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, label %imx_obtain_fixed_clock_from_dt.exit

if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_obtain_fixed_clock_from_dt.exit.thread

imx_obtain_fixed_clock_from_dt.exit.thread:       ; preds = %if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, %entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phandle.i) #9
  br label %if.then

imx_obtain_fixed_clock_from_dt.exit:              ; preds = %if.end.i
  %call7.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %phandle.i) #9
  %3 = ptrtoint ptr %phandle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phandle.i, align 4
  call void @of_node_put(ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phandle.i) #9
  %cmp.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge, label %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge

imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge: ; preds = %imx_obtain_fixed_clock_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge: ; preds = %imx_obtain_fixed_clock_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge, %imx_obtain_fixed_clock_from_dt.exit.thread
  %call.i = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %name, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %rate, i32 noundef 0, i32 noundef 0) #9
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i6:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i6, %if.then.if.end_crit_edge, %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge
  %clk.0 = phi ptr [ %call7.i, %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge ], [ %6, %if.end.i6 ], [ %call.i, %if.then.if.end_crit_edge ]
  ret ptr %clk.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clock_hw(ptr noundef %name, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %phandle.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %phandle.i) #9
  %0 = getelementptr inbounds i8, ptr %phandle.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 68)
  %call1.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.5, ptr noundef %name) #9
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, label %if.end.i

entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_obtain_fixed_clock_from_dt.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call ptr @of_find_node_opts_by_path(ptr noundef nonnull %call1.i, ptr noundef null) #9
  %2 = ptrtoint ptr %phandle.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i.i, ptr %phandle.i, align 4
  tail call void @kfree(ptr noundef nonnull %call1.i) #9
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, label %imx_obtain_fixed_clock_from_dt.exit

if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %imx_obtain_fixed_clock_from_dt.exit.thread

imx_obtain_fixed_clock_from_dt.exit.thread:       ; preds = %if.end.i.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge, %entry.imx_obtain_fixed_clock_from_dt.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phandle.i) #9
  br label %if.then

imx_obtain_fixed_clock_from_dt.exit:              ; preds = %if.end.i
  %call7.i = call ptr @of_clk_get_from_provider(ptr noundef nonnull %phandle.i) #9
  %3 = ptrtoint ptr %phandle.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phandle.i, align 4
  call void @of_node_put(ptr noundef %4) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %phandle.i) #9
  %cmp.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge, label %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge

imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge: ; preds = %imx_obtain_fixed_clock_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge: ; preds = %imx_obtain_fixed_clock_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %imx_obtain_fixed_clock_from_dt.exit.if.then_crit_edge, %imx_obtain_fixed_clock_from_dt.exit.thread
  %call.i = call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef %name, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef %rate, i32 noundef 0, i32 noundef 0) #9
  %tobool.not.i.i = icmp eq ptr %call.i, null
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then.if.end_crit_edge, label %if.end.i7

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i7:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %clk.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i7, %if.then.if.end_crit_edge, %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge
  %clk.0 = phi ptr [ %call7.i, %imx_obtain_fixed_clock_from_dt.exit.if.end_crit_edge ], [ %6, %if.end.i7 ], [ %call.i, %if.then.if.end_crit_edge ]
  %call4 = call ptr @__clk_get_hw(ptr noundef %clk.0) #9
  ret ptr %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_obtain_fixed_clk_hw(ptr noundef %np, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef %name) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call ptr @__clk_get_hw(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call3, %if.end ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @imx_cscmr1_fixup(ptr nocapture noundef %val) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %xor = xor i32 %1, 6291456
  store i32 %xor, ptr %val, align 4
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @imx_keep_uart_clocks_param(ptr nocapture noundef readnone %str) #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @imx_keep_uart_clocks, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @imx_register_uart_clocks(i32 noundef %clk_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 0, ptr @imx_enabled_uart_clocks, align 4
  %.b19 = load i1, ptr @imx_keep_uart_clocks, align 1
  br i1 %.b19, label %if.then, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then:                                          ; preds = %entry
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %clk_count, i32 4) #9
  %1 = extractvalue { i32, i1 } %0, 1
  br i1 %1, label %if.then.kcalloc.exit_crit_edge, label %if.end7.i.i, !prof !51

if.then.kcalloc.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %kcalloc.exit

if.end7.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %2 = extractvalue { i32, i1 } %0, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #13
  br label %kcalloc.exit

kcalloc.exit:                                     ; preds = %if.end7.i.i, %if.then.kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call8.i.i, %if.end7.i.i ], [ null, %if.then.kcalloc.exit_crit_edge ]
  store ptr %retval.0.i.i, ptr @imx_uart_clocks, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_stdout to i32))
  %3 = load ptr, ptr @of_stdout, align 4
  %tobool1.not = icmp ne ptr %3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_count)
  %cmp20 = icmp ne i32 %clk_count, 0
  %or.cond = and i1 %tobool1.not, %cmp20
  br i1 %or.cond, label %kcalloc.exit.for.body_crit_edge, label %kcalloc.exit.if.end15_crit_edge

kcalloc.exit.if.end15_crit_edge:                  ; preds = %kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

kcalloc.exit.for.body_crit_edge:                  ; preds = %kcalloc.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %kcalloc.exit.for.body_crit_edge
  %i.021 = phi i32 [ %inc14, %for.inc.for.body_crit_edge ], [ 0, %kcalloc.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_stdout to i32))
  %4 = load ptr, ptr @of_stdout, align 4
  %call3 = tail call ptr @of_clk_get(ptr noundef %4, i32 noundef %i.021) #9
  %5 = load ptr, ptr @imx_uart_clocks, align 4
  %6 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.if.end15_crit_edge, label %if.end7

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end7:                                          ; preds = %for.body
  %tobool9.not = icmp eq ptr %call3, null
  br i1 %tobool9.not, label %if.end7.for.inc_crit_edge, label %if.then10

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then10:                                        ; preds = %if.end7
  %inc = add i32 %6, 1
  store i32 %inc, ptr @imx_enabled_uart_clocks, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then10.for.inc_crit_edge

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %if.then10
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %call3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.for.inc_crit_edge, label %if.then3.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef nonnull %call3) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then3.i, %if.end.i.for.inc_crit_edge, %if.then10.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %inc14 = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc14, %clk_count
  br i1 %exitcond.not, label %for.inc.if.end15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.if.end15_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %for.inc.if.end15_crit_edge, %for.body.if.end15_crit_edge, %kcalloc.exit.if.end15_crit_edge, %entry.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_clk_disable_uart() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b6 = load i1, ptr @imx_keep_uart_clocks, align 1
  br i1 %.b6, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %0 = load i32, ptr @imx_enabled_uart_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %for.cond.preheader

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true
  %1 = load i32, ptr @imx_enabled_uart_clocks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7 = icmp sgt i32 %1, 0
  br i1 %cmp7, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %2 = load ptr, ptr @imx_uart_clocks, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.08
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %4) #9
  tail call void @clk_unprepare(ptr noundef %4) #9
  %5 = load ptr, ptr @imx_uart_clocks, align 4
  %arrayidx2 = getelementptr ptr, ptr %5, i32 %i.08
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  tail call void @clk_put(ptr noundef %7) #9
  %inc = add nuw nsw i32 %i.08, 1
  %8 = load i32, ptr @imx_enabled_uart_clocks, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = load ptr, ptr @imx_uart_clocks, align 4
  tail call void @kfree(ptr noundef %9) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_from_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_opts_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk.c", i32 17, i32 1}
!2 = !{ptr @imx_ccm_lock, !1, !"imx_ccm_lock", i1 false, i1 false}
!3 = !{ptr @__ksymtab_imx_ccm_lock, !4, !"__ksymtab_imx_ccm_lock", i1 false, i1 false}
!4 = !{!"../drivers/clk/imx/clk.c", i32 18, i32 1}
!5 = !{ptr @__ksymtab_imx_unregister_hw_clocks, !6, !"__ksymtab_imx_unregister_hw_clocks", i1 false, i1 false}
!6 = !{!"../drivers/clk/imx/clk.c", i32 35, i32 1}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/clk/imx/clk.c", i32 53, i32 4}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @imx_check_clocks._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @imx_check_clocks._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/imx/clk.c", i32 63, i32 4}
!15 = !{ptr @imx_check_clk_hws._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @imx_check_clk_hws._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_imx_check_clk_hws, !18, !"__ksymtab_imx_check_clk_hws", i1 false, i1 false}
!18 = !{!"../drivers/clk/imx/clk.c", i32 66, i32 1}
!19 = !{ptr @__ksymtab_imx_obtain_fixed_clk_hw, !20, !"__ksymtab_imx_obtain_fixed_clk_hw", i1 false, i1 false}
!20 = !{!"../drivers/clk/imx/clk.c", i32 121, i32 1}
!21 = !{ptr @__setup_imx_keep_uart_earlycon, !22, !"__setup_imx_keep_uart_earlycon", i1 false, i1 false}
!22 = !{!"../drivers/clk/imx/clk.c", i32 161, i32 1}
!23 = !{ptr @__setup_imx_keep_uart_earlyprintk, !24, !"__setup_imx_keep_uart_earlyprintk", i1 false, i1 false}
!24 = !{!"../drivers/clk/imx/clk.c", i32 163, i32 1}
!25 = !{ptr @__initcall__kmod_mxc_clk__173_209_imx_clk_disable_uart7s, !26, !"__initcall__kmod_mxc_clk__173_209_imx_clk_disable_uart7s", i1 false, i1 false}
!26 = !{!"../drivers/clk/imx/clk.c", i32 209, i32 1}
!27 = !{ptr @__UNIQUE_ID_file174, !28, !"__UNIQUE_ID_file174", i1 false, i1 false}
!28 = !{!"../drivers/clk/imx/clk.c", i32 212, i32 1}
!29 = !{ptr @__UNIQUE_ID_license175, !28, !"__UNIQUE_ID_license175", i1 false, i1 false}
!30 = distinct !{null, !31, !"imx_keep_uart_clocks", i1 false, i1 false}
!31 = !{!"../drivers/clk/imx/clk.c", i32 151, i32 13}
!32 = !{ptr @imx_enabled_uart_clocks, !33, !"imx_enabled_uart_clocks", i1 false, i1 false}
!33 = !{!"../drivers/clk/imx/clk.c", i32 152, i32 12}
!34 = !{ptr @imx_uart_clocks, !35, !"imx_uart_clocks", i1 false, i1 false}
!35 = !{!"../drivers/clk/imx/clk.c", i32 153, i32 21}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/imx/clk.c", i32 74, i32 31}
!38 = !{ptr @__setup_str_imx_keep_uart_earlycon, !22, !"__setup_str_imx_keep_uart_earlycon", i1 false, i1 false}
!39 = !{ptr @__setup_str_imx_keep_uart_earlyprintk, !24, !"__setup_str_imx_keep_uart_earlyprintk", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 4061468}
!50 = !{i64 4061050}
!51 = !{!"branch_weights", i32 1, i32 2000}
