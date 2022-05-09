; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-frac.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-frac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_factor = type { %struct.clk_hw, ptr, ptr, ptr, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32, i32 }
%struct.mmp_clk_factor_tbl = type { i32, i32 }

@mmp_clk_register_factor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: must pass a clk_factor_mask\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mmp_clk_register_factor\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/clk/mmp/clk-frac.c\00", [37 x i8] zeroinitializer }, align 32
@mmp_clk_register_factor._entry_ptr = internal global ptr @mmp_clk_register_factor._entry, section ".printk_index", align 4
@clk_factor_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_recalc_rate, ptr @clk_factor_round_rate, ptr null, ptr null, ptr null, ptr @clk_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 182, i32 3 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"clk_factor_ops\00", align 1
@___asan_gen_.16 = private constant [30 x i8] c"../drivers/clk/mmp/clk-frac.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 164, i32 29 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @mmp_clk_register_factor._entry, ptr @mmp_clk_register_factor._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_factor_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_register_factor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_factor_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_factor(ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, ptr noundef %base, ptr noundef %masks, ptr noundef %ftbl, i32 noundef %ftbl_cnt, ptr noundef %lock) local_unnamed_addr #0 align 64 {
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
  %tobool.not = icmp eq ptr %masks, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 32) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %base7 = getelementptr inbounds %struct.mmp_clk_factor, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base, ptr %base7, align 4
  %masks8 = getelementptr inbounds %struct.mmp_clk_factor, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %masks8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %masks, ptr %masks8, align 8
  %ftbl9 = getelementptr inbounds %struct.mmp_clk_factor, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %ftbl9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ftbl, ptr %ftbl9, align 4
  %ftbl_cnt10 = getelementptr inbounds %struct.mmp_clk_factor, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %ftbl_cnt10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %ftbl_cnt, ptr %ftbl_cnt10, align 8
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init11, align 8
  %lock12 = getelementptr inbounds %struct.mmp_clk_factor, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %lock, ptr %lock12, align 4
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @clk_factor_ops, ptr %ops, align 4
  %flags14 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %12 = ptrtoint ptr %flags14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags14, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %num_parents, align 4
  %call16 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %tobool.not.i = icmp eq ptr %call16, null
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %if.then18, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then18:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %call16, %if.then18 ], [ %call16, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %masks1 = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %masks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks1, align 4
  %base = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !17
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %den_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %den_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %den_shift, align 4
  %shr3 = lshr i32 %5, %7
  %den_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %den_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %den_mask, align 4
  %and4 = and i32 %shr3, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %num_shift to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_shift, align 4
  %shr = lshr i32 %5, %11
  %num_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_mask, align 4
  %and = and i32 %shr, %13
  %conv = zext i32 %parent_rate to i64
  %conv5 = zext i32 %and4 to i64
  %mul = mul nuw i64 %conv5, %conv
  %14 = ptrtoint ptr %masks1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %masks1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %mul8 = mul i32 %17, %and
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp182 = icmp ult i64 %mul, 4294967296
  br i1 %cmp182, label %if.then186, label %if.else192, !prof !18

if.then186:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv187 = trunc i64 %mul to i32
  %div190 = udiv i32 %conv187, %mul8
  br label %cleanup

if.else192:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul8, i64 %mul) #12, !srcloc !19
  %asmresult1.i = extractvalue { i64, i64 } %18, 1
  %extract.t315 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else192, %if.then186, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %div190, %if.then186 ], [ %extract.t315, %if.else192 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, ptr nocapture noundef readonly %prate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ftbl_cnt = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %ftbl_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ftbl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp335.not = icmp eq i32 %1, 0
  br i1 %cmp335.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prate, align 4
  %conv = zext i32 %3 to i64
  %ftbl = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %ftbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftbl, align 4
  %masks = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %masks, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %conv190 = zext i32 %drate to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %rate.0336 = phi i64 [ 0, %for.body.lr.ph ], [ %rate.1, %for.inc.for.body_crit_edge ]
  %den = getelementptr %struct.mmp_clk_factor_tbl, ptr %5, i32 %i.0337, i32 1
  %10 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %den, align 4
  %conv1 = zext i32 %11 to i64
  %mul = mul nuw i64 %conv1, %conv
  %arrayidx3 = getelementptr %struct.mmp_clk_factor_tbl, ptr %5, i32 %i.0337
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3, align 4
  %mul5 = mul i32 %9, %13
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp174 = icmp ult i64 %mul, 4294967296
  br i1 %cmp174, label %if.then178, label %if.else184, !prof !18

if.then178:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv179 = trunc i64 %mul to i32
  %div182 = udiv i32 %conv179, %mul5
  %conv183 = zext i32 %div182 to i64
  br label %if.end188

if.else184:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %14 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul5, i64 %mul) #12, !srcloc !19
  %asmresult1.i = extractvalue { i64, i64 } %14, 1
  br label %if.end188

if.end188:                                        ; preds = %if.else184, %if.then178
  %rate.1 = phi i64 [ %conv183, %if.then178 ], [ %asmresult1.i, %if.else184 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %rate.1, i64 %conv190)
  %cmp191 = icmp ugt i64 %rate.1, %conv190
  br i1 %cmp191, label %for.end, label %for.inc

for.inc:                                          ; preds = %if.end188
  %inc = add nuw i32 %i.0337, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %cleanup.loopexit, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end188
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0337)
  %cmp195 = icmp eq i32 %i.0337, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0337, i32 %1)
  %cmp198 = icmp eq i32 %i.0337, %1
  %or.cond334 = select i1 %cmp195, i1 true, i1 %cmp198
  %extract.t = trunc i64 %rate.1 to i32
  br i1 %or.cond334, label %for.end.cleanup_crit_edge, label %if.else202

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else202:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv203 = zext i32 %drate to i64
  %sub204 = sub i64 %conv203, %rate.0336
  %sub206 = sub i64 %rate.1, %conv203
  call void @__sanitizer_cov_trace_cmp8(i64 %sub204, i64 %sub206)
  %cmp207 = icmp ugt i64 %sub204, %sub206
  %rate.1.lcssa.rate.0336.lcssa = select i1 %cmp207, i64 %rate.1, i64 %rate.0336
  %extract.t356 = trunc i64 %rate.1.lcssa.rate.0336.lcssa to i32
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %extract.t355 = trunc i64 %rate.1 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else202, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %rate.0336.lcssa.sink.off0 = phi i32 [ %extract.t, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %extract.t356, %if.else202 ], [ %extract.t355, %cleanup.loopexit ]
  ret i32 %rate.0336.lcssa.sink.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %drate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %masks1 = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %masks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks1, align 4
  %ftbl_cnt = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %ftbl_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ftbl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp376.not = icmp eq i32 %3, 0
  br i1 %cmp376.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv = zext i32 %prate to i64
  %ftbl = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %ftbl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftbl, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %conv192 = zext i32 %drate to i64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0377 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %den = getelementptr %struct.mmp_clk_factor_tbl, ptr %5, i32 %i.0377, i32 1
  %8 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %den, align 4
  %conv2 = zext i32 %9 to i64
  %mul = mul nuw i64 %conv2, %conv
  %arrayidx4 = getelementptr %struct.mmp_clk_factor_tbl, ptr %5, i32 %i.0377
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx4, align 4
  %mul7 = mul i32 %7, %11
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp176 = icmp ult i64 %mul, 4294967296
  br i1 %cmp176, label %if.then180, label %if.else186, !prof !18

if.then180:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv181 = trunc i64 %mul to i32
  %div184 = udiv i32 %conv181, %mul7
  %conv185 = zext i32 %div184 to i64
  br label %if.end190

if.else186:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul7, i64 %mul) #12, !srcloc !19
  %asmresult1.i = extractvalue { i64, i64 } %12, 1
  br label %if.end190

if.end190:                                        ; preds = %if.else186, %if.then180
  %rate.0 = phi i64 [ %conv185, %if.then180 ], [ %asmresult1.i, %if.else186 ]
  call void @__sanitizer_cov_trace_cmp8(i64 %rate.0, i64 %conv192)
  %cmp193 = icmp ugt i64 %rate.0, %conv192
  br i1 %cmp193, label %if.end190.for.end_crit_edge, label %for.inc

if.end190.for.end_crit_edge:                      ; preds = %if.end190
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %if.end190
  %inc = add nuw i32 %i.0377, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end190.for.end_crit_edge, %entry.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %i.0377, %if.end190.for.end_crit_edge ], [ %3, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.lcssa)
  %cmp197 = icmp sgt i32 %i.0.lcssa, 0
  %dec = sext i1 %cmp197 to i32
  %spec.select = add i32 %i.0.lcssa, %dec
  %lock = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 5
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  %tobool201.not = icmp eq ptr %14, null
  br i1 %tobool201.not, label %for.end.if.end212_crit_edge, label %do.body203

for.end.if.end212_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

do.body203:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call209 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %14) #7
  br label %if.end212

if.end212:                                        ; preds = %do.body203, %for.end.if.end212_crit_edge
  %flags.0 = phi i32 [ %call209, %do.body203 ], [ 0, %for.end.if.end212_crit_edge ]
  %base = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !17
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %num_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_mask, align 4
  %num_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %num_shift to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_shift, align 4
  %shl215 = shl i32 %20, %22
  %neg216 = xor i32 %shl215, -1
  %and217 = and i32 %18, %neg216
  %ftbl218 = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 3
  %23 = ptrtoint ptr %ftbl218 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ftbl218, align 4
  %arrayidx219 = getelementptr %struct.mmp_clk_factor_tbl, ptr %24, i32 %spec.select
  %25 = ptrtoint ptr %arrayidx219 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx219, align 4
  %and222 = and i32 %26, %20
  %shl224 = shl i32 %and222, %22
  %or225 = or i32 %shl224, %and217
  %den_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %den_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %den_mask, align 4
  %den_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %den_shift to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %den_shift, align 4
  %shl226 = shl i32 %28, %30
  %neg227 = xor i32 %shl226, -1
  %and228 = and i32 %or225, %neg227
  %den231 = getelementptr %struct.mmp_clk_factor_tbl, ptr %24, i32 %spec.select, i32 1
  %31 = ptrtoint ptr %den231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %den231, align 4
  %and233 = and i32 %32, %28
  %shl235 = shl i32 %and233, %30
  %or236 = or i32 %shl235, %and228
  %33 = tail call i32 @llvm.bswap.i32(i32 %or236)
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #7, !srcloc !20
  %36 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lock, align 4
  %tobool239.not = icmp eq ptr %37, null
  br i1 %tobool239.not, label %if.end212.if.end242_crit_edge, label %if.then240

if.end212.if.end242_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end242

if.then240:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %37, i32 noundef %flags.0) #7
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.end212.if.end242_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_init(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %masks1 = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %masks1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %masks1, align 4
  %lock = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %do.body2, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call5, %do.body2 ], [ 0, %entry.if.end_crit_edge ]
  %base = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !21
  %num_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %num_shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_shift, align 4
  %shr = lshr i32 %7, %9
  %num_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %num_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_mask, align 4
  %and = and i32 %shr, %11
  %den_shift = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %den_shift to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %den_shift, align 4
  %shr11 = lshr i32 %7, %13
  %den_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %den_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %den_mask, align 4
  %and12 = and i32 %shr11, %15
  %ftbl_cnt = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 4
  %16 = ptrtoint ptr %ftbl_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ftbl_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13117.not = icmp eq i32 %17, 0
  br i1 %cmp13117.not, label %if.end.if.end52.thread_crit_edge, label %for.body.lr.ph

if.end.if.end52.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.thread

for.body.lr.ph:                                   ; preds = %if.end
  %ftbl = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 3
  %18 = ptrtoint ptr %ftbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ftbl, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %den15 = getelementptr %struct.mmp_clk_factor_tbl, ptr %19, i32 %i.0118, i32 1
  %20 = ptrtoint ptr %den15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %den15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %21)
  %cmp16 = icmp eq i32 %and12, %21
  br i1 %cmp16, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.mmp_clk_factor_tbl, ptr %19, i32 %i.0118
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %23)
  %cmp21 = icmp eq i32 %and, %23
  br i1 %cmp21, label %if.end52, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.inc.if.end52.thread_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end52.thread_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.thread

if.end52:                                         ; preds = %land.lhs.true
  %enable_mask = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %enable_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable_mask, align 4
  %and53 = and i32 %25, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end52.if.then58_crit_edge, label %if.end52.if.end65_crit_edge

if.end52.if.end65_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.end52.if.then58_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.end52.thread:                                  ; preds = %for.inc.if.end52.thread_crit_edge, %if.end.if.end52.thread_crit_edge
  %shl = shl i32 %11, %9
  %neg = xor i32 %shl, -1
  %and31 = and i32 %7, %neg
  %ftbl32 = getelementptr inbounds %struct.mmp_clk_factor, ptr %hw, i32 0, i32 3
  %26 = ptrtoint ptr %ftbl32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ftbl32, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %and36 = and i32 %29, %11
  %shl38 = shl i32 %and36, %9
  %or = or i32 %shl38, %and31
  %shl41 = shl i32 %15, %13
  %neg42 = xor i32 %shl41, -1
  %and43 = and i32 %or, %neg42
  %den46 = getelementptr inbounds %struct.mmp_clk_factor_tbl, ptr %27, i32 0, i32 1
  %30 = ptrtoint ptr %den46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %den46, align 4
  %and48 = and i32 %31, %15
  %shl50 = shl i32 %and48, %13
  %or51 = or i32 %and43, %shl50
  %enable_mask111 = getelementptr inbounds %struct.mmp_clk_factor_masks, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %enable_mask111 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %enable_mask111, align 4
  br label %if.then58

if.then58:                                        ; preds = %if.end52.thread, %if.end52.if.then58_crit_edge
  %34 = phi i32 [ %25, %if.end52.if.then58_crit_edge ], [ %33, %if.end52.thread ]
  %val.0115 = phi i32 [ %7, %if.end52.if.then58_crit_edge ], [ %or51, %if.end52.thread ]
  %or60 = or i32 %val.0115, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #7, !srcloc !20
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.end52.if.end65_crit_edge
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock, align 4
  %tobool67.not = icmp eq ptr %39, null
  br i1 %tobool67.not, label %if.end65.if.end70_crit_edge, label %if.then68

if.end65.if.end70_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %39, i32 noundef %flags.0) #7
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65.if.end70_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-frac.c", i32 182, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mmp_clk_register_factor._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mmp_clk_register_factor._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @clk_factor_ops, !7, !"clk_factor_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/mmp/clk-frac.c", i32 164, i32 29}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4950269}
!18 = !{!"branch_weights", i32 2000, i32 1}
!19 = !{i64 2148944916, i64 2148945196, i64 2148945530, i64 2148945864}
!20 = !{i64 4949851}
!21 = !{i64 2152937133}
!22 = !{i64 2152937342}
