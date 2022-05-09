; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-mix.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-mix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mmp_clk_mix = type { %struct.clk_hw, %struct.mmp_clk_mix_reg_info, ptr, ptr, ptr, i32, i8, i8, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.mmp_clk_mix_reg_info = type { ptr, ptr, i8, i8, i8, i8, i8 }
%struct.clk_div_table = type { i32, i32 }
%struct.mmp_clk_mix_clk_table = type { i32, i8, i32, i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mmp_clk_mix_config = type { %struct.mmp_clk_mix_reg_info, ptr, i32, ptr, ptr, i8, i8 }

@mmp_clk_mix_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_mix_recalc_rate, ptr null, ptr @mmp_clk_mix_determine_rate, ptr @mmp_clk_set_parent, ptr @mmp_clk_mix_get_parent, ptr @mmp_clk_set_rate, ptr @mmp_clk_mix_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_clk_mix_init, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@_set_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%s cannot do frequency change\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"_set_rate\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/clk/mmp/clk-mix.c\00", [38 x i8] zeroinitializer }, align 32
@_set_rate._entry_ptr = internal global ptr @_set_rate._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.3 = private unnamed_addr constant [16 x i8] c"mmp_clk_mix_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 432, i32 22 }
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [29 x i8] c"../drivers/clk/mmp/clk-mix.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 183, i32 4 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @_set_rate._entry, ptr @_set_rate._entry_ptr, ptr @mmp_clk_mix_ops, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_clk_mix_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_set_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_info = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1
  %lock = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %type = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_info, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !18
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %reg_clk_sel = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %reg_clk_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_clk_sel, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !19
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %mux_div.0 = phi i32 [ %7, %if.then12 ], [ %11, %if.else ]
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %13, i32 noundef %flags.0) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %width_div = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %width_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width_div, align 4
  %shift_div = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %shift_div to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_div, align 1
  %conv29 = zext i8 %15 to i32
  %notmask = shl nsw i32 -1, %conv29
  %sub = xor i32 %notmask, -1
  %conv30 = zext i8 %17 to i32
  %shl31 = shl i32 %sub, %conv30
  %and = and i32 %shl31, %mux_div.0
  %shr = lshr i32 %and, %conv30
  %div_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %18 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div_flags.i, align 4
  %conv.i = zext i8 %19 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end26._get_div.exit_crit_edge

if.end26._get_div.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

if.end.i:                                         ; preds = %if.end26
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw i32 1, %shr
  br label %_get_div.exit

if.end6.i:                                        ; preds = %if.end.i
  %div_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  %20 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %div_table.i, align 4
  %tobool7.not.i = icmp eq ptr %21, null
  br i1 %tobool7.not.i, label %if.end21.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6.i
  %div33.i = getelementptr inbounds %struct.clk_div_table, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %div33.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %div33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool10.not34.i = icmp eq i32 %23, 0
  br i1 %tobool10.not34.i, label %for.cond.preheader.i._get_div.exit_crit_edge, label %for.body.i.preheader

for.cond.preheader.i._get_div.exit_crit_edge:     ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %shr)
  %cmp.i47 = icmp eq i32 %25, %shr
  br i1 %cmp.i47, label %for.body.i.preheader._get_div.exit_crit_edge, label %for.body.i.preheader.for.cond.i_crit_edge

for.body.i.preheader.for.cond.i_crit_edge:        ; preds = %for.body.i.preheader
  br label %for.cond.i

for.body.i.preheader._get_div.exit_crit_edge:     ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body.i.preheader.for.cond.i_crit_edge
  %clkt.035.i48 = phi ptr [ %incdec.ptr.i, %for.body.i.for.cond.i_crit_edge ], [ %21, %for.body.i.preheader.for.cond.i_crit_edge ]
  %div.i = getelementptr %struct.clk_div_table, ptr %clkt.035.i48, i32 1, i32 1
  %26 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %div.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool10.not.i = icmp eq i32 %27, 0
  br i1 %tobool10.not.i, label %for.cond.i._get_div.exit_crit_edge, label %for.body.i

for.cond.i._get_div.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.body.i:                                       ; preds = %for.cond.i
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.035.i48, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.i = icmp eq i32 %29, %shr
  br i1 %cmp.i, label %for.body.i._get_div.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i._get_div.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

if.end21.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %shr, 1
  br label %_get_div.exit

_get_div.exit:                                    ; preds = %if.end21.i, %for.body.i._get_div.exit_crit_edge, %for.cond.i._get_div.exit_crit_edge, %for.body.i.preheader._get_div.exit_crit_edge, %for.cond.preheader.i._get_div.exit_crit_edge, %if.then5.i, %if.end26._get_div.exit_crit_edge
  %retval.0.i = phi i32 [ %shl.i, %if.then5.i ], [ %add.i, %if.end21.i ], [ %shr, %if.end26._get_div.exit_crit_edge ], [ 0, %for.cond.preheader.i._get_div.exit_crit_edge ], [ %23, %for.body.i.preheader._get_div.exit_crit_edge ], [ %27, %for.body.i._get_div.exit_crit_edge ], [ 0, %for.cond.i._get_div.exit_crit_edge ]
  %div34 = udiv i32 %parent_rate, %retval.0.i
  ret i32 %div34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond19.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %table_size = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp143.not = icmp eq i32 %3, 0
  br i1 %cmp143.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond19.preheader:                             ; preds = %entry
  %call20171 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20171)
  %cmp21172.not = icmp eq i32 %call20171, 0
  br i1 %cmp21172.not, label %for.cond19.preheader.cleanup_crit_edge, label %for.body23.lr.ph

for.cond19.preheader.cleanup_crit_edge:           ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body23.lr.ph:                                 ; preds = %for.cond19.preheader
  %width_div.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 2
  %div_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %div_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  br label %for.body23

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0148 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %gap_best.0147 = phi i32 [ %gap_best.1, %for.inc.for.body_crit_edge ], [ -1, %for.cond.preheader.for.body_crit_edge ]
  %parent_rate_best.0146 = phi i32 [ %parent_rate_best.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mix_rate_best.0145 = phi i32 [ %mix_rate_best.1, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %parent_best.0144 = phi ptr [ %parent_best.1, %for.inc.for.body_crit_edge ], [ null, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %valid = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0148, i32 3
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %parent_index = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0148, i32 1
  %8 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %parent_index, align 4
  %conv = zext i8 %9 to i32
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %conv) #6
  %call4 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #6
  %divisor = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0148, i32 2
  %10 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %divisor, align 4
  %div5 = udiv i32 %call4, %11
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 4
  %sub = sub i32 %div5, %13
  %14 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %tobool10.not = icmp eq ptr %parent_best.0144, null
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %gap_best.0147)
  %cmp11 = icmp ult i32 %14, %gap_best.0147
  %or.cond = select i1 %tobool10.not, i1 true, i1 %cmp11
  br i1 %or.cond, label %if.then13, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %div5, i32 %13)
  %cmp14 = icmp eq i32 %div5, %13
  br i1 %cmp14, label %if.then13.found_crit_edge, label %if.then13.for.inc_crit_edge

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then13.found_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc:                                          ; preds = %if.then13.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %parent_best.1 = phi ptr [ %parent_best.0144, %for.body.for.inc_crit_edge ], [ %call, %if.then13.for.inc_crit_edge ], [ %parent_best.0144, %if.end.for.inc_crit_edge ]
  %mix_rate_best.1 = phi i32 [ %mix_rate_best.0145, %for.body.for.inc_crit_edge ], [ %div5, %if.then13.for.inc_crit_edge ], [ %mix_rate_best.0145, %if.end.for.inc_crit_edge ]
  %parent_rate_best.1 = phi i32 [ %parent_rate_best.0146, %for.body.for.inc_crit_edge ], [ %call4, %if.then13.for.inc_crit_edge ], [ %parent_rate_best.0146, %if.end.for.inc_crit_edge ]
  %gap_best.1 = phi i32 [ %gap_best.0147, %for.body.for.inc_crit_edge ], [ %14, %if.then13.for.inc_crit_edge ], [ %gap_best.0147, %if.end.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0148, 1
  %15 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %table_size, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.found_crit_edge

for.inc.found_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body23:                                       ; preds = %for.inc57.for.body23_crit_edge, %for.body23.lr.ph
  %i.1177 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc58, %for.inc57.for.body23_crit_edge ]
  %gap_best.2176 = phi i32 [ -1, %for.body23.lr.ph ], [ %gap_best.3.lcssa, %for.inc57.for.body23_crit_edge ]
  %parent_rate_best.2175 = phi i32 [ 0, %for.body23.lr.ph ], [ %parent_rate_best.3.lcssa, %for.inc57.for.body23_crit_edge ]
  %mix_rate_best.2174 = phi i32 [ 0, %for.body23.lr.ph ], [ %mix_rate_best.3.lcssa, %for.inc57.for.body23_crit_edge ]
  %parent_best.2173 = phi ptr [ null, %for.body23.lr.ph ], [ %parent_best.3.lcssa, %for.inc57.for.body23_crit_edge ]
  %call24 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.1177) #6
  %call25 = tail call i32 @clk_hw_get_rate(ptr noundef %call24) #6
  %17 = ptrtoint ptr %width_div.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %width_div.i, align 4
  %conv.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %sub.i = add i32 %shl.i, -1
  %19 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %div_flags.i, align 4
  %conv1.i = zext i8 %20 to i32
  %and.i = and i32 %conv1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %_get_maxdiv.exit

if.end.i:                                         ; preds = %for.body23
  %and4.i = and i32 %conv1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.end8.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl7.i = shl nuw i32 1, %sub.i
  br label %for.body30.lr.ph

if.end8.i:                                        ; preds = %if.end.i
  %21 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %div_table.i, align 4
  %tobool9.not.i = icmp eq ptr %22, null
  br i1 %tobool9.not.i, label %if.end8.i.for.body30.lr.ph_crit_edge, label %for.cond.preheader.i

if.end8.i.for.body30.lr.ph_crit_edge:             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.lr.ph

for.cond.preheader.i:                             ; preds = %if.end8.i
  %div32.i = getelementptr inbounds %struct.clk_div_table, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %div32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %div32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool12.not33.i = icmp eq i32 %24, 0
  br i1 %tobool12.not33.i, label %for.cond.preheader.i.for.inc57_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.inc57_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc57

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %25 = phi i32 [ %28, %for.body.i.for.body.i_crit_edge ], [ %24, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkt.035.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %22, %for.cond.preheader.i.for.body.i_crit_edge ]
  %maxdiv.034.i = phi i32 [ %26, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 %maxdiv.034.i) #6
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.035.i, i32 1
  %div.i = getelementptr %struct.clk_div_table, ptr %clkt.035.i, i32 1, i32 1
  %27 = ptrtoint ptr %div.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div.i, align 4
  %tobool12.not.i = icmp eq i32 %28, 0
  br i1 %tobool12.not.i, label %for.body.i.for.body30.lr.ph_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.body30.lr.ph_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.lr.ph

_get_maxdiv.exit:                                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp28159.not = icmp eq i32 %sub.i, 0
  br i1 %cmp28159.not, label %_get_maxdiv.exit.for.inc57_crit_edge, label %_get_maxdiv.exit.for.body30.lr.ph_crit_edge

_get_maxdiv.exit.for.body30.lr.ph_crit_edge:      ; preds = %_get_maxdiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30.lr.ph

_get_maxdiv.exit.for.inc57_crit_edge:             ; preds = %_get_maxdiv.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc57

for.body30.lr.ph:                                 ; preds = %_get_maxdiv.exit.for.body30.lr.ph_crit_edge, %for.body.i.for.body30.lr.ph_crit_edge, %if.end8.i.for.body30.lr.ph_crit_edge, %if.then6.i
  %retval.0.i188 = phi i32 [ %sub.i, %_get_maxdiv.exit.for.body30.lr.ph_crit_edge ], [ %shl.i, %if.end8.i.for.body30.lr.ph_crit_edge ], [ %shl7.i, %if.then6.i ], [ %26, %for.body.i.for.body30.lr.ph_crit_edge ]
  %and3.i = and i32 %conv1.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %29 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %req, align 4
  br label %for.body30

for.body30:                                       ; preds = %for.inc54.for.body30_crit_edge, %for.body30.lr.ph
  %j.0164 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc55, %for.inc54.for.body30_crit_edge ]
  %gap_best.3163 = phi i32 [ %gap_best.2176, %for.body30.lr.ph ], [ %gap_best.4, %for.inc54.for.body30_crit_edge ]
  %parent_rate_best.3162 = phi i32 [ %parent_rate_best.2175, %for.body30.lr.ph ], [ %parent_rate_best.4, %for.inc54.for.body30_crit_edge ]
  %mix_rate_best.3161 = phi i32 [ %mix_rate_best.2174, %for.body30.lr.ph ], [ %mix_rate_best.4, %for.inc54.for.body30_crit_edge ]
  %parent_best.3160 = phi ptr [ %parent_best.2173, %for.body30.lr.ph ], [ %parent_best.4, %for.inc54.for.body30_crit_edge ]
  br i1 %tobool.not.i, label %if.end.i125, label %for.body30._get_div.exit_crit_edge

for.body30._get_div.exit_crit_edge:               ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

if.end.i125:                                      ; preds = %for.body30
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i126 = shl nuw i32 1, %j.0164
  br label %_get_div.exit

if.end6.i:                                        ; preds = %if.end.i125
  %31 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %div_table.i, align 4
  %tobool7.not.i = icmp eq ptr %32, null
  br i1 %tobool7.not.i, label %if.end21.i, label %for.cond.preheader.i128

for.cond.preheader.i128:                          ; preds = %if.end6.i
  %div33.i = getelementptr inbounds %struct.clk_div_table, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %div33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %div33.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool10.not34.i = icmp eq i32 %34, 0
  br i1 %tobool10.not34.i, label %for.cond.preheader.i128._get_div.exit_crit_edge, label %for.body.i132.preheader

for.cond.preheader.i128._get_div.exit_crit_edge:  ; preds = %for.cond.preheader.i128
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.body.i132.preheader:                          ; preds = %for.cond.preheader.i128
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %j.0164)
  %cmp.i155 = icmp eq i32 %36, %j.0164
  br i1 %cmp.i155, label %for.body.i132.preheader._get_div.exit_crit_edge, label %for.body.i132.preheader.for.cond.i_crit_edge

for.body.i132.preheader.for.cond.i_crit_edge:     ; preds = %for.body.i132.preheader
  br label %for.cond.i

for.body.i132.preheader._get_div.exit_crit_edge:  ; preds = %for.body.i132.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.cond.i:                                       ; preds = %for.body.i132.for.cond.i_crit_edge, %for.body.i132.preheader.for.cond.i_crit_edge
  %clkt.035.i131156 = phi ptr [ %incdec.ptr.i129, %for.body.i132.for.cond.i_crit_edge ], [ %32, %for.body.i132.preheader.for.cond.i_crit_edge ]
  %div.i130 = getelementptr %struct.clk_div_table, ptr %clkt.035.i131156, i32 1, i32 1
  %37 = ptrtoint ptr %div.i130 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %div.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not.i = icmp eq i32 %38, 0
  br i1 %tobool10.not.i, label %for.cond.i._get_div.exit_crit_edge, label %for.body.i132

for.cond.i._get_div.exit_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

for.body.i132:                                    ; preds = %for.cond.i
  %incdec.ptr.i129 = getelementptr %struct.clk_div_table, ptr %clkt.035.i131156, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i129 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %incdec.ptr.i129, align 4
  %cmp.i = icmp eq i32 %40, %j.0164
  br i1 %cmp.i, label %for.body.i132._get_div.exit_crit_edge, label %for.body.i132.for.cond.i_crit_edge

for.body.i132.for.cond.i_crit_edge:               ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.body.i132._get_div.exit_crit_edge:            ; preds = %for.body.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div.exit

if.end21.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add nuw i32 %j.0164, 1
  br label %_get_div.exit

_get_div.exit:                                    ; preds = %if.end21.i, %for.body.i132._get_div.exit_crit_edge, %for.cond.i._get_div.exit_crit_edge, %for.body.i132.preheader._get_div.exit_crit_edge, %for.cond.preheader.i128._get_div.exit_crit_edge, %if.then5.i, %for.body30._get_div.exit_crit_edge
  %retval.0.i133 = phi i32 [ %shl.i126, %if.then5.i ], [ %add.i, %if.end21.i ], [ %j.0164, %for.body30._get_div.exit_crit_edge ], [ 0, %for.cond.preheader.i128._get_div.exit_crit_edge ], [ %34, %for.body.i132.preheader._get_div.exit_crit_edge ], [ %38, %for.body.i132._get_div.exit_crit_edge ], [ 0, %for.cond.i._get_div.exit_crit_edge ]
  %div32 = udiv i32 %call25, %retval.0.i133
  %sub35 = sub i32 %div32, %30
  %41 = tail call i32 @llvm.abs.i32(i32 %sub35, i1 false)
  %tobool44.not = icmp eq ptr %parent_best.3160, null
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %gap_best.3163)
  %cmp46 = icmp ult i32 %41, %gap_best.3163
  %or.cond120 = select i1 %tobool44.not, i1 true, i1 %cmp46
  br i1 %or.cond120, label %if.then48, label %_get_div.exit.for.inc54_crit_edge

_get_div.exit.for.inc54_crit_edge:                ; preds = %_get_div.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

if.then48:                                        ; preds = %_get_div.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %div32, i32 %30)
  %cmp49 = icmp eq i32 %div32, %30
  br i1 %cmp49, label %if.then48.found_crit_edge, label %if.then48.for.inc54_crit_edge

if.then48.for.inc54_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

if.then48.found_crit_edge:                        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc54:                                        ; preds = %if.then48.for.inc54_crit_edge, %_get_div.exit.for.inc54_crit_edge
  %parent_best.4 = phi ptr [ %call24, %if.then48.for.inc54_crit_edge ], [ %parent_best.3160, %_get_div.exit.for.inc54_crit_edge ]
  %mix_rate_best.4 = phi i32 [ %div32, %if.then48.for.inc54_crit_edge ], [ %mix_rate_best.3161, %_get_div.exit.for.inc54_crit_edge ]
  %parent_rate_best.4 = phi i32 [ %call25, %if.then48.for.inc54_crit_edge ], [ %parent_rate_best.3162, %_get_div.exit.for.inc54_crit_edge ]
  %gap_best.4 = phi i32 [ %41, %if.then48.for.inc54_crit_edge ], [ %gap_best.3163, %_get_div.exit.for.inc54_crit_edge ]
  %inc55 = add nuw i32 %j.0164, 1
  %exitcond.not = icmp eq i32 %inc55, %retval.0.i188
  br i1 %exitcond.not, label %for.inc54.for.inc57_crit_edge, label %for.inc54.for.body30_crit_edge

for.inc54.for.body30_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body30

for.inc54.for.inc57_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc57

for.inc57:                                        ; preds = %for.inc54.for.inc57_crit_edge, %_get_maxdiv.exit.for.inc57_crit_edge, %for.cond.preheader.i.for.inc57_crit_edge
  %parent_best.3.lcssa = phi ptr [ %parent_best.2173, %_get_maxdiv.exit.for.inc57_crit_edge ], [ %parent_best.2173, %for.cond.preheader.i.for.inc57_crit_edge ], [ %parent_best.4, %for.inc54.for.inc57_crit_edge ]
  %mix_rate_best.3.lcssa = phi i32 [ %mix_rate_best.2174, %_get_maxdiv.exit.for.inc57_crit_edge ], [ %mix_rate_best.2174, %for.cond.preheader.i.for.inc57_crit_edge ], [ %mix_rate_best.4, %for.inc54.for.inc57_crit_edge ]
  %parent_rate_best.3.lcssa = phi i32 [ %parent_rate_best.2175, %_get_maxdiv.exit.for.inc57_crit_edge ], [ %parent_rate_best.2175, %for.cond.preheader.i.for.inc57_crit_edge ], [ %parent_rate_best.4, %for.inc54.for.inc57_crit_edge ]
  %gap_best.3.lcssa = phi i32 [ %gap_best.2176, %_get_maxdiv.exit.for.inc57_crit_edge ], [ %gap_best.2176, %for.cond.preheader.i.for.inc57_crit_edge ], [ %gap_best.4, %for.inc54.for.inc57_crit_edge ]
  %inc58 = add nuw i32 %i.1177, 1
  %call20 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  %cmp21 = icmp ult i32 %inc58, %call20
  br i1 %cmp21, label %for.inc57.for.body23_crit_edge, label %for.inc57.found_crit_edge

for.inc57.found_crit_edge:                        ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %found

for.inc57.for.body23_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

found:                                            ; preds = %for.inc57.found_crit_edge, %if.then48.found_crit_edge, %for.inc.found_crit_edge, %if.then13.found_crit_edge
  %parent_best.5 = phi ptr [ %call24, %if.then48.found_crit_edge ], [ %parent_best.3.lcssa, %for.inc57.found_crit_edge ], [ %call, %if.then13.found_crit_edge ], [ %parent_best.1, %for.inc.found_crit_edge ]
  %mix_rate_best.5 = phi i32 [ %30, %if.then48.found_crit_edge ], [ %mix_rate_best.3.lcssa, %for.inc57.found_crit_edge ], [ %div5, %if.then13.found_crit_edge ], [ %mix_rate_best.1, %for.inc.found_crit_edge ]
  %parent_rate_best.5 = phi i32 [ %call25, %if.then48.found_crit_edge ], [ %parent_rate_best.3.lcssa, %for.inc57.found_crit_edge ], [ %call4, %if.then13.found_crit_edge ], [ %parent_rate_best.1, %for.inc.found_crit_edge ]
  %tobool61.not = icmp eq ptr %parent_best.5, null
  br i1 %tobool61.not, label %found.cleanup_crit_edge, label %if.end63

found.cleanup_crit_edge:                          ; preds = %found
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end63:                                         ; preds = %found
  call void @__sanitizer_cov_trace_pc() #8
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %parent_rate_best.5, ptr %best_parent_rate, align 4
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %43 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %parent_best.5, ptr %best_parent_hw, align 4
  %44 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mix_rate_best.5, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end63, %found.cleanup_crit_edge, %for.cond19.preheader.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end63 ], [ -22, %found.cleanup_crit_edge ], [ -22, %for.cond19.preheader.cleanup_crit_edge ], [ -22, %for.cond.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else17, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %table_size = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp54.not = icmp eq i32 %3, 0
  br i1 %cmp54.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %valid = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.055, i32 3
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp2 = icmp eq i32 %5, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %parent_index = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.055, i32 1
  %6 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %parent_index, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %index)
  %cmp5 = icmp eq i8 %7, %index
  br i1 %cmp5, label %if.then12, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end
  %divisor = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.055, i32 2
  %8 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %divisor, align 4
  %div_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %10 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %div_flags.i, align 4
  %conv.i = zext i8 %11 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then12._get_div_val.exit_crit_edge

if.then12._get_div_val.exit_crit_edge:            ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end.i:                                         ; preds = %if.then12
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %12 = tail call i32 @llvm.cttz.i32(i32 %9, i1 false) #6, !range !20
  br label %_get_div_val.exit

if.end6.i:                                        ; preds = %if.end.i
  %div_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %div_table.i, align 4
  %tobool7.not.i = icmp eq ptr %14, null
  br i1 %tobool7.not.i, label %if.end21.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6.i
  %div1034.i = getelementptr inbounds %struct.clk_div_table, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %div1034.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %div1034.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool11.not35.i = icmp eq i32 %16, 0
  br i1 %tobool11.not35.i, label %for.cond.preheader.i._get_div_val.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i._get_div_val.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %17 = phi i32 [ %21, %for.inc.i.for.body.i_crit_edge ], [ %16, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkt.036.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %14, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %9)
  %cmp.i = icmp eq i32 %17, %9
  br i1 %cmp.i, label %if.then14.i, label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %clkt.036.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clkt.036.i, align 4
  br label %_get_div_val.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1
  %div10.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1, i32 1
  %20 = ptrtoint ptr %div10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %div10.i, align 4
  %tobool11.not.i = icmp eq i32 %21, 0
  br i1 %tobool11.not.i, label %for.inc.i._get_div_val.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i._get_div_val.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end21.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %9, -1
  br label %_get_div_val.exit

_get_div_val.exit:                                ; preds = %if.end21.i, %for.inc.i._get_div_val.exit_crit_edge, %if.then14.i, %for.cond.preheader.i._get_div_val.exit_crit_edge, %if.then5.i, %if.then12._get_div_val.exit_crit_edge
  %retval.0.i = phi i32 [ %12, %if.then5.i ], [ %19, %if.then14.i ], [ %sub.i, %if.end21.i ], [ %9, %if.then12._get_div_val.exit_crit_edge ], [ 0, %for.cond.preheader.i._get_div_val.exit_crit_edge ], [ 0, %for.inc.i._get_div_val.exit_crit_edge ]
  %22 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %parent_index, align 4
  %conv14 = zext i8 %23 to i32
  %mux_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %24 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mux_table.i, align 4
  %tobool.not.i42 = icmp eq ptr %25, null
  br i1 %tobool.not.i42, label %_get_div_val.exit.if.end20_crit_edge, label %if.then.i

_get_div_val.exit.if.end20_crit_edge:             ; preds = %_get_div_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then.i:                                        ; preds = %_get_div_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %25, i32 %conv14
  br label %if.end20.sink.split

if.else17:                                        ; preds = %entry
  %conv18 = zext i8 %index to i32
  %mux_table.i44 = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %26 = ptrtoint ptr %mux_table.i44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mux_table.i44, align 4
  %tobool.not.i45 = icmp eq ptr %27, null
  br i1 %tobool.not.i45, label %if.else17.if.end20_crit_edge, label %if.then.i47

if.else17.if.end20_crit_edge:                     ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then.i47:                                      ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i46 = getelementptr i32, ptr %27, i32 %conv18
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.then.i47, %if.then.i
  %arrayidx.i46.sink = phi ptr [ %arrayidx.i46, %if.then.i47 ], [ %arrayidx.i, %if.then.i ]
  %div_val.0.ph = phi i32 [ 0, %if.then.i47 ], [ %retval.0.i, %if.then.i ]
  %28 = ptrtoint ptr %arrayidx.i46.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i46.sink, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else17.if.end20_crit_edge, %_get_div_val.exit.if.end20_crit_edge
  %div_val.0 = phi i32 [ %retval.0.i, %_get_div_val.exit.if.end20_crit_edge ], [ 0, %if.else17.if.end20_crit_edge ], [ %div_val.0.ph, %if.end20.sink.split ]
  %mux_val.0 = phi i32 [ %conv14, %_get_div_val.exit.if.end20_crit_edge ], [ %conv18, %if.else17.if.end20_crit_edge ], [ %29, %if.end20.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div_val.0)
  %tobool21.not = icmp ne i32 %div_val.0, 0
  %cond = zext i1 %tobool21.not to i32
  %call22 = tail call fastcc i32 @_set_rate(ptr noundef %hw, i32 noundef %mux_val.0, i32 noundef %div_val.0, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mmp_clk_mix_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_info = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1
  %lock = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %type = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_info, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !21
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %reg_clk_sel = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %reg_clk_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_clk_sel, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !22
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then12
  %mux_div.0 = phi i32 [ %7, %if.then12 ], [ %11, %if.else ]
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %tobool23.not = icmp eq ptr %13, null
  br i1 %tobool23.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %13, i32 noundef %flags.0) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %width_mux = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %width_mux to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width_mux, align 2
  %shift_mux = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %shift_mux to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift_mux, align 1
  %conv29 = zext i8 %15 to i32
  %notmask = shl nsw i32 -1, %conv29
  %sub = xor i32 %notmask, -1
  %conv30 = zext i8 %17 to i32
  %shl31 = shl i32 %sub, %conv30
  %and = and i32 %shl31, %mux_div.0
  %shr = lshr i32 %and, %conv30
  %call.i = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  %mux_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 7
  %18 = ptrtoint ptr %mux_flags.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mux_flags.i, align 1
  %conv.i = zext i8 %19 to i32
  %and.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  %20 = tail call i32 @llvm.cttz.i32(i32 %shr, i1 true) #6, !range !20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %iszero.i = icmp eq i32 %shr, 0
  %sub.i = select i1 %iszero.i, i32 -1, i32 %20
  br label %_get_mux.exit

if.end.i:                                         ; preds = %if.end26
  %and3.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub6.i = add i32 %shr, -1
  br label %_get_mux.exit

if.end7.i:                                        ; preds = %if.end.i
  %mux_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %21 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mux_table.i, align 4
  %tobool8.not.i = icmp eq ptr %22, null
  br i1 %tobool8.not.i, label %if.end7.i.if.end20.i_crit_edge, label %for.cond.preheader.i

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

for.cond.preheader.i:                             ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp35.i = icmp sgt i32 %call.i, 0
  br i1 %cmp35.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %22, i32 %i.036.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %shr)
  %cmp12.i = icmp eq i32 %24, %shr
  br i1 %cmp12.i, label %for.body.i._get_mux.exit_crit_edge, label %for.inc.i

for.body.i._get_mux.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i
  br i1 %exitcond.not.i, label %for.inc.i._get_mux.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i._get_mux.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux.exit

for.end.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp16.i = icmp eq i32 %call.i, 0
  br i1 %cmp16.i, label %for.end.i._get_mux.exit_crit_edge, label %for.end.i.if.end20.i_crit_edge

for.end.i.if.end20.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i

for.end.i._get_mux.exit_crit_edge:                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux.exit

if.end20.i:                                       ; preds = %for.end.i.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  br label %_get_mux.exit

_get_mux.exit:                                    ; preds = %if.end20.i, %for.end.i._get_mux.exit_crit_edge, %for.inc.i._get_mux.exit_crit_edge, %for.body.i._get_mux.exit_crit_edge, %if.then5.i, %if.then.i
  %retval.0.i = phi i32 [ %sub.i, %if.then.i ], [ %sub6.i, %if.then5.i ], [ %shr, %if.end20.i ], [ 0, %for.end.i._get_mux.exit_crit_edge ], [ %i.036.i, %for.body.i._get_mux.exit_crit_edge ], [ 0, %for.inc.i._get_mux.exit_crit_edge ]
  %conv34 = trunc i32 %retval.0.i to i8
  ret i8 %conv34
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %best_parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div = udiv i32 %best_parent_rate, %rate
  %table = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond22.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %table_size = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp115.not = icmp eq i32 %3, 0
  br i1 %cmp115.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond22.preheader:                             ; preds = %entry
  %call23124 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23124)
  %cmp24125.not = icmp eq i32 %call23124, 0
  br i1 %cmp24125.not, label %for.cond22.preheader.for.end35_crit_edge, label %for.cond22.preheader.for.body26_crit_edge

for.cond22.preheader.for.body26_crit_edge:        ; preds = %for.cond22.preheader
  br label %for.body26

for.cond22.preheader.for.end35_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0116 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %valid = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0116, i32 3
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %parent_index = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0116, i32 1
  %8 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %parent_index, align 4
  %conv = zext i8 %9 to i32
  %call = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %conv) #6
  %call4 = tail call i32 @clk_hw_get_rate(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %best_parent_rate)
  %cmp5 = icmp eq i32 %call4, %best_parent_rate
  br i1 %cmp5, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %divisor = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0116, i32 2
  %10 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div)
  %cmp7 = icmp eq i32 %11, %div
  br i1 %cmp7, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0116, 1
  %12 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %table_size, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le121 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0116
  br label %for.end

for.cond.for.end_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le = getelementptr %struct.mmp_clk_mix_clk_table, ptr %5, i32 %i.0116
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ %i.0116, %land.lhs.true.for.end_crit_edge ], [ %inc, %for.cond.for.end_crit_edge ], [ 0, %for.cond.preheader.for.end_crit_edge ]
  %item.1 = phi ptr [ %arrayidx.le121, %land.lhs.true.for.end_crit_edge ], [ %arrayidx.le, %for.cond.for.end_crit_edge ], [ inttoptr (i32 -1 to ptr), %for.cond.preheader.for.end_crit_edge ]
  %14 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %15)
  %cmp12 = icmp ult i32 %i.0.lcssa, %15
  br i1 %cmp12, label %if.then14, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %for.end
  %parent_index15 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, ptr %item.1, i32 0, i32 1
  %16 = ptrtoint ptr %parent_index15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %parent_index15, align 4
  %conv16 = zext i8 %17 to i32
  %mux_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %18 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mux_table.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.then14._get_mux_val.exit_crit_edge, label %if.then.i

if.then14._get_mux_val.exit_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux_val.exit

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %19, i32 %conv16
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  br label %_get_mux_val.exit

_get_mux_val.exit:                                ; preds = %if.then.i, %if.then14._get_mux_val.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.then.i ], [ %conv16, %if.then14._get_mux_val.exit_crit_edge ]
  %divisor18 = getelementptr inbounds %struct.mmp_clk_mix_clk_table, ptr %item.1, i32 0, i32 2
  %22 = ptrtoint ptr %divisor18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %divisor18, align 4
  %div_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %24 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %div_flags.i, align 4
  %conv.i = zext i8 %25 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i79 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i79, label %if.end.i, label %_get_mux_val.exit._get_div_val.exit_crit_edge

_get_mux_val.exit._get_div_val.exit_crit_edge:    ; preds = %_get_mux_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end.i:                                         ; preds = %_get_mux_val.exit
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = tail call i32 @llvm.cttz.i32(i32 %23, i1 false) #6, !range !20
  br label %_get_div_val.exit

if.end6.i:                                        ; preds = %if.end.i
  %div_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  %27 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %div_table.i, align 4
  %tobool7.not.i = icmp eq ptr %28, null
  br i1 %tobool7.not.i, label %if.end21.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6.i
  %div1034.i = getelementptr inbounds %struct.clk_div_table, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %div1034.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %div1034.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool11.not35.i = icmp eq i32 %30, 0
  br i1 %tobool11.not35.i, label %for.cond.preheader.i._get_div_val.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i._get_div_val.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %31 = phi i32 [ %35, %for.inc.i.for.body.i_crit_edge ], [ %30, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkt.036.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %28, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %23)
  %cmp.i = icmp eq i32 %31, %23
  br i1 %cmp.i, label %if.then14.i, label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %clkt.036.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clkt.036.i, align 4
  br label %_get_div_val.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1
  %div10.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1, i32 1
  %34 = ptrtoint ptr %div10.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %div10.i, align 4
  %tobool11.not.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.i, label %for.inc.i._get_div_val.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i._get_div_val.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end21.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %23, -1
  br label %_get_div_val.exit

_get_div_val.exit:                                ; preds = %if.end21.i, %for.inc.i._get_div_val.exit_crit_edge, %if.then14.i, %for.cond.preheader.i._get_div_val.exit_crit_edge, %if.then5.i, %_get_mux_val.exit._get_div_val.exit_crit_edge
  %retval.0.i80 = phi i32 [ %26, %if.then5.i ], [ %33, %if.then14.i ], [ %sub.i, %if.end21.i ], [ %23, %_get_mux_val.exit._get_div_val.exit_crit_edge ], [ 0, %for.cond.preheader.i._get_div_val.exit_crit_edge ], [ 0, %for.inc.i._get_div_val.exit_crit_edge ]
  %call20 = tail call fastcc i32 @_set_rate(ptr noundef %hw, i32 noundef %retval.0.i, i32 noundef %retval.0.i80, i32 noundef 1)
  br label %cleanup

for.body26:                                       ; preds = %for.inc33.for.body26_crit_edge, %for.cond22.preheader.for.body26_crit_edge
  %i.1126 = phi i32 [ %inc34, %for.inc33.for.body26_crit_edge ], [ 0, %for.cond22.preheader.for.body26_crit_edge ]
  %call27 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.1126) #6
  %call28 = tail call i32 @clk_hw_get_rate(ptr noundef %call27) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %best_parent_rate)
  %cmp29 = icmp eq i32 %call28, %best_parent_rate
  br i1 %cmp29, label %for.body26.for.end35_crit_edge, label %for.inc33

for.body26.for.end35_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35

for.inc33:                                        ; preds = %for.body26
  %inc34 = add nuw i32 %i.1126, 1
  %call23 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  %cmp24 = icmp ult i32 %inc34, %call23
  br i1 %cmp24, label %for.inc33.for.body26_crit_edge, label %for.inc33.for.end35_crit_edge

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35

for.inc33.for.body26_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body26

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %for.body26.for.end35_crit_edge, %for.cond22.preheader.for.end35_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond22.preheader.for.end35_crit_edge ], [ %i.1126, %for.body26.for.end35_crit_edge ], [ %inc34, %for.inc33.for.end35_crit_edge ]
  %call36 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.lcssa, i32 %call36)
  %cmp37 = icmp ult i32 %i.1.lcssa, %call36
  br i1 %cmp37, label %if.then39, label %for.end35.cleanup_crit_edge

for.end35.cleanup_crit_edge:                      ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then39:                                        ; preds = %for.end35
  %mux_table.i81 = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %36 = ptrtoint ptr %mux_table.i81 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mux_table.i81, align 4
  %tobool.not.i82 = icmp eq ptr %37, null
  br i1 %tobool.not.i82, label %if.then39._get_mux_val.exit86_crit_edge, label %if.then.i84

if.then39._get_mux_val.exit86_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux_val.exit86

if.then.i84:                                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i83 = getelementptr i32, ptr %37, i32 %i.1.lcssa
  %38 = ptrtoint ptr %arrayidx.i83 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i83, align 4
  br label %_get_mux_val.exit86

_get_mux_val.exit86:                              ; preds = %if.then.i84, %if.then39._get_mux_val.exit86_crit_edge
  %retval.0.i85 = phi i32 [ %39, %if.then.i84 ], [ %i.1.lcssa, %if.then39._get_mux_val.exit86_crit_edge ]
  %div_flags.i87 = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %40 = ptrtoint ptr %div_flags.i87 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %div_flags.i87, align 4
  %conv.i88 = zext i8 %41 to i32
  %and.i89 = and i32 %conv.i88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i89)
  %tobool.not.i90 = icmp eq i32 %and.i89, 0
  br i1 %tobool.not.i90, label %if.end.i93, label %_get_mux_val.exit86._get_div_val.exit112_crit_edge

_get_mux_val.exit86._get_div_val.exit112_crit_edge: ; preds = %_get_mux_val.exit86
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit112

if.end.i93:                                       ; preds = %_get_mux_val.exit86
  %and3.i91 = and i32 %conv.i88, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i91)
  %tobool4.not.i92 = icmp eq i32 %and3.i91, 0
  br i1 %tobool4.not.i92, label %if.end6.i97, label %if.then5.i94

if.then5.i94:                                     ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #8
  %42 = tail call i32 @llvm.cttz.i32(i32 %div, i1 false) #6, !range !20
  br label %_get_div_val.exit112

if.end6.i97:                                      ; preds = %if.end.i93
  %div_table.i95 = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  %43 = ptrtoint ptr %div_table.i95 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %div_table.i95, align 4
  %tobool7.not.i96 = icmp eq ptr %44, null
  br i1 %tobool7.not.i96, label %if.end21.i110, label %for.cond.preheader.i100

for.cond.preheader.i100:                          ; preds = %if.end6.i97
  %div1034.i98 = getelementptr inbounds %struct.clk_div_table, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %div1034.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %div1034.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool11.not35.i99 = icmp eq i32 %46, 0
  br i1 %tobool11.not35.i99, label %for.cond.preheader.i100._get_div_val.exit112_crit_edge, label %for.cond.preheader.i100.for.body.i103_crit_edge

for.cond.preheader.i100.for.body.i103_crit_edge:  ; preds = %for.cond.preheader.i100
  br label %for.body.i103

for.cond.preheader.i100._get_div_val.exit112_crit_edge: ; preds = %for.cond.preheader.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit112

for.body.i103:                                    ; preds = %for.inc.i108.for.body.i103_crit_edge, %for.cond.preheader.i100.for.body.i103_crit_edge
  %47 = phi i32 [ %51, %for.inc.i108.for.body.i103_crit_edge ], [ %46, %for.cond.preheader.i100.for.body.i103_crit_edge ]
  %clkt.036.i101 = phi ptr [ %incdec.ptr.i105, %for.inc.i108.for.body.i103_crit_edge ], [ %44, %for.cond.preheader.i100.for.body.i103_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %div)
  %cmp.i102 = icmp eq i32 %47, %div
  br i1 %cmp.i102, label %if.then14.i104, label %for.inc.i108

if.then14.i104:                                   ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %clkt.036.i101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %clkt.036.i101, align 4
  br label %_get_div_val.exit112

for.inc.i108:                                     ; preds = %for.body.i103
  %incdec.ptr.i105 = getelementptr %struct.clk_div_table, ptr %clkt.036.i101, i32 1
  %div10.i106 = getelementptr %struct.clk_div_table, ptr %clkt.036.i101, i32 1, i32 1
  %50 = ptrtoint ptr %div10.i106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %div10.i106, align 4
  %tobool11.not.i107 = icmp eq i32 %51, 0
  br i1 %tobool11.not.i107, label %for.inc.i108._get_div_val.exit112_crit_edge, label %for.inc.i108.for.body.i103_crit_edge

for.inc.i108.for.body.i103_crit_edge:             ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i103

for.inc.i108._get_div_val.exit112_crit_edge:      ; preds = %for.inc.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit112

if.end21.i110:                                    ; preds = %if.end6.i97
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i109 = add i32 %div, -1
  br label %_get_div_val.exit112

_get_div_val.exit112:                             ; preds = %if.end21.i110, %for.inc.i108._get_div_val.exit112_crit_edge, %if.then14.i104, %for.cond.preheader.i100._get_div_val.exit112_crit_edge, %if.then5.i94, %_get_mux_val.exit86._get_div_val.exit112_crit_edge
  %retval.0.i111 = phi i32 [ %42, %if.then5.i94 ], [ %49, %if.then14.i104 ], [ %sub.i109, %if.end21.i110 ], [ %div, %_get_mux_val.exit86._get_div_val.exit112_crit_edge ], [ 0, %for.cond.preheader.i100._get_div_val.exit112_crit_edge ], [ 0, %for.inc.i108._get_div_val.exit112_crit_edge ]
  %call42 = tail call fastcc i32 @_set_rate(ptr noundef %hw, i32 noundef %retval.0.i85, i32 noundef %retval.0.i111, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %_get_div_val.exit112, %for.end35.cleanup_crit_edge, %_get_div_val.exit, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %_get_div_val.exit ], [ %call42, %_get_div_val.exit112 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %for.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_set_rate_and_parent(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = udiv i32 %parent_rate, %rate
  %div_flags.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %div_flags.i, align 4
  %conv.i = zext i8 %1 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry._get_div_val.exit_crit_edge

entry._get_div_val.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end.i:                                         ; preds = %entry
  %and3.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = tail call i32 @llvm.cttz.i32(i32 %div1, i1 false) #6, !range !20
  br label %_get_div_val.exit

if.end6.i:                                        ; preds = %if.end.i
  %div_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 4
  %3 = ptrtoint ptr %div_table.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %div_table.i, align 4
  %tobool7.not.i = icmp eq ptr %4, null
  br i1 %tobool7.not.i, label %if.end21.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end6.i
  %div1034.i = getelementptr inbounds %struct.clk_div_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %div1034.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %div1034.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not35.i = icmp eq i32 %6, 0
  br i1 %tobool11.not35.i, label %for.cond.preheader.i._get_div_val.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i._get_div_val.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %7 = phi i32 [ %11, %for.inc.i.for.body.i_crit_edge ], [ %6, %for.cond.preheader.i.for.body.i_crit_edge ]
  %clkt.036.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %4, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div1)
  %cmp.i = icmp eq i32 %7, %div1
  br i1 %cmp.i, label %if.then14.i, label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %clkt.036.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clkt.036.i, align 4
  br label %_get_div_val.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1
  %div10.i = getelementptr %struct.clk_div_table, ptr %clkt.036.i, i32 1, i32 1
  %10 = ptrtoint ptr %div10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div10.i, align 4
  %tobool11.not.i = icmp eq i32 %11, 0
  br i1 %tobool11.not.i, label %for.inc.i._get_div_val.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i._get_div_val.exit_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_div_val.exit

if.end21.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = add i32 %div1, -1
  br label %_get_div_val.exit

_get_div_val.exit:                                ; preds = %if.end21.i, %for.inc.i._get_div_val.exit_crit_edge, %if.then14.i, %for.cond.preheader.i._get_div_val.exit_crit_edge, %if.then5.i, %entry._get_div_val.exit_crit_edge
  %retval.0.i = phi i32 [ %2, %if.then5.i ], [ %9, %if.then14.i ], [ %sub.i, %if.end21.i ], [ %div1, %entry._get_div_val.exit_crit_edge ], [ 0, %for.cond.preheader.i._get_div_val.exit_crit_edge ], [ 0, %for.inc.i._get_div_val.exit_crit_edge ]
  %conv = zext i8 %index to i32
  %mux_table.i = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %mux_table.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mux_table.i, align 4
  %tobool.not.i6 = icmp eq ptr %13, null
  br i1 %tobool.not.i6, label %_get_div_val.exit._get_mux_val.exit_crit_edge, label %if.then.i

_get_div_val.exit._get_mux_val.exit_crit_edge:    ; preds = %_get_div_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %_get_mux_val.exit

if.then.i:                                        ; preds = %_get_div_val.exit
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr i32, ptr %13, i32 %conv
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  br label %_get_mux_val.exit

_get_mux_val.exit:                                ; preds = %if.then.i, %_get_div_val.exit._get_mux_val.exit_crit_edge
  %retval.0.i7 = phi i32 [ %15, %if.then.i ], [ %conv, %_get_div_val.exit._get_mux_val.exit_crit_edge ]
  %call3 = tail call fastcc i32 @_set_rate(ptr noundef %hw, i32 noundef %retval.0.i7, i32 noundef %retval.0.i, i32 noundef 1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_clk_mix_init(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %table = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %table_size = getelementptr inbounds %struct.mmp_clk_mix, ptr %hw, i32 0, i32 5
  %2 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp13.not.i = icmp eq i32 %3, 0
  br i1 %cmp13.not.i, label %if.then.if.end_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.014.i
  %parent_index.i = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.014.i, i32 1
  %4 = ptrtoint ptr %parent_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %parent_index.i, align 4
  %conv.i = zext i8 %5 to i32
  %call.i = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %conv.i) #6
  %call2.i = tail call i32 @clk_hw_get_rate(ptr noundef %call.i) #6
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %call2.i.frozen = freeze i32 %call2.i
  %.frozen = freeze i32 %7
  %div.i = udiv i32 %call2.i.frozen, %.frozen
  %8 = mul i32 %div.i, %.frozen
  %rem.i.decomposed = sub i32 %call2.i.frozen, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %tobool.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %tobool.not.i, label %if.else.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %divisor.i = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.014.i, i32 2
  %9 = ptrtoint ptr %divisor.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div.i, ptr %divisor.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %.sink.i = phi i32 [ 1, %if.else.i ], [ 0, %for.body.i.for.inc.i_crit_edge ]
  %10 = getelementptr %struct.mmp_clk_mix_clk_table, ptr %1, i32 %i.014.i, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink.i, ptr %10, align 4
  %inc.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.inc.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_mix(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents, i32 noundef %flags, ptr nocapture noundef readonly %config, ptr noundef %lock) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 56) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %or = or i32 %flags, 64
  %flags3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %flags3, align 4
  %parent_names4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names4, align 4
  %num_parents5 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %num_parents, ptr %num_parents5, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mmp_clk_mix_ops, ptr %ops, align 4
  %reg_info = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %reg_info, ptr %config, i32 16)
  %table = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %config, i32 0, i32 1
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %table, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then8:                                         ; preds = %if.end
  %table_size = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %config, i32 0, i32 2
  %11 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %table_size, align 4
  %mul = shl i32 %12, 4
  %call10 = tail call ptr @kmemdup(ptr noundef nonnull %10, i32 noundef %mul, i32 noundef 3264) #6
  %table11 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %table11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %table11, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.then8.free_mix_crit_edge, label %if.end15

if.then8.free_mix_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_mix

if.end15:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %table_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %table_size, align 4
  %table_size17 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %table_size17 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %table_size17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end.if.end18_crit_edge
  %mux_table = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %config, i32 0, i32 3
  %17 = ptrtoint ptr %mux_table to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mux_table, align 4
  %tobool19.not = icmp eq ptr %18, null
  br i1 %tobool19.not, label %if.end18.if.end30_crit_edge, label %if.then20

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then20:                                        ; preds = %if.end18
  %conv = zext i8 %num_parents to i32
  %mul21 = shl nuw nsw i32 %conv, 2
  %call23 = tail call ptr @kmemdup(ptr noundef nonnull %18, i32 noundef %mul21, i32 noundef 3264) #6
  %mux_table24 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %mux_table24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call23, ptr %mux_table24, align 8
  %tobool26.not = icmp eq ptr %call23, null
  br i1 %tobool26.not, label %if.then27, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %table28 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %table28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %table28, align 4
  tail call void @kfree(ptr noundef %21) #6
  br label %free_mix

if.end30:                                         ; preds = %if.then20.if.end30_crit_edge, %if.end18.if.end30_crit_edge
  %div_flags = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %config, i32 0, i32 5
  %22 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %div_flags, align 4
  %div_flags31 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %div_flags31 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %div_flags31, align 4
  %mux_flags = getelementptr inbounds %struct.mmp_clk_mix_config, ptr %config, i32 0, i32 6
  %25 = ptrtoint ptr %mux_flags to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mux_flags, align 1
  %mux_flags32 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 7
  %27 = ptrtoint ptr %mux_flags32 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %mux_flags32, align 1
  %lock33 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 9
  %28 = ptrtoint ptr %lock33 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %lock, ptr %lock33, align 4
  %init34 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %init34 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %init, ptr %init34, align 8
  %bit_fc = getelementptr inbounds %struct.mmp_clk_mix_reg_info, ptr %config, i32 0, i32 6
  %30 = ptrtoint ptr %bit_fc to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bit_fc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %31)
  %cmp = icmp ugt i8 %31, 31
  br i1 %cmp, label %if.then38, label %if.else

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type, align 8
  br label %if.end46

if.else:                                          ; preds = %if.end30
  %reg_clk_sel = getelementptr inbounds %struct.mmp_clk_mix_reg_info, ptr %config, i32 0, i32 1
  %33 = ptrtoint ptr %reg_clk_sel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_clk_sel, align 4
  %tobool40.not = icmp eq ptr %34, null
  %type44 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 8
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %type44, align 8
  br label %if.end46

if.else43:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %type44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %type44, align 8
  br label %if.end46

if.end46:                                         ; preds = %if.else43, %if.then41, %if.then38
  %call48 = call ptr @clk_register(ptr noundef %dev, ptr noundef nonnull %call7.i.i) #6
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then50, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %mux_table51 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %mux_table51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mux_table51, align 8
  call void @kfree(ptr noundef %38) #6
  %table52 = getelementptr inbounds %struct.mmp_clk_mix, ptr %call7.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %table52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %table52, align 4
  call void @kfree(ptr noundef %40) #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

free_mix:                                         ; preds = %if.then27, %if.then8.free_mix_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %free_mix, %if.then50, %if.end46.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %free_mix ], [ %call48, %if.then50 ], [ %call48, %if.end46.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_set_rate(ptr noundef %mix, i32 noundef %mux_val, i32 noundef %div_val, i32 noundef %change_div) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_info = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1
  %lock = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 9
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %entry.if.end9_crit_edge, label %do.body4

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #6
  br label %if.end9

if.end9:                                          ; preds = %do.body4, %entry.if.end9_crit_edge
  %flags.0 = phi i32 [ %call6, %do.body4 ], [ 0, %entry.if.end9_crit_edge ]
  %type = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 8
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_info, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !17
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !23
  br label %if.end24

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %reg_clk_sel = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %reg_clk_sel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_clk_sel, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !17
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !24
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then15
  %mux_div.0 = phi i32 [ %7, %if.then15 ], [ %11, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %change_div)
  %tobool25.not = icmp eq i32 %change_div, 0
  br i1 %tobool25.not, label %if.end24.if.then40_crit_edge, label %if.then26

if.end24.if.then40_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then40

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %width_div = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %width_div to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width_div, align 4
  %shift_div = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %shift_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift_div, align 1
  %conv27 = zext i8 %13 to i32
  %notmask1 = shl nsw i32 -1, %conv27
  %sub = xor i32 %notmask1, -1
  %conv28 = zext i8 %15 to i32
  %shl29 = shl i32 %sub, %conv28
  %neg = xor i32 %shl29, -1
  %and = and i32 %mux_div.0, %neg
  %shl31 = shl i32 %div_val, %conv28
  %and37 = and i32 %shl31, %shl29
  %or = or i32 %and, %and37
  br label %if.then40

if.then40:                                        ; preds = %if.then26, %if.end24.if.then40_crit_edge
  %mux_div.1 = phi i32 [ %or, %if.then26 ], [ %mux_div.0, %if.end24.if.then40_crit_edge ]
  %width_mux = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %width_mux to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %width_mux, align 2
  %shift_mux = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 5
  %18 = ptrtoint ptr %shift_mux to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift_mux, align 1
  %conv41 = zext i8 %17 to i32
  %notmask = shl nsw i32 -1, %conv41
  %sub43 = xor i32 %notmask, -1
  %conv44 = zext i8 %19 to i32
  %shl45 = shl i32 %sub43, %conv44
  %neg46 = xor i32 %shl45, -1
  %and47 = and i32 %mux_div.1, %neg46
  %shl49 = shl i32 %mux_val, %conv44
  %and55 = and i32 %shl49, %shl45
  %or56 = or i32 %and47, %and55
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.else105 [
    i32 0, label %do.body62
    i32 1, label %if.then70
  ]

do.body62:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %24 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_info, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #6, !srcloc !26
  br label %error

if.then70:                                        ; preds = %if.then40
  %bit_fc = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %bit_fc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %bit_fc, align 4
  %conv71 = zext i8 %27 to i32
  %shl72 = shl nuw i32 1, %conv71
  %or73 = or i32 %shl72, %or56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %28 = tail call i32 @llvm.bswap.i32(i32 %or73)
  %29 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_info, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #6, !srcloc !26
  br label %do.body78

do.body78:                                        ; preds = %do.body78.do.body78_crit_edge, %if.then70
  %timeout.0 = phi i32 [ 50, %if.then70 ], [ %dec, %do.body78.do.body78_crit_edge ]
  %31 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_info, align 4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #6, !srcloc !17
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !28
  %dec = add nsw i32 %timeout.0, -1
  %35 = ptrtoint ptr %bit_fc to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bit_fc, align 4
  %conv86 = zext i8 %36 to i32
  %shl87 = shl nuw i32 1, %conv86
  %and88 = and i32 %shl87, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool93.not = icmp eq i32 %dec, 0
  %or.cond = select i1 %tobool89.not, i1 true, i1 %tobool93.not
  br i1 %or.cond, label %do.end94, label %do.body78.do.body78_crit_edge

do.body78.do.body78_crit_edge:                    ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body78

do.end94:                                         ; preds = %do.body78
  br i1 %tobool93.not, label %do.end100, label %do.end94.error_crit_edge

do.end94.error_crit_edge:                         ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end100:                                        ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #8
  %call102 = tail call ptr @clk_hw_get_name(ptr noundef %mix) #6
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %call102) #10
  br label %error

if.else105:                                       ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_info, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #6, !srcloc !17
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !29
  %bit_fc112 = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %bit_fc112 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bit_fc112, align 4
  %conv113 = zext i8 %42 to i32
  %shl114 = shl nuw i32 1, %conv113
  %or115 = or i32 %shl114, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %43 = tail call i32 @llvm.bswap.i32(i32 %or115)
  %44 = ptrtoint ptr %reg_info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_info, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #6, !srcloc !26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  %46 = tail call i32 @llvm.bswap.i32(i32 %or56)
  %reg_clk_sel123 = getelementptr inbounds %struct.mmp_clk_mix, ptr %mix, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %reg_clk_sel123 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_clk_sel123, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #6, !srcloc !26
  br label %error

error:                                            ; preds = %if.else105, %do.end100, %do.end94.error_crit_edge, %do.body62
  %ret.0 = phi i32 [ -16, %do.end100 ], [ 0, %if.else105 ], [ 0, %do.end94.error_crit_edge ], [ 0, %do.body62 ]
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lock, align 4
  %tobool132.not = icmp eq ptr %50, null
  br i1 %tobool132.not, label %error.cleanup_crit_edge, label %if.then133

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then133:                                       ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %50, i32 noundef %flags.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then133, %error.cleanup_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @mmp_clk_mix_ops, !1, !"mmp_clk_mix_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-mix.c", i32 432, i32 22}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mmp/clk-mix.c", i32 183, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @_set_rate._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @_set_rate._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4957465}
!18 = !{i64 2152946925}
!19 = !{i64 2152947403}
!20 = !{i32 0, i32 33}
!21 = !{i64 2152944314}
!22 = !{i64 2152944792}
!23 = !{i64 2152923744}
!24 = !{i64 2152924222}
!25 = !{i64 2152924785}
!26 = !{i64 4957047}
!27 = !{i64 2152925188}
!28 = !{i64 2152925856}
!29 = !{i64 2152928041}
!30 = !{i64 2152928257}
!31 = !{i64 2152928656}
