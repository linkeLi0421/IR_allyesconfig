; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_grctx = type { ptr, i32, ptr, ptr, i32, i32, i32, [32 x i32], i32, i32 }
%struct.nvkm_gpuobj_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.nv40_grctx_generate = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 6, i32 5, i32 5, i32 3, i32 3, i32 1, i32 3, i32 8, i32 1, i32 8, i32 3, i32 8], [48 x i8] zeroinitializer }, align 32
@switch.table.nv40_grctx_generate.1 = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 6, i32 5, i32 5, i32 3, i32 3, i32 1, i32 3, i32 8, i32 1, i32 8, i32 3, i32 8], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.3 = internal global [7 x i64] [i64 5, i64 32, i64 64, i64 70, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 32, i64 70, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.5 = internal global [5 x i64] [i64 3, i64 32, i64 68, i64 74, i64 78]
@__sancov_gen_cov_switch_values.6 = internal global [9 x i64] [i64 7, i64 32, i64 64, i64 70, i64 73, i64 75, i64 76, i64 78, i64 103]
@__sancov_gen_cov_switch_values.7 = internal global [8 x i64] [i64 6, i64 32, i64 68, i64 70, i64 74, i64 76, i64 78, i64 103]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 64, i64 65, i64 66, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 64, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 70, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.12 = internal global [12 x i64] [i64 10, i64 32, i64 64, i64 65, i64 66, i64 67, i64 68, i64 70, i64 71, i64 73, i64 74, i64 75]
@___asan_gen_ = private constant [52 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [33 x i8] c"switch.table.nv40_grctx_generate\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [35 x i8] c"switch.table.nv40_grctx_generate.1\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @switch.table.nv40_grctx_generate, ptr @switch.table.nv40_grctx_generate.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv40_grctx_generate to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nv40_grctx_generate.1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_ to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nv40_grctx_fill(ptr noundef %device, ptr noundef %mem) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca %struct.nvkm_grctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %.compoundliteral, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 156)
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device, ptr %.compoundliteral, align 4
  %mode = getelementptr inbounds %struct.nvkm_grctx, ptr %.compoundliteral, i32 0, i32 1
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %mode, align 4
  %data = getelementptr inbounds %struct.nvkm_grctx, ptr %.compoundliteral, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %mem, ptr %data, align 4
  call fastcc void @nv40_grctx_generate(ptr noundef nonnull %.compoundliteral)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nv40_grctx_generate(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 4
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %cmp1.i = icmp eq i32 %shl.i, 0
  %shl.i.op.op = or i32 %shl.i, 4194404
  %or9.i = select i1 %cmp1.i, i32 -12581788, i32 %shl.i.op.op
  %ucode.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ucode.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %do.body.i.i, label %entry._cp_bra.exit_crit_edge

entry._cp_bra.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_bra.exit

do.body.i.i:                                      ; preds = %entry
  %ctxprog_len.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %6 = ptrtoint ptr %ctxprog_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctxprog_len.i.i, align 4
  %ctxprog_max.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %8 = ptrtoint ptr %ctxprog_max.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctxprog_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1.i.i = icmp eq i32 %7, %9
  br i1 %cmp1.i.i, label %do.body4.i.i, label %do.end10.i.i, !prof !9

do.body4.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i = add i32 %7, 1
  %10 = ptrtoint ptr %ctxprog_len.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc.i.i, ptr %ctxprog_len.i.i, align 4
  %arrayidx.i.i = getelementptr i32, ptr %3, i32 %7
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or9.i, ptr %arrayidx.i.i, align 4
  %12 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr1109 = load i32, ptr %mode.i.i, align 4
  br label %_cp_bra.exit

_cp_bra.exit:                                     ; preds = %do.end10.i.i, %entry._cp_bra.exit_crit_edge
  %13 = phi i32 [ %5, %entry._cp_bra.exit_crit_edge ], [ %.pr1109, %do.end10.i.i ]
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %shl.i43 = shl i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i43)
  %cmp1.i44 = icmp eq i32 %shl.i43, 0
  %shl.i43.op.op = or i32 %shl.i43, 4194309
  %or9.i47 = select i1 %cmp1.i44, i32 -12581883, i32 %shl.i43.op.op
  %16 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i50 = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i50, label %do.body.i.i54, label %_cp_bra.exit.cp_name.exit_crit_edge

_cp_bra.exit.cp_name.exit_crit_edge:              ; preds = %_cp_bra.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit

do.body.i.i54:                                    ; preds = %_cp_bra.exit
  %ctxprog_len.i.i51 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %18 = ptrtoint ptr %ctxprog_len.i.i51 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctxprog_len.i.i51, align 4
  %ctxprog_max.i.i52 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %20 = ptrtoint ptr %ctxprog_max.i.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctxprog_max.i.i52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp1.i.i53 = icmp eq i32 %19, %21
  br i1 %cmp1.i.i53, label %do.body4.i.i55, label %_cp_bra.exit59, !prof !9

do.body4.i.i55:                                   ; preds = %do.body.i.i54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_bra.exit59:                                   ; preds = %do.body.i.i54
  %inc.i.i56 = add i32 %19, 1
  %22 = ptrtoint ptr %ctxprog_len.i.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %inc.i.i56, ptr %ctxprog_len.i.i51, align 4
  %arrayidx.i.i57 = getelementptr i32, ptr %17, i32 %19
  %23 = ptrtoint ptr %arrayidx.i.i57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or9.i47, ptr %arrayidx.i.i57, align 4
  %24 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %mode.i.i, align 4
  %25 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.not.i = icmp eq i32 %.pr, 0
  br i1 %cmp.not.i, label %if.end.i, label %_cp_bra.exit59.cp_name.exit_crit_edge

_cp_bra.exit59.cp_name.exit_crit_edge:            ; preds = %_cp_bra.exit59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit

if.end.i:                                         ; preds = %_cp_bra.exit59
  %27 = ptrtoint ptr %ctxprog_len.i.i51 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ctxprog_len.i.i51, align 4
  %arrayidx.i60 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx.i60, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp232.not.i = icmp eq i32 %28, 0
  br i1 %cmp232.not.i, label %if.end.i.cp_name.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cp_name.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %30 = phi i32 [ %37, %for.inc.i.for.body.i_crit_edge ], [ %28, %if.end.i.for.body.i_crit_edge ]
  %i.033.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr i32, ptr %26, i32 %i.033.i
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i, align 4
  %33 = and i32 %32, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12582656, i32 %33)
  %34 = icmp eq i32 %33, -12582656
  br i1 %34, label %if.end11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i = and i32 %32, 16711935
  %shl15.i = shl i32 %30, 8
  %or.i = or i32 %and13.i, %shl15.i
  %35 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or.i, ptr %arrayidx3.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.033.i, 1
  %36 = ptrtoint ptr %ctxprog_len.i.i51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctxprog_len.i.i51, align 4
  %cmp2.i = icmp ult i32 %inc.i, %37
  br i1 %cmp2.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cp_name.exit_crit_edge

for.inc.i.cp_name.exit_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

cp_name.exit:                                     ; preds = %for.inc.i.cp_name.exit_crit_edge, %if.end.i.cp_name.exit_crit_edge, %_cp_bra.exit59.cp_name.exit_crit_edge, %_cp_bra.exit.cp_name.exit_crit_edge
  %arrayidx.i61 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i61, align 4
  %shl.i62 = shl i32 %39, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i62)
  %cmp1.i63 = icmp eq i32 %shl.i62, 0
  %shl.i62.op.op = or i32 %shl.i62, 4194405
  %or9.i66 = select i1 %cmp1.i63, i32 -12582299, i32 %shl.i62.op.op
  %40 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ucode.i.i, align 4
  %42 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.not.i.i69 = icmp eq i32 %43, 0
  br i1 %cmp.not.i.i69, label %do.body.i.i73, label %cp_name.exit._cp_bra.exit78_crit_edge

cp_name.exit._cp_bra.exit78_crit_edge:            ; preds = %cp_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_bra.exit78

do.body.i.i73:                                    ; preds = %cp_name.exit
  %ctxprog_len.i.i70 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %44 = ptrtoint ptr %ctxprog_len.i.i70 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ctxprog_len.i.i70, align 4
  %ctxprog_max.i.i71 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %46 = ptrtoint ptr %ctxprog_max.i.i71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %ctxprog_max.i.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp1.i.i72 = icmp eq i32 %45, %47
  br i1 %cmp1.i.i72, label %do.body4.i.i74, label %do.end10.i.i77, !prof !9

do.body4.i.i74:                                   ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i77:                                   ; preds = %do.body.i.i73
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i75 = add i32 %45, 1
  %48 = ptrtoint ptr %ctxprog_len.i.i70 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %inc.i.i75, ptr %ctxprog_len.i.i70, align 4
  %arrayidx.i.i76 = getelementptr i32, ptr %41, i32 %45
  %49 = ptrtoint ptr %arrayidx.i.i76 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or9.i66, ptr %arrayidx.i.i76, align 4
  br label %_cp_bra.exit78

_cp_bra.exit78:                                   ; preds = %do.end10.i.i77, %cp_name.exit._cp_bra.exit78_crit_edge
  %arrayidx.i79 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i79, align 4
  %shl.i80 = shl i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i80)
  %cmp1.i81 = icmp eq i32 %shl.i80, 0
  %shl.i80.op.op = or i32 %shl.i80, 4194310
  %or9.i84 = select i1 %cmp1.i81, i32 -12582138, i32 %shl.i80.op.op
  %52 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ucode.i.i, align 4
  %54 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp.not.i.i87 = icmp eq i32 %55, 0
  br i1 %cmp.not.i.i87, label %do.body.i.i91, label %_cp_bra.exit78._cp_bra.exit96_crit_edge

_cp_bra.exit78._cp_bra.exit96_crit_edge:          ; preds = %_cp_bra.exit78
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_bra.exit96

do.body.i.i91:                                    ; preds = %_cp_bra.exit78
  %ctxprog_len.i.i88 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %56 = ptrtoint ptr %ctxprog_len.i.i88 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ctxprog_len.i.i88, align 4
  %ctxprog_max.i.i89 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %58 = ptrtoint ptr %ctxprog_max.i.i89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ctxprog_max.i.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp1.i.i90 = icmp eq i32 %57, %59
  br i1 %cmp1.i.i90, label %do.body4.i.i92, label %do.end10.i.i95, !prof !9

do.body4.i.i92:                                   ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i95:                                   ; preds = %do.body.i.i91
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i93 = add i32 %57, 1
  %60 = ptrtoint ptr %ctxprog_len.i.i88 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %inc.i.i93, ptr %ctxprog_len.i.i88, align 4
  %arrayidx.i.i94 = getelementptr i32, ptr %53, i32 %57
  %61 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or9.i84, ptr %arrayidx.i.i94, align 4
  br label %_cp_bra.exit96

_cp_bra.exit96:                                   ; preds = %do.end10.i.i95, %_cp_bra.exit78._cp_bra.exit96_crit_edge
  %arrayidx.i97 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 8
  %62 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i97, align 4
  %shl.i98 = shl i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i98)
  %cmp1.i99 = icmp eq i32 %shl.i98, 0
  %shl.i98.op.op = or i32 %shl.i98, 4194408
  %or9.i102 = select i1 %cmp1.i99, i32 -12580760, i32 %shl.i98.op.op
  %64 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ucode.i.i, align 4
  %66 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.not.i.i105 = icmp eq i32 %67, 0
  br i1 %cmp.not.i.i105, label %do.body.i.i109, label %_cp_bra.exit96.cp_out.exit286_crit_edge

_cp_bra.exit96.cp_out.exit286_crit_edge:          ; preds = %_cp_bra.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i109:                                   ; preds = %_cp_bra.exit96
  %ctxprog_len.i.i106 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %68 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ctxprog_len.i.i106, align 4
  %ctxprog_max.i.i107 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %70 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp1.i.i108 = icmp eq i32 %69, %71
  br i1 %cmp1.i.i108, label %do.body4.i.i110, label %_cp_bra.exit114, !prof !9

do.body4.i.i110:                                  ; preds = %do.body.i.i109
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_bra.exit114:                                  ; preds = %do.body.i.i109
  %inc.i.i111 = add i32 %69, 1
  %72 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %inc.i.i111, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i112 = getelementptr i32, ptr %65, i32 %69
  %73 = ptrtoint ptr %arrayidx.i.i112 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or9.i102, ptr %arrayidx.i.i112, align 4
  %74 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr777 = load i32, ptr %mode.i.i, align 4
  %75 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr777)
  %cmp.not.i117 = icmp eq i32 %.pr777, 0
  br i1 %cmp.not.i117, label %if.end.i121, label %_cp_bra.exit114.cp_out.exit286_crit_edge

_cp_bra.exit114.cp_out.exit286_crit_edge:         ; preds = %_cp_bra.exit114
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

if.end.i121:                                      ; preds = %_cp_bra.exit114
  %77 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ctxprog_len.i.i106, align 4
  %79 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %arrayidx.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp232.not.i120 = icmp eq i32 %78, 0
  br i1 %cmp232.not.i120, label %if.end.i121.cp_name.exit138_crit_edge, label %if.end.i121.for.body.i130_crit_edge

if.end.i121.for.body.i130_crit_edge:              ; preds = %if.end.i121
  br label %for.body.i130

if.end.i121.cp_name.exit138_crit_edge:            ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit138

for.body.i130:                                    ; preds = %for.inc.i137.for.body.i130_crit_edge, %if.end.i121.for.body.i130_crit_edge
  %80 = phi i32 [ %87, %for.inc.i137.for.body.i130_crit_edge ], [ %78, %if.end.i121.for.body.i130_crit_edge ]
  %i.033.i123 = phi i32 [ %inc.i135, %for.inc.i137.for.body.i130_crit_edge ], [ 0, %if.end.i121.for.body.i130_crit_edge ]
  %arrayidx3.i124 = getelementptr i32, ptr %76, i32 %i.033.i123
  %81 = ptrtoint ptr %arrayidx3.i124 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx3.i124, align 4
  %83 = and i32 %82, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12582400, i32 %83)
  %84 = icmp eq i32 %83, -12582400
  br i1 %84, label %if.end11.i134, label %for.body.i130.for.inc.i137_crit_edge

for.body.i130.for.inc.i137_crit_edge:             ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i137

if.end11.i134:                                    ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i131 = and i32 %82, 16711935
  %shl15.i132 = shl i32 %80, 8
  %or.i133 = or i32 %and13.i131, %shl15.i132
  %85 = ptrtoint ptr %arrayidx3.i124 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or.i133, ptr %arrayidx3.i124, align 4
  br label %for.inc.i137

for.inc.i137:                                     ; preds = %if.end11.i134, %for.body.i130.for.inc.i137_crit_edge
  %inc.i135 = add nuw i32 %i.033.i123, 1
  %86 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %ctxprog_len.i.i106, align 4
  %cmp2.i136 = icmp ult i32 %inc.i135, %87
  br i1 %cmp2.i136, label %for.inc.i137.for.body.i130_crit_edge, label %for.inc.i137.cp_name.exit138_crit_edge

for.inc.i137.cp_name.exit138_crit_edge:           ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit138

for.inc.i137.for.body.i130_crit_edge:             ; preds = %for.inc.i137
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i130

cp_name.exit138:                                  ; preds = %for.inc.i137.cp_name.exit138_crit_edge, %if.end.i121.cp_name.exit138_crit_edge
  %88 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %.pr779 = load i32, ptr %mode.i.i, align 4
  %89 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr779)
  %cmp.not.i.i141 = icmp eq i32 %.pr779, 0
  br i1 %cmp.not.i.i141, label %do.body.i.i145, label %cp_name.exit138.cp_out.exit286_crit_edge

cp_name.exit138.cp_out.exit286_crit_edge:         ; preds = %cp_name.exit138
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i145:                                   ; preds = %cp_name.exit138
  %91 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ctxprog_len.i.i106, align 4
  %93 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %94)
  %cmp1.i.i144 = icmp eq i32 %92, %94
  br i1 %cmp1.i.i144, label %do.body4.i.i146, label %_cp_wait.exit, !prof !9

do.body4.i.i146:                                  ; preds = %do.body.i.i145
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_wait.exit:                                    ; preds = %do.body.i.i145
  %inc.i.i147 = add i32 %92, 1
  %95 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %inc.i.i147, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i148 = getelementptr i32, ptr %90, i32 %92
  %96 = ptrtoint ptr %arrayidx.i.i148 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 5242976, ptr %arrayidx.i.i148, align 4
  %97 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %.pr781.pr = load i32, ptr %mode.i.i, align 4
  %98 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr781.pr)
  %cmp.not.i152 = icmp eq i32 %.pr781.pr, 0
  br i1 %cmp.not.i152, label %do.body.i, label %_cp_wait.exit.cp_out.exit286_crit_edge

_cp_wait.exit.cp_out.exit286_crit_edge:           ; preds = %_cp_wait.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i:                                        ; preds = %_cp_wait.exit
  %100 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %ctxprog_len.i.i106, align 4
  %102 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %103)
  %cmp1.i154 = icmp eq i32 %101, %103
  br i1 %cmp1.i154, label %do.body4.i, label %cp_out.exit, !prof !9

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit:                                      ; preds = %do.body.i
  %inc.i155 = add i32 %101, 1
  %104 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %inc.i155, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i156 = getelementptr i32, ptr %99, i32 %101
  %105 = ptrtoint ptr %arrayidx.i156 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 6291463, ptr %arrayidx.i156, align 4
  %106 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr783 = load i32, ptr %mode.i.i, align 4
  %107 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr783)
  %cmp.not.i159 = icmp eq i32 %.pr783, 0
  br i1 %cmp.not.i159, label %if.end.i163, label %cp_out.exit.cp_out.exit286_crit_edge

cp_out.exit.cp_out.exit286_crit_edge:             ; preds = %cp_out.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

if.end.i163:                                      ; preds = %cp_out.exit
  %109 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ctxprog_len.i.i106, align 4
  %111 = ptrtoint ptr %arrayidx.i79 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx.i79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp232.not.i162 = icmp eq i32 %110, 0
  br i1 %cmp232.not.i162, label %if.end.i163.cp_name.exit180_crit_edge, label %if.end.i163.for.body.i172_crit_edge

if.end.i163.for.body.i172_crit_edge:              ; preds = %if.end.i163
  br label %for.body.i172

if.end.i163.cp_name.exit180_crit_edge:            ; preds = %if.end.i163
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit180

for.body.i172:                                    ; preds = %for.inc.i179.for.body.i172_crit_edge, %if.end.i163.for.body.i172_crit_edge
  %112 = phi i32 [ %119, %for.inc.i179.for.body.i172_crit_edge ], [ %110, %if.end.i163.for.body.i172_crit_edge ]
  %i.033.i165 = phi i32 [ %inc.i177, %for.inc.i179.for.body.i172_crit_edge ], [ 0, %if.end.i163.for.body.i172_crit_edge ]
  %arrayidx3.i166 = getelementptr i32, ptr %108, i32 %i.033.i165
  %113 = ptrtoint ptr %arrayidx3.i166 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx3.i166, align 4
  %115 = and i32 %114, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12582144, i32 %115)
  %116 = icmp eq i32 %115, -12582144
  br i1 %116, label %if.end11.i176, label %for.body.i172.for.inc.i179_crit_edge

for.body.i172.for.inc.i179_crit_edge:             ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i179

if.end11.i176:                                    ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i173 = and i32 %114, 16711935
  %shl15.i174 = shl i32 %112, 8
  %or.i175 = or i32 %and13.i173, %shl15.i174
  %117 = ptrtoint ptr %arrayidx3.i166 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or.i175, ptr %arrayidx3.i166, align 4
  br label %for.inc.i179

for.inc.i179:                                     ; preds = %if.end11.i176, %for.body.i172.for.inc.i179_crit_edge
  %inc.i177 = add nuw i32 %i.033.i165, 1
  %118 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %ctxprog_len.i.i106, align 4
  %cmp2.i178 = icmp ult i32 %inc.i177, %119
  br i1 %cmp2.i178, label %for.inc.i179.for.body.i172_crit_edge, label %for.inc.i179.cp_name.exit180_crit_edge

for.inc.i179.cp_name.exit180_crit_edge:           ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit180

for.inc.i179.for.body.i172_crit_edge:             ; preds = %for.inc.i179
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i172

cp_name.exit180:                                  ; preds = %for.inc.i179.cp_name.exit180_crit_edge, %if.end.i163.cp_name.exit180_crit_edge
  %120 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %.pr785.pr.pr = load i32, ptr %mode.i.i, align 4
  %121 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr785.pr.pr)
  %cmp.not.i.i183 = icmp eq i32 %.pr785.pr.pr, 0
  br i1 %cmp.not.i.i183, label %do.body.i.i187, label %cp_name.exit180.cp_out.exit286_crit_edge

cp_name.exit180.cp_out.exit286_crit_edge:         ; preds = %cp_name.exit180
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i187:                                   ; preds = %cp_name.exit180
  %123 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ctxprog_len.i.i106, align 4
  %125 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %124, i32 %126)
  %cmp1.i.i186 = icmp eq i32 %124, %126
  br i1 %cmp1.i.i186, label %do.body4.i.i188, label %_cp_wait.exit192, !prof !9

do.body4.i.i188:                                  ; preds = %do.body.i.i187
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_wait.exit192:                                 ; preds = %do.body.i.i187
  %inc.i.i189 = add i32 %124, 1
  %127 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %inc.i.i189, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i190 = getelementptr i32, ptr %122, i32 %124
  %128 = ptrtoint ptr %arrayidx.i.i190 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 5242976, ptr %arrayidx.i.i190, align 4
  %129 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr787 = load i32, ptr %mode.i.i, align 4
  %130 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr787)
  %cmp.not.i.i195 = icmp eq i32 %.pr787, 0
  br i1 %cmp.not.i.i195, label %do.body.i.i199, label %_cp_wait.exit192.cp_out.exit286_crit_edge

_cp_wait.exit192.cp_out.exit286_crit_edge:        ; preds = %_cp_wait.exit192
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i199:                                   ; preds = %_cp_wait.exit192
  %132 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ctxprog_len.i.i106, align 4
  %134 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp1.i.i198 = icmp eq i32 %133, %135
  br i1 %cmp1.i.i198, label %do.body4.i.i200, label %_cp_set.exit, !prof !9

do.body4.i.i200:                                  ; preds = %do.body.i.i199
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_set.exit:                                     ; preds = %do.body.i.i199
  %inc.i.i201 = add i32 %133, 1
  %136 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %inc.i.i201, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i202 = getelementptr i32, ptr %131, i32 %133
  %137 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 7340032, ptr %arrayidx.i.i202, align 4
  %138 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr789.pr.pr = load i32, ptr %mode.i.i, align 4
  %139 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr789.pr.pr)
  %cmp.not.i206 = icmp eq i32 %.pr789.pr.pr, 0
  br i1 %cmp.not.i206, label %do.body.i210, label %_cp_set.exit.cp_out.exit286_crit_edge

_cp_set.exit.cp_out.exit286_crit_edge:            ; preds = %_cp_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i210:                                     ; preds = %_cp_set.exit
  %141 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ctxprog_len.i.i106, align 4
  %143 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp1.i209 = icmp eq i32 %142, %144
  br i1 %cmp1.i209, label %do.body4.i211, label %cp_out.exit215, !prof !9

do.body4.i211:                                    ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit215:                                   ; preds = %do.body.i210
  %inc.i212 = add i32 %142, 1
  %145 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %inc.i212, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i213 = getelementptr i32, ptr %140, i32 %142
  %146 = ptrtoint ptr %arrayidx.i213 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 9504896, ptr %arrayidx.i213, align 4
  %147 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pr791 = load i32, ptr %mode.i.i, align 4
  %148 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr791)
  %cmp.not.i218 = icmp eq i32 %.pr791, 0
  br i1 %cmp.not.i218, label %do.body.i222, label %cp_out.exit215.cp_out.exit286_crit_edge

cp_out.exit215.cp_out.exit286_crit_edge:          ; preds = %cp_out.exit215
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i222:                                     ; preds = %cp_out.exit215
  %150 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ctxprog_len.i.i106, align 4
  %152 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %153)
  %cmp1.i221 = icmp eq i32 %151, %153
  br i1 %cmp1.i221, label %do.body4.i223, label %cp_out.exit227, !prof !9

do.body4.i223:                                    ; preds = %do.body.i222
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit227:                                   ; preds = %do.body.i222
  %inc.i224 = add i32 %151, 1
  %154 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %inc.i224, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i225 = getelementptr i32, ptr %149, i32 %151
  %155 = ptrtoint ptr %arrayidx.i225 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 9445374, ptr %arrayidx.i225, align 4
  %156 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %.pr793.pr.pr.pr = load i32, ptr %mode.i.i, align 4
  %157 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr793.pr.pr.pr)
  %cmp.not.i230 = icmp eq i32 %.pr793.pr.pr.pr, 0
  br i1 %cmp.not.i230, label %do.body.i234, label %cp_out.exit227.cp_out.exit286_crit_edge

cp_out.exit227.cp_out.exit286_crit_edge:          ; preds = %cp_out.exit227
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i234:                                     ; preds = %cp_out.exit227
  %159 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ctxprog_len.i.i106, align 4
  %161 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %160, i32 %162)
  %cmp1.i233 = icmp eq i32 %160, %162
  br i1 %cmp1.i233, label %do.body4.i235, label %cp_out.exit239, !prof !9

do.body4.i235:                                    ; preds = %do.body.i234
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit239:                                   ; preds = %do.body.i234
  %inc.i236 = add i32 %160, 1
  %163 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %inc.i236, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i237 = getelementptr i32, ptr %158, i32 %160
  %164 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 26476544, ptr %arrayidx.i237, align 4
  %165 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %.pr795 = load i32, ptr %mode.i.i, align 4
  %166 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr795)
  %cmp.not.i.i242 = icmp eq i32 %.pr795, 0
  br i1 %cmp.not.i.i242, label %do.body.i.i246, label %cp_out.exit239.cp_out.exit286_crit_edge

cp_out.exit239.cp_out.exit286_crit_edge:          ; preds = %cp_out.exit239
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i246:                                   ; preds = %cp_out.exit239
  %168 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %ctxprog_len.i.i106, align 4
  %170 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %171)
  %cmp1.i.i245 = icmp eq i32 %169, %171
  br i1 %cmp1.i.i245, label %do.body4.i.i247, label %cp_lsr.exit, !prof !9

do.body4.i.i247:                                  ; preds = %do.body.i.i246
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_lsr.exit:                                      ; preds = %do.body.i.i246
  %inc.i.i248 = add i32 %169, 1
  %172 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %inc.i.i248, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i249 = getelementptr i32, ptr %167, i32 %169
  %173 = ptrtoint ptr %arrayidx.i.i249 to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 2097184, ptr %arrayidx.i.i249, align 4
  %174 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %.pr797.pr.pr.pr = load i32, ptr %mode.i.i, align 4
  %175 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr797.pr.pr.pr)
  %cmp.not.i253 = icmp eq i32 %.pr797.pr.pr.pr, 0
  br i1 %cmp.not.i253, label %do.body.i257, label %cp_lsr.exit.cp_out.exit286_crit_edge

cp_lsr.exit.cp_out.exit286_crit_edge:             ; preds = %cp_lsr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i257:                                     ; preds = %cp_lsr.exit
  %177 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ctxprog_len.i.i106, align 4
  %179 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %178, i32 %180)
  %cmp1.i256 = icmp eq i32 %178, %180
  br i1 %cmp1.i256, label %do.body4.i258, label %cp_out.exit262, !prof !9

do.body4.i258:                                    ; preds = %do.body.i257
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit262:                                   ; preds = %do.body.i257
  %inc.i259 = add i32 %178, 1
  %181 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %inc.i259, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i260 = getelementptr i32, ptr %176, i32 %178
  %182 = ptrtoint ptr %arrayidx.i260 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 6291467, ptr %arrayidx.i260, align 4
  %183 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %.pr799 = load i32, ptr %mode.i.i, align 4
  %184 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr799)
  %cmp.not.i.i265 = icmp eq i32 %.pr799, 0
  br i1 %cmp.not.i.i265, label %do.body.i.i269, label %cp_out.exit262.cp_out.exit286_crit_edge

cp_out.exit262.cp_out.exit286_crit_edge:          ; preds = %cp_out.exit262
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i.i269:                                   ; preds = %cp_out.exit262
  %186 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ctxprog_len.i.i106, align 4
  %188 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %189)
  %cmp1.i.i268 = icmp eq i32 %187, %189
  br i1 %cmp1.i.i268, label %do.body4.i.i270, label %_cp_wait.exit274, !prof !9

do.body4.i.i270:                                  ; preds = %do.body.i.i269
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_wait.exit274:                                 ; preds = %do.body.i.i269
  %inc.i.i271 = add i32 %187, 1
  %190 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %inc.i.i271, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i.i272 = getelementptr i32, ptr %185, i32 %187
  %191 = ptrtoint ptr %arrayidx.i.i272 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 5242985, ptr %arrayidx.i.i272, align 4
  %192 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %.pr801.pr.pr.pr = load i32, ptr %mode.i.i, align 4
  %193 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr801.pr.pr.pr)
  %cmp.not.i277 = icmp eq i32 %.pr801.pr.pr.pr, 0
  br i1 %cmp.not.i277, label %do.body.i281, label %_cp_wait.exit274.cp_out.exit286_crit_edge

_cp_wait.exit274.cp_out.exit286_crit_edge:        ; preds = %_cp_wait.exit274
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit286

do.body.i281:                                     ; preds = %_cp_wait.exit274
  %195 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %ctxprog_len.i.i106, align 4
  %197 = ptrtoint ptr %ctxprog_max.i.i107 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %ctxprog_max.i.i107, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %196, i32 %198)
  %cmp1.i280 = icmp eq i32 %196, %198
  br i1 %cmp1.i280, label %do.body4.i282, label %do.end10.i285, !prof !9

do.body4.i282:                                    ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i285:                                    ; preds = %do.body.i281
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i283 = add i32 %196, 1
  %199 = ptrtoint ptr %ctxprog_len.i.i106 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %inc.i283, ptr %ctxprog_len.i.i106, align 4
  %arrayidx.i284 = getelementptr i32, ptr %194, i32 %196
  %200 = ptrtoint ptr %arrayidx.i284 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 6291468, ptr %arrayidx.i284, align 4
  br label %cp_out.exit286

cp_out.exit286:                                   ; preds = %do.end10.i285, %_cp_wait.exit274.cp_out.exit286_crit_edge, %cp_out.exit262.cp_out.exit286_crit_edge, %cp_lsr.exit.cp_out.exit286_crit_edge, %cp_out.exit239.cp_out.exit286_crit_edge, %cp_out.exit227.cp_out.exit286_crit_edge, %cp_out.exit215.cp_out.exit286_crit_edge, %_cp_set.exit.cp_out.exit286_crit_edge, %_cp_wait.exit192.cp_out.exit286_crit_edge, %cp_name.exit180.cp_out.exit286_crit_edge, %cp_out.exit.cp_out.exit286_crit_edge, %_cp_wait.exit.cp_out.exit286_crit_edge, %cp_name.exit138.cp_out.exit286_crit_edge, %_cp_bra.exit114.cp_out.exit286_crit_edge, %_cp_bra.exit96.cp_out.exit286_crit_edge
  %arrayidx.i287 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 5
  %201 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i287, align 4
  %shl.i288 = shl i32 %202, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i288)
  %cmp1.i289 = icmp eq i32 %shl.i288, 0
  %shl.i288.op.op = or i32 %shl.i288, 4194408
  %or9.i292 = select i1 %cmp1.i289, i32 -12581528, i32 %shl.i288.op.op
  %203 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %ucode.i.i, align 4
  %205 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp.not.i.i295 = icmp eq i32 %206, 0
  br i1 %cmp.not.i.i295, label %do.body.i.i299, label %cp_out.exit286.cp_name.exit364.thread_crit_edge

cp_out.exit286.cp_name.exit364.thread_crit_edge:  ; preds = %cp_out.exit286
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364.thread

do.body.i.i299:                                   ; preds = %cp_out.exit286
  %ctxprog_len.i.i296 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %207 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %ctxprog_len.i.i296, align 4
  %ctxprog_max.i.i297 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %209 = ptrtoint ptr %ctxprog_max.i.i297 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %ctxprog_max.i.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %210)
  %cmp1.i.i298 = icmp eq i32 %208, %210
  br i1 %cmp1.i.i298, label %do.body4.i.i300, label %_cp_bra.exit304, !prof !9

do.body4.i.i300:                                  ; preds = %do.body.i.i299
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_bra.exit304:                                  ; preds = %do.body.i.i299
  %inc.i.i301 = add i32 %208, 1
  %211 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %inc.i.i301, ptr %ctxprog_len.i.i296, align 4
  %arrayidx.i.i302 = getelementptr i32, ptr %204, i32 %208
  %212 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %or9.i292, ptr %arrayidx.i.i302, align 4
  %213 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pr803 = load i32, ptr %mode.i.i, align 4
  %214 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr803)
  %cmp.not.i307 = icmp eq i32 %.pr803, 0
  br i1 %cmp.not.i307, label %if.end.i311, label %_cp_bra.exit304.cp_name.exit364.thread_crit_edge

_cp_bra.exit304.cp_name.exit364.thread_crit_edge: ; preds = %_cp_bra.exit304
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364.thread

if.end.i311:                                      ; preds = %_cp_bra.exit304
  %216 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %ctxprog_len.i.i296, align 4
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp232.not.i310 = icmp eq i32 %217, 0
  br i1 %cmp232.not.i310, label %if.end.i311.cp_name.exit328_crit_edge, label %if.end.i311.for.body.i320_crit_edge

if.end.i311.for.body.i320_crit_edge:              ; preds = %if.end.i311
  br label %for.body.i320

if.end.i311.cp_name.exit328_crit_edge:            ; preds = %if.end.i311
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit328

for.body.i320:                                    ; preds = %for.inc.i327.for.body.i320_crit_edge, %if.end.i311.for.body.i320_crit_edge
  %219 = phi i32 [ %226, %for.inc.i327.for.body.i320_crit_edge ], [ %217, %if.end.i311.for.body.i320_crit_edge ]
  %i.033.i313 = phi i32 [ %inc.i325, %for.inc.i327.for.body.i320_crit_edge ], [ 0, %if.end.i311.for.body.i320_crit_edge ]
  %arrayidx3.i314 = getelementptr i32, ptr %215, i32 %i.033.i313
  %220 = ptrtoint ptr %arrayidx3.i314 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx3.i314, align 4
  %222 = and i32 %221, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12581888, i32 %222)
  %223 = icmp eq i32 %222, -12581888
  br i1 %223, label %if.end11.i324, label %for.body.i320.for.inc.i327_crit_edge

for.body.i320.for.inc.i327_crit_edge:             ; preds = %for.body.i320
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i327

if.end11.i324:                                    ; preds = %for.body.i320
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i321 = and i32 %221, 16711935
  %shl15.i322 = shl i32 %219, 8
  %or.i323 = or i32 %and13.i321, %shl15.i322
  %224 = ptrtoint ptr %arrayidx3.i314 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %or.i323, ptr %arrayidx3.i314, align 4
  br label %for.inc.i327

for.inc.i327:                                     ; preds = %if.end11.i324, %for.body.i320.for.inc.i327_crit_edge
  %inc.i325 = add nuw i32 %i.033.i313, 1
  %225 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %ctxprog_len.i.i296, align 4
  %cmp2.i326 = icmp ult i32 %inc.i325, %226
  br i1 %cmp2.i326, label %for.inc.i327.for.body.i320_crit_edge, label %for.inc.i327.cp_name.exit328_crit_edge

for.inc.i327.cp_name.exit328_crit_edge:           ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit328

for.inc.i327.for.body.i320_crit_edge:             ; preds = %for.inc.i327
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i320

cp_name.exit328:                                  ; preds = %for.inc.i327.cp_name.exit328_crit_edge, %if.end.i311.cp_name.exit328_crit_edge
  %227 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %.pr805 = load i32, ptr %mode.i.i, align 4
  %228 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr805)
  %cmp.not.i.i331 = icmp eq i32 %.pr805, 0
  br i1 %cmp.not.i.i331, label %do.body.i.i335, label %cp_name.exit328.cp_name.exit364.thread_crit_edge

cp_name.exit328.cp_name.exit364.thread_crit_edge: ; preds = %cp_name.exit328
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364.thread

do.body.i.i335:                                   ; preds = %cp_name.exit328
  %230 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %ctxprog_len.i.i296, align 4
  %232 = ptrtoint ptr %ctxprog_max.i.i297 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %ctxprog_max.i.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %231, i32 %233)
  %cmp1.i.i334 = icmp eq i32 %231, %233
  br i1 %cmp1.i.i334, label %do.body4.i.i336, label %_cp_set.exit340, !prof !9

do.body4.i.i336:                                  ; preds = %do.body.i.i335
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_set.exit340:                                  ; preds = %do.body.i.i335
  %inc.i.i337 = add i32 %231, 1
  %234 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 %inc.i.i337, ptr %ctxprog_len.i.i296, align 4
  %arrayidx.i.i338 = getelementptr i32, ptr %229, i32 %231
  %235 = ptrtoint ptr %arrayidx.i.i338 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 7340160, ptr %arrayidx.i.i338, align 4
  %236 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %.pr807.pr = load i32, ptr %mode.i.i, align 4
  %237 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr807.pr)
  %cmp.not.i343 = icmp eq i32 %.pr807.pr, 0
  br i1 %cmp.not.i343, label %if.end.i347, label %_cp_set.exit340.cp_name.exit364.thread_crit_edge

_cp_set.exit340.cp_name.exit364.thread_crit_edge: ; preds = %_cp_set.exit340
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364.thread

if.end.i347:                                      ; preds = %_cp_set.exit340
  %239 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %ctxprog_len.i.i296, align 4
  %241 = ptrtoint ptr %arrayidx.i287 to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %arrayidx.i287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %240)
  %cmp232.not.i346 = icmp eq i32 %240, 0
  br i1 %cmp232.not.i346, label %if.end.i347.cp_name.exit364_crit_edge, label %if.end.i347.for.body.i356_crit_edge

if.end.i347.for.body.i356_crit_edge:              ; preds = %if.end.i347
  br label %for.body.i356

if.end.i347.cp_name.exit364_crit_edge:            ; preds = %if.end.i347
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364

for.body.i356:                                    ; preds = %for.inc.i363.for.body.i356_crit_edge, %if.end.i347.for.body.i356_crit_edge
  %242 = phi i32 [ %249, %for.inc.i363.for.body.i356_crit_edge ], [ %240, %if.end.i347.for.body.i356_crit_edge ]
  %i.033.i349 = phi i32 [ %inc.i361, %for.inc.i363.for.body.i356_crit_edge ], [ 0, %if.end.i347.for.body.i356_crit_edge ]
  %arrayidx3.i350 = getelementptr i32, ptr %238, i32 %i.033.i349
  %243 = ptrtoint ptr %arrayidx3.i350 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %arrayidx3.i350, align 4
  %245 = and i32 %244, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12581632, i32 %245)
  %246 = icmp eq i32 %245, -12581632
  br i1 %246, label %if.end11.i360, label %for.body.i356.for.inc.i363_crit_edge

for.body.i356.for.inc.i363_crit_edge:             ; preds = %for.body.i356
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i363

if.end11.i360:                                    ; preds = %for.body.i356
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i357 = and i32 %244, 16711935
  %shl15.i358 = shl i32 %242, 8
  %or.i359 = or i32 %and13.i357, %shl15.i358
  %247 = ptrtoint ptr %arrayidx3.i350 to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %or.i359, ptr %arrayidx3.i350, align 4
  br label %for.inc.i363

for.inc.i363:                                     ; preds = %if.end11.i360, %for.body.i356.for.inc.i363_crit_edge
  %inc.i361 = add nuw i32 %i.033.i349, 1
  %248 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %ctxprog_len.i.i296, align 4
  %cmp2.i362 = icmp ult i32 %inc.i361, %249
  br i1 %cmp2.i362, label %for.inc.i363.for.body.i356_crit_edge, label %for.inc.i363.cp_name.exit364_crit_edge

for.inc.i363.cp_name.exit364_crit_edge:           ; preds = %for.inc.i363
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit364

for.inc.i363.for.body.i356_crit_edge:             ; preds = %for.inc.i363
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i356

cp_name.exit364.thread:                           ; preds = %_cp_set.exit340.cp_name.exit364.thread_crit_edge, %cp_name.exit328.cp_name.exit364.thread_crit_edge, %_cp_bra.exit304.cp_name.exit364.thread_crit_edge, %cp_out.exit286.cp_name.exit364.thread_crit_edge
  %ctxvals_pos.i810 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 8
  %250 = ptrtoint ptr %ctxvals_pos.i810 to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 8, ptr %ctxvals_pos.i810, align 4
  %ctxvals_base.i811 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 9
  br label %cp_pos.exit

cp_name.exit364:                                  ; preds = %for.inc.i363.cp_name.exit364_crit_edge, %if.end.i347.cp_name.exit364_crit_edge
  %251 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %.pr809 = load i32, ptr %mode.i.i, align 4
  %ctxvals_pos.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 8
  %252 = ptrtoint ptr %ctxvals_pos.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 8, ptr %ctxvals_pos.i, align 4
  %ctxvals_base.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 9
  %253 = ptrtoint ptr %ctxvals_base.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 8, ptr %ctxvals_base.i, align 4
  %254 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr809)
  %cmp.not.i.i.i = icmp eq i32 %.pr809, 0
  br i1 %cmp.not.i.i.i, label %do.body.i.i.i, label %cp_name.exit364.cp_pos.exit_crit_edge

cp_name.exit364.cp_pos.exit_crit_edge:            ; preds = %cp_name.exit364
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_pos.exit

do.body.i.i.i:                                    ; preds = %cp_name.exit364
  %256 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %ctxprog_len.i.i296, align 4
  %258 = ptrtoint ptr %ctxprog_max.i.i297 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %ctxprog_max.i.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %259)
  %cmp1.i.i.i = icmp eq i32 %257, %259
  br i1 %cmp1.i.i.i, label %do.body4.i.i.i, label %cp_lsr.exit.i, !prof !9

do.body4.i.i.i:                                   ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_lsr.exit.i:                                    ; preds = %do.body.i.i.i
  %inc.i.i.i = add i32 %257, 1
  %260 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %inc.i.i.i, ptr %ctxprog_len.i.i296, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %255, i32 %257
  %261 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 2097160, ptr %arrayidx.i.i.i, align 4
  %262 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %.pr.i = load i32, ptr %mode.i.i, align 4
  %263 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.not.i.i365 = icmp eq i32 %.pr.i, 0
  br i1 %cmp.not.i.i365, label %do.body.i.i367, label %cp_lsr.exit.i.cp_pos.exit_crit_edge

cp_lsr.exit.i.cp_pos.exit_crit_edge:              ; preds = %cp_lsr.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_pos.exit

do.body.i.i367:                                   ; preds = %cp_lsr.exit.i
  %265 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %ctxprog_len.i.i296, align 4
  %267 = ptrtoint ptr %ctxprog_max.i.i297 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %ctxprog_max.i.i297, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %268)
  %cmp1.i.i366 = icmp eq i32 %266, %268
  br i1 %cmp1.i.i366, label %do.body4.i.i368, label %do.end10.i.i371, !prof !9

do.body4.i.i368:                                  ; preds = %do.body.i.i367
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i371:                                  ; preds = %do.body.i.i367
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i369 = add i32 %266, 1
  %269 = ptrtoint ptr %ctxprog_len.i.i296 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %inc.i.i369, ptr %ctxprog_len.i.i296, align 4
  %arrayidx.i.i370 = getelementptr i32, ptr %264, i32 %266
  %270 = ptrtoint ptr %arrayidx.i.i370 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 6291466, ptr %arrayidx.i.i370, align 4
  br label %cp_pos.exit

cp_pos.exit:                                      ; preds = %do.end10.i.i371, %cp_lsr.exit.i.cp_pos.exit_crit_edge, %cp_name.exit364.cp_pos.exit_crit_edge, %cp_name.exit364.thread
  %ctxvals_base.i829 = phi ptr [ %ctxvals_base.i811, %cp_name.exit364.thread ], [ %ctxvals_base.i, %cp_name.exit364.cp_pos.exit_crit_edge ], [ %ctxvals_base.i, %cp_lsr.exit.i.cp_pos.exit_crit_edge ], [ %ctxvals_base.i, %do.end10.i.i371 ]
  %ctxvals_pos.i813 = phi ptr [ %ctxvals_pos.i810, %cp_name.exit364.thread ], [ %ctxvals_pos.i, %cp_name.exit364.cp_pos.exit_crit_edge ], [ %ctxvals_pos.i, %cp_lsr.exit.i.cp_pos.exit_crit_edge ], [ %ctxvals_pos.i, %do.end10.i.i371 ]
  %271 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %ctx, align 4
  %ctxprog_reg.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 6
  %273 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 41, ptr %ctxprog_reg.i.i, align 4
  %274 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %ctxvals_pos.i813, align 4
  %276 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %275, ptr %ctxvals_base.i829, align 4
  %add.i.i = add i32 %275, 1
  store i32 %add.i.i, ptr %ctxvals_pos.i813, align 4
  %277 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %ucode.i.i, align 4
  %279 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %cmp.not.i.i.i374 = icmp eq i32 %280, 0
  br i1 %cmp.not.i.i.i374, label %do.body.i.i.i378, label %cp_pos.exit.cp_ctx.exit.i_crit_edge

cp_pos.exit.cp_ctx.exit.i_crit_edge:              ; preds = %cp_pos.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit.i

do.body.i.i.i378:                                 ; preds = %cp_pos.exit
  %ctxprog_len.i.i.i375 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %281 = ptrtoint ptr %ctxprog_len.i.i.i375 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %ctxprog_len.i.i.i375, align 4
  %ctxprog_max.i.i.i376 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %283 = ptrtoint ptr %ctxprog_max.i.i.i376 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %ctxprog_max.i.i.i376, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %284)
  %cmp1.i.i.i377 = icmp eq i32 %282, %284
  br i1 %cmp1.i.i.i377, label %do.body4.i.i.i379, label %do.end10.i.i.i, !prof !9

do.body4.i.i.i379:                                ; preds = %do.body.i.i.i378
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i:                                   ; preds = %do.body.i.i.i378
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i380 = add i32 %282, 1
  %285 = ptrtoint ptr %ctxprog_len.i.i.i375 to i32
  call void @__asan_store4_noabort(i32 %285)
  store i32 %inc.i.i.i380, ptr %ctxprog_len.i.i.i375, align 4
  %arrayidx.i.i.i381 = getelementptr i32, ptr %278, i32 %282
  %286 = ptrtoint ptr %arrayidx.i.i.i381 to i32
  call void @__asan_store4_noabort(i32 %286)
  store i32 1065001, ptr %arrayidx.i.i.i381, align 4
  %287 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %.pr.i382 = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit.i

cp_ctx.exit.i:                                    ; preds = %do.end10.i.i.i, %cp_pos.exit.cp_ctx.exit.i_crit_edge
  %288 = phi i32 [ %280, %cp_pos.exit.cp_ctx.exit.i_crit_edge ], [ %.pr.i382, %do.end10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %288)
  %cmp.not.i.i383 = icmp eq i32 %288, 1
  br i1 %cmp.not.i.i383, label %if.end.i.i, label %cp_ctx.exit.i.gr_def.exit.i_crit_edge

cp_ctx.exit.i.gr_def.exit.i_crit_edge:            ; preds = %cp_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit.i

if.end.i.i:                                       ; preds = %cp_ctx.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %289 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i.i = sub i32 41, %290
  %291 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i108.i = add i32 %sub1.i.i, %292
  %data.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %293 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %data.i.i, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 8
  %wr32.i.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %296, i32 0, i32 3
  %297 = ptrtoint ptr %wr32.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %wr32.i.i, align 4
  %mul.i.i = shl i32 %add.i108.i, 2
  tail call void %298(ptr noundef %294, i32 noundef %mul.i.i, i32 noundef 8) #5
  br label %gr_def.exit.i

gr_def.exit.i:                                    ; preds = %if.end.i.i, %cp_ctx.exit.i.gr_def.exit.i_crit_edge
  %299 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 81, ptr %ctxprog_reg.i.i, align 4
  %300 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %ctxvals_pos.i813, align 4
  %302 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %301, ptr %ctxvals_base.i829, align 4
  %add.i112.i = add i32 %301, 58
  store i32 %add.i112.i, ptr %ctxvals_pos.i813, align 4
  %303 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %ucode.i.i, align 4
  %305 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %306)
  %cmp.not.i.i117.i = icmp eq i32 %306, 0
  br i1 %cmp.not.i.i117.i, label %do.body.i.i122.i, label %gr_def.exit.i.cp_ctx.exit127.i_crit_edge

gr_def.exit.i.cp_ctx.exit127.i_crit_edge:         ; preds = %gr_def.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit127.i

do.body.i.i122.i:                                 ; preds = %gr_def.exit.i
  %ctxprog_len.i.i119.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %307 = ptrtoint ptr %ctxprog_len.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ctxprog_len.i.i119.i, align 4
  %ctxprog_max.i.i120.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %309 = ptrtoint ptr %ctxprog_max.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %ctxprog_max.i.i120.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %308, i32 %310)
  %cmp1.i.i121.i = icmp eq i32 %308, %310
  br i1 %cmp1.i.i121.i, label %do.body4.i.i123.i, label %do.end10.i.i126.i, !prof !9

do.body4.i.i123.i:                                ; preds = %do.body.i.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i126.i:                                ; preds = %do.body.i.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i124.i = add i32 %308, 1
  %311 = ptrtoint ptr %ctxprog_len.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 %inc.i.i124.i, ptr %ctxprog_len.i.i119.i, align 4
  %arrayidx.i.i125.i = getelementptr i32, ptr %304, i32 %308
  %312 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 1998929, ptr %arrayidx.i.i125.i, align 4
  %313 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %.pr995.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit127.i

cp_ctx.exit127.i:                                 ; preds = %do.end10.i.i126.i, %gr_def.exit.i.cp_ctx.exit127.i_crit_edge
  %314 = phi i32 [ %306, %gr_def.exit.i.cp_ctx.exit127.i_crit_edge ], [ %.pr995.i, %do.end10.i.i126.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %314)
  %cmp.not.i129.i = icmp eq i32 %314, 1
  br i1 %cmp.not.i129.i, label %if.end.i137.i, label %cp_ctx.exit127.i.gr_def.exit138.i_crit_edge

cp_ctx.exit127.i.gr_def.exit138.i_crit_edge:      ; preds = %cp_ctx.exit127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit138.i

if.end.i137.i:                                    ; preds = %cp_ctx.exit127.i
  call void @__sanitizer_cov_trace_pc() #7
  %315 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i131.i = sub i32 81, %316
  %317 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i133.i = add i32 %sub1.i131.i, %318
  %data.i134.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %319 = ptrtoint ptr %data.i134.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %data.i134.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 8
  %wr32.i135.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %322, i32 0, i32 3
  %323 = ptrtoint ptr %wr32.i135.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %wr32.i135.i, align 4
  %mul.i136.i = shl i32 %add.i133.i, 2
  tail call void %324(ptr noundef %320, i32 noundef %mul.i136.i, i32 noundef 1) #5
  br label %gr_def.exit138.i

gr_def.exit138.i:                                 ; preds = %if.end.i137.i, %cp_ctx.exit127.i.gr_def.exit138.i_crit_edge
  %325 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 197, ptr %ctxprog_reg.i.i, align 4
  %326 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %ctxvals_pos.i813, align 4
  %328 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 %327, ptr %ctxvals_base.i829, align 4
  %add.i142.i = add i32 %327, 1
  store i32 %add.i142.i, ptr %ctxvals_pos.i813, align 4
  %329 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ucode.i.i, align 4
  %331 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp.not.i.i147.i = icmp eq i32 %332, 0
  br i1 %cmp.not.i.i147.i, label %do.body.i.i152.i, label %gr_def.exit138.i.cp_ctx.exit157.i_crit_edge

gr_def.exit138.i.cp_ctx.exit157.i_crit_edge:      ; preds = %gr_def.exit138.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit157.i

do.body.i.i152.i:                                 ; preds = %gr_def.exit138.i
  %ctxprog_len.i.i149.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %333 = ptrtoint ptr %ctxprog_len.i.i149.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %ctxprog_len.i.i149.i, align 4
  %ctxprog_max.i.i150.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %335 = ptrtoint ptr %ctxprog_max.i.i150.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %ctxprog_max.i.i150.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %336)
  %cmp1.i.i151.i = icmp eq i32 %334, %336
  br i1 %cmp1.i.i151.i, label %do.body4.i.i153.i, label %do.end10.i.i156.i, !prof !9

do.body4.i.i153.i:                                ; preds = %do.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i156.i:                                ; preds = %do.body.i.i152.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i154.i = add i32 %334, 1
  %337 = ptrtoint ptr %ctxprog_len.i.i149.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 %inc.i.i154.i, ptr %ctxprog_len.i.i149.i, align 4
  %arrayidx.i.i155.i = getelementptr i32, ptr %330, i32 %334
  %338 = ptrtoint ptr %arrayidx.i.i155.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 1065157, ptr %arrayidx.i.i155.i, align 4
  %339 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %.pr996.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit157.i

cp_ctx.exit157.i:                                 ; preds = %do.end10.i.i156.i, %gr_def.exit138.i.cp_ctx.exit157.i_crit_edge
  %340 = phi i32 [ %332, %gr_def.exit138.i.cp_ctx.exit157.i_crit_edge ], [ %.pr996.i, %do.end10.i.i156.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %340)
  %cmp.not.i159.i = icmp eq i32 %340, 1
  br i1 %cmp.not.i159.i, label %if.end.i167.i, label %cp_ctx.exit157.i.gr_def.exit168.i_crit_edge

cp_ctx.exit157.i.gr_def.exit168.i_crit_edge:      ; preds = %cp_ctx.exit157.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit168.i

if.end.i167.i:                                    ; preds = %cp_ctx.exit157.i
  call void @__sanitizer_cov_trace_pc() #7
  %341 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i161.i = sub i32 197, %342
  %343 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i163.i = add i32 %sub1.i161.i, %344
  %data.i164.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %345 = ptrtoint ptr %data.i164.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %data.i164.i, align 4
  %347 = ptrtoint ptr %346 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %346, align 8
  %wr32.i165.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %348, i32 0, i32 3
  %349 = ptrtoint ptr %wr32.i165.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %wr32.i165.i, align 4
  %mul.i166.i = shl i32 %add.i163.i, 2
  tail call void %350(ptr noundef %346, i32 noundef %mul.i166.i, i32 noundef 0) #5
  br label %gr_def.exit168.i

gr_def.exit168.i:                                 ; preds = %if.end.i167.i, %cp_ctx.exit157.i.gr_def.exit168.i_crit_edge
  %351 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 256, ptr %ctxprog_reg.i.i, align 4
  %352 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %ctxvals_pos.i813, align 4
  %354 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %ctxvals_base.i829, align 4
  %add.i172.i = add i32 %353, 10
  store i32 %add.i172.i, ptr %ctxvals_pos.i813, align 4
  %355 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %ucode.i.i, align 4
  %357 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %358)
  %cmp.not.i.i177.i = icmp eq i32 %358, 0
  br i1 %cmp.not.i.i177.i, label %do.body.i.i182.i, label %gr_def.exit168.i.cp_ctx.exit187.i_crit_edge

gr_def.exit168.i.cp_ctx.exit187.i_crit_edge:      ; preds = %gr_def.exit168.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit187.i

do.body.i.i182.i:                                 ; preds = %gr_def.exit168.i
  %ctxprog_len.i.i179.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %359 = ptrtoint ptr %ctxprog_len.i.i179.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %ctxprog_len.i.i179.i, align 4
  %ctxprog_max.i.i180.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %361 = ptrtoint ptr %ctxprog_max.i.i180.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %ctxprog_max.i.i180.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %360, i32 %362)
  %cmp1.i.i181.i = icmp eq i32 %360, %362
  br i1 %cmp1.i.i181.i, label %do.body4.i.i183.i, label %do.end10.i.i186.i, !prof !9

do.body4.i.i183.i:                                ; preds = %do.body.i.i182.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i186.i:                                ; preds = %do.body.i.i182.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i184.i = add i32 %360, 1
  %363 = ptrtoint ptr %ctxprog_len.i.i179.i to i32
  call void @__asan_store4_noabort(i32 %363)
  store i32 %inc.i.i184.i, ptr %ctxprog_len.i.i179.i, align 4
  %arrayidx.i.i185.i = getelementptr i32, ptr %356, i32 %360
  %364 = ptrtoint ptr %arrayidx.i.i185.i to i32
  call void @__asan_store4_noabort(i32 %364)
  store i32 1212672, ptr %arrayidx.i.i185.i, align 4
  %365 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %.pr997.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit187.i

cp_ctx.exit187.i:                                 ; preds = %do.end10.i.i186.i, %gr_def.exit168.i.cp_ctx.exit187.i_crit_edge
  %366 = phi i32 [ %358, %gr_def.exit168.i.cp_ctx.exit187.i_crit_edge ], [ %.pr997.i, %do.end10.i.i186.i ]
  %367 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %367)
  store i32 288, ptr %ctxprog_reg.i.i, align 4
  %368 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %ctxvals_pos.i813, align 4
  %370 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 %369, ptr %ctxvals_base.i829, align 4
  %add.i191.i = add i32 %369, 10
  store i32 %add.i191.i, ptr %ctxvals_pos.i813, align 4
  %371 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %366)
  %cmp.not.i.i196.i = icmp eq i32 %366, 0
  br i1 %cmp.not.i.i196.i, label %do.body.i.i201.i, label %cp_ctx.exit187.i.cp_ctx.exit206.i_crit_edge

cp_ctx.exit187.i.cp_ctx.exit206.i_crit_edge:      ; preds = %cp_ctx.exit187.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit206.i

do.body.i.i201.i:                                 ; preds = %cp_ctx.exit187.i
  %ctxprog_len.i.i198.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %373 = ptrtoint ptr %ctxprog_len.i.i198.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %ctxprog_len.i.i198.i, align 4
  %ctxprog_max.i.i199.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %375 = ptrtoint ptr %ctxprog_max.i.i199.i to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load i32, ptr %ctxprog_max.i.i199.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %374, i32 %376)
  %cmp1.i.i200.i = icmp eq i32 %374, %376
  br i1 %cmp1.i.i200.i, label %do.body4.i.i202.i, label %do.end10.i.i205.i, !prof !9

do.body4.i.i202.i:                                ; preds = %do.body.i.i201.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i205.i:                                ; preds = %do.body.i.i201.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i203.i = add i32 %374, 1
  %377 = ptrtoint ptr %ctxprog_len.i.i198.i to i32
  call void @__asan_store4_noabort(i32 %377)
  store i32 %inc.i.i203.i, ptr %ctxprog_len.i.i198.i, align 4
  %arrayidx.i.i204.i = getelementptr i32, ptr %372, i32 %374
  %378 = ptrtoint ptr %arrayidx.i.i204.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 1212704, ptr %arrayidx.i.i204.i, align 4
  br label %cp_ctx.exit206.i

cp_ctx.exit206.i:                                 ; preds = %do.end10.i.i205.i, %cp_ctx.exit187.i.cp_ctx.exit206.i_crit_edge
  %379 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %379)
  store i32 320, ptr %ctxprog_reg.i.i, align 4
  %380 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %ctxvals_pos.i813, align 4
  %382 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %381, ptr %ctxvals_base.i829, align 4
  %add.i210.i = add i32 %381, 19
  store i32 %add.i210.i, ptr %ctxvals_pos.i813, align 4
  %383 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %ucode.i.i, align 4
  %385 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %cmp.not.i.i215.i = icmp eq i32 %386, 0
  br i1 %cmp.not.i.i215.i, label %do.body.i.i220.i, label %cp_ctx.exit206.i.cp_ctx.exit225.i_crit_edge

cp_ctx.exit206.i.cp_ctx.exit225.i_crit_edge:      ; preds = %cp_ctx.exit206.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit225.i

do.body.i.i220.i:                                 ; preds = %cp_ctx.exit206.i
  %ctxprog_len.i.i217.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %387 = ptrtoint ptr %ctxprog_len.i.i217.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %ctxprog_len.i.i217.i, align 4
  %ctxprog_max.i.i218.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %389 = ptrtoint ptr %ctxprog_max.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %ctxprog_max.i.i218.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %388, i32 %390)
  %cmp1.i.i219.i = icmp eq i32 %388, %390
  br i1 %cmp1.i.i219.i, label %do.body4.i.i221.i, label %do.end10.i.i224.i, !prof !9

do.body4.i.i221.i:                                ; preds = %do.body.i.i220.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i224.i:                                ; preds = %do.body.i.i220.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i222.i = add i32 %388, 1
  %391 = ptrtoint ptr %ctxprog_len.i.i217.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 %inc.i.i222.i, ptr %ctxprog_len.i.i217.i, align 4
  %arrayidx.i.i223.i = getelementptr i32, ptr %384, i32 %388
  %392 = ptrtoint ptr %arrayidx.i.i223.i to i32
  call void @__asan_store4_noabort(i32 %392)
  store i32 1360192, ptr %arrayidx.i.i223.i, align 4
  %393 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %.pr998.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit225.i

cp_ctx.exit225.i:                                 ; preds = %do.end10.i.i224.i, %cp_ctx.exit206.i.cp_ctx.exit225.i_crit_edge
  %394 = phi i32 [ %386, %cp_ctx.exit206.i.cp_ctx.exit225.i_crit_edge ], [ %.pr998.i, %do.end10.i.i224.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %394)
  %cmp.not.i227.i = icmp eq i32 %394, 1
  br i1 %cmp.not.i227.i, label %if.end.i235.i, label %cp_ctx.exit225.i.gr_def.exit236.i_crit_edge

cp_ctx.exit225.i.gr_def.exit236.i_crit_edge:      ; preds = %cp_ctx.exit225.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit236.i

if.end.i235.i:                                    ; preds = %cp_ctx.exit225.i
  call void @__sanitizer_cov_trace_pc() #7
  %395 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i229.i = sub i32 325, %396
  %397 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i231.i = add i32 %sub1.i229.i, %398
  %data.i232.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %399 = ptrtoint ptr %data.i232.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %data.i232.i, align 4
  %401 = ptrtoint ptr %400 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %400, align 8
  %wr32.i233.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %402, i32 0, i32 3
  %403 = ptrtoint ptr %wr32.i233.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %wr32.i233.i, align 4
  %mul.i234.i = shl i32 %add.i231.i, 2
  tail call void %404(ptr noundef %400, i32 noundef %mul.i234.i, i32 noundef 262144) #5
  br label %gr_def.exit236.i

gr_def.exit236.i:                                 ; preds = %if.end.i235.i, %cp_ctx.exit225.i.gr_def.exit236.i_crit_edge
  %405 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %406)
  %cmp.not.i238.i = icmp eq i32 %406, 1
  br i1 %cmp.not.i238.i, label %gr_def.exit247.i, label %gr_def.exit236.i.gr_def.exit280.i_crit_edge

gr_def.exit236.i.gr_def.exit280.i_crit_edge:      ; preds = %gr_def.exit236.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit280.i

gr_def.exit247.i:                                 ; preds = %gr_def.exit236.i
  %407 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i240.i = sub i32 329, %408
  %409 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i242.i = add i32 %sub1.i240.i, %410
  %data.i243.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %411 = ptrtoint ptr %data.i243.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %data.i243.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %412, align 8
  %wr32.i244.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %414, i32 0, i32 3
  %415 = ptrtoint ptr %wr32.i244.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %wr32.i244.i, align 4
  %mul.i245.i = shl i32 %add.i242.i, 2
  tail call void %416(ptr noundef %412, i32 noundef %mul.i245.i, i32 noundef 1431655765) #5
  %417 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %.pr999.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr999.i)
  %cmp.not.i249.i = icmp eq i32 %.pr999.i, 1
  br i1 %cmp.not.i249.i, label %gr_def.exit258.i, label %gr_def.exit247.i.gr_def.exit280.i_crit_edge

gr_def.exit247.i.gr_def.exit280.i_crit_edge:      ; preds = %gr_def.exit247.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit280.i

gr_def.exit258.i:                                 ; preds = %gr_def.exit247.i
  %418 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i251.i = sub i32 330, %419
  %420 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i253.i = add i32 %sub1.i251.i, %421
  %422 = ptrtoint ptr %data.i243.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %data.i243.i, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 8
  %wr32.i255.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %425, i32 0, i32 3
  %426 = ptrtoint ptr %wr32.i255.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %wr32.i255.i, align 4
  %mul.i256.i = shl i32 %add.i253.i, 2
  tail call void %427(ptr noundef %423, i32 noundef %mul.i256.i, i32 noundef 1431655765) #5
  %428 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %.pr1001.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1001.i)
  %cmp.not.i260.i = icmp eq i32 %.pr1001.i, 1
  br i1 %cmp.not.i260.i, label %gr_def.exit269.i, label %gr_def.exit258.i.gr_def.exit280.i_crit_edge

gr_def.exit258.i.gr_def.exit280.i_crit_edge:      ; preds = %gr_def.exit258.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit280.i

gr_def.exit269.i:                                 ; preds = %gr_def.exit258.i
  %429 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i262.i = sub i32 331, %430
  %431 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i264.i = add i32 %sub1.i262.i, %432
  %433 = ptrtoint ptr %data.i243.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %data.i243.i, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %434, align 8
  %wr32.i266.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %436, i32 0, i32 3
  %437 = ptrtoint ptr %wr32.i266.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load ptr, ptr %wr32.i266.i, align 4
  %mul.i267.i = shl i32 %add.i264.i, 2
  tail call void %438(ptr noundef %434, i32 noundef %mul.i267.i, i32 noundef 1431655765) #5
  %439 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %439)
  %.pr1003.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1003.pr.i)
  %cmp.not.i271.i = icmp eq i32 %.pr1003.pr.i, 1
  br i1 %cmp.not.i271.i, label %if.end.i279.i, label %gr_def.exit269.i.gr_def.exit280.i_crit_edge

gr_def.exit269.i.gr_def.exit280.i_crit_edge:      ; preds = %gr_def.exit269.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit280.i

if.end.i279.i:                                    ; preds = %gr_def.exit269.i
  call void @__sanitizer_cov_trace_pc() #7
  %440 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i273.i = sub i32 332, %441
  %442 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i275.i = add i32 %sub1.i273.i, %443
  %444 = ptrtoint ptr %data.i243.i to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %data.i243.i, align 4
  %446 = ptrtoint ptr %445 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %445, align 8
  %wr32.i277.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %447, i32 0, i32 3
  %448 = ptrtoint ptr %wr32.i277.i to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %wr32.i277.i, align 4
  %mul.i278.i = shl i32 %add.i275.i, 2
  tail call void %449(ptr noundef %445, i32 noundef %mul.i278.i, i32 noundef 1431655765) #5
  %450 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %.pr1005.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit280.i

gr_def.exit280.i:                                 ; preds = %if.end.i279.i, %gr_def.exit269.i.gr_def.exit280.i_crit_edge, %gr_def.exit258.i.gr_def.exit280.i_crit_edge, %gr_def.exit247.i.gr_def.exit280.i_crit_edge, %gr_def.exit236.i.gr_def.exit280.i_crit_edge
  %451 = phi i32 [ %.pr1003.pr.i, %gr_def.exit269.i.gr_def.exit280.i_crit_edge ], [ %.pr1005.i, %if.end.i279.i ], [ %.pr1001.i, %gr_def.exit258.i.gr_def.exit280.i_crit_edge ], [ %.pr999.i, %gr_def.exit247.i.gr_def.exit280.i_crit_edge ], [ %406, %gr_def.exit236.i.gr_def.exit280.i_crit_edge ]
  %452 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 344, ptr %ctxprog_reg.i.i, align 4
  %453 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load i32, ptr %ctxvals_pos.i813, align 4
  %455 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %454, ptr %ctxvals_base.i829, align 4
  %add.i284.i = add i32 %454, 6
  store i32 %add.i284.i, ptr %ctxvals_pos.i813, align 4
  %456 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %451)
  %cmp.not.i.i289.i = icmp eq i32 %451, 0
  br i1 %cmp.not.i.i289.i, label %do.body.i.i294.i, label %gr_def.exit280.i.cp_ctx.exit299.i_crit_edge

gr_def.exit280.i.cp_ctx.exit299.i_crit_edge:      ; preds = %gr_def.exit280.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit299.i

do.body.i.i294.i:                                 ; preds = %gr_def.exit280.i
  %ctxprog_len.i.i291.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %458 = ptrtoint ptr %ctxprog_len.i.i291.i to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load i32, ptr %ctxprog_len.i.i291.i, align 4
  %ctxprog_max.i.i292.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %460 = ptrtoint ptr %ctxprog_max.i.i292.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %ctxprog_max.i.i292.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %459, i32 %461)
  %cmp1.i.i293.i = icmp eq i32 %459, %461
  br i1 %cmp1.i.i293.i, label %do.body4.i.i295.i, label %do.end10.i.i298.i, !prof !9

do.body4.i.i295.i:                                ; preds = %do.body.i.i294.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i298.i:                                ; preds = %do.body.i.i294.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i296.i = add i32 %459, 1
  %462 = ptrtoint ptr %ctxprog_len.i.i291.i to i32
  call void @__asan_store4_noabort(i32 %462)
  store i32 %inc.i.i296.i, ptr %ctxprog_len.i.i291.i, align 4
  %arrayidx.i.i297.i = getelementptr i32, ptr %457, i32 %459
  %463 = ptrtoint ptr %arrayidx.i.i297.i to i32
  call void @__asan_store4_noabort(i32 %463)
  store i32 1147224, ptr %arrayidx.i.i297.i, align 4
  br label %cp_ctx.exit299.i

cp_ctx.exit299.i:                                 ; preds = %do.end10.i.i298.i, %gr_def.exit280.i.cp_ctx.exit299.i_crit_edge
  %464 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %465)
  %cmp.not.i301.i = icmp eq i32 %465, 1
  br i1 %cmp.not.i301.i, label %gr_def.exit310.i, label %cp_ctx.exit299.i.gr_def.exit321.i_crit_edge

cp_ctx.exit299.i.gr_def.exit321.i_crit_edge:      ; preds = %cp_ctx.exit299.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit321.i

gr_def.exit310.i:                                 ; preds = %cp_ctx.exit299.i
  %466 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i303.i = sub i32 346, %467
  %468 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i305.i = add i32 %sub1.i303.i, %469
  %data.i306.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %470 = ptrtoint ptr %data.i306.i to i32
  call void @__asan_load4_noabort(i32 %470)
  %471 = load ptr, ptr %data.i306.i, align 4
  %472 = ptrtoint ptr %471 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %471, align 8
  %wr32.i307.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %473, i32 0, i32 3
  %474 = ptrtoint ptr %wr32.i307.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %wr32.i307.i, align 4
  %mul.i308.i = shl i32 %add.i305.i, 2
  tail call void %475(ptr noundef %471, i32 noundef %mul.i308.i, i32 noundef 65535) #5
  %476 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %476)
  %.pr1006.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1006.i)
  %cmp.not.i312.i = icmp eq i32 %.pr1006.i, 1
  br i1 %cmp.not.i312.i, label %if.end.i320.i, label %gr_def.exit310.i.gr_def.exit321.i_crit_edge

gr_def.exit310.i.gr_def.exit321.i_crit_edge:      ; preds = %gr_def.exit310.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit321.i

if.end.i320.i:                                    ; preds = %gr_def.exit310.i
  call void @__sanitizer_cov_trace_pc() #7
  %477 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i314.i = sub i32 347, %478
  %479 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i316.i = add i32 %sub1.i314.i, %480
  %481 = ptrtoint ptr %data.i306.i to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %data.i306.i, align 4
  %483 = ptrtoint ptr %482 to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %482, align 8
  %wr32.i318.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %484, i32 0, i32 3
  %485 = ptrtoint ptr %wr32.i318.i to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %wr32.i318.i, align 4
  %mul.i319.i = shl i32 %add.i316.i, 2
  tail call void %486(ptr noundef %482, i32 noundef %mul.i319.i, i32 noundef 65535) #5
  %487 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %.pr1008.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit321.i

gr_def.exit321.i:                                 ; preds = %if.end.i320.i, %gr_def.exit310.i.gr_def.exit321.i_crit_edge, %cp_ctx.exit299.i.gr_def.exit321.i_crit_edge
  %488 = phi i32 [ %.pr1006.i, %gr_def.exit310.i.gr_def.exit321.i_crit_edge ], [ %.pr1008.i, %if.end.i320.i ], [ %465, %cp_ctx.exit299.i.gr_def.exit321.i_crit_edge ]
  %489 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %489)
  store i32 351, ptr %ctxprog_reg.i.i, align 4
  %490 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %ctxvals_pos.i813, align 4
  %492 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %492)
  store i32 %491, ptr %ctxvals_base.i829, align 4
  %add.i325.i = add i32 %491, 5
  store i32 %add.i325.i, ptr %ctxvals_pos.i813, align 4
  %493 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %488)
  %cmp.not.i.i330.i = icmp eq i32 %488, 0
  br i1 %cmp.not.i.i330.i, label %do.body.i.i335.i, label %gr_def.exit321.i.cp_ctx.exit340.i_crit_edge

gr_def.exit321.i.cp_ctx.exit340.i_crit_edge:      ; preds = %gr_def.exit321.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit340.i

do.body.i.i335.i:                                 ; preds = %gr_def.exit321.i
  %ctxprog_len.i.i332.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %495 = ptrtoint ptr %ctxprog_len.i.i332.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %ctxprog_len.i.i332.i, align 4
  %ctxprog_max.i.i333.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %497 = ptrtoint ptr %ctxprog_max.i.i333.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %ctxprog_max.i.i333.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %496, i32 %498)
  %cmp1.i.i334.i = icmp eq i32 %496, %498
  br i1 %cmp1.i.i334.i, label %do.body4.i.i336.i, label %do.end10.i.i339.i, !prof !9

do.body4.i.i336.i:                                ; preds = %do.body.i.i335.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i339.i:                                ; preds = %do.body.i.i335.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i337.i = add i32 %496, 1
  %499 = ptrtoint ptr %ctxprog_len.i.i332.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %inc.i.i337.i, ptr %ctxprog_len.i.i332.i, align 4
  %arrayidx.i.i338.i = getelementptr i32, ptr %494, i32 %496
  %500 = ptrtoint ptr %arrayidx.i.i338.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 1130847, ptr %arrayidx.i.i338.i, align 4
  br label %cp_ctx.exit340.i

cp_ctx.exit340.i:                                 ; preds = %do.end10.i.i339.i, %gr_def.exit321.i.cp_ctx.exit340.i_crit_edge
  %501 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 452, ptr %ctxprog_reg.i.i, align 4
  %502 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load i32, ptr %ctxvals_pos.i813, align 4
  %504 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 %503, ptr %ctxvals_base.i829, align 4
  %add.i344.i = add i32 %503, 3
  store i32 %add.i344.i, ptr %ctxvals_pos.i813, align 4
  %505 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %ucode.i.i, align 4
  %507 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %508)
  %cmp.not.i.i349.i = icmp eq i32 %508, 0
  br i1 %cmp.not.i.i349.i, label %do.body.i.i354.i, label %cp_ctx.exit340.i.cp_ctx.exit359.i_crit_edge

cp_ctx.exit340.i.cp_ctx.exit359.i_crit_edge:      ; preds = %cp_ctx.exit340.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit359.i

do.body.i.i354.i:                                 ; preds = %cp_ctx.exit340.i
  %ctxprog_len.i.i351.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %509 = ptrtoint ptr %ctxprog_len.i.i351.i to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load i32, ptr %ctxprog_len.i.i351.i, align 4
  %ctxprog_max.i.i352.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %511 = ptrtoint ptr %ctxprog_max.i.i352.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %ctxprog_max.i.i352.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %510, i32 %512)
  %cmp1.i.i353.i = icmp eq i32 %510, %512
  br i1 %cmp1.i.i353.i, label %do.body4.i.i355.i, label %do.end10.i.i358.i, !prof !9

do.body4.i.i355.i:                                ; preds = %do.body.i.i354.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i358.i:                                ; preds = %do.body.i.i354.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i356.i = add i32 %510, 1
  %513 = ptrtoint ptr %ctxprog_len.i.i351.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 %inc.i.i356.i, ptr %ctxprog_len.i.i351.i, align 4
  %arrayidx.i.i357.i = getelementptr i32, ptr %506, i32 %510
  %514 = ptrtoint ptr %arrayidx.i.i357.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 1098180, ptr %arrayidx.i.i357.i, align 4
  %515 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %515)
  %.pr1009.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit359.i

cp_ctx.exit359.i:                                 ; preds = %do.end10.i.i358.i, %cp_ctx.exit340.i.cp_ctx.exit359.i_crit_edge
  %516 = phi i32 [ %508, %cp_ctx.exit340.i.cp_ctx.exit359.i_crit_edge ], [ %.pr1009.i, %do.end10.i.i358.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %516)
  %cmp.not.i361.i = icmp eq i32 %516, 1
  br i1 %cmp.not.i361.i, label %if.end.i369.i, label %cp_ctx.exit359.i.gr_def.exit370.i_crit_edge

cp_ctx.exit359.i.gr_def.exit370.i_crit_edge:      ; preds = %cp_ctx.exit359.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit370.i

if.end.i369.i:                                    ; preds = %cp_ctx.exit359.i
  call void @__sanitizer_cov_trace_pc() #7
  %517 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i363.i = sub i32 452, %518
  %519 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i365.i = add i32 %sub1.i363.i, %520
  %data.i366.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %521 = ptrtoint ptr %data.i366.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %data.i366.i, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %522, align 8
  %wr32.i367.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %524, i32 0, i32 3
  %525 = ptrtoint ptr %wr32.i367.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load ptr, ptr %wr32.i367.i, align 4
  %mul.i368.i = shl i32 %add.i365.i, 2
  tail call void %526(ptr noundef %522, i32 noundef %mul.i368.i, i32 noundef 536936449) #5
  br label %gr_def.exit370.i

gr_def.exit370.i:                                 ; preds = %if.end.i369.i, %cp_ctx.exit359.i.gr_def.exit370.i_crit_edge
  %527 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %528)
  %cmp.not.i372.i = icmp eq i32 %528, 1
  br i1 %cmp.not.i372.i, label %if.end.i380.i, label %gr_def.exit370.i.gr_def.exit381.i_crit_edge

gr_def.exit370.i.gr_def.exit381.i_crit_edge:      ; preds = %gr_def.exit370.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit381.i

if.end.i380.i:                                    ; preds = %gr_def.exit370.i
  call void @__sanitizer_cov_trace_pc() #7
  %529 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i374.i = sub i32 453, %530
  %531 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i376.i = add i32 %sub1.i374.i, %532
  %data.i377.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %533 = ptrtoint ptr %data.i377.i to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load ptr, ptr %data.i377.i, align 4
  %535 = ptrtoint ptr %534 to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load ptr, ptr %534, align 8
  %wr32.i378.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %536, i32 0, i32 3
  %537 = ptrtoint ptr %wr32.i378.i to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load ptr, ptr %wr32.i378.i, align 4
  %mul.i379.i = shl i32 %add.i376.i, 2
  tail call void %538(ptr noundef %534, i32 noundef %mul.i379.i, i32 noundef 259256064) #5
  %539 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %.pr1010.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit381.i

gr_def.exit381.i:                                 ; preds = %if.end.i380.i, %gr_def.exit370.i.gr_def.exit381.i_crit_edge
  %540 = phi i32 [ %528, %gr_def.exit370.i.gr_def.exit381.i_crit_edge ], [ %.pr1010.i, %if.end.i380.i ]
  %541 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 457, ptr %ctxprog_reg.i.i, align 4
  %542 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %ctxvals_pos.i813, align 4
  %544 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %544)
  store i32 %543, ptr %ctxvals_base.i829, align 4
  %add.i385.i = add i32 %543, 1
  store i32 %add.i385.i, ptr %ctxvals_pos.i813, align 4
  %545 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %540)
  %cmp.not.i.i390.i = icmp eq i32 %540, 0
  br i1 %cmp.not.i.i390.i, label %do.body.i.i395.i, label %gr_def.exit381.i.cp_ctx.exit400.i_crit_edge

gr_def.exit381.i.cp_ctx.exit400.i_crit_edge:      ; preds = %gr_def.exit381.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit400.i

do.body.i.i395.i:                                 ; preds = %gr_def.exit381.i
  %ctxprog_len.i.i392.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %547 = ptrtoint ptr %ctxprog_len.i.i392.i to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load i32, ptr %ctxprog_len.i.i392.i, align 4
  %ctxprog_max.i.i393.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %549 = ptrtoint ptr %ctxprog_max.i.i393.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %ctxprog_max.i.i393.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %548, i32 %550)
  %cmp1.i.i394.i = icmp eq i32 %548, %550
  br i1 %cmp1.i.i394.i, label %do.body4.i.i396.i, label %do.end10.i.i399.i, !prof !9

do.body4.i.i396.i:                                ; preds = %do.body.i.i395.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i399.i:                                ; preds = %do.body.i.i395.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i397.i = add i32 %548, 1
  %551 = ptrtoint ptr %ctxprog_len.i.i392.i to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %inc.i.i397.i, ptr %ctxprog_len.i.i392.i, align 4
  %arrayidx.i.i398.i = getelementptr i32, ptr %546, i32 %548
  %552 = ptrtoint ptr %arrayidx.i.i398.i to i32
  call void @__asan_store4_noabort(i32 %552)
  store i32 1065417, ptr %arrayidx.i.i398.i, align 4
  br label %cp_ctx.exit400.i

cp_ctx.exit400.i:                                 ; preds = %do.end10.i.i399.i, %gr_def.exit381.i.cp_ctx.exit400.i_crit_edge
  %553 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %554)
  %cmp.not.i402.i = icmp eq i32 %554, 1
  br i1 %cmp.not.i402.i, label %if.end.i410.i, label %cp_ctx.exit400.i.gr_def.exit411.i_crit_edge

cp_ctx.exit400.i.gr_def.exit411.i_crit_edge:      ; preds = %cp_ctx.exit400.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit411.i

if.end.i410.i:                                    ; preds = %cp_ctx.exit400.i
  call void @__sanitizer_cov_trace_pc() #7
  %555 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i404.i = sub i32 457, %556
  %557 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %557)
  %558 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i406.i = add i32 %sub1.i404.i, %558
  %data.i407.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %559 = ptrtoint ptr %data.i407.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load ptr, ptr %data.i407.i, align 4
  %561 = ptrtoint ptr %560 to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load ptr, ptr %560, align 8
  %wr32.i408.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %562, i32 0, i32 3
  %563 = ptrtoint ptr %wr32.i408.i to i32
  call void @__asan_load4_noabort(i32 %563)
  %564 = load ptr, ptr %wr32.i408.i, align 4
  %mul.i409.i = shl i32 %add.i406.i, 2
  tail call void %564(ptr noundef %560, i32 noundef %mul.i409.i, i32 noundef 33589281) #5
  %565 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %565)
  %.pr1011.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit411.i

gr_def.exit411.i:                                 ; preds = %if.end.i410.i, %cp_ctx.exit400.i.gr_def.exit411.i_crit_edge
  %566 = phi i32 [ %554, %cp_ctx.exit400.i.gr_def.exit411.i_crit_edge ], [ %.pr1011.i, %if.end.i410.i ]
  %567 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %567)
  store i32 476, ptr %ctxprog_reg.i.i, align 4
  %568 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %ctxvals_pos.i813, align 4
  %570 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %570)
  store i32 %569, ptr %ctxvals_base.i829, align 4
  %add.i415.i = add i32 %569, 3
  store i32 %add.i415.i, ptr %ctxvals_pos.i813, align 4
  %571 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %566)
  %cmp.not.i.i420.i = icmp eq i32 %566, 0
  br i1 %cmp.not.i.i420.i, label %do.body.i.i425.i, label %gr_def.exit411.i.cp_ctx.exit430.i_crit_edge

gr_def.exit411.i.cp_ctx.exit430.i_crit_edge:      ; preds = %gr_def.exit411.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit430.i

do.body.i.i425.i:                                 ; preds = %gr_def.exit411.i
  %ctxprog_len.i.i422.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %573 = ptrtoint ptr %ctxprog_len.i.i422.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %ctxprog_len.i.i422.i, align 4
  %ctxprog_max.i.i423.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %575 = ptrtoint ptr %ctxprog_max.i.i423.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %ctxprog_max.i.i423.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %574, i32 %576)
  %cmp1.i.i424.i = icmp eq i32 %574, %576
  br i1 %cmp1.i.i424.i, label %do.body4.i.i426.i, label %do.end10.i.i429.i, !prof !9

do.body4.i.i426.i:                                ; preds = %do.body.i.i425.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i429.i:                                ; preds = %do.body.i.i425.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i427.i = add i32 %574, 1
  %577 = ptrtoint ptr %ctxprog_len.i.i422.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %inc.i.i427.i, ptr %ctxprog_len.i.i422.i, align 4
  %arrayidx.i.i428.i = getelementptr i32, ptr %572, i32 %574
  %578 = ptrtoint ptr %arrayidx.i.i428.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 1098204, ptr %arrayidx.i.i428.i, align 4
  br label %cp_ctx.exit430.i

cp_ctx.exit430.i:                                 ; preds = %do.end10.i.i429.i, %gr_def.exit411.i.cp_ctx.exit430.i_crit_edge
  %chipset.i = getelementptr inbounds %struct.nvkm_device, ptr %272, i32 0, i32 16
  %579 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %579)
  %580 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %580)
  %cmp.i = icmp eq i32 %580, 64
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cp_ctx.exit430.i
  %581 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 517, ptr %ctxprog_reg.i.i, align 4
  %582 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %ctxvals_pos.i813, align 4
  %584 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 %583, ptr %ctxvals_base.i829, align 4
  %add.i434.i = add i32 %583, 4
  store i32 %add.i434.i, ptr %ctxvals_pos.i813, align 4
  %585 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load ptr, ptr %ucode.i.i, align 4
  %587 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %588)
  %cmp.not.i.i439.i = icmp eq i32 %588, 0
  br i1 %cmp.not.i.i439.i, label %do.body.i.i444.i, label %if.then.i.cp_ctx.exit449.i_crit_edge

if.then.i.cp_ctx.exit449.i_crit_edge:             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit449.i

do.body.i.i444.i:                                 ; preds = %if.then.i
  %ctxprog_len.i.i441.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %589 = ptrtoint ptr %ctxprog_len.i.i441.i to i32
  call void @__asan_load4_noabort(i32 %589)
  %590 = load i32, ptr %ctxprog_len.i.i441.i, align 4
  %ctxprog_max.i.i442.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %591 = ptrtoint ptr %ctxprog_max.i.i442.i to i32
  call void @__asan_load4_noabort(i32 %591)
  %592 = load i32, ptr %ctxprog_max.i.i442.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %590, i32 %592)
  %cmp1.i.i443.i = icmp eq i32 %590, %592
  br i1 %cmp1.i.i443.i, label %do.body4.i.i445.i, label %do.end10.i.i448.i, !prof !9

do.body4.i.i445.i:                                ; preds = %do.body.i.i444.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i448.i:                                ; preds = %do.body.i.i444.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i446.i = add i32 %590, 1
  %593 = ptrtoint ptr %ctxprog_len.i.i441.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 %inc.i.i446.i, ptr %ctxprog_len.i.i441.i, align 4
  %arrayidx.i.i447.i = getelementptr i32, ptr %586, i32 %590
  %594 = ptrtoint ptr %arrayidx.i.i447.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 1114629, ptr %arrayidx.i.i447.i, align 4
  %595 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %.pr1012.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit449.i

cp_ctx.exit449.i:                                 ; preds = %do.end10.i.i448.i, %if.then.i.cp_ctx.exit449.i_crit_edge
  %596 = phi i32 [ %588, %if.then.i.cp_ctx.exit449.i_crit_edge ], [ %.pr1012.i, %do.end10.i.i448.i ]
  %597 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %597)
  store i32 522, ptr %ctxprog_reg.i.i, align 4
  %598 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %ctxvals_pos.i813, align 4
  %600 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %600)
  store i32 %599, ptr %ctxvals_base.i829, align 4
  %add.i453.i = add i32 %599, 5
  store i32 %add.i453.i, ptr %ctxvals_pos.i813, align 4
  %601 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %596)
  %cmp.not.i.i458.i = icmp eq i32 %596, 0
  br i1 %cmp.not.i.i458.i, label %do.body.i.i463.i, label %cp_ctx.exit449.i.cp_ctx.exit468.i_crit_edge

cp_ctx.exit449.i.cp_ctx.exit468.i_crit_edge:      ; preds = %cp_ctx.exit449.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit468.i

do.body.i.i463.i:                                 ; preds = %cp_ctx.exit449.i
  %ctxprog_len.i.i460.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %603 = ptrtoint ptr %ctxprog_len.i.i460.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %ctxprog_len.i.i460.i, align 4
  %ctxprog_max.i.i461.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %605 = ptrtoint ptr %ctxprog_max.i.i461.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %ctxprog_max.i.i461.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %604, i32 %606)
  %cmp1.i.i462.i = icmp eq i32 %604, %606
  br i1 %cmp1.i.i462.i, label %do.body4.i.i464.i, label %do.end10.i.i467.i, !prof !9

do.body4.i.i464.i:                                ; preds = %do.body.i.i463.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i467.i:                                ; preds = %do.body.i.i463.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i465.i = add i32 %604, 1
  %607 = ptrtoint ptr %ctxprog_len.i.i460.i to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 %inc.i.i465.i, ptr %ctxprog_len.i.i460.i, align 4
  %arrayidx.i.i466.i = getelementptr i32, ptr %602, i32 %604
  %608 = ptrtoint ptr %arrayidx.i.i466.i to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 1131018, ptr %arrayidx.i.i466.i, align 4
  br label %cp_ctx.exit468.i

cp_ctx.exit468.i:                                 ; preds = %do.end10.i.i467.i, %cp_ctx.exit449.i.cp_ctx.exit468.i_crit_edge
  %609 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %609)
  store i32 528, ptr %ctxprog_reg.i.i, align 4
  %610 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %ctxvals_pos.i813, align 4
  %612 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %612)
  store i32 %611, ptr %ctxvals_base.i829, align 4
  %add.i472.i = add i32 %611, 5
  store i32 %add.i472.i, ptr %ctxvals_pos.i813, align 4
  %613 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %ucode.i.i, align 4
  %615 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %616)
  %cmp.not.i.i477.i = icmp eq i32 %616, 0
  br i1 %cmp.not.i.i477.i, label %do.body.i.i482.i, label %cp_ctx.exit468.i.cp_ctx.exit487.i_crit_edge

cp_ctx.exit468.i.cp_ctx.exit487.i_crit_edge:      ; preds = %cp_ctx.exit468.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit487.i

do.body.i.i482.i:                                 ; preds = %cp_ctx.exit468.i
  %ctxprog_len.i.i479.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %617 = ptrtoint ptr %ctxprog_len.i.i479.i to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %ctxprog_len.i.i479.i, align 4
  %ctxprog_max.i.i480.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %619 = ptrtoint ptr %ctxprog_max.i.i480.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %ctxprog_max.i.i480.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %618, i32 %620)
  %cmp1.i.i481.i = icmp eq i32 %618, %620
  br i1 %cmp1.i.i481.i, label %do.body4.i.i483.i, label %do.end10.i.i486.i, !prof !9

do.body4.i.i483.i:                                ; preds = %do.body.i.i482.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i486.i:                                ; preds = %do.body.i.i482.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i484.i = add i32 %618, 1
  %621 = ptrtoint ptr %ctxprog_len.i.i479.i to i32
  call void @__asan_store4_noabort(i32 %621)
  store i32 %inc.i.i484.i, ptr %ctxprog_len.i.i479.i, align 4
  %arrayidx.i.i485.i = getelementptr i32, ptr %614, i32 %618
  %622 = ptrtoint ptr %arrayidx.i.i485.i to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 1131024, ptr %arrayidx.i.i485.i, align 4
  %623 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %.pr1013.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit487.i

cp_ctx.exit487.i:                                 ; preds = %do.end10.i.i486.i, %cp_ctx.exit468.i.cp_ctx.exit487.i_crit_edge
  %624 = phi i32 [ %616, %cp_ctx.exit468.i.cp_ctx.exit487.i_crit_edge ], [ %.pr1013.i, %do.end10.i.i486.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %624)
  %cmp.not.i489.i = icmp eq i32 %624, 1
  br i1 %cmp.not.i489.i, label %if.end.i497.i, label %cp_ctx.exit487.i.gr_def.exit498.i_crit_edge

cp_ctx.exit487.i.gr_def.exit498.i_crit_edge:      ; preds = %cp_ctx.exit487.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit498.i

if.end.i497.i:                                    ; preds = %cp_ctx.exit487.i
  call void @__sanitizer_cov_trace_pc() #7
  %625 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i491.i = sub i32 532, %626
  %627 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i493.i = add i32 %sub1.i491.i, %628
  %data.i494.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %629 = ptrtoint ptr %data.i494.i to i32
  call void @__asan_load4_noabort(i32 %629)
  %630 = load ptr, ptr %data.i494.i, align 4
  %631 = ptrtoint ptr %630 to i32
  call void @__asan_load4_noabort(i32 %631)
  %632 = load ptr, ptr %630, align 8
  %wr32.i495.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %632, i32 0, i32 3
  %633 = ptrtoint ptr %wr32.i495.i to i32
  call void @__asan_load4_noabort(i32 %633)
  %634 = load ptr, ptr %wr32.i495.i, align 4
  %mul.i496.i = shl i32 %add.i493.i, 2
  tail call void %634(ptr noundef %630, i32 noundef %mul.i496.i, i32 noundef 64) #5
  br label %gr_def.exit498.i

gr_def.exit498.i:                                 ; preds = %if.end.i497.i, %cp_ctx.exit487.i.gr_def.exit498.i_crit_edge
  %635 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 534, ptr %ctxprog_reg.i.i, align 4
  %636 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %ctxvals_pos.i813, align 4
  %638 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %638)
  store i32 %637, ptr %ctxvals_base.i829, align 4
  %add.i502.i = add i32 %637, 4
  store i32 %add.i502.i, ptr %ctxvals_pos.i813, align 4
  %639 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load ptr, ptr %ucode.i.i, align 4
  %641 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %641)
  %642 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %642)
  %cmp.not.i.i507.i = icmp eq i32 %642, 0
  br i1 %cmp.not.i.i507.i, label %do.body.i.i512.i, label %gr_def.exit498.i.cp_ctx.exit517.i_crit_edge

gr_def.exit498.i.cp_ctx.exit517.i_crit_edge:      ; preds = %gr_def.exit498.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit517.i

do.body.i.i512.i:                                 ; preds = %gr_def.exit498.i
  %ctxprog_len.i.i509.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %643 = ptrtoint ptr %ctxprog_len.i.i509.i to i32
  call void @__asan_load4_noabort(i32 %643)
  %644 = load i32, ptr %ctxprog_len.i.i509.i, align 4
  %ctxprog_max.i.i510.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %645 = ptrtoint ptr %ctxprog_max.i.i510.i to i32
  call void @__asan_load4_noabort(i32 %645)
  %646 = load i32, ptr %ctxprog_max.i.i510.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %644, i32 %646)
  %cmp1.i.i511.i = icmp eq i32 %644, %646
  br i1 %cmp1.i.i511.i, label %do.body4.i.i513.i, label %do.end10.i.i516.i, !prof !9

do.body4.i.i513.i:                                ; preds = %do.body.i.i512.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i516.i:                                ; preds = %do.body.i.i512.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i514.i = add i32 %644, 1
  %647 = ptrtoint ptr %ctxprog_len.i.i509.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 %inc.i.i514.i, ptr %ctxprog_len.i.i509.i, align 4
  %arrayidx.i.i515.i = getelementptr i32, ptr %640, i32 %644
  %648 = ptrtoint ptr %arrayidx.i.i515.i to i32
  call void @__asan_store4_noabort(i32 %648)
  store i32 1114646, ptr %arrayidx.i.i515.i, align 4
  %649 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %649)
  %.pr1014.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit517.i

cp_ctx.exit517.i:                                 ; preds = %do.end10.i.i516.i, %gr_def.exit498.i.cp_ctx.exit517.i_crit_edge
  %650 = phi i32 [ %642, %gr_def.exit498.i.cp_ctx.exit517.i_crit_edge ], [ %.pr1014.i, %do.end10.i.i516.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %650)
  %cmp.not.i519.i = icmp eq i32 %650, 1
  br i1 %cmp.not.i519.i, label %if.end.i527.i, label %cp_ctx.exit517.i.gr_def.exit528.i_crit_edge

cp_ctx.exit517.i.gr_def.exit528.i_crit_edge:      ; preds = %cp_ctx.exit517.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit528.i

if.end.i527.i:                                    ; preds = %cp_ctx.exit517.i
  call void @__sanitizer_cov_trace_pc() #7
  %651 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %651)
  %652 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i521.i = sub i32 534, %652
  %653 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %653)
  %654 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i523.i = add i32 %sub1.i521.i, %654
  %data.i524.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %655 = ptrtoint ptr %data.i524.i to i32
  call void @__asan_load4_noabort(i32 %655)
  %656 = load ptr, ptr %data.i524.i, align 4
  %657 = ptrtoint ptr %656 to i32
  call void @__asan_load4_noabort(i32 %657)
  %658 = load ptr, ptr %656, align 8
  %wr32.i525.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %658, i32 0, i32 3
  %659 = ptrtoint ptr %wr32.i525.i to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %wr32.i525.i, align 4
  %mul.i526.i = shl i32 %add.i523.i, 2
  tail call void %660(ptr noundef %656, i32 noundef %mul.i526.i, i32 noundef 64) #5
  br label %gr_def.exit528.i

gr_def.exit528.i:                                 ; preds = %if.end.i527.i, %cp_ctx.exit517.i.gr_def.exit528.i_crit_edge
  %661 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %662)
  %cmp.not.i530.i = icmp eq i32 %662, 1
  br i1 %cmp.not.i530.i, label %gr_def.exit539.i, label %gr_def.exit528.i.gr_def.exit550.i_crit_edge

gr_def.exit528.i.gr_def.exit550.i_crit_edge:      ; preds = %gr_def.exit528.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit550.i

gr_def.exit539.i:                                 ; preds = %gr_def.exit528.i
  %663 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i532.i = sub i32 535, %664
  %665 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i534.i = add i32 %sub1.i532.i, %666
  %data.i535.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %667 = ptrtoint ptr %data.i535.i to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %data.i535.i, align 4
  %669 = ptrtoint ptr %668 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %668, align 8
  %wr32.i536.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %670, i32 0, i32 3
  %671 = ptrtoint ptr %wr32.i536.i to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %wr32.i536.i, align 4
  %mul.i537.i = shl i32 %add.i534.i, 2
  tail call void %672(ptr noundef %668, i32 noundef %mul.i537.i, i32 noundef 64) #5
  %673 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %673)
  %.pr1015.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1015.i)
  %cmp.not.i541.i = icmp eq i32 %.pr1015.i, 1
  br i1 %cmp.not.i541.i, label %if.end.i549.i, label %gr_def.exit539.i.gr_def.exit550.i_crit_edge

gr_def.exit539.i.gr_def.exit550.i_crit_edge:      ; preds = %gr_def.exit539.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit550.i

if.end.i549.i:                                    ; preds = %gr_def.exit539.i
  call void @__sanitizer_cov_trace_pc() #7
  %674 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i543.i = sub i32 537, %675
  %676 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i545.i = add i32 %sub1.i543.i, %677
  %678 = ptrtoint ptr %data.i535.i to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %data.i535.i, align 4
  %680 = ptrtoint ptr %679 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load ptr, ptr %679, align 8
  %wr32.i547.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %681, i32 0, i32 3
  %682 = ptrtoint ptr %wr32.i547.i to i32
  call void @__asan_load4_noabort(i32 %682)
  %683 = load ptr, ptr %wr32.i547.i, align 4
  %mul.i548.i = shl i32 %add.i545.i, 2
  tail call void %683(ptr noundef %679, i32 noundef %mul.i548.i, i32 noundef -2147483648) #5
  %684 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %684)
  %.pr1017.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit550.i

gr_def.exit550.i:                                 ; preds = %if.end.i549.i, %gr_def.exit539.i.gr_def.exit550.i_crit_edge, %gr_def.exit528.i.gr_def.exit550.i_crit_edge
  %685 = phi i32 [ %.pr1015.i, %gr_def.exit539.i.gr_def.exit550.i_crit_edge ], [ %.pr1017.i, %if.end.i549.i ], [ %662, %gr_def.exit528.i.gr_def.exit550.i_crit_edge ]
  %686 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %686)
  store i32 539, ptr %ctxprog_reg.i.i, align 4
  %687 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load i32, ptr %ctxvals_pos.i813, align 4
  %689 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 %688, ptr %ctxvals_base.i829, align 4
  %add.i554.i = add i32 %688, 9
  store i32 %add.i554.i, ptr %ctxvals_pos.i813, align 4
  %690 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %685)
  %cmp.not.i.i559.i = icmp eq i32 %685, 0
  br i1 %cmp.not.i.i559.i, label %do.body.i.i564.i, label %gr_def.exit550.i.cp_ctx.exit569.i_crit_edge

gr_def.exit550.i.cp_ctx.exit569.i_crit_edge:      ; preds = %gr_def.exit550.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit569.i

do.body.i.i564.i:                                 ; preds = %gr_def.exit550.i
  %ctxprog_len.i.i561.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %692 = ptrtoint ptr %ctxprog_len.i.i561.i to i32
  call void @__asan_load4_noabort(i32 %692)
  %693 = load i32, ptr %ctxprog_len.i.i561.i, align 4
  %ctxprog_max.i.i562.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %694 = ptrtoint ptr %ctxprog_max.i.i562.i to i32
  call void @__asan_load4_noabort(i32 %694)
  %695 = load i32, ptr %ctxprog_max.i.i562.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %693, i32 %695)
  %cmp1.i.i563.i = icmp eq i32 %693, %695
  br i1 %cmp1.i.i563.i, label %do.body4.i.i565.i, label %do.end10.i.i568.i, !prof !9

do.body4.i.i565.i:                                ; preds = %do.body.i.i564.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i568.i:                                ; preds = %do.body.i.i564.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i566.i = add i32 %693, 1
  %696 = ptrtoint ptr %ctxprog_len.i.i561.i to i32
  call void @__asan_store4_noabort(i32 %696)
  store i32 %inc.i.i566.i, ptr %ctxprog_len.i.i561.i, align 4
  %arrayidx.i.i567.i = getelementptr i32, ptr %691, i32 %693
  %697 = ptrtoint ptr %arrayidx.i.i567.i to i32
  call void @__asan_store4_noabort(i32 %697)
  store i32 1196571, ptr %arrayidx.i.i567.i, align 4
  br label %cp_ctx.exit569.i

cp_ctx.exit569.i:                                 ; preds = %do.end10.i.i568.i, %gr_def.exit550.i.cp_ctx.exit569.i_crit_edge
  %698 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %698)
  %699 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %699)
  %cmp.not.i571.i = icmp eq i32 %699, 1
  br i1 %cmp.not.i571.i, label %gr_def.exit580.i, label %cp_ctx.exit569.i.gr_def.exit635.i_crit_edge

cp_ctx.exit569.i.gr_def.exit635.i_crit_edge:      ; preds = %cp_ctx.exit569.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

gr_def.exit580.i:                                 ; preds = %cp_ctx.exit569.i
  %700 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %700)
  %701 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i573.i = sub i32 539, %701
  %702 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %702)
  %703 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i575.i = add i32 %sub1.i573.i, %703
  %data.i576.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %704 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %data.i576.i, align 4
  %706 = ptrtoint ptr %705 to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %705, align 8
  %wr32.i577.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %707, i32 0, i32 3
  %708 = ptrtoint ptr %wr32.i577.i to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %wr32.i577.i, align 4
  %mul.i578.i = shl i32 %add.i575.i, 2
  tail call void %709(ptr noundef %705, i32 noundef %mul.i578.i, i32 noundef -2147483648) #5
  %710 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %.pr1018.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1018.i)
  %cmp.not.i582.i = icmp eq i32 %.pr1018.i, 1
  br i1 %cmp.not.i582.i, label %gr_def.exit591.i, label %gr_def.exit580.i.gr_def.exit635.i_crit_edge

gr_def.exit580.i.gr_def.exit635.i_crit_edge:      ; preds = %gr_def.exit580.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

gr_def.exit591.i:                                 ; preds = %gr_def.exit580.i
  %711 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %711)
  %712 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i584.i = sub i32 540, %712
  %713 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i586.i = add i32 %sub1.i584.i, %714
  %715 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load ptr, ptr %data.i576.i, align 4
  %717 = ptrtoint ptr %716 to i32
  call void @__asan_load4_noabort(i32 %717)
  %718 = load ptr, ptr %716, align 8
  %wr32.i588.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %718, i32 0, i32 3
  %719 = ptrtoint ptr %wr32.i588.i to i32
  call void @__asan_load4_noabort(i32 %719)
  %720 = load ptr, ptr %wr32.i588.i, align 4
  %mul.i589.i = shl i32 %add.i586.i, 2
  tail call void %720(ptr noundef %716, i32 noundef %mul.i589.i, i32 noundef -2147483648) #5
  %721 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %721)
  %.pr1020.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1020.i)
  %cmp.not.i593.i = icmp eq i32 %.pr1020.i, 1
  br i1 %cmp.not.i593.i, label %gr_def.exit602.i, label %gr_def.exit591.i.gr_def.exit635.i_crit_edge

gr_def.exit591.i.gr_def.exit635.i_crit_edge:      ; preds = %gr_def.exit591.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

gr_def.exit602.i:                                 ; preds = %gr_def.exit591.i
  %722 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %722)
  %723 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i595.i = sub i32 541, %723
  %724 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %724)
  %725 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i597.i = add i32 %sub1.i595.i, %725
  %726 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load ptr, ptr %data.i576.i, align 4
  %728 = ptrtoint ptr %727 to i32
  call void @__asan_load4_noabort(i32 %728)
  %729 = load ptr, ptr %727, align 8
  %wr32.i599.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %729, i32 0, i32 3
  %730 = ptrtoint ptr %wr32.i599.i to i32
  call void @__asan_load4_noabort(i32 %730)
  %731 = load ptr, ptr %wr32.i599.i, align 4
  %mul.i600.i = shl i32 %add.i597.i, 2
  tail call void %731(ptr noundef %727, i32 noundef %mul.i600.i, i32 noundef -2147483648) #5
  %732 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %732)
  %.pr1022.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1022.pr.i)
  %cmp.not.i604.i = icmp eq i32 %.pr1022.pr.i, 1
  br i1 %cmp.not.i604.i, label %gr_def.exit613.i, label %gr_def.exit602.i.gr_def.exit635.i_crit_edge

gr_def.exit602.i.gr_def.exit635.i_crit_edge:      ; preds = %gr_def.exit602.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

gr_def.exit613.i:                                 ; preds = %gr_def.exit602.i
  %733 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %733)
  %734 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i606.i = sub i32 542, %734
  %735 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %735)
  %736 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i608.i = add i32 %sub1.i606.i, %736
  %737 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %737)
  %738 = load ptr, ptr %data.i576.i, align 4
  %739 = ptrtoint ptr %738 to i32
  call void @__asan_load4_noabort(i32 %739)
  %740 = load ptr, ptr %738, align 8
  %wr32.i610.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %740, i32 0, i32 3
  %741 = ptrtoint ptr %wr32.i610.i to i32
  call void @__asan_load4_noabort(i32 %741)
  %742 = load ptr, ptr %wr32.i610.i, align 4
  %mul.i611.i = shl i32 %add.i608.i, 2
  tail call void %742(ptr noundef %738, i32 noundef %mul.i611.i, i32 noundef -2147483648) #5
  %743 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %743)
  %.pr1024.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1024.i)
  %cmp.not.i615.i = icmp eq i32 %.pr1024.i, 1
  br i1 %cmp.not.i615.i, label %gr_def.exit624.i, label %gr_def.exit613.i.gr_def.exit635.i_crit_edge

gr_def.exit613.i.gr_def.exit635.i_crit_edge:      ; preds = %gr_def.exit613.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

gr_def.exit624.i:                                 ; preds = %gr_def.exit613.i
  %744 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %744)
  %745 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i617.i = sub i32 546, %745
  %746 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %746)
  %747 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i619.i = add i32 %sub1.i617.i, %747
  %748 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %748)
  %749 = load ptr, ptr %data.i576.i, align 4
  %750 = ptrtoint ptr %749 to i32
  call void @__asan_load4_noabort(i32 %750)
  %751 = load ptr, ptr %749, align 8
  %wr32.i621.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %751, i32 0, i32 3
  %752 = ptrtoint ptr %wr32.i621.i to i32
  call void @__asan_load4_noabort(i32 %752)
  %753 = load ptr, ptr %wr32.i621.i, align 4
  %mul.i622.i = shl i32 %add.i619.i, 2
  tail call void %753(ptr noundef %749, i32 noundef %mul.i622.i, i32 noundef 64) #5
  %754 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %754)
  %.pr1026.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1026.pr.pr.i)
  %cmp.not.i626.i = icmp eq i32 %.pr1026.pr.pr.i, 1
  br i1 %cmp.not.i626.i, label %if.end.i634.i, label %gr_def.exit624.i.gr_def.exit635.i_crit_edge

gr_def.exit624.i.gr_def.exit635.i_crit_edge:      ; preds = %gr_def.exit624.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit635.i

if.end.i634.i:                                    ; preds = %gr_def.exit624.i
  call void @__sanitizer_cov_trace_pc() #7
  %755 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %755)
  %756 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i628.i = sub i32 547, %756
  %757 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %757)
  %758 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i630.i = add i32 %sub1.i628.i, %758
  %759 = ptrtoint ptr %data.i576.i to i32
  call void @__asan_load4_noabort(i32 %759)
  %760 = load ptr, ptr %data.i576.i, align 4
  %761 = ptrtoint ptr %760 to i32
  call void @__asan_load4_noabort(i32 %761)
  %762 = load ptr, ptr %760, align 8
  %wr32.i632.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %762, i32 0, i32 3
  %763 = ptrtoint ptr %wr32.i632.i to i32
  call void @__asan_load4_noabort(i32 %763)
  %764 = load ptr, ptr %wr32.i632.i, align 4
  %mul.i633.i = shl i32 %add.i630.i, 2
  tail call void %764(ptr noundef %760, i32 noundef %mul.i633.i, i32 noundef -2147483648) #5
  %765 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %765)
  %.pr1028.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit635.i

gr_def.exit635.i:                                 ; preds = %if.end.i634.i, %gr_def.exit624.i.gr_def.exit635.i_crit_edge, %gr_def.exit613.i.gr_def.exit635.i_crit_edge, %gr_def.exit602.i.gr_def.exit635.i_crit_edge, %gr_def.exit591.i.gr_def.exit635.i_crit_edge, %gr_def.exit580.i.gr_def.exit635.i_crit_edge, %cp_ctx.exit569.i.gr_def.exit635.i_crit_edge
  %766 = phi i32 [ %.pr1026.pr.pr.i, %gr_def.exit624.i.gr_def.exit635.i_crit_edge ], [ %.pr1028.i, %if.end.i634.i ], [ %.pr1024.i, %gr_def.exit613.i.gr_def.exit635.i_crit_edge ], [ %.pr1022.pr.i, %gr_def.exit602.i.gr_def.exit635.i_crit_edge ], [ %.pr1020.i, %gr_def.exit591.i.gr_def.exit635.i_crit_edge ], [ %699, %cp_ctx.exit569.i.gr_def.exit635.i_crit_edge ], [ %.pr1018.i, %gr_def.exit580.i.gr_def.exit635.i_crit_edge ]
  %767 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %767)
  store i32 624, ptr %ctxprog_reg.i.i, align 4
  %768 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %768)
  %769 = load i32, ptr %ctxvals_pos.i813, align 4
  %770 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %770)
  store i32 %769, ptr %ctxvals_base.i829, align 4
  %add.i639.i = add i32 %769, 8
  store i32 %add.i639.i, ptr %ctxvals_pos.i813, align 4
  %771 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %772 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %766)
  %cmp.not.i.i644.i = icmp eq i32 %766, 0
  br i1 %cmp.not.i.i644.i, label %do.body.i.i649.i, label %gr_def.exit635.i.cp_ctx.exit654.i_crit_edge

gr_def.exit635.i.cp_ctx.exit654.i_crit_edge:      ; preds = %gr_def.exit635.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit654.i

do.body.i.i649.i:                                 ; preds = %gr_def.exit635.i
  %ctxprog_len.i.i646.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %773 = ptrtoint ptr %ctxprog_len.i.i646.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %774 = load i32, ptr %ctxprog_len.i.i646.i, align 4
  %ctxprog_max.i.i647.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %775 = ptrtoint ptr %ctxprog_max.i.i647.i to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load i32, ptr %ctxprog_max.i.i647.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %774, i32 %776)
  %cmp1.i.i648.i = icmp eq i32 %774, %776
  br i1 %cmp1.i.i648.i, label %do.body4.i.i650.i, label %do.end10.i.i653.i, !prof !9

do.body4.i.i650.i:                                ; preds = %do.body.i.i649.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i653.i:                                ; preds = %do.body.i.i649.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i651.i = add i32 %774, 1
  %777 = ptrtoint ptr %ctxprog_len.i.i646.i to i32
  call void @__asan_store4_noabort(i32 %777)
  store i32 %inc.i.i651.i, ptr %ctxprog_len.i.i646.i, align 4
  %arrayidx.i.i652.i = getelementptr i32, ptr %772, i32 %774
  %778 = ptrtoint ptr %arrayidx.i.i652.i to i32
  call void @__asan_store4_noabort(i32 %778)
  store i32 1180272, ptr %arrayidx.i.i652.i, align 4
  br label %cp_ctx.exit654.i

cp_ctx.exit654.i:                                 ; preds = %do.end10.i.i653.i, %gr_def.exit635.i.cp_ctx.exit654.i_crit_edge
  %779 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %780)
  %cmp.not.i656.i = icmp eq i32 %780, 1
  br i1 %cmp.not.i656.i, label %gr_def.exit665.i, label %cp_ctx.exit654.i.if.end24.i_crit_edge

cp_ctx.exit654.i.if.end24.i_crit_edge:            ; preds = %cp_ctx.exit654.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

gr_def.exit665.i:                                 ; preds = %cp_ctx.exit654.i
  %781 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i658.i = sub i32 627, %782
  %783 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i660.i = add i32 %sub1.i658.i, %784
  %data.i661.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %785 = ptrtoint ptr %data.i661.i to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load ptr, ptr %data.i661.i, align 4
  %787 = ptrtoint ptr %786 to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load ptr, ptr %786, align 8
  %wr32.i662.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %788, i32 0, i32 3
  %789 = ptrtoint ptr %wr32.i662.i to i32
  call void @__asan_load4_noabort(i32 %789)
  %790 = load ptr, ptr %wr32.i662.i, align 4
  %mul.i663.i = shl i32 %add.i660.i, 2
  tail call void %790(ptr noundef %786, i32 noundef %mul.i663.i, i32 noundef -2147483648) #5
  %791 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %791)
  %.pr1029.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1029.i)
  %cmp.not.i667.i = icmp eq i32 %.pr1029.i, 1
  br i1 %cmp.not.i667.i, label %if.end.i675.i, label %gr_def.exit665.i.if.end24.i_crit_edge

gr_def.exit665.i.if.end24.i_crit_edge:            ; preds = %gr_def.exit665.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.end.i675.i:                                    ; preds = %gr_def.exit665.i
  call void @__sanitizer_cov_trace_pc() #7
  %792 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %792)
  %793 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i669.i = sub i32 631, %793
  %794 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %794)
  %795 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i671.i = add i32 %sub1.i669.i, %795
  %796 = ptrtoint ptr %data.i661.i to i32
  call void @__asan_load4_noabort(i32 %796)
  %797 = load ptr, ptr %data.i661.i, align 4
  %798 = ptrtoint ptr %797 to i32
  call void @__asan_load4_noabort(i32 %798)
  %799 = load ptr, ptr %797, align 8
  %wr32.i673.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %799, i32 0, i32 3
  %800 = ptrtoint ptr %wr32.i673.i to i32
  call void @__asan_load4_noabort(i32 %800)
  %801 = load ptr, ptr %wr32.i673.i, align 4
  %mul.i674.i = shl i32 %add.i671.i, 2
  tail call void %801(ptr noundef %797, i32 noundef %mul.i674.i, i32 noundef -2147483648) #5
  br label %if.end24thread-pre-split.i

if.else.i:                                        ; preds = %cp_ctx.exit430.i
  %802 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %802)
  store i32 528, ptr %ctxprog_reg.i.i, align 4
  %803 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %ctxvals_pos.i813, align 4
  %805 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %805)
  store i32 %804, ptr %ctxvals_base.i829, align 4
  %add.i680.i = add i32 %804, 20
  store i32 %add.i680.i, ptr %ctxvals_pos.i813, align 4
  %806 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %806)
  %807 = load ptr, ptr %ucode.i.i, align 4
  %808 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %808)
  %809 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %809)
  %cmp.not.i.i685.i = icmp eq i32 %809, 0
  br i1 %cmp.not.i.i685.i, label %do.body.i.i690.i, label %if.else.i.cp_ctx.exit695.i_crit_edge

if.else.i.cp_ctx.exit695.i_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit695.i

do.body.i.i690.i:                                 ; preds = %if.else.i
  %ctxprog_len.i.i687.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %810 = ptrtoint ptr %ctxprog_len.i.i687.i to i32
  call void @__asan_load4_noabort(i32 %810)
  %811 = load i32, ptr %ctxprog_len.i.i687.i, align 4
  %ctxprog_max.i.i688.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %812 = ptrtoint ptr %ctxprog_max.i.i688.i to i32
  call void @__asan_load4_noabort(i32 %812)
  %813 = load i32, ptr %ctxprog_max.i.i688.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %811, i32 %813)
  %cmp1.i.i689.i = icmp eq i32 %811, %813
  br i1 %cmp1.i.i689.i, label %do.body4.i.i691.i, label %do.end10.i.i694.i, !prof !9

do.body4.i.i691.i:                                ; preds = %do.body.i.i690.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i694.i:                                ; preds = %do.body.i.i690.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i692.i = add i32 %811, 1
  %814 = ptrtoint ptr %ctxprog_len.i.i687.i to i32
  call void @__asan_store4_noabort(i32 %814)
  store i32 %inc.i.i692.i, ptr %ctxprog_len.i.i687.i, align 4
  %arrayidx.i.i693.i = getelementptr i32, ptr %807, i32 %811
  %815 = ptrtoint ptr %arrayidx.i.i693.i to i32
  call void @__asan_store4_noabort(i32 %815)
  store i32 1376784, ptr %arrayidx.i.i693.i, align 4
  br label %cp_ctx.exit695.i

cp_ctx.exit695.i:                                 ; preds = %do.end10.i.i694.i, %if.else.i.cp_ctx.exit695.i_crit_edge
  %816 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %816)
  %817 = load ptr, ptr %ctx, align 4
  %chipset.i.i = getelementptr inbounds %struct.nvkm_device, ptr %817, i32 0, i32 16
  %818 = ptrtoint ptr %chipset.i.i to i32
  call void @__asan_load4_noabort(i32 %818)
  %819 = load i32, ptr %chipset.i.i, align 4
  %and.i.i = and i32 %819, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i.i)
  %cmp.i.i = icmp ne i32 %and.i.i, 96
  %and2.i.i = and i32 %819, 15
  %820 = lshr i32 -2736, %and2.i.i
  %821 = and i32 %820, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %821)
  %tobool.not1055.i = icmp eq i32 %821, 0
  %tobool.not.i = select i1 %cmp.i.i, i1 %tobool.not1055.i, i1 false
  br i1 %tobool.not.i, label %cp_ctx.exit695.i.if.end.i384_crit_edge, label %for.cond.preheader.i

cp_ctx.exit695.i.if.end.i384_crit_edge:           ; preds = %cp_ctx.exit695.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i384

for.cond.preheader.i:                             ; preds = %cp_ctx.exit695.i
  %data.i702.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %822 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %822)
  %823 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %823)
  %cmp.not.i697.i = icmp eq i32 %823, 1
  br i1 %cmp.not.i697.i, label %gr_def.exit706.i, label %for.cond.preheader.i.gr_def.exit739thread-pre-split.i_crit_edge

for.cond.preheader.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.i:                                 ; preds = %for.cond.preheader.i
  %824 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %824)
  %825 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.i = sub i32 536, %825
  %826 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %826)
  %827 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.i = add i32 %sub1.i699.i, %827
  %828 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %828)
  %829 = load ptr, ptr %data.i702.i, align 4
  %830 = ptrtoint ptr %829 to i32
  call void @__asan_load4_noabort(i32 %830)
  %831 = load ptr, ptr %829, align 8
  %wr32.i703.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %831, i32 0, i32 3
  %832 = ptrtoint ptr %wr32.i703.i to i32
  call void @__asan_load4_noabort(i32 %832)
  %833 = load ptr, ptr %wr32.i703.i, align 4
  %mul.i704.i = shl i32 %add.i701.i, 2
  tail call void %833(ptr noundef %829, i32 noundef %mul.i704.i, i32 noundef 1) #5
  %834 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %834)
  %.pr1096.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1096.i)
  %cmp.not.i697.1.i = icmp eq i32 %.pr1096.i, 1
  br i1 %cmp.not.i697.1.i, label %gr_def.exit706.1.i, label %gr_def.exit706.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.1.i:                               ; preds = %gr_def.exit706.i
  %835 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.1.i = sub i32 537, %836
  %837 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %837)
  %838 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.1.i = add i32 %sub1.i699.1.i, %838
  %839 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %839)
  %840 = load ptr, ptr %data.i702.i, align 4
  %841 = ptrtoint ptr %840 to i32
  call void @__asan_load4_noabort(i32 %841)
  %842 = load ptr, ptr %840, align 8
  %wr32.i703.1.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %842, i32 0, i32 3
  %843 = ptrtoint ptr %wr32.i703.1.i to i32
  call void @__asan_load4_noabort(i32 %843)
  %844 = load ptr, ptr %wr32.i703.1.i, align 4
  %mul.i704.1.i = shl i32 %add.i701.1.i, 2
  tail call void %844(ptr noundef %840, i32 noundef %mul.i704.1.i, i32 noundef 1) #5
  %845 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %845)
  %.pr1098.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1098.i)
  %cmp.not.i697.2.i = icmp eq i32 %.pr1098.i, 1
  br i1 %cmp.not.i697.2.i, label %gr_def.exit706.2.i, label %gr_def.exit706.1.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.1.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.2.i:                               ; preds = %gr_def.exit706.1.i
  %846 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %846)
  %847 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.2.i = sub i32 538, %847
  %848 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %848)
  %849 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.2.i = add i32 %sub1.i699.2.i, %849
  %850 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %850)
  %851 = load ptr, ptr %data.i702.i, align 4
  %852 = ptrtoint ptr %851 to i32
  call void @__asan_load4_noabort(i32 %852)
  %853 = load ptr, ptr %851, align 8
  %wr32.i703.2.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %853, i32 0, i32 3
  %854 = ptrtoint ptr %wr32.i703.2.i to i32
  call void @__asan_load4_noabort(i32 %854)
  %855 = load ptr, ptr %wr32.i703.2.i, align 4
  %mul.i704.2.i = shl i32 %add.i701.2.i, 2
  tail call void %855(ptr noundef %851, i32 noundef %mul.i704.2.i, i32 noundef 1) #5
  %856 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %856)
  %.pr1100.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1100.pr.i)
  %cmp.not.i697.3.i = icmp eq i32 %.pr1100.pr.i, 1
  br i1 %cmp.not.i697.3.i, label %gr_def.exit706.3.i, label %gr_def.exit706.2.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.2.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.3.i:                               ; preds = %gr_def.exit706.2.i
  %857 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.3.i = sub i32 539, %858
  %859 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.3.i = add i32 %sub1.i699.3.i, %860
  %861 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load ptr, ptr %data.i702.i, align 4
  %863 = ptrtoint ptr %862 to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load ptr, ptr %862, align 8
  %wr32.i703.3.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %864, i32 0, i32 3
  %865 = ptrtoint ptr %wr32.i703.3.i to i32
  call void @__asan_load4_noabort(i32 %865)
  %866 = load ptr, ptr %wr32.i703.3.i, align 4
  %mul.i704.3.i = shl i32 %add.i701.3.i, 2
  tail call void %866(ptr noundef %862, i32 noundef %mul.i704.3.i, i32 noundef 1) #5
  %867 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %867)
  %.pr1102.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1102.i)
  %cmp.not.i697.4.i = icmp eq i32 %.pr1102.i, 1
  br i1 %cmp.not.i697.4.i, label %gr_def.exit706.4.i, label %gr_def.exit706.3.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.3.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.4.i:                               ; preds = %gr_def.exit706.3.i
  %868 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.4.i = sub i32 540, %869
  %870 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %870)
  %871 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.4.i = add i32 %sub1.i699.4.i, %871
  %872 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %872)
  %873 = load ptr, ptr %data.i702.i, align 4
  %874 = ptrtoint ptr %873 to i32
  call void @__asan_load4_noabort(i32 %874)
  %875 = load ptr, ptr %873, align 8
  %wr32.i703.4.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %875, i32 0, i32 3
  %876 = ptrtoint ptr %wr32.i703.4.i to i32
  call void @__asan_load4_noabort(i32 %876)
  %877 = load ptr, ptr %wr32.i703.4.i, align 4
  %mul.i704.4.i = shl i32 %add.i701.4.i, 2
  tail call void %877(ptr noundef %873, i32 noundef %mul.i704.4.i, i32 noundef 1) #5
  %878 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %878)
  %.pr1104.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1104.pr.pr.i)
  %cmp.not.i697.5.i = icmp eq i32 %.pr1104.pr.pr.i, 1
  br i1 %cmp.not.i697.5.i, label %gr_def.exit706.5.i, label %gr_def.exit706.4.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.4.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.5.i:                               ; preds = %gr_def.exit706.4.i
  %879 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.5.i = sub i32 541, %880
  %881 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.5.i = add i32 %sub1.i699.5.i, %882
  %883 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load ptr, ptr %data.i702.i, align 4
  %885 = ptrtoint ptr %884 to i32
  call void @__asan_load4_noabort(i32 %885)
  %886 = load ptr, ptr %884, align 8
  %wr32.i703.5.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %886, i32 0, i32 3
  %887 = ptrtoint ptr %wr32.i703.5.i to i32
  call void @__asan_load4_noabort(i32 %887)
  %888 = load ptr, ptr %wr32.i703.5.i, align 4
  %mul.i704.5.i = shl i32 %add.i701.5.i, 2
  tail call void %888(ptr noundef %884, i32 noundef %mul.i704.5.i, i32 noundef 1) #5
  %889 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %889)
  %.pr1106.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1106.i)
  %cmp.not.i697.6.i = icmp eq i32 %.pr1106.i, 1
  br i1 %cmp.not.i697.6.i, label %gr_def.exit706.6.i, label %gr_def.exit706.5.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.5.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit706.6.i:                               ; preds = %gr_def.exit706.5.i
  %890 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.6.i = sub i32 542, %891
  %892 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.6.i = add i32 %sub1.i699.6.i, %893
  %894 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load ptr, ptr %data.i702.i, align 4
  %896 = ptrtoint ptr %895 to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load ptr, ptr %895, align 8
  %wr32.i703.6.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %897, i32 0, i32 3
  %898 = ptrtoint ptr %wr32.i703.6.i to i32
  call void @__asan_load4_noabort(i32 %898)
  %899 = load ptr, ptr %wr32.i703.6.i, align 4
  %mul.i704.6.i = shl i32 %add.i701.6.i, 2
  tail call void %899(ptr noundef %895, i32 noundef %mul.i704.6.i, i32 noundef 1) #5
  %900 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %900)
  %.pr1108.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1108.pr.pr.i)
  %cmp.not.i697.7.i = icmp eq i32 %.pr1108.pr.pr.i, 1
  br i1 %cmp.not.i697.7.i, label %if.end.i705.7.i, label %gr_def.exit706.6.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit706.6.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit706.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

if.end.i705.7.i:                                  ; preds = %gr_def.exit706.6.i
  call void @__sanitizer_cov_trace_pc() #7
  %901 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %901)
  %902 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i699.7.i = sub i32 543, %902
  %903 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %903)
  %904 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i701.7.i = add i32 %sub1.i699.7.i, %904
  %905 = ptrtoint ptr %data.i702.i to i32
  call void @__asan_load4_noabort(i32 %905)
  %906 = load ptr, ptr %data.i702.i, align 4
  %907 = ptrtoint ptr %906 to i32
  call void @__asan_load4_noabort(i32 %907)
  %908 = load ptr, ptr %906, align 8
  %wr32.i703.7.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %908, i32 0, i32 3
  %909 = ptrtoint ptr %wr32.i703.7.i to i32
  call void @__asan_load4_noabort(i32 %909)
  %910 = load ptr, ptr %wr32.i703.7.i, align 4
  %mul.i704.7.i = shl i32 %add.i701.7.i, 2
  tail call void %910(ptr noundef %906, i32 noundef %mul.i704.7.i, i32 noundef 1) #5
  br label %if.end.i384

if.end.i384:                                      ; preds = %if.end.i705.7.i, %cp_ctx.exit695.i.if.end.i384_crit_edge
  %911 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %911)
  %.pr1110.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1110.i)
  %cmp.not.i708.i = icmp eq i32 %.pr1110.i, 1
  br i1 %cmp.not.i708.i, label %gr_def.exit717.i, label %if.end.i384.gr_def.exit739thread-pre-split.i_crit_edge

if.end.i384.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %if.end.i384
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit717.i:                                 ; preds = %if.end.i384
  %912 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %912)
  %913 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i710.i = sub i32 544, %913
  %914 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %914)
  %915 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i712.i = add i32 %sub1.i710.i, %915
  %data.i713.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %916 = ptrtoint ptr %data.i713.i to i32
  call void @__asan_load4_noabort(i32 %916)
  %917 = load ptr, ptr %data.i713.i, align 4
  %918 = ptrtoint ptr %917 to i32
  call void @__asan_load4_noabort(i32 %918)
  %919 = load ptr, ptr %917, align 8
  %wr32.i714.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %919, i32 0, i32 3
  %920 = ptrtoint ptr %wr32.i714.i to i32
  call void @__asan_load4_noabort(i32 %920)
  %921 = load ptr, ptr %wr32.i714.i, align 4
  %mul.i715.i = shl i32 %add.i712.i, 2
  tail call void %921(ptr noundef %917, i32 noundef %mul.i715.i, i32 noundef 64) #5
  %922 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %922)
  %.pr1031.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1031.i)
  %cmp.not.i719.i = icmp eq i32 %.pr1031.i, 1
  br i1 %cmp.not.i719.i, label %gr_def.exit728.i, label %gr_def.exit717.i.gr_def.exit739thread-pre-split.i_crit_edge

gr_def.exit717.i.gr_def.exit739thread-pre-split.i_crit_edge: ; preds = %gr_def.exit717.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit728.i:                                 ; preds = %gr_def.exit717.i
  %923 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i721.i = sub i32 545, %924
  %925 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %925)
  %926 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i723.i = add i32 %sub1.i721.i, %926
  %927 = ptrtoint ptr %data.i713.i to i32
  call void @__asan_load4_noabort(i32 %927)
  %928 = load ptr, ptr %data.i713.i, align 4
  %929 = ptrtoint ptr %928 to i32
  call void @__asan_load4_noabort(i32 %929)
  %930 = load ptr, ptr %928, align 8
  %wr32.i725.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %930, i32 0, i32 3
  %931 = ptrtoint ptr %wr32.i725.i to i32
  call void @__asan_load4_noabort(i32 %931)
  %932 = load ptr, ptr %wr32.i725.i, align 4
  %mul.i726.i = shl i32 %add.i723.i, 2
  tail call void %932(ptr noundef %928, i32 noundef %mul.i726.i, i32 noundef 64) #5
  %933 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %933)
  %.pr1033.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1033.i)
  %cmp.not.i730.i = icmp eq i32 %.pr1033.i, 1
  br i1 %cmp.not.i730.i, label %if.end.i738.i, label %gr_def.exit728.i.gr_def.exit739.i_crit_edge

gr_def.exit728.i.gr_def.exit739.i_crit_edge:      ; preds = %gr_def.exit728.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit739.i

if.end.i738.i:                                    ; preds = %gr_def.exit728.i
  call void @__sanitizer_cov_trace_pc() #7
  %934 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i732.i = sub i32 546, %935
  %936 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i734.i = add i32 %sub1.i732.i, %937
  %938 = ptrtoint ptr %data.i713.i to i32
  call void @__asan_load4_noabort(i32 %938)
  %939 = load ptr, ptr %data.i713.i, align 4
  %940 = ptrtoint ptr %939 to i32
  call void @__asan_load4_noabort(i32 %940)
  %941 = load ptr, ptr %939, align 8
  %wr32.i736.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %941, i32 0, i32 3
  %942 = ptrtoint ptr %wr32.i736.i to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %wr32.i736.i, align 4
  %mul.i737.i = shl i32 %add.i734.i, 2
  tail call void %943(ptr noundef %939, i32 noundef %mul.i737.i, i32 noundef 64) #5
  br label %gr_def.exit739thread-pre-split.i

gr_def.exit739thread-pre-split.i:                 ; preds = %if.end.i738.i, %gr_def.exit717.i.gr_def.exit739thread-pre-split.i_crit_edge, %if.end.i384.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.6.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.5.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.4.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.3.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.2.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.1.i.gr_def.exit739thread-pre-split.i_crit_edge, %gr_def.exit706.i.gr_def.exit739thread-pre-split.i_crit_edge, %for.cond.preheader.i.gr_def.exit739thread-pre-split.i_crit_edge
  %944 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %.pr1035.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit739.i

gr_def.exit739.i:                                 ; preds = %gr_def.exit739thread-pre-split.i, %gr_def.exit728.i.gr_def.exit739.i_crit_edge
  %945 = phi i32 [ %.pr1035.i, %gr_def.exit739thread-pre-split.i ], [ %.pr1033.i, %gr_def.exit728.i.gr_def.exit739.i_crit_edge ]
  %946 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %946)
  store i32 549, ptr %ctxprog_reg.i.i, align 4
  %947 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %947)
  %948 = load i32, ptr %ctxvals_pos.i813, align 4
  %949 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %949)
  store i32 %948, ptr %ctxvals_base.i829, align 4
  %add.i743.i = add i32 %948, 11
  store i32 %add.i743.i, ptr %ctxvals_pos.i813, align 4
  %950 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %945)
  %cmp.not.i.i748.i = icmp eq i32 %945, 0
  br i1 %cmp.not.i.i748.i, label %do.body.i.i753.i, label %gr_def.exit739.i.cp_ctx.exit758.i_crit_edge

gr_def.exit739.i.cp_ctx.exit758.i_crit_edge:      ; preds = %gr_def.exit739.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit758.i

do.body.i.i753.i:                                 ; preds = %gr_def.exit739.i
  %ctxprog_len.i.i750.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %952 = ptrtoint ptr %ctxprog_len.i.i750.i to i32
  call void @__asan_load4_noabort(i32 %952)
  %953 = load i32, ptr %ctxprog_len.i.i750.i, align 4
  %ctxprog_max.i.i751.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %954 = ptrtoint ptr %ctxprog_max.i.i751.i to i32
  call void @__asan_load4_noabort(i32 %954)
  %955 = load i32, ptr %ctxprog_max.i.i751.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %953, i32 %955)
  %cmp1.i.i752.i = icmp eq i32 %953, %955
  br i1 %cmp1.i.i752.i, label %do.body4.i.i754.i, label %do.end10.i.i757.i, !prof !9

do.body4.i.i754.i:                                ; preds = %do.body.i.i753.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i757.i:                                ; preds = %do.body.i.i753.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i755.i = add i32 %953, 1
  %956 = ptrtoint ptr %ctxprog_len.i.i750.i to i32
  call void @__asan_store4_noabort(i32 %956)
  store i32 %inc.i.i755.i, ptr %ctxprog_len.i.i750.i, align 4
  %arrayidx.i.i756.i = getelementptr i32, ptr %951, i32 %953
  %957 = ptrtoint ptr %arrayidx.i.i756.i to i32
  call void @__asan_store4_noabort(i32 %957)
  store i32 1229349, ptr %arrayidx.i.i756.i, align 4
  br label %cp_ctx.exit758.i

cp_ctx.exit758.i:                                 ; preds = %do.end10.i.i757.i, %gr_def.exit739.i.cp_ctx.exit758.i_crit_edge
  %958 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %958)
  %959 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %959)
  %cmp.not.i760.i = icmp eq i32 %959, 1
  br i1 %cmp.not.i760.i, label %if.end.i768.i, label %cp_ctx.exit758.i.gr_def.exit769.i_crit_edge

cp_ctx.exit758.i.gr_def.exit769.i_crit_edge:      ; preds = %cp_ctx.exit758.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit769.i

if.end.i768.i:                                    ; preds = %cp_ctx.exit758.i
  call void @__sanitizer_cov_trace_pc() #7
  %960 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %960)
  %961 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i762.i = sub i32 549, %961
  %962 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %962)
  %963 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i764.i = add i32 %sub1.i762.i, %963
  %data.i765.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %964 = ptrtoint ptr %data.i765.i to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load ptr, ptr %data.i765.i, align 4
  %966 = ptrtoint ptr %965 to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load ptr, ptr %965, align 8
  %wr32.i766.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %967, i32 0, i32 3
  %968 = ptrtoint ptr %wr32.i766.i to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load ptr, ptr %wr32.i766.i, align 4
  %mul.i767.i = shl i32 %add.i764.i, 2
  tail call void %969(ptr noundef %965, i32 noundef %mul.i767.i, i32 noundef 64) #5
  br label %gr_def.exit769.i

gr_def.exit769.i:                                 ; preds = %if.end.i768.i, %cp_ctx.exit758.i.gr_def.exit769.i_crit_edge
  %970 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load ptr, ptr %ctx, align 4
  %chipset.i770.i = getelementptr inbounds %struct.nvkm_device, ptr %971, i32 0, i32 16
  %972 = ptrtoint ptr %chipset.i770.i to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load i32, ptr %chipset.i770.i, align 4
  %and.i771.i = and i32 %973, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i771.i)
  %cmp.i772.i = icmp ne i32 %and.i771.i, 96
  %and2.i773.i = and i32 %973, 15
  %974 = lshr i32 -2736, %and2.i773.i
  %975 = and i32 %974, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %975)
  %tobool7.not1056.i = icmp eq i32 %975, 0
  %tobool7.not.i = select i1 %cmp.i772.i, i1 %tobool7.not1056.i, i1 false
  br i1 %tobool7.not.i, label %for.cond9.preheader.i, label %gr_def.exit769.i.if.end17thread-pre-split.i_crit_edge

gr_def.exit769.i.if.end17thread-pre-split.i_crit_edge: ; preds = %gr_def.exit769.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17thread-pre-split.i

for.cond9.preheader.i:                            ; preds = %gr_def.exit769.i
  %data.i783.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %976 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %976)
  %977 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %977)
  %cmp.not.i776.i = icmp eq i32 %977, 1
  br i1 %cmp.not.i776.i, label %gr_def.exit787.i, label %for.cond9.preheader.i.if.end17.i_crit_edge

for.cond9.preheader.i.if.end17.i_crit_edge:       ; preds = %for.cond9.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.i:                                 ; preds = %for.cond9.preheader.i
  %978 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.i = sub i32 552, %979
  %980 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %980)
  %981 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.i = add i32 %sub1.i780.i, %981
  %982 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %982)
  %983 = load ptr, ptr %data.i783.i, align 4
  %984 = ptrtoint ptr %983 to i32
  call void @__asan_load4_noabort(i32 %984)
  %985 = load ptr, ptr %983, align 8
  %wr32.i784.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %985, i32 0, i32 3
  %986 = ptrtoint ptr %wr32.i784.i to i32
  call void @__asan_load4_noabort(i32 %986)
  %987 = load ptr, ptr %wr32.i784.i, align 4
  %mul.i785.i = shl i32 %add.i782.i, 2
  tail call void %987(ptr noundef %983, i32 noundef %mul.i785.i, i32 noundef -2147483648) #5
  %988 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %988)
  %.pr1112.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1112.i)
  %cmp.not.i776.1.i = icmp eq i32 %.pr1112.i, 1
  br i1 %cmp.not.i776.1.i, label %gr_def.exit787.1.i, label %gr_def.exit787.i.if.end17.i_crit_edge

gr_def.exit787.i.if.end17.i_crit_edge:            ; preds = %gr_def.exit787.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.1.i:                               ; preds = %gr_def.exit787.i
  %989 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %989)
  %990 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.1.i = sub i32 553, %990
  %991 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %991)
  %992 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.1.i = add i32 %sub1.i780.1.i, %992
  %993 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load ptr, ptr %data.i783.i, align 4
  %995 = ptrtoint ptr %994 to i32
  call void @__asan_load4_noabort(i32 %995)
  %996 = load ptr, ptr %994, align 8
  %wr32.i784.1.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %996, i32 0, i32 3
  %997 = ptrtoint ptr %wr32.i784.1.i to i32
  call void @__asan_load4_noabort(i32 %997)
  %998 = load ptr, ptr %wr32.i784.1.i, align 4
  %mul.i785.1.i = shl i32 %add.i782.1.i, 2
  tail call void %998(ptr noundef %994, i32 noundef %mul.i785.1.i, i32 noundef -2147483648) #5
  %999 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %999)
  %.pr1114.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1114.i)
  %cmp.not.i776.2.i = icmp eq i32 %.pr1114.i, 1
  br i1 %cmp.not.i776.2.i, label %gr_def.exit787.2.i, label %gr_def.exit787.1.i.if.end17.i_crit_edge

gr_def.exit787.1.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.2.i:                               ; preds = %gr_def.exit787.1.i
  %1000 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.2.i = sub i32 554, %1001
  %1002 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1002)
  %1003 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.2.i = add i32 %sub1.i780.2.i, %1003
  %1004 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1004)
  %1005 = load ptr, ptr %data.i783.i, align 4
  %1006 = ptrtoint ptr %1005 to i32
  call void @__asan_load4_noabort(i32 %1006)
  %1007 = load ptr, ptr %1005, align 8
  %wr32.i784.2.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1007, i32 0, i32 3
  %1008 = ptrtoint ptr %wr32.i784.2.i to i32
  call void @__asan_load4_noabort(i32 %1008)
  %1009 = load ptr, ptr %wr32.i784.2.i, align 4
  %mul.i785.2.i = shl i32 %add.i782.2.i, 2
  tail call void %1009(ptr noundef %1005, i32 noundef %mul.i785.2.i, i32 noundef -2147483648) #5
  %1010 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1010)
  %.pr1116.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1116.pr.i)
  %cmp.not.i776.3.i = icmp eq i32 %.pr1116.pr.i, 1
  br i1 %cmp.not.i776.3.i, label %gr_def.exit787.3.i, label %gr_def.exit787.2.i.if.end17.i_crit_edge

gr_def.exit787.2.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.3.i:                               ; preds = %gr_def.exit787.2.i
  %1011 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1011)
  %1012 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.3.i = sub i32 555, %1012
  %1013 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1013)
  %1014 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.3.i = add i32 %sub1.i780.3.i, %1014
  %1015 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1015)
  %1016 = load ptr, ptr %data.i783.i, align 4
  %1017 = ptrtoint ptr %1016 to i32
  call void @__asan_load4_noabort(i32 %1017)
  %1018 = load ptr, ptr %1016, align 8
  %wr32.i784.3.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1018, i32 0, i32 3
  %1019 = ptrtoint ptr %wr32.i784.3.i to i32
  call void @__asan_load4_noabort(i32 %1019)
  %1020 = load ptr, ptr %wr32.i784.3.i, align 4
  %mul.i785.3.i = shl i32 %add.i782.3.i, 2
  tail call void %1020(ptr noundef %1016, i32 noundef %mul.i785.3.i, i32 noundef -2147483648) #5
  %1021 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1021)
  %.pr1118.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1118.i)
  %cmp.not.i776.4.i = icmp eq i32 %.pr1118.i, 1
  br i1 %cmp.not.i776.4.i, label %gr_def.exit787.4.i, label %gr_def.exit787.3.i.if.end17.i_crit_edge

gr_def.exit787.3.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.4.i:                               ; preds = %gr_def.exit787.3.i
  %1022 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1022)
  %1023 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.4.i = sub i32 556, %1023
  %1024 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1024)
  %1025 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.4.i = add i32 %sub1.i780.4.i, %1025
  %1026 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load ptr, ptr %data.i783.i, align 4
  %1028 = ptrtoint ptr %1027 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load ptr, ptr %1027, align 8
  %wr32.i784.4.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1029, i32 0, i32 3
  %1030 = ptrtoint ptr %wr32.i784.4.i to i32
  call void @__asan_load4_noabort(i32 %1030)
  %1031 = load ptr, ptr %wr32.i784.4.i, align 4
  %mul.i785.4.i = shl i32 %add.i782.4.i, 2
  tail call void %1031(ptr noundef %1027, i32 noundef %mul.i785.4.i, i32 noundef -2147483648) #5
  %1032 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1032)
  %.pr1120.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1120.pr.pr.i)
  %cmp.not.i776.5.i = icmp eq i32 %.pr1120.pr.pr.i, 1
  br i1 %cmp.not.i776.5.i, label %gr_def.exit787.5.i, label %gr_def.exit787.4.i.if.end17.i_crit_edge

gr_def.exit787.4.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.5.i:                               ; preds = %gr_def.exit787.4.i
  %1033 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1033)
  %1034 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.5.i = sub i32 557, %1034
  %1035 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1035)
  %1036 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.5.i = add i32 %sub1.i780.5.i, %1036
  %1037 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1037)
  %1038 = load ptr, ptr %data.i783.i, align 4
  %1039 = ptrtoint ptr %1038 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %1038, align 8
  %wr32.i784.5.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1040, i32 0, i32 3
  %1041 = ptrtoint ptr %wr32.i784.5.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load ptr, ptr %wr32.i784.5.i, align 4
  %mul.i785.5.i = shl i32 %add.i782.5.i, 2
  tail call void %1042(ptr noundef %1038, i32 noundef %mul.i785.5.i, i32 noundef -2147483648) #5
  %1043 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1043)
  %.pr1122.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1122.i)
  %cmp.not.i776.6.i = icmp eq i32 %.pr1122.i, 1
  br i1 %cmp.not.i776.6.i, label %gr_def.exit787.6.i, label %gr_def.exit787.5.i.if.end17.i_crit_edge

gr_def.exit787.5.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

gr_def.exit787.6.i:                               ; preds = %gr_def.exit787.5.i
  %1044 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1044)
  %1045 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.6.i = sub i32 558, %1045
  %1046 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1046)
  %1047 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.6.i = add i32 %sub1.i780.6.i, %1047
  %1048 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load ptr, ptr %data.i783.i, align 4
  %1050 = ptrtoint ptr %1049 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load ptr, ptr %1049, align 8
  %wr32.i784.6.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1051, i32 0, i32 3
  %1052 = ptrtoint ptr %wr32.i784.6.i to i32
  call void @__asan_load4_noabort(i32 %1052)
  %1053 = load ptr, ptr %wr32.i784.6.i, align 4
  %mul.i785.6.i = shl i32 %add.i782.6.i, 2
  tail call void %1053(ptr noundef %1049, i32 noundef %mul.i785.6.i, i32 noundef -2147483648) #5
  %1054 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1054)
  %.pr1124.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1124.pr.pr.i)
  %cmp.not.i776.7.i = icmp eq i32 %.pr1124.pr.pr.i, 1
  br i1 %cmp.not.i776.7.i, label %if.end.i786.7.i, label %gr_def.exit787.6.i.if.end17.i_crit_edge

gr_def.exit787.6.i.if.end17.i_crit_edge:          ; preds = %gr_def.exit787.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17.i

if.end.i786.7.i:                                  ; preds = %gr_def.exit787.6.i
  call void @__sanitizer_cov_trace_pc() #7
  %1055 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1055)
  %1056 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i780.7.i = sub i32 559, %1056
  %1057 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i782.7.i = add i32 %sub1.i780.7.i, %1058
  %1059 = ptrtoint ptr %data.i783.i to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load ptr, ptr %data.i783.i, align 4
  %1061 = ptrtoint ptr %1060 to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load ptr, ptr %1060, align 8
  %wr32.i784.7.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1062, i32 0, i32 3
  %1063 = ptrtoint ptr %wr32.i784.7.i to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load ptr, ptr %wr32.i784.7.i, align 4
  %mul.i785.7.i = shl i32 %add.i782.7.i, 2
  tail call void %1064(ptr noundef %1060, i32 noundef %mul.i785.7.i, i32 noundef -2147483648) #5
  br label %if.end17thread-pre-split.i

if.end17thread-pre-split.i:                       ; preds = %if.end.i786.7.i, %gr_def.exit769.i.if.end17thread-pre-split.i_crit_edge
  %1065 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %.pr1126.i = load i32, ptr %mode.i.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.end17thread-pre-split.i, %gr_def.exit787.6.i.if.end17.i_crit_edge, %gr_def.exit787.5.i.if.end17.i_crit_edge, %gr_def.exit787.4.i.if.end17.i_crit_edge, %gr_def.exit787.3.i.if.end17.i_crit_edge, %gr_def.exit787.2.i.if.end17.i_crit_edge, %gr_def.exit787.1.i.if.end17.i_crit_edge, %gr_def.exit787.i.if.end17.i_crit_edge, %for.cond9.preheader.i.if.end17.i_crit_edge
  %1066 = phi i32 [ %.pr1126.i, %if.end17thread-pre-split.i ], [ %.pr1124.pr.pr.i, %gr_def.exit787.6.i.if.end17.i_crit_edge ], [ %.pr1122.i, %gr_def.exit787.5.i.if.end17.i_crit_edge ], [ %.pr1120.pr.pr.i, %gr_def.exit787.4.i.if.end17.i_crit_edge ], [ %.pr1118.i, %gr_def.exit787.3.i.if.end17.i_crit_edge ], [ %977, %for.cond9.preheader.i.if.end17.i_crit_edge ], [ %.pr1112.i, %gr_def.exit787.i.if.end17.i_crit_edge ], [ %.pr1114.i, %gr_def.exit787.1.i.if.end17.i_crit_edge ], [ %.pr1116.pr.i, %gr_def.exit787.2.i.if.end17.i_crit_edge ]
  %1067 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1067)
  store i32 568, ptr %ctxprog_reg.i.i, align 4
  %1068 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load i32, ptr %ctxvals_pos.i813, align 4
  %1070 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1070)
  store i32 %1069, ptr %ctxvals_base.i829, align 4
  %add.i791.i = add i32 %1069, 2
  store i32 %add.i791.i, ptr %ctxvals_pos.i813, align 4
  %1071 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1071)
  %1072 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1066)
  %cmp.not.i.i796.i = icmp eq i32 %1066, 0
  br i1 %cmp.not.i.i796.i, label %do.body.i.i801.i, label %if.end17.i.cp_ctx.exit806.i_crit_edge

if.end17.i.cp_ctx.exit806.i_crit_edge:            ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit806.i

do.body.i.i801.i:                                 ; preds = %if.end17.i
  %ctxprog_len.i.i798.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1073 = ptrtoint ptr %ctxprog_len.i.i798.i to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %ctxprog_len.i.i798.i, align 4
  %ctxprog_max.i.i799.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1075 = ptrtoint ptr %ctxprog_max.i.i799.i to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load i32, ptr %ctxprog_max.i.i799.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1074, i32 %1076)
  %cmp1.i.i800.i = icmp eq i32 %1074, %1076
  br i1 %cmp1.i.i800.i, label %do.body4.i.i802.i, label %do.end10.i.i805.i, !prof !9

do.body4.i.i802.i:                                ; preds = %do.body.i.i801.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i805.i:                                ; preds = %do.body.i.i801.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i803.i = add i32 %1074, 1
  %1077 = ptrtoint ptr %ctxprog_len.i.i798.i to i32
  call void @__asan_store4_noabort(i32 %1077)
  store i32 %inc.i.i803.i, ptr %ctxprog_len.i.i798.i, align 4
  %arrayidx.i.i804.i = getelementptr i32, ptr %1072, i32 %1074
  %1078 = ptrtoint ptr %arrayidx.i.i804.i to i32
  call void @__asan_store4_noabort(i32 %1078)
  store i32 1081912, ptr %arrayidx.i.i804.i, align 4
  %1079 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1079)
  %.pr1036.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit806.i

cp_ctx.exit806.i:                                 ; preds = %do.end10.i.i805.i, %if.end17.i.cp_ctx.exit806.i_crit_edge
  %1080 = phi i32 [ %1066, %if.end17.i.cp_ctx.exit806.i_crit_edge ], [ %.pr1036.i, %do.end10.i.i805.i ]
  %1081 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1081)
  store i32 574, ptr %ctxprog_reg.i.i, align 4
  %1082 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1082)
  %1083 = load i32, ptr %ctxvals_pos.i813, align 4
  %1084 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1084)
  store i32 %1083, ptr %ctxvals_base.i829, align 4
  %add.i810.i = add i32 %1083, 2
  store i32 %add.i810.i, ptr %ctxvals_pos.i813, align 4
  %1085 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1080)
  %cmp.not.i.i815.i = icmp eq i32 %1080, 0
  br i1 %cmp.not.i.i815.i, label %do.body.i.i820.i, label %cp_ctx.exit806.i.cp_ctx.exit825.i_crit_edge

cp_ctx.exit806.i.cp_ctx.exit825.i_crit_edge:      ; preds = %cp_ctx.exit806.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit825.i

do.body.i.i820.i:                                 ; preds = %cp_ctx.exit806.i
  %ctxprog_len.i.i817.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1087 = ptrtoint ptr %ctxprog_len.i.i817.i to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %ctxprog_len.i.i817.i, align 4
  %ctxprog_max.i.i818.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1089 = ptrtoint ptr %ctxprog_max.i.i818.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load i32, ptr %ctxprog_max.i.i818.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1088, i32 %1090)
  %cmp1.i.i819.i = icmp eq i32 %1088, %1090
  br i1 %cmp1.i.i819.i, label %do.body4.i.i821.i, label %do.end10.i.i824.i, !prof !9

do.body4.i.i821.i:                                ; preds = %do.body.i.i820.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i824.i:                                ; preds = %do.body.i.i820.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i822.i = add i32 %1088, 1
  %1091 = ptrtoint ptr %ctxprog_len.i.i817.i to i32
  call void @__asan_store4_noabort(i32 %1091)
  store i32 %inc.i.i822.i, ptr %ctxprog_len.i.i817.i, align 4
  %arrayidx.i.i823.i = getelementptr i32, ptr %1086, i32 %1088
  %1092 = ptrtoint ptr %arrayidx.i.i823.i to i32
  call void @__asan_store4_noabort(i32 %1092)
  store i32 1081918, ptr %arrayidx.i.i823.i, align 4
  br label %cp_ctx.exit825.i

cp_ctx.exit825.i:                                 ; preds = %do.end10.i.i824.i, %cp_ctx.exit806.i.cp_ctx.exit825.i_crit_edge
  %1093 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %1093)
  %1094 = load i32, ptr %chipset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %1094)
  %cmp19.i = icmp eq i32 %1094, 76
  %and.i385 = and i32 %1094, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i385)
  %cmp21.i = icmp eq i32 %and.i385, 96
  %or.cond.i386 = or i1 %cmp19.i, %cmp21.i
  br i1 %or.cond.i386, label %if.then22.i, label %cp_ctx.exit825.i.if.end24thread-pre-split.i_crit_edge

cp_ctx.exit825.i.if.end24thread-pre-split.i_crit_edge: ; preds = %cp_ctx.exit825.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24thread-pre-split.i

if.then22.i:                                      ; preds = %cp_ctx.exit825.i
  %1095 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1095)
  store i32 638, ptr %ctxprog_reg.i.i, align 4
  %1096 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1096)
  %1097 = load i32, ptr %ctxvals_pos.i813, align 4
  %1098 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1098)
  store i32 %1097, ptr %ctxvals_base.i829, align 4
  %add.i829.i = add i32 %1097, 1
  store i32 %add.i829.i, ptr %ctxvals_pos.i813, align 4
  %1099 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1099)
  %1100 = load ptr, ptr %ucode.i.i, align 4
  %1101 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1102)
  %cmp.not.i.i834.i = icmp eq i32 %1102, 0
  br i1 %cmp.not.i.i834.i, label %do.body.i.i839.i, label %if.then22.i.if.end24.i_crit_edge

if.then22.i.if.end24.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

do.body.i.i839.i:                                 ; preds = %if.then22.i
  %ctxprog_len.i.i836.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1103 = ptrtoint ptr %ctxprog_len.i.i836.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %ctxprog_len.i.i836.i, align 4
  %ctxprog_max.i.i837.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1105 = ptrtoint ptr %ctxprog_max.i.i837.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load i32, ptr %ctxprog_max.i.i837.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1104, i32 %1106)
  %cmp1.i.i838.i = icmp eq i32 %1104, %1106
  br i1 %cmp1.i.i838.i, label %do.body4.i.i840.i, label %do.end10.i.i843.i, !prof !9

do.body4.i.i840.i:                                ; preds = %do.body.i.i839.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i843.i:                                ; preds = %do.body.i.i839.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i841.i = add i32 %1104, 1
  %1107 = ptrtoint ptr %ctxprog_len.i.i836.i to i32
  call void @__asan_store4_noabort(i32 %1107)
  store i32 %inc.i.i841.i, ptr %ctxprog_len.i.i836.i, align 4
  %arrayidx.i.i842.i = getelementptr i32, ptr %1100, i32 %1104
  %1108 = ptrtoint ptr %arrayidx.i.i842.i to i32
  call void @__asan_store4_noabort(i32 %1108)
  store i32 1065598, ptr %arrayidx.i.i842.i, align 4
  br label %if.end24thread-pre-split.i

if.end24thread-pre-split.i:                       ; preds = %do.end10.i.i843.i, %cp_ctx.exit825.i.if.end24thread-pre-split.i_crit_edge, %if.end.i675.i
  %1109 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1109)
  %.pr1037.i = load i32, ptr %mode.i.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24thread-pre-split.i, %if.then22.i.if.end24.i_crit_edge, %gr_def.exit665.i.if.end24.i_crit_edge, %cp_ctx.exit654.i.if.end24.i_crit_edge
  %1110 = phi i32 [ %.pr1037.i, %if.end24thread-pre-split.i ], [ %1102, %if.then22.i.if.end24.i_crit_edge ], [ %.pr1029.i, %gr_def.exit665.i.if.end24.i_crit_edge ], [ %780, %cp_ctx.exit654.i.if.end24.i_crit_edge ]
  %1111 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1111)
  store i32 640, ptr %ctxprog_reg.i.i, align 4
  %1112 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load i32, ptr %ctxvals_pos.i813, align 4
  %1114 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1114)
  store i32 %1113, ptr %ctxvals_base.i829, align 4
  %add.i848.i = add i32 %1113, 73
  store i32 %add.i848.i, ptr %ctxvals_pos.i813, align 4
  %1115 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1115)
  %1116 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1110)
  %cmp.not.i.i.i.i = icmp eq i32 %1110, 0
  br i1 %cmp.not.i.i.i.i, label %do.body.i.i.i.i, label %if.end24.i.if.end.i854.i_crit_edge

if.end24.i.if.end.i854.i_crit_edge:               ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i854.i

do.body.i.i.i.i:                                  ; preds = %if.end24.i
  %ctxprog_len.i.i.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1117 = ptrtoint ptr %ctxprog_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load i32, ptr %ctxprog_len.i.i.i.i, align 4
  %ctxprog_max.i.i.i.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1119 = ptrtoint ptr %ctxprog_max.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load i32, ptr %ctxprog_max.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1118, i32 %1120)
  %cmp1.i.i.i.i = icmp eq i32 %1118, %1120
  br i1 %cmp1.i.i.i.i, label %do.body4.i.i.i.i, label %do.end10.i.i.i.i, !prof !9

do.body4.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i.i:                                 ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i.i = add i32 %1118, 1
  %1121 = ptrtoint ptr %ctxprog_len.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1121)
  store i32 %inc.i.i.i.i, ptr %ctxprog_len.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %1116, i32 %1118
  %1122 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1122)
  store i32 2097225, ptr %arrayidx.i.i.i.i, align 4
  br label %if.end.i854.i

if.end.i854.i:                                    ; preds = %do.end10.i.i.i.i, %if.end24.i.if.end.i854.i_crit_edge
  %1123 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load i32, ptr %ctxprog_reg.i.i, align 4
  %or4.i850.i = or i32 %1124, 1048576
  %1125 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load ptr, ptr %ucode.i.i, align 4
  %1127 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1128)
  %cmp.not.i.i853.i = icmp eq i32 %1128, 0
  br i1 %cmp.not.i.i853.i, label %do.body.i.i858.i, label %if.end.i854.i.cp_ctx.exit863.i_crit_edge

if.end.i854.i.cp_ctx.exit863.i_crit_edge:         ; preds = %if.end.i854.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit863.i

do.body.i.i858.i:                                 ; preds = %if.end.i854.i
  %ctxprog_len.i.i855.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1129 = ptrtoint ptr %ctxprog_len.i.i855.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load i32, ptr %ctxprog_len.i.i855.i, align 4
  %ctxprog_max.i.i856.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1131 = ptrtoint ptr %ctxprog_max.i.i856.i to i32
  call void @__asan_load4_noabort(i32 %1131)
  %1132 = load i32, ptr %ctxprog_max.i.i856.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1130, i32 %1132)
  %cmp1.i.i857.i = icmp eq i32 %1130, %1132
  br i1 %cmp1.i.i857.i, label %do.body4.i.i859.i, label %do.end10.i.i862.i, !prof !9

do.body4.i.i859.i:                                ; preds = %do.body.i.i858.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i862.i:                                ; preds = %do.body.i.i858.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i860.i = add i32 %1130, 1
  %1133 = ptrtoint ptr %ctxprog_len.i.i855.i to i32
  call void @__asan_store4_noabort(i32 %1133)
  store i32 %inc.i.i860.i, ptr %ctxprog_len.i.i855.i, align 4
  %arrayidx.i.i861.i = getelementptr i32, ptr %1126, i32 %1130
  %1134 = ptrtoint ptr %arrayidx.i.i861.i to i32
  call void @__asan_store4_noabort(i32 %1134)
  store i32 %or4.i850.i, ptr %arrayidx.i.i861.i, align 4
  %1135 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1135)
  %.pr1038.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit863.i

cp_ctx.exit863.i:                                 ; preds = %do.end10.i.i862.i, %if.end.i854.i.cp_ctx.exit863.i_crit_edge
  %1136 = phi i32 [ %1128, %if.end.i854.i.cp_ctx.exit863.i_crit_edge ], [ %.pr1038.i, %do.end10.i.i862.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1136)
  %cmp.not.i865.i = icmp eq i32 %1136, 1
  br i1 %cmp.not.i865.i, label %if.end.i873.i, label %cp_ctx.exit863.i.gr_def.exit874.i_crit_edge

cp_ctx.exit863.i.gr_def.exit874.i_crit_edge:      ; preds = %cp_ctx.exit863.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit874.i

if.end.i873.i:                                    ; preds = %cp_ctx.exit863.i
  call void @__sanitizer_cov_trace_pc() #7
  %1137 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1137)
  %1138 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i867.i = sub i32 707, %1138
  %1139 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1139)
  %1140 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i869.i = add i32 %sub1.i867.i, %1140
  %data.i870.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1141 = ptrtoint ptr %data.i870.i to i32
  call void @__asan_load4_noabort(i32 %1141)
  %1142 = load ptr, ptr %data.i870.i, align 4
  %1143 = ptrtoint ptr %1142 to i32
  call void @__asan_load4_noabort(i32 %1143)
  %1144 = load ptr, ptr %1142, align 8
  %wr32.i871.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1144, i32 0, i32 3
  %1145 = ptrtoint ptr %wr32.i871.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load ptr, ptr %wr32.i871.i, align 4
  %mul.i872.i = shl i32 %add.i869.i, 2
  tail call void %1146(ptr noundef %1142, i32 noundef %mul.i872.i, i32 noundef 185273100) #5
  br label %gr_def.exit874.i

gr_def.exit874.i:                                 ; preds = %if.end.i873.i, %cp_ctx.exit863.i.gr_def.exit874.i_crit_edge
  %1147 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1147)
  store i32 1024, ptr %ctxprog_reg.i.i, align 4
  %1148 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1148)
  %1149 = load i32, ptr %ctxvals_pos.i813, align 4
  %1150 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1150)
  store i32 %1149, ptr %ctxvals_base.i829, align 4
  %add.i878.i = add i32 %1149, 4
  store i32 %add.i878.i, ptr %ctxvals_pos.i813, align 4
  %1151 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load ptr, ptr %ucode.i.i, align 4
  %1153 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1154)
  %cmp.not.i.i883.i = icmp eq i32 %1154, 0
  br i1 %cmp.not.i.i883.i, label %do.body.i.i888.i, label %gr_def.exit874.i.cp_ctx.exit893.i_crit_edge

gr_def.exit874.i.cp_ctx.exit893.i_crit_edge:      ; preds = %gr_def.exit874.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit893.i

do.body.i.i888.i:                                 ; preds = %gr_def.exit874.i
  %ctxprog_len.i.i885.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1155 = ptrtoint ptr %ctxprog_len.i.i885.i to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load i32, ptr %ctxprog_len.i.i885.i, align 4
  %ctxprog_max.i.i886.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1157 = ptrtoint ptr %ctxprog_max.i.i886.i to i32
  call void @__asan_load4_noabort(i32 %1157)
  %1158 = load i32, ptr %ctxprog_max.i.i886.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1156, i32 %1158)
  %cmp1.i.i887.i = icmp eq i32 %1156, %1158
  br i1 %cmp1.i.i887.i, label %do.body4.i.i889.i, label %do.end10.i.i892.i, !prof !9

do.body4.i.i889.i:                                ; preds = %do.body.i.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i892.i:                                ; preds = %do.body.i.i888.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i890.i = add i32 %1156, 1
  %1159 = ptrtoint ptr %ctxprog_len.i.i885.i to i32
  call void @__asan_store4_noabort(i32 %1159)
  store i32 %inc.i.i890.i, ptr %ctxprog_len.i.i885.i, align 4
  %arrayidx.i.i891.i = getelementptr i32, ptr %1152, i32 %1156
  %1160 = ptrtoint ptr %arrayidx.i.i891.i to i32
  call void @__asan_store4_noabort(i32 %1160)
  store i32 1115136, ptr %arrayidx.i.i891.i, align 4
  %1161 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1161)
  %.pr1039.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit893.i

cp_ctx.exit893.i:                                 ; preds = %do.end10.i.i892.i, %gr_def.exit874.i.cp_ctx.exit893.i_crit_edge
  %1162 = phi i32 [ %1154, %gr_def.exit874.i.cp_ctx.exit893.i_crit_edge ], [ %.pr1039.i, %do.end10.i.i892.i ]
  %1163 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1163)
  store i32 5121, ptr %ctxprog_reg.i.i, align 4
  %1164 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load i32, ptr %ctxvals_pos.i813, align 4
  %1166 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1166)
  store i32 %1165, ptr %ctxvals_base.i829, align 4
  %add.i897.i = add i32 %1165, 1
  store i32 %add.i897.i, ptr %ctxvals_pos.i813, align 4
  %1167 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1167)
  %1168 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1162)
  %cmp.not.i.i902.i = icmp eq i32 %1162, 0
  br i1 %cmp.not.i.i902.i, label %do.body.i.i907.i, label %cp_ctx.exit893.i.cp_ctx.exit912.i_crit_edge

cp_ctx.exit893.i.cp_ctx.exit912.i_crit_edge:      ; preds = %cp_ctx.exit893.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit912.i

do.body.i.i907.i:                                 ; preds = %cp_ctx.exit893.i
  %ctxprog_len.i.i904.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1169 = ptrtoint ptr %ctxprog_len.i.i904.i to i32
  call void @__asan_load4_noabort(i32 %1169)
  %1170 = load i32, ptr %ctxprog_len.i.i904.i, align 4
  %ctxprog_max.i.i905.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1171 = ptrtoint ptr %ctxprog_max.i.i905.i to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load i32, ptr %ctxprog_max.i.i905.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1170, i32 %1172)
  %cmp1.i.i906.i = icmp eq i32 %1170, %1172
  br i1 %cmp1.i.i906.i, label %do.body4.i.i908.i, label %do.end10.i.i911.i, !prof !9

do.body4.i.i908.i:                                ; preds = %do.body.i.i907.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i911.i:                                ; preds = %do.body.i.i907.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i909.i = add i32 %1170, 1
  %1173 = ptrtoint ptr %ctxprog_len.i.i904.i to i32
  call void @__asan_store4_noabort(i32 %1173)
  store i32 %inc.i.i909.i, ptr %ctxprog_len.i.i904.i, align 4
  %arrayidx.i.i910.i = getelementptr i32, ptr %1168, i32 %1170
  %1174 = ptrtoint ptr %arrayidx.i.i910.i to i32
  call void @__asan_store4_noabort(i32 %1174)
  store i32 1070081, ptr %arrayidx.i.i910.i, align 4
  br label %cp_ctx.exit912.i

cp_ctx.exit912.i:                                 ; preds = %do.end10.i.i911.i, %cp_ctx.exit893.i.cp_ctx.exit912.i_crit_edge
  %1175 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load i32, ptr %chipset.i, align 4
  %1177 = zext i32 %1176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1177, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1176, label %sw.default.i [
    i32 71, label %cp_ctx.exit912.i.sw.bb.i_crit_edge
    i32 73, label %cp_ctx.exit912.i.sw.bb.i_crit_edge1117
    i32 75, label %cp_ctx.exit912.i.sw.bb.i_crit_edge1118
  ]

cp_ctx.exit912.i.sw.bb.i_crit_edge1118:           ; preds = %cp_ctx.exit912.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

cp_ctx.exit912.i.sw.bb.i_crit_edge1117:           ; preds = %cp_ctx.exit912.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

cp_ctx.exit912.i.sw.bb.i_crit_edge:               ; preds = %cp_ctx.exit912.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %cp_ctx.exit912.i.sw.bb.i_crit_edge, %cp_ctx.exit912.i.sw.bb.i_crit_edge1117, %cp_ctx.exit912.i.sw.bb.i_crit_edge1118
  %1178 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1178)
  store i32 3346, ptr %ctxprog_reg.i.i, align 4
  %1179 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load i32, ptr %ctxvals_pos.i813, align 4
  %1181 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1181)
  store i32 %1180, ptr %ctxvals_base.i829, align 4
  %add.i916.i = add i32 %1180, 1
  store i32 %add.i916.i, ptr %ctxvals_pos.i813, align 4
  %1182 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1182)
  %1183 = load ptr, ptr %ucode.i.i, align 4
  %1184 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1184)
  %1185 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1185)
  %cmp.not.i.i921.i = icmp eq i32 %1185, 0
  br i1 %cmp.not.i.i921.i, label %do.body.i.i926.i, label %sw.bb.i.cp_ctx.exit931.i_crit_edge

sw.bb.i.cp_ctx.exit931.i_crit_edge:               ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit931.i

do.body.i.i926.i:                                 ; preds = %sw.bb.i
  %ctxprog_len.i.i923.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1186 = ptrtoint ptr %ctxprog_len.i.i923.i to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load i32, ptr %ctxprog_len.i.i923.i, align 4
  %ctxprog_max.i.i924.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1188 = ptrtoint ptr %ctxprog_max.i.i924.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load i32, ptr %ctxprog_max.i.i924.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1187, i32 %1189)
  %cmp1.i.i925.i = icmp eq i32 %1187, %1189
  br i1 %cmp1.i.i925.i, label %do.body4.i.i927.i, label %do.end10.i.i930.i, !prof !9

do.body4.i.i927.i:                                ; preds = %do.body.i.i926.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i930.i:                                ; preds = %do.body.i.i926.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i928.i = add i32 %1187, 1
  %1190 = ptrtoint ptr %ctxprog_len.i.i923.i to i32
  call void @__asan_store4_noabort(i32 %1190)
  store i32 %inc.i.i928.i, ptr %ctxprog_len.i.i923.i, align 4
  %arrayidx.i.i929.i = getelementptr i32, ptr %1183, i32 %1187
  %1191 = ptrtoint ptr %arrayidx.i.i929.i to i32
  call void @__asan_store4_noabort(i32 %1191)
  store i32 1068306, ptr %arrayidx.i.i929.i, align 4
  %1192 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1192)
  %.pr1040.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit931.i

cp_ctx.exit931.i:                                 ; preds = %do.end10.i.i930.i, %sw.bb.i.cp_ctx.exit931.i_crit_edge
  %1193 = phi i32 [ %1185, %sw.bb.i.cp_ctx.exit931.i_crit_edge ], [ %.pr1040.i, %do.end10.i.i930.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1193)
  %cmp.not.i933.i = icmp eq i32 %1193, 1
  br i1 %cmp.not.i933.i, label %if.end.i941.i, label %cp_ctx.exit931.i.nv40_gr_construct_general.exitthread-pre-split_crit_edge

cp_ctx.exit931.i.nv40_gr_construct_general.exitthread-pre-split_crit_edge: ; preds = %cp_ctx.exit931.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_general.exitthread-pre-split

if.end.i941.i:                                    ; preds = %cp_ctx.exit931.i
  call void @__sanitizer_cov_trace_pc() #7
  %1194 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i935.i = sub i32 3346, %1195
  %1196 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1196)
  %1197 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i937.i = add i32 %sub1.i935.i, %1197
  %data.i938.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1198 = ptrtoint ptr %data.i938.i to i32
  call void @__asan_load4_noabort(i32 %1198)
  %1199 = load ptr, ptr %data.i938.i, align 4
  %1200 = ptrtoint ptr %1199 to i32
  call void @__asan_load4_noabort(i32 %1200)
  %1201 = load ptr, ptr %1199, align 8
  %wr32.i939.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1201, i32 0, i32 3
  %1202 = ptrtoint ptr %wr32.i939.i to i32
  call void @__asan_load4_noabort(i32 %1202)
  %1203 = load ptr, ptr %wr32.i939.i, align 4
  %mul.i940.i = shl i32 %add.i937.i, 2
  tail call void %1203(ptr noundef %1199, i32 noundef %mul.i940.i, i32 noundef 4112) #5
  br label %nv40_gr_construct_general.exitthread-pre-split

sw.default.i:                                     ; preds = %cp_ctx.exit912.i
  %1204 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1204)
  store i32 3344, ptr %ctxprog_reg.i.i, align 4
  %1205 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load i32, ptr %ctxvals_pos.i813, align 4
  %1207 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1207)
  store i32 %1206, ptr %ctxvals_base.i829, align 4
  %add.i946.i = add i32 %1206, 1
  store i32 %add.i946.i, ptr %ctxvals_pos.i813, align 4
  %1208 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1208)
  %1209 = load ptr, ptr %ucode.i.i, align 4
  %1210 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1211)
  %cmp.not.i.i951.i = icmp eq i32 %1211, 0
  br i1 %cmp.not.i.i951.i, label %do.body.i.i956.i, label %sw.default.i.cp_ctx.exit961.i_crit_edge

sw.default.i.cp_ctx.exit961.i_crit_edge:          ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit961.i

do.body.i.i956.i:                                 ; preds = %sw.default.i
  %ctxprog_len.i.i953.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1212 = ptrtoint ptr %ctxprog_len.i.i953.i to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load i32, ptr %ctxprog_len.i.i953.i, align 4
  %ctxprog_max.i.i954.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1214 = ptrtoint ptr %ctxprog_max.i.i954.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load i32, ptr %ctxprog_max.i.i954.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1213, i32 %1215)
  %cmp1.i.i955.i = icmp eq i32 %1213, %1215
  br i1 %cmp1.i.i955.i, label %do.body4.i.i957.i, label %do.end10.i.i960.i, !prof !9

do.body4.i.i957.i:                                ; preds = %do.body.i.i956.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i960.i:                                ; preds = %do.body.i.i956.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i958.i = add i32 %1213, 1
  %1216 = ptrtoint ptr %ctxprog_len.i.i953.i to i32
  call void @__asan_store4_noabort(i32 %1216)
  store i32 %inc.i.i958.i, ptr %ctxprog_len.i.i953.i, align 4
  %arrayidx.i.i959.i = getelementptr i32, ptr %1209, i32 %1213
  %1217 = ptrtoint ptr %arrayidx.i.i959.i to i32
  call void @__asan_store4_noabort(i32 %1217)
  store i32 1068304, ptr %arrayidx.i.i959.i, align 4
  br label %cp_ctx.exit961.i

cp_ctx.exit961.i:                                 ; preds = %do.end10.i.i960.i, %sw.default.i.cp_ctx.exit961.i_crit_edge
  %1218 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load i32, ptr %chipset.i, align 4
  %1220 = add i32 %1219, -64
  %1221 = tail call i32 @llvm.fshl.i32(i32 %1220, i32 %1220, i32 31) #5
  %1222 = zext i32 %1221 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1222, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1221, label %sw.default30.i [
    i32 0, label %sw.bb27.i
    i32 2, label %cp_ctx.exit961.i.sw.bb28.i_crit_edge
    i32 3, label %cp_ctx.exit961.i.sw.bb28.i_crit_edge1119
    i32 5, label %cp_ctx.exit961.i.sw.bb28.i_crit_edge1120
  ]

cp_ctx.exit961.i.sw.bb28.i_crit_edge1120:         ; preds = %cp_ctx.exit961.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

cp_ctx.exit961.i.sw.bb28.i_crit_edge1119:         ; preds = %cp_ctx.exit961.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

cp_ctx.exit961.i.sw.bb28.i_crit_edge:             ; preds = %cp_ctx.exit961.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i

sw.bb27.i:                                        ; preds = %cp_ctx.exit961.i
  %1223 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1224)
  %cmp.not.i963.i = icmp eq i32 %1224, 1
  br i1 %cmp.not.i963.i, label %if.end.i971.i, label %sw.bb27.i.nv40_gr_construct_general.exit_crit_edge

sw.bb27.i.nv40_gr_construct_general.exit_crit_edge: ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_general.exit

if.end.i971.i:                                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #7
  %1225 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1225)
  %1226 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i965.i = sub i32 3344, %1226
  %1227 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i967.i = add i32 %sub1.i965.i, %1228
  %data.i968.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1229 = ptrtoint ptr %data.i968.i to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load ptr, ptr %data.i968.i, align 4
  %1231 = ptrtoint ptr %1230 to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load ptr, ptr %1230, align 8
  %wr32.i969.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1232, i32 0, i32 3
  %1233 = ptrtoint ptr %wr32.i969.i to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load ptr, ptr %wr32.i969.i, align 4
  %mul.i970.i = shl i32 %add.i967.i, 2
  tail call void %1234(ptr noundef %1230, i32 noundef %mul.i970.i, i32 noundef 16) #5
  br label %nv40_gr_construct_general.exitthread-pre-split

sw.bb28.i:                                        ; preds = %cp_ctx.exit961.i.sw.bb28.i_crit_edge, %cp_ctx.exit961.i.sw.bb28.i_crit_edge1119, %cp_ctx.exit961.i.sw.bb28.i_crit_edge1120
  %1235 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1235)
  %1236 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1236)
  %cmp.not.i974.i = icmp eq i32 %1236, 1
  br i1 %cmp.not.i974.i, label %if.end.i982.i, label %sw.bb28.i.nv40_gr_construct_general.exit_crit_edge

sw.bb28.i.nv40_gr_construct_general.exit_crit_edge: ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_general.exit

if.end.i982.i:                                    ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #7
  %1237 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1237)
  %1238 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i976.i = sub i32 3344, %1238
  %1239 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1239)
  %1240 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i978.i = add i32 %sub1.i976.i, %1240
  %data.i979.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1241 = ptrtoint ptr %data.i979.i to i32
  call void @__asan_load4_noabort(i32 %1241)
  %1242 = load ptr, ptr %data.i979.i, align 4
  %1243 = ptrtoint ptr %1242 to i32
  call void @__asan_load4_noabort(i32 %1243)
  %1244 = load ptr, ptr %1242, align 8
  %wr32.i980.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1244, i32 0, i32 3
  %1245 = ptrtoint ptr %wr32.i980.i to i32
  call void @__asan_load4_noabort(i32 %1245)
  %1246 = load ptr, ptr %wr32.i980.i, align 4
  %mul.i981.i = shl i32 %add.i978.i, 2
  tail call void %1246(ptr noundef %1242, i32 noundef %mul.i981.i, i32 noundef 12304) #5
  br label %nv40_gr_construct_general.exitthread-pre-split

sw.default30.i:                                   ; preds = %cp_ctx.exit961.i
  %1247 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1247)
  %1248 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1248)
  %cmp.not.i985.i = icmp eq i32 %1248, 1
  br i1 %cmp.not.i985.i, label %if.end.i993.i, label %sw.default30.i.nv40_gr_construct_general.exit_crit_edge

sw.default30.i.nv40_gr_construct_general.exit_crit_edge: ; preds = %sw.default30.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_general.exit

if.end.i993.i:                                    ; preds = %sw.default30.i
  call void @__sanitizer_cov_trace_pc() #7
  %1249 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1249)
  %1250 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i987.i = sub i32 3344, %1250
  %1251 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i989.i = add i32 %sub1.i987.i, %1252
  %data.i990.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1253 = ptrtoint ptr %data.i990.i to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load ptr, ptr %data.i990.i, align 4
  %1255 = ptrtoint ptr %1254 to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load ptr, ptr %1254, align 8
  %wr32.i991.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1256, i32 0, i32 3
  %1257 = ptrtoint ptr %wr32.i991.i to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load ptr, ptr %wr32.i991.i, align 4
  %mul.i992.i = shl i32 %add.i989.i, 2
  tail call void %1258(ptr noundef %1254, i32 noundef %mul.i992.i, i32 noundef 4112) #5
  br label %nv40_gr_construct_general.exitthread-pre-split

nv40_gr_construct_general.exitthread-pre-split:   ; preds = %if.end.i993.i, %if.end.i982.i, %if.end.i971.i, %if.end.i941.i, %cp_ctx.exit931.i.nv40_gr_construct_general.exitthread-pre-split_crit_edge
  %1259 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %.pr900 = load i32, ptr %mode.i.i, align 4
  br label %nv40_gr_construct_general.exit

nv40_gr_construct_general.exit:                   ; preds = %nv40_gr_construct_general.exitthread-pre-split, %sw.default30.i.nv40_gr_construct_general.exit_crit_edge, %sw.bb28.i.nv40_gr_construct_general.exit_crit_edge, %sw.bb27.i.nv40_gr_construct_general.exit_crit_edge
  %1260 = phi i32 [ %.pr900, %nv40_gr_construct_general.exitthread-pre-split ], [ %1224, %sw.bb27.i.nv40_gr_construct_general.exit_crit_edge ], [ %1236, %sw.bb28.i.nv40_gr_construct_general.exit_crit_edge ], [ %1248, %sw.default30.i.nv40_gr_construct_general.exit_crit_edge ]
  %1261 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1261)
  %1262 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1260)
  %cmp.not.i.i389 = icmp eq i32 %1260, 0
  br i1 %cmp.not.i.i389, label %do.body.i.i393, label %nv40_gr_construct_general.exit._cp_wait.exit398_crit_edge

nv40_gr_construct_general.exit._cp_wait.exit398_crit_edge: ; preds = %nv40_gr_construct_general.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_wait.exit398

do.body.i.i393:                                   ; preds = %nv40_gr_construct_general.exit
  %ctxprog_len.i.i390 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1263 = ptrtoint ptr %ctxprog_len.i.i390 to i32
  call void @__asan_load4_noabort(i32 %1263)
  %1264 = load i32, ptr %ctxprog_len.i.i390, align 4
  %ctxprog_max.i.i391 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1265 = ptrtoint ptr %ctxprog_max.i.i391 to i32
  call void @__asan_load4_noabort(i32 %1265)
  %1266 = load i32, ptr %ctxprog_max.i.i391, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1264, i32 %1266)
  %cmp1.i.i392 = icmp eq i32 %1264, %1266
  br i1 %cmp1.i.i392, label %do.body4.i.i394, label %do.end10.i.i397, !prof !9

do.body4.i.i394:                                  ; preds = %do.body.i.i393
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i397:                                  ; preds = %do.body.i.i393
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i395 = add i32 %1264, 1
  %1267 = ptrtoint ptr %ctxprog_len.i.i390 to i32
  call void @__asan_store4_noabort(i32 %1267)
  store i32 %inc.i.i395, ptr %ctxprog_len.i.i390, align 4
  %arrayidx.i.i396 = getelementptr i32, ptr %1262, i32 %1264
  %1268 = ptrtoint ptr %arrayidx.i.i396 to i32
  call void @__asan_store4_noabort(i32 %1268)
  store i32 5242976, ptr %arrayidx.i.i396, align 4
  br label %_cp_wait.exit398

_cp_wait.exit398:                                 ; preds = %do.end10.i.i397, %nv40_gr_construct_general.exit._cp_wait.exit398_crit_edge
  %arrayidx.i399 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 7
  %1269 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_load4_noabort(i32 %1269)
  %1270 = load i32, ptr %arrayidx.i399, align 4
  %shl.i400 = shl i32 %1270, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i400)
  %cmp1.i401 = icmp eq i32 %shl.i400, 0
  %shl.i400.op.op = or i32 %shl.i400, 4194534
  %or9.i404 = select i1 %cmp1.i401, i32 -12580890, i32 %shl.i400.op.op
  %1271 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1271)
  %1272 = load ptr, ptr %ucode.i.i, align 4
  %1273 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1273)
  %1274 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1274)
  %cmp.not.i.i407 = icmp eq i32 %1274, 0
  br i1 %cmp.not.i.i407, label %do.body.i.i411, label %_cp_wait.exit398._cp_bra.exit416_crit_edge

_cp_wait.exit398._cp_bra.exit416_crit_edge:       ; preds = %_cp_wait.exit398
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_bra.exit416

do.body.i.i411:                                   ; preds = %_cp_wait.exit398
  %ctxprog_len.i.i408 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1275 = ptrtoint ptr %ctxprog_len.i.i408 to i32
  call void @__asan_load4_noabort(i32 %1275)
  %1276 = load i32, ptr %ctxprog_len.i.i408, align 4
  %ctxprog_max.i.i409 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1277 = ptrtoint ptr %ctxprog_max.i.i409 to i32
  call void @__asan_load4_noabort(i32 %1277)
  %1278 = load i32, ptr %ctxprog_max.i.i409, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1276, i32 %1278)
  %cmp1.i.i410 = icmp eq i32 %1276, %1278
  br i1 %cmp1.i.i410, label %do.body4.i.i412, label %do.end10.i.i415, !prof !9

do.body4.i.i412:                                  ; preds = %do.body.i.i411
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i415:                                  ; preds = %do.body.i.i411
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i413 = add i32 %1276, 1
  %1279 = ptrtoint ptr %ctxprog_len.i.i408 to i32
  call void @__asan_store4_noabort(i32 %1279)
  store i32 %inc.i.i413, ptr %ctxprog_len.i.i408, align 4
  %arrayidx.i.i414 = getelementptr i32, ptr %1272, i32 %1276
  %1280 = ptrtoint ptr %arrayidx.i.i414 to i32
  call void @__asan_store4_noabort(i32 %1280)
  store i32 %or9.i404, ptr %arrayidx.i.i414, align 4
  br label %_cp_bra.exit416

_cp_bra.exit416:                                  ; preds = %do.end10.i.i415, %_cp_wait.exit398._cp_bra.exit416_crit_edge
  %1281 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load ptr, ptr %ctx, align 4
  %chipset.i417 = getelementptr inbounds %struct.nvkm_device, ptr %1282, i32 0, i32 16
  %1283 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1283)
  %1284 = load i32, ptr %chipset.i417, align 4
  %1285 = zext i32 %1284 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1285, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %1284, label %_cp_bra.exit416.if.end18.i_crit_edge [
    i32 64, label %if.then.i425
    i32 70, label %_cp_bra.exit416.if.then12.i_crit_edge
    i32 71, label %_cp_bra.exit416.if.then12.i_crit_edge1121
    i32 73, label %_cp_bra.exit416.if.then12.i_crit_edge1122
    i32 75, label %_cp_bra.exit416.if.then12.i_crit_edge1123
  ]

_cp_bra.exit416.if.then12.i_crit_edge1123:        ; preds = %_cp_bra.exit416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

_cp_bra.exit416.if.then12.i_crit_edge1122:        ; preds = %_cp_bra.exit416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

_cp_bra.exit416.if.then12.i_crit_edge1121:        ; preds = %_cp_bra.exit416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

_cp_bra.exit416.if.then12.i_crit_edge:            ; preds = %_cp_bra.exit416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12.i

_cp_bra.exit416.if.end18.i_crit_edge:             ; preds = %_cp_bra.exit416
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then.i425:                                     ; preds = %_cp_bra.exit416
  %1286 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1286)
  store i32 1568, ptr %ctxprog_reg.i.i, align 4
  %1287 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1287)
  %1288 = load i32, ptr %ctxvals_pos.i813, align 4
  %1289 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1289)
  store i32 %1288, ptr %ctxvals_base.i829, align 4
  %add.i.i421 = add i32 %1288, 51
  store i32 %add.i.i421, ptr %ctxvals_pos.i813, align 4
  %1290 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load ptr, ptr %ucode.i.i, align 4
  %1292 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1293)
  %cmp.not.i.i.i424 = icmp eq i32 %1293, 0
  br i1 %cmp.not.i.i.i424, label %do.body.i.i.i429, label %if.then.i425.cp_ctx.exit.i436_crit_edge

if.then.i425.cp_ctx.exit.i436_crit_edge:          ; preds = %if.then.i425
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit.i436

do.body.i.i.i429:                                 ; preds = %if.then.i425
  %ctxprog_len.i.i.i426 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1294 = ptrtoint ptr %ctxprog_len.i.i.i426 to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load i32, ptr %ctxprog_len.i.i.i426, align 4
  %ctxprog_max.i.i.i427 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1296 = ptrtoint ptr %ctxprog_max.i.i.i427 to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load i32, ptr %ctxprog_max.i.i.i427, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1295, i32 %1297)
  %cmp1.i.i.i428 = icmp eq i32 %1295, %1297
  br i1 %cmp1.i.i.i428, label %do.body4.i.i.i430, label %do.end10.i.i.i434, !prof !9

do.body4.i.i.i430:                                ; preds = %do.body.i.i.i429
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i434:                                ; preds = %do.body.i.i.i429
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i431 = add i32 %1295, 1
  %1298 = ptrtoint ptr %ctxprog_len.i.i.i426 to i32
  call void @__asan_store4_noabort(i32 %1298)
  store i32 %inc.i.i.i431, ptr %ctxprog_len.i.i.i426, align 4
  %arrayidx.i.i.i432 = getelementptr i32, ptr %1291, i32 %1295
  %1299 = ptrtoint ptr %arrayidx.i.i.i432 to i32
  call void @__asan_store4_noabort(i32 %1299)
  store i32 1885728, ptr %arrayidx.i.i.i432, align 4
  %1300 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1300)
  %.pr.i433 = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit.i436

cp_ctx.exit.i436:                                 ; preds = %do.end10.i.i.i434, %if.then.i425.cp_ctx.exit.i436_crit_edge
  %1301 = phi i32 [ %1293, %if.then.i425.cp_ctx.exit.i436_crit_edge ], [ %.pr.i433, %do.end10.i.i.i434 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1301)
  %cmp.not.i.i435 = icmp eq i32 %1301, 1
  br i1 %cmp.not.i.i435, label %if.end.i.i441, label %cp_ctx.exit.i436.if.end18.i_crit_edge

cp_ctx.exit.i436.if.end18.i_crit_edge:            ; preds = %cp_ctx.exit.i436
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.end.i.i441:                                    ; preds = %cp_ctx.exit.i436
  call void @__sanitizer_cov_trace_pc() #7
  %1302 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1302)
  %1303 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i.i437 = sub i32 1616, %1303
  %1304 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1304)
  %1305 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i202.i = add i32 %sub1.i.i437, %1305
  %data.i.i438 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1306 = ptrtoint ptr %data.i.i438 to i32
  call void @__asan_load4_noabort(i32 %1306)
  %1307 = load ptr, ptr %data.i.i438, align 4
  %1308 = ptrtoint ptr %1307 to i32
  call void @__asan_load4_noabort(i32 %1308)
  %1309 = load ptr, ptr %1307, align 8
  %wr32.i.i439 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1309, i32 0, i32 3
  %1310 = ptrtoint ptr %wr32.i.i439 to i32
  call void @__asan_load4_noabort(i32 %1310)
  %1311 = load ptr, ptr %wr32.i.i439, align 4
  %mul.i.i440 = shl i32 %add.i202.i, 2
  tail call void %1311(ptr noundef %1307, i32 noundef %mul.i.i440, i32 noundef 256) #5
  br label %if.end18.i

if.then12.i:                                      ; preds = %_cp_bra.exit416.if.then12.i_crit_edge, %_cp_bra.exit416.if.then12.i_crit_edge1121, %_cp_bra.exit416.if.then12.i_crit_edge1122, %_cp_bra.exit416.if.then12.i_crit_edge1123
  %1312 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1312)
  store i32 1568, ptr %ctxprog_reg.i.i, align 4
  %1313 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1313)
  %1314 = load i32, ptr %ctxvals_pos.i813, align 4
  %1315 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1315)
  store i32 %1314, ptr %ctxvals_base.i829, align 4
  %add.i206.i = add i32 %1314, 32
  store i32 %add.i206.i, ptr %ctxvals_pos.i813, align 4
  %1316 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1316)
  %1317 = load ptr, ptr %ucode.i.i, align 4
  %1318 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1318)
  %1319 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1319)
  %cmp.not.i.i211.i = icmp eq i32 %1319, 0
  br i1 %cmp.not.i.i211.i, label %do.body.i.i216.i, label %if.then12.i.cp_ctx.exit221.i_crit_edge

if.then12.i.cp_ctx.exit221.i_crit_edge:           ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit221.i

do.body.i.i216.i:                                 ; preds = %if.then12.i
  %ctxprog_len.i.i213.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1320 = ptrtoint ptr %ctxprog_len.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %1320)
  %1321 = load i32, ptr %ctxprog_len.i.i213.i, align 4
  %ctxprog_max.i.i214.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1322 = ptrtoint ptr %ctxprog_max.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %1322)
  %1323 = load i32, ptr %ctxprog_max.i.i214.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1321, i32 %1323)
  %cmp1.i.i215.i = icmp eq i32 %1321, %1323
  br i1 %cmp1.i.i215.i, label %do.body4.i.i217.i, label %do.end10.i.i220.i, !prof !9

do.body4.i.i217.i:                                ; preds = %do.body.i.i216.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i220.i:                                ; preds = %do.body.i.i216.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i218.i = add i32 %1321, 1
  %1324 = ptrtoint ptr %ctxprog_len.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %1324)
  store i32 %inc.i.i218.i, ptr %ctxprog_len.i.i213.i, align 4
  %arrayidx.i.i219.i = getelementptr i32, ptr %1317, i32 %1321
  %1325 = ptrtoint ptr %arrayidx.i.i219.i to i32
  call void @__asan_store4_noabort(i32 %1325)
  store i32 1574432, ptr %arrayidx.i.i219.i, align 4
  br label %cp_ctx.exit221.i

cp_ctx.exit221.i:                                 ; preds = %do.end10.i.i220.i, %if.then12.i.cp_ctx.exit221.i_crit_edge
  %data.i228.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  br label %for.body.i442

for.body.i442:                                    ; preds = %gr_def.exit232.i.for.body.i442_crit_edge, %cp_ctx.exit221.i
  %i.01304.i = phi i32 [ 0, %cp_ctx.exit221.i ], [ %inc.i443, %gr_def.exit232.i.for.body.i442_crit_edge ]
  %1326 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1326)
  %1327 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1327)
  %cmp.not.i223.i = icmp eq i32 %1327, 1
  br i1 %cmp.not.i223.i, label %if.end.i231.i, label %for.body.i442.gr_def.exit232.i_crit_edge

for.body.i442.gr_def.exit232.i_crit_edge:         ; preds = %for.body.i442
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit232.i

if.end.i231.i:                                    ; preds = %for.body.i442
  call void @__sanitizer_cov_trace_pc() #7
  %1328 = add nuw nsw i32 %i.01304.i, 1568
  %1329 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1329)
  %1330 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i225.i = sub i32 %1328, %1330
  %1331 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1331)
  %1332 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i227.i = add i32 %sub1.i225.i, %1332
  %1333 = ptrtoint ptr %data.i228.i to i32
  call void @__asan_load4_noabort(i32 %1333)
  %1334 = load ptr, ptr %data.i228.i, align 4
  %1335 = ptrtoint ptr %1334 to i32
  call void @__asan_load4_noabort(i32 %1335)
  %1336 = load ptr, ptr %1334, align 8
  %wr32.i229.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1336, i32 0, i32 3
  %1337 = ptrtoint ptr %wr32.i229.i to i32
  call void @__asan_load4_noabort(i32 %1337)
  %1338 = load ptr, ptr %wr32.i229.i, align 4
  %mul.i230.i = shl i32 %add.i227.i, 2
  tail call void %1338(ptr noundef %1334, i32 noundef %mul.i230.i, i32 noundef 273) #5
  br label %gr_def.exit232.i

gr_def.exit232.i:                                 ; preds = %if.end.i231.i, %for.body.i442.gr_def.exit232.i_crit_edge
  %inc.i443 = add nuw nsw i32 %i.01304.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i443, 16
  br i1 %exitcond.not.i, label %for.end.i, label %gr_def.exit232.i.for.body.i442_crit_edge

gr_def.exit232.i.for.body.i442_crit_edge:         ; preds = %gr_def.exit232.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i442

for.end.i:                                        ; preds = %gr_def.exit232.i
  %1339 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1339)
  %1340 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %1340)
  %cmp15.i = icmp eq i32 %1340, 70
  br i1 %cmp15.i, label %if.then16.i, label %for.end.i.if.endthread-pre-split.i_crit_edge

for.end.i.if.endthread-pre-split.i_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.endthread-pre-split.i

if.then16.i:                                      ; preds = %for.end.i
  %1341 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1341)
  store i32 1600, ptr %ctxprog_reg.i.i, align 4
  %1342 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1342)
  %1343 = load i32, ptr %ctxvals_pos.i813, align 4
  %1344 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1344)
  store i32 %1343, ptr %ctxvals_base.i829, align 4
  %add.i236.i = add i32 %1343, 16
  store i32 %add.i236.i, ptr %ctxvals_pos.i813, align 4
  %1345 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1345)
  %1346 = load ptr, ptr %ucode.i.i, align 4
  %1347 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1347)
  %1348 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1348)
  %cmp.not.i.i241.i = icmp eq i32 %1348, 0
  br i1 %cmp.not.i.i241.i, label %do.body.i.i246.i, label %if.then16.i.if.end.i444_crit_edge

if.then16.i.if.end.i444_crit_edge:                ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i444

do.body.i.i246.i:                                 ; preds = %if.then16.i
  %ctxprog_len.i.i243.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1349 = ptrtoint ptr %ctxprog_len.i.i243.i to i32
  call void @__asan_load4_noabort(i32 %1349)
  %1350 = load i32, ptr %ctxprog_len.i.i243.i, align 4
  %ctxprog_max.i.i244.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1351 = ptrtoint ptr %ctxprog_max.i.i244.i to i32
  call void @__asan_load4_noabort(i32 %1351)
  %1352 = load i32, ptr %ctxprog_max.i.i244.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1350, i32 %1352)
  %cmp1.i.i245.i = icmp eq i32 %1350, %1352
  br i1 %cmp1.i.i245.i, label %do.body4.i.i247.i, label %do.end10.i.i250.i, !prof !9

do.body4.i.i247.i:                                ; preds = %do.body.i.i246.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i250.i:                                ; preds = %do.body.i.i246.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i248.i = add i32 %1350, 1
  %1353 = ptrtoint ptr %ctxprog_len.i.i243.i to i32
  call void @__asan_store4_noabort(i32 %1353)
  store i32 %inc.i.i248.i, ptr %ctxprog_len.i.i243.i, align 4
  %arrayidx.i.i249.i = getelementptr i32, ptr %1346, i32 %1350
  %1354 = ptrtoint ptr %arrayidx.i.i249.i to i32
  call void @__asan_store4_noabort(i32 %1354)
  store i32 1312320, ptr %arrayidx.i.i249.i, align 4
  br label %if.endthread-pre-split.i

if.endthread-pre-split.i:                         ; preds = %do.end10.i.i250.i, %for.end.i.if.endthread-pre-split.i_crit_edge
  %1355 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1355)
  %.pr1161.i = load i32, ptr %mode.i.i, align 4
  br label %if.end.i444

if.end.i444:                                      ; preds = %if.endthread-pre-split.i, %if.then16.i.if.end.i444_crit_edge
  %1356 = phi i32 [ %.pr1161.i, %if.endthread-pre-split.i ], [ %1348, %if.then16.i.if.end.i444_crit_edge ]
  %1357 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1357)
  store i32 1616, ptr %ctxprog_reg.i.i, align 4
  %1358 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1358)
  %1359 = load i32, ptr %ctxvals_pos.i813, align 4
  %1360 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1360)
  store i32 %1359, ptr %ctxvals_base.i829, align 4
  %add.i255.i = add i32 %1359, 3
  store i32 %add.i255.i, ptr %ctxvals_pos.i813, align 4
  %1361 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1361)
  %1362 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1356)
  %cmp.not.i.i260.i = icmp eq i32 %1356, 0
  br i1 %cmp.not.i.i260.i, label %do.body.i.i265.i, label %if.end.i444.if.end18.i_crit_edge

if.end.i444.if.end18.i_crit_edge:                 ; preds = %if.end.i444
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

do.body.i.i265.i:                                 ; preds = %if.end.i444
  %ctxprog_len.i.i262.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1363 = ptrtoint ptr %ctxprog_len.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %1363)
  %1364 = load i32, ptr %ctxprog_len.i.i262.i, align 4
  %ctxprog_max.i.i263.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1365 = ptrtoint ptr %ctxprog_max.i.i263.i to i32
  call void @__asan_load4_noabort(i32 %1365)
  %1366 = load i32, ptr %ctxprog_max.i.i263.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1364, i32 %1366)
  %cmp1.i.i264.i = icmp eq i32 %1364, %1366
  br i1 %cmp1.i.i264.i, label %do.body4.i.i266.i, label %do.end10.i.i269.i, !prof !9

do.body4.i.i266.i:                                ; preds = %do.body.i.i265.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i269.i:                                ; preds = %do.body.i.i265.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i267.i = add i32 %1364, 1
  %1367 = ptrtoint ptr %ctxprog_len.i.i262.i to i32
  call void @__asan_store4_noabort(i32 %1367)
  store i32 %inc.i.i267.i, ptr %ctxprog_len.i.i262.i, align 4
  %arrayidx.i.i268.i = getelementptr i32, ptr %1362, i32 %1364
  %1368 = ptrtoint ptr %arrayidx.i.i268.i to i32
  call void @__asan_store4_noabort(i32 %1368)
  store i32 1099344, ptr %arrayidx.i.i268.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %do.end10.i.i269.i, %if.end.i444.if.end18.i_crit_edge, %if.end.i.i441, %cp_ctx.exit.i436.if.end18.i_crit_edge, %_cp_bra.exit416.if.end18.i_crit_edge
  %1369 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1369)
  store i32 1619, ptr %ctxprog_reg.i.i, align 4
  %1370 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1370)
  %1371 = load i32, ptr %ctxvals_pos.i813, align 4
  %1372 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1372)
  store i32 %1371, ptr %ctxvals_base.i829, align 4
  %add.i274.i = add i32 %1371, 18
  store i32 %add.i274.i, ptr %ctxvals_pos.i813, align 4
  %1373 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1373)
  %1374 = load ptr, ptr %ucode.i.i, align 4
  %1375 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1375)
  %1376 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1376)
  %cmp.not.i.i279.i = icmp eq i32 %1376, 0
  br i1 %cmp.not.i.i279.i, label %do.body.i.i284.i, label %if.end18.i.cp_ctx.exit289.i_crit_edge

if.end18.i.cp_ctx.exit289.i_crit_edge:            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit289.i

do.body.i.i284.i:                                 ; preds = %if.end18.i
  %ctxprog_len.i.i281.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1377 = ptrtoint ptr %ctxprog_len.i.i281.i to i32
  call void @__asan_load4_noabort(i32 %1377)
  %1378 = load i32, ptr %ctxprog_len.i.i281.i, align 4
  %ctxprog_max.i.i282.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1379 = ptrtoint ptr %ctxprog_max.i.i282.i to i32
  call void @__asan_load4_noabort(i32 %1379)
  %1380 = load i32, ptr %ctxprog_max.i.i282.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1378, i32 %1380)
  %cmp1.i.i283.i = icmp eq i32 %1378, %1380
  br i1 %cmp1.i.i283.i, label %do.body4.i.i285.i, label %do.end10.i.i288.i, !prof !9

do.body4.i.i285.i:                                ; preds = %do.body.i.i284.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i288.i:                                ; preds = %do.body.i.i284.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i286.i = add i32 %1378, 1
  %1381 = ptrtoint ptr %ctxprog_len.i.i281.i to i32
  call void @__asan_store4_noabort(i32 %1381)
  store i32 %inc.i.i286.i, ptr %ctxprog_len.i.i281.i, align 4
  %arrayidx.i.i287.i = getelementptr i32, ptr %1374, i32 %1378
  %1382 = ptrtoint ptr %arrayidx.i.i287.i to i32
  call void @__asan_store4_noabort(i32 %1382)
  store i32 1345107, ptr %arrayidx.i.i287.i, align 4
  %1383 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1383)
  %.pr1162.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit289.i

cp_ctx.exit289.i:                                 ; preds = %do.end10.i.i288.i, %if.end18.i.cp_ctx.exit289.i_crit_edge
  %1384 = phi i32 [ %1376, %if.end18.i.cp_ctx.exit289.i_crit_edge ], [ %.pr1162.i, %do.end10.i.i288.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1384)
  %cmp.not.i291.i = icmp eq i32 %1384, 1
  br i1 %cmp.not.i291.i, label %if.end.i299.i, label %cp_ctx.exit289.i.gr_def.exit300.i_crit_edge

cp_ctx.exit289.i.gr_def.exit300.i_crit_edge:      ; preds = %cp_ctx.exit289.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit300.i

if.end.i299.i:                                    ; preds = %cp_ctx.exit289.i
  call void @__sanitizer_cov_trace_pc() #7
  %1385 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1385)
  %1386 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i293.i = sub i32 1621, %1386
  %1387 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1387)
  %1388 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i295.i = add i32 %sub1.i293.i, %1388
  %data.i296.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1389 = ptrtoint ptr %data.i296.i to i32
  call void @__asan_load4_noabort(i32 %1389)
  %1390 = load ptr, ptr %data.i296.i, align 4
  %1391 = ptrtoint ptr %1390 to i32
  call void @__asan_load4_noabort(i32 %1391)
  %1392 = load ptr, ptr %1390, align 8
  %wr32.i297.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1392, i32 0, i32 3
  %1393 = ptrtoint ptr %wr32.i297.i to i32
  call void @__asan_load4_noabort(i32 %1393)
  %1394 = load ptr, ptr %wr32.i297.i, align 4
  %mul.i298.i = shl i32 %add.i295.i, 2
  tail call void %1394(ptr noundef %1390, i32 noundef %mul.i298.i, i32 noundef 273) #5
  br label %gr_def.exit300.i

gr_def.exit300.i:                                 ; preds = %if.end.i299.i, %cp_ctx.exit289.i.gr_def.exit300.i_crit_edge
  %1395 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1395)
  %1396 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1396)
  %cmp.not.i302.i = icmp eq i32 %1396, 1
  br i1 %cmp.not.i302.i, label %gr_def.exit311.i, label %gr_def.exit300.i.gr_def.exit355.i_crit_edge

gr_def.exit300.i.gr_def.exit355.i_crit_edge:      ; preds = %gr_def.exit300.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit355.i

gr_def.exit311.i:                                 ; preds = %gr_def.exit300.i
  %1397 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1397)
  %1398 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i304.i = sub i32 1622, %1398
  %1399 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1399)
  %1400 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i306.i = add i32 %sub1.i304.i, %1400
  %data.i307.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1401 = ptrtoint ptr %data.i307.i to i32
  call void @__asan_load4_noabort(i32 %1401)
  %1402 = load ptr, ptr %data.i307.i, align 4
  %1403 = ptrtoint ptr %1402 to i32
  call void @__asan_load4_noabort(i32 %1403)
  %1404 = load ptr, ptr %1402, align 8
  %wr32.i308.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1404, i32 0, i32 3
  %1405 = ptrtoint ptr %wr32.i308.i to i32
  call void @__asan_load4_noabort(i32 %1405)
  %1406 = load ptr, ptr %wr32.i308.i, align 4
  %mul.i309.i = shl i32 %add.i306.i, 2
  tail call void %1406(ptr noundef %1402, i32 noundef %mul.i309.i, i32 noundef 524384) #5
  %1407 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1407)
  %.pr1163.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1163.i)
  %cmp.not.i313.i = icmp eq i32 %.pr1163.i, 1
  br i1 %cmp.not.i313.i, label %gr_def.exit322.i, label %gr_def.exit311.i.gr_def.exit355.i_crit_edge

gr_def.exit311.i.gr_def.exit355.i_crit_edge:      ; preds = %gr_def.exit311.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit355.i

gr_def.exit322.i:                                 ; preds = %gr_def.exit311.i
  %1408 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1408)
  %1409 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i315.i = sub i32 1629, %1409
  %1410 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1410)
  %1411 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i317.i = add i32 %sub1.i315.i, %1411
  %1412 = ptrtoint ptr %data.i307.i to i32
  call void @__asan_load4_noabort(i32 %1412)
  %1413 = load ptr, ptr %data.i307.i, align 4
  %1414 = ptrtoint ptr %1413 to i32
  call void @__asan_load4_noabort(i32 %1414)
  %1415 = load ptr, ptr %1413, align 8
  %wr32.i319.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1415, i32 0, i32 3
  %1416 = ptrtoint ptr %wr32.i319.i to i32
  call void @__asan_load4_noabort(i32 %1416)
  %1417 = load ptr, ptr %wr32.i319.i, align 4
  %mul.i320.i = shl i32 %add.i317.i, 2
  tail call void %1417(ptr noundef %1413, i32 noundef %mul.i320.i, i32 noundef 128) #5
  %1418 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1418)
  %.pr1165.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1165.i)
  %cmp.not.i324.i = icmp eq i32 %.pr1165.i, 1
  br i1 %cmp.not.i324.i, label %gr_def.exit333.i, label %gr_def.exit322.i.gr_def.exit355.i_crit_edge

gr_def.exit322.i.gr_def.exit355.i_crit_edge:      ; preds = %gr_def.exit322.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit355.i

gr_def.exit333.i:                                 ; preds = %gr_def.exit322.i
  %1419 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1419)
  %1420 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i326.i = sub i32 1630, %1420
  %1421 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1421)
  %1422 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i328.i = add i32 %sub1.i326.i, %1422
  %1423 = ptrtoint ptr %data.i307.i to i32
  call void @__asan_load4_noabort(i32 %1423)
  %1424 = load ptr, ptr %data.i307.i, align 4
  %1425 = ptrtoint ptr %1424 to i32
  call void @__asan_load4_noabort(i32 %1425)
  %1426 = load ptr, ptr %1424, align 8
  %wr32.i330.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1426, i32 0, i32 3
  %1427 = ptrtoint ptr %wr32.i330.i to i32
  call void @__asan_load4_noabort(i32 %1427)
  %1428 = load ptr, ptr %wr32.i330.i, align 4
  %mul.i331.i = shl i32 %add.i328.i, 2
  tail call void %1428(ptr noundef %1424, i32 noundef %mul.i331.i, i32 noundef -65536) #5
  %1429 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1429)
  %.pr1167.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1167.pr.i)
  %cmp.not.i335.i = icmp eq i32 %.pr1167.pr.i, 1
  br i1 %cmp.not.i335.i, label %gr_def.exit344.i, label %gr_def.exit333.i.gr_def.exit355.i_crit_edge

gr_def.exit333.i.gr_def.exit355.i_crit_edge:      ; preds = %gr_def.exit333.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit355.i

gr_def.exit344.i:                                 ; preds = %gr_def.exit333.i
  %1430 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1430)
  %1431 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i337.i = sub i32 1631, %1431
  %1432 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1432)
  %1433 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i339.i = add i32 %sub1.i337.i, %1433
  %1434 = ptrtoint ptr %data.i307.i to i32
  call void @__asan_load4_noabort(i32 %1434)
  %1435 = load ptr, ptr %data.i307.i, align 4
  %1436 = ptrtoint ptr %1435 to i32
  call void @__asan_load4_noabort(i32 %1436)
  %1437 = load ptr, ptr %1435, align 8
  %wr32.i341.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1437, i32 0, i32 3
  %1438 = ptrtoint ptr %wr32.i341.i to i32
  call void @__asan_load4_noabort(i32 %1438)
  %1439 = load ptr, ptr %wr32.i341.i, align 4
  %mul.i342.i = shl i32 %add.i339.i, 2
  tail call void %1439(ptr noundef %1435, i32 noundef %mul.i342.i, i32 noundef 1) #5
  %1440 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1440)
  %.pr1169.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1169.i)
  %cmp.not.i346.i = icmp eq i32 %.pr1169.i, 1
  br i1 %cmp.not.i346.i, label %if.end.i354.i, label %gr_def.exit344.i.gr_def.exit355.i_crit_edge

gr_def.exit344.i.gr_def.exit355.i_crit_edge:      ; preds = %gr_def.exit344.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit355.i

if.end.i354.i:                                    ; preds = %gr_def.exit344.i
  call void @__sanitizer_cov_trace_pc() #7
  %1441 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1441)
  %1442 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i348.i = sub i32 1636, %1442
  %1443 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1443)
  %1444 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i350.i = add i32 %sub1.i348.i, %1444
  %1445 = ptrtoint ptr %data.i307.i to i32
  call void @__asan_load4_noabort(i32 %1445)
  %1446 = load ptr, ptr %data.i307.i, align 4
  %1447 = ptrtoint ptr %1446 to i32
  call void @__asan_load4_noabort(i32 %1447)
  %1448 = load ptr, ptr %1446, align 8
  %wr32.i352.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1448, i32 0, i32 3
  %1449 = ptrtoint ptr %wr32.i352.i to i32
  call void @__asan_load4_noabort(i32 %1449)
  %1450 = load ptr, ptr %wr32.i352.i, align 4
  %mul.i353.i = shl i32 %add.i350.i, 2
  tail call void %1450(ptr noundef %1446, i32 noundef %mul.i353.i, i32 noundef 1178599424) #5
  br label %gr_def.exit355.i

gr_def.exit355.i:                                 ; preds = %if.end.i354.i, %gr_def.exit344.i.gr_def.exit355.i_crit_edge, %gr_def.exit333.i.gr_def.exit355.i_crit_edge, %gr_def.exit322.i.gr_def.exit355.i_crit_edge, %gr_def.exit311.i.gr_def.exit355.i_crit_edge, %gr_def.exit300.i.gr_def.exit355.i_crit_edge
  %1451 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1451)
  %1452 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1452)
  %cmp20.i = icmp eq i32 %1452, 64
  %1453 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1453)
  store i32 1640, ptr %ctxprog_reg.i.i, align 4
  %1454 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1454)
  %1455 = load i32, ptr %ctxvals_pos.i813, align 4
  %1456 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1456)
  store i32 %1455, ptr %ctxvals_base.i829, align 4
  br i1 %cmp20.i, label %if.then21.i, label %if.else22.i

if.then21.i:                                      ; preds = %gr_def.exit355.i
  %add.i359.i = add i32 %1455, 2
  %1457 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %1457)
  store i32 %add.i359.i, ptr %ctxvals_pos.i813, align 4
  %1458 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1458)
  %1459 = load ptr, ptr %ucode.i.i, align 4
  %1460 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1460)
  %1461 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1461)
  %cmp.not.i.i364.i = icmp eq i32 %1461, 0
  br i1 %cmp.not.i.i364.i, label %do.body.i.i369.i, label %if.then21.i.cp_ctx.exit374.i_crit_edge

if.then21.i.cp_ctx.exit374.i_crit_edge:           ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit374.i

do.body.i.i369.i:                                 ; preds = %if.then21.i
  %ctxprog_len.i.i366.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1462 = ptrtoint ptr %ctxprog_len.i.i366.i to i32
  call void @__asan_load4_noabort(i32 %1462)
  %1463 = load i32, ptr %ctxprog_len.i.i366.i, align 4
  %ctxprog_max.i.i367.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1464 = ptrtoint ptr %ctxprog_max.i.i367.i to i32
  call void @__asan_load4_noabort(i32 %1464)
  %1465 = load i32, ptr %ctxprog_max.i.i367.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1463, i32 %1465)
  %cmp1.i.i368.i = icmp eq i32 %1463, %1465
  br i1 %cmp1.i.i368.i, label %do.body4.i.i370.i, label %do.end10.i.i373.i, !prof !9

do.body4.i.i370.i:                                ; preds = %do.body.i.i369.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i373.i:                                ; preds = %do.body.i.i369.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i371.i = add i32 %1463, 1
  %1466 = ptrtoint ptr %ctxprog_len.i.i366.i to i32
  call void @__asan_store4_noabort(i32 %1466)
  store i32 %inc.i.i371.i, ptr %ctxprog_len.i.i366.i, align 4
  %arrayidx.i.i372.i = getelementptr i32, ptr %1459, i32 %1463
  %1467 = ptrtoint ptr %arrayidx.i.i372.i to i32
  call void @__asan_store4_noabort(i32 %1467)
  store i32 1082984, ptr %arrayidx.i.i372.i, align 4
  %1468 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1468)
  %.pr1171.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit374.i

cp_ctx.exit374.i:                                 ; preds = %do.end10.i.i373.i, %if.then21.i.cp_ctx.exit374.i_crit_edge
  %1469 = phi i32 [ %1461, %if.then21.i.cp_ctx.exit374.i_crit_edge ], [ %.pr1171.i, %do.end10.i.i373.i ]
  %1470 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1470)
  store i32 1643, ptr %ctxprog_reg.i.i, align 4
  %1471 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1471)
  %1472 = load i32, ptr %ctxvals_pos.i813, align 4
  %1473 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1473)
  store i32 %1472, ptr %ctxvals_base.i829, align 4
  %add.i378.i = add i32 %1472, 5
  store i32 %add.i378.i, ptr %ctxvals_pos.i813, align 4
  %1474 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1474)
  %1475 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1469)
  %cmp.not.i.i383.i = icmp eq i32 %1469, 0
  br i1 %cmp.not.i.i383.i, label %do.body.i.i388.i, label %cp_ctx.exit374.i.if.end23.i_crit_edge

cp_ctx.exit374.i.if.end23.i_crit_edge:            ; preds = %cp_ctx.exit374.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.body.i.i388.i:                                 ; preds = %cp_ctx.exit374.i
  %ctxprog_len.i.i385.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1476 = ptrtoint ptr %ctxprog_len.i.i385.i to i32
  call void @__asan_load4_noabort(i32 %1476)
  %1477 = load i32, ptr %ctxprog_len.i.i385.i, align 4
  %ctxprog_max.i.i386.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1478 = ptrtoint ptr %ctxprog_max.i.i386.i to i32
  call void @__asan_load4_noabort(i32 %1478)
  %1479 = load i32, ptr %ctxprog_max.i.i386.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1477, i32 %1479)
  %cmp1.i.i387.i = icmp eq i32 %1477, %1479
  br i1 %cmp1.i.i387.i, label %do.body4.i.i389.i, label %do.end10.i.i392.i, !prof !9

do.body4.i.i389.i:                                ; preds = %do.body.i.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i392.i:                                ; preds = %do.body.i.i388.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i390.i = add i32 %1477, 1
  %1480 = ptrtoint ptr %ctxprog_len.i.i385.i to i32
  call void @__asan_store4_noabort(i32 %1480)
  store i32 %inc.i.i390.i, ptr %ctxprog_len.i.i385.i, align 4
  %arrayidx.i.i391.i = getelementptr i32, ptr %1475, i32 %1477
  %1481 = ptrtoint ptr %arrayidx.i.i391.i to i32
  call void @__asan_store4_noabort(i32 %1481)
  store i32 1132139, ptr %arrayidx.i.i391.i, align 4
  br label %if.end23.i

if.else22.i:                                      ; preds = %gr_def.exit355.i
  %add.i397.i = add i32 %1455, 1
  %1482 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %1482)
  store i32 %add.i397.i, ptr %ctxvals_pos.i813, align 4
  %1483 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1483)
  %1484 = load ptr, ptr %ucode.i.i, align 4
  %1485 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1485)
  %1486 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1486)
  %cmp.not.i.i402.i = icmp eq i32 %1486, 0
  br i1 %cmp.not.i.i402.i, label %do.body.i.i407.i, label %if.else22.i.cp_ctx.exit412.i_crit_edge

if.else22.i.cp_ctx.exit412.i_crit_edge:           ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit412.i

do.body.i.i407.i:                                 ; preds = %if.else22.i
  %ctxprog_len.i.i404.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1487 = ptrtoint ptr %ctxprog_len.i.i404.i to i32
  call void @__asan_load4_noabort(i32 %1487)
  %1488 = load i32, ptr %ctxprog_len.i.i404.i, align 4
  %ctxprog_max.i.i405.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1489 = ptrtoint ptr %ctxprog_max.i.i405.i to i32
  call void @__asan_load4_noabort(i32 %1489)
  %1490 = load i32, ptr %ctxprog_max.i.i405.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1488, i32 %1490)
  %cmp1.i.i406.i = icmp eq i32 %1488, %1490
  br i1 %cmp1.i.i406.i, label %do.body4.i.i408.i, label %do.end10.i.i411.i, !prof !9

do.body4.i.i408.i:                                ; preds = %do.body.i.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i411.i:                                ; preds = %do.body.i.i407.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i409.i = add i32 %1488, 1
  %1491 = ptrtoint ptr %ctxprog_len.i.i404.i to i32
  call void @__asan_store4_noabort(i32 %1491)
  store i32 %inc.i.i409.i, ptr %ctxprog_len.i.i404.i, align 4
  %arrayidx.i.i410.i = getelementptr i32, ptr %1484, i32 %1488
  %1492 = ptrtoint ptr %arrayidx.i.i410.i to i32
  call void @__asan_store4_noabort(i32 %1492)
  store i32 1066600, ptr %arrayidx.i.i410.i, align 4
  %1493 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1493)
  %.pr1172.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit412.i

cp_ctx.exit412.i:                                 ; preds = %do.end10.i.i411.i, %if.else22.i.cp_ctx.exit412.i_crit_edge
  %1494 = phi i32 [ %1486, %if.else22.i.cp_ctx.exit412.i_crit_edge ], [ %.pr1172.i, %do.end10.i.i411.i ]
  %1495 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1495)
  store i32 1645, ptr %ctxprog_reg.i.i, align 4
  %1496 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1496)
  %1497 = load i32, ptr %ctxvals_pos.i813, align 4
  %1498 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1498)
  store i32 %1497, ptr %ctxvals_base.i829, align 4
  %add.i416.i = add i32 %1497, 3
  store i32 %add.i416.i, ptr %ctxvals_pos.i813, align 4
  %1499 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1499)
  %1500 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1494)
  %cmp.not.i.i421.i = icmp eq i32 %1494, 0
  br i1 %cmp.not.i.i421.i, label %do.body.i.i426.i, label %cp_ctx.exit412.i.if.end23.i_crit_edge

cp_ctx.exit412.i.if.end23.i_crit_edge:            ; preds = %cp_ctx.exit412.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23.i

do.body.i.i426.i:                                 ; preds = %cp_ctx.exit412.i
  %ctxprog_len.i.i423.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1501 = ptrtoint ptr %ctxprog_len.i.i423.i to i32
  call void @__asan_load4_noabort(i32 %1501)
  %1502 = load i32, ptr %ctxprog_len.i.i423.i, align 4
  %ctxprog_max.i.i424.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1503 = ptrtoint ptr %ctxprog_max.i.i424.i to i32
  call void @__asan_load4_noabort(i32 %1503)
  %1504 = load i32, ptr %ctxprog_max.i.i424.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1502, i32 %1504)
  %cmp1.i.i425.i = icmp eq i32 %1502, %1504
  br i1 %cmp1.i.i425.i, label %do.body4.i.i427.i, label %do.end10.i.i430.i, !prof !9

do.body4.i.i427.i:                                ; preds = %do.body.i.i426.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i430.i:                                ; preds = %do.body.i.i426.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i428.i = add i32 %1502, 1
  %1505 = ptrtoint ptr %ctxprog_len.i.i423.i to i32
  call void @__asan_store4_noabort(i32 %1505)
  store i32 %inc.i.i428.i, ptr %ctxprog_len.i.i423.i, align 4
  %arrayidx.i.i429.i = getelementptr i32, ptr %1500, i32 %1502
  %1506 = ptrtoint ptr %arrayidx.i.i429.i to i32
  call void @__asan_store4_noabort(i32 %1506)
  store i32 1099373, ptr %arrayidx.i.i429.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end10.i.i430.i, %cp_ctx.exit412.i.if.end23.i_crit_edge, %do.end10.i.i392.i, %cp_ctx.exit374.i.if.end23.i_crit_edge
  %1507 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1507)
  %1508 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1508)
  %cmp.not.i433.i = icmp eq i32 %1508, 1
  br i1 %cmp.not.i433.i, label %if.end.i441.i, label %if.end23.i.gr_def.exit442.i_crit_edge

if.end23.i.gr_def.exit442.i_crit_edge:            ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit442.i

if.end.i441.i:                                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %1509 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1509)
  %1510 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i435.i = sub i32 1647, %1510
  %1511 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1511)
  %1512 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i437.i = add i32 %sub1.i435.i, %1512
  %data.i438.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1513 = ptrtoint ptr %data.i438.i to i32
  call void @__asan_load4_noabort(i32 %1513)
  %1514 = load ptr, ptr %data.i438.i, align 4
  %1515 = ptrtoint ptr %1514 to i32
  call void @__asan_load4_noabort(i32 %1515)
  %1516 = load ptr, ptr %1514, align 8
  %wr32.i439.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1516, i32 0, i32 3
  %1517 = ptrtoint ptr %wr32.i439.i to i32
  call void @__asan_load4_noabort(i32 %1517)
  %1518 = load ptr, ptr %wr32.i439.i, align 4
  %mul.i440.i = shl i32 %add.i437.i, 2
  tail call void %1518(ptr noundef %1514, i32 noundef %mul.i440.i, i32 noundef -65536) #5
  br label %gr_def.exit442.i

gr_def.exit442.i:                                 ; preds = %if.end.i441.i, %if.end23.i.gr_def.exit442.i_crit_edge
  %1519 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1519)
  %1520 = load i32, ptr %chipset.i417, align 4
  %1521 = zext i32 %1520 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1521, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %1520, label %gr_def.exit442.i.sw.epilog.i_crit_edge [
    i32 70, label %gr_def.exit442.i.sw.bb.i445_crit_edge
    i32 71, label %gr_def.exit442.i.sw.bb.i445_crit_edge1124
    i32 73, label %gr_def.exit442.i.sw.bb.i445_crit_edge1125
    i32 75, label %gr_def.exit442.i.sw.bb.i445_crit_edge1126
  ]

gr_def.exit442.i.sw.bb.i445_crit_edge1126:        ; preds = %gr_def.exit442.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i445

gr_def.exit442.i.sw.bb.i445_crit_edge1125:        ; preds = %gr_def.exit442.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i445

gr_def.exit442.i.sw.bb.i445_crit_edge1124:        ; preds = %gr_def.exit442.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i445

gr_def.exit442.i.sw.bb.i445_crit_edge:            ; preds = %gr_def.exit442.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i445

gr_def.exit442.i.sw.epilog.i_crit_edge:           ; preds = %gr_def.exit442.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i445:                                       ; preds = %gr_def.exit442.i.sw.bb.i445_crit_edge, %gr_def.exit442.i.sw.bb.i445_crit_edge1124, %gr_def.exit442.i.sw.bb.i445_crit_edge1125, %gr_def.exit442.i.sw.bb.i445_crit_edge1126
  %1522 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1522)
  store i32 1648, ptr %ctxprog_reg.i.i, align 4
  %1523 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1523)
  %1524 = load i32, ptr %ctxvals_pos.i813, align 4
  %1525 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1525)
  store i32 %1524, ptr %ctxvals_base.i829, align 4
  %add.i446.i = add i32 %1524, 18
  store i32 %add.i446.i, ptr %ctxvals_pos.i813, align 4
  %1526 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1526)
  %1527 = load ptr, ptr %ucode.i.i, align 4
  %1528 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1528)
  %1529 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1529)
  %cmp.not.i.i451.i = icmp eq i32 %1529, 0
  br i1 %cmp.not.i.i451.i, label %do.body.i.i456.i, label %sw.bb.i445.cp_ctx.exit461.i_crit_edge

sw.bb.i445.cp_ctx.exit461.i_crit_edge:            ; preds = %sw.bb.i445
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit461.i

do.body.i.i456.i:                                 ; preds = %sw.bb.i445
  %ctxprog_len.i.i453.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1530 = ptrtoint ptr %ctxprog_len.i.i453.i to i32
  call void @__asan_load4_noabort(i32 %1530)
  %1531 = load i32, ptr %ctxprog_len.i.i453.i, align 4
  %ctxprog_max.i.i454.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1532 = ptrtoint ptr %ctxprog_max.i.i454.i to i32
  call void @__asan_load4_noabort(i32 %1532)
  %1533 = load i32, ptr %ctxprog_max.i.i454.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1531, i32 %1533)
  %cmp1.i.i455.i = icmp eq i32 %1531, %1533
  br i1 %cmp1.i.i455.i, label %do.body4.i.i457.i, label %do.end10.i.i460.i, !prof !9

do.body4.i.i457.i:                                ; preds = %do.body.i.i456.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i460.i:                                ; preds = %do.body.i.i456.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i458.i = add i32 %1531, 1
  %1534 = ptrtoint ptr %ctxprog_len.i.i453.i to i32
  call void @__asan_store4_noabort(i32 %1534)
  store i32 %inc.i.i458.i, ptr %ctxprog_len.i.i453.i, align 4
  %arrayidx.i.i459.i = getelementptr i32, ptr %1527, i32 %1531
  %1535 = ptrtoint ptr %arrayidx.i.i459.i to i32
  call void @__asan_store4_noabort(i32 %1535)
  store i32 1345136, ptr %arrayidx.i.i459.i, align 4
  br label %cp_ctx.exit461.i

cp_ctx.exit461.i:                                 ; preds = %do.end10.i.i460.i, %sw.bb.i445.cp_ctx.exit461.i_crit_edge
  %data.i470.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  br label %for.body27.i

for.body27.i:                                     ; preds = %gr_def.exit474.i.for.body27.i_crit_edge, %cp_ctx.exit461.i
  %i.11306.i = phi i32 [ 0, %cp_ctx.exit461.i ], [ %inc31.i, %gr_def.exit474.i.for.body27.i_crit_edge ]
  %1536 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1536)
  %1537 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1537)
  %cmp.not.i463.i = icmp eq i32 %1537, 1
  br i1 %cmp.not.i463.i, label %if.end.i473.i, label %for.body27.i.gr_def.exit474.i_crit_edge

for.body27.i.gr_def.exit474.i_crit_edge:          ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit474.i

if.end.i473.i:                                    ; preds = %for.body27.i
  call void @__sanitizer_cov_trace_pc() #7
  %1538 = add nuw nsw i32 %i.11306.i, 1648
  %1539 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1539)
  %1540 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i467.i = sub i32 %1538, %1540
  %1541 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1541)
  %1542 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i469.i = add i32 %sub1.i467.i, %1542
  %1543 = ptrtoint ptr %data.i470.i to i32
  call void @__asan_load4_noabort(i32 %1543)
  %1544 = load ptr, ptr %data.i470.i, align 4
  %1545 = ptrtoint ptr %1544 to i32
  call void @__asan_load4_noabort(i32 %1545)
  %1546 = load ptr, ptr %1544, align 8
  %wr32.i471.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1546, i32 0, i32 3
  %1547 = ptrtoint ptr %wr32.i471.i to i32
  call void @__asan_load4_noabort(i32 %1547)
  %1548 = load ptr, ptr %wr32.i471.i, align 4
  %mul.i472.i = shl i32 %add.i469.i, 2
  tail call void %1548(ptr noundef %1544, i32 noundef %mul.i472.i, i32 noundef -2004318072) #5
  br label %gr_def.exit474.i

gr_def.exit474.i:                                 ; preds = %if.end.i473.i, %for.body27.i.gr_def.exit474.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.11306.i, 1
  %exitcond1312.not.i = icmp eq i32 %inc31.i, 16
  br i1 %exitcond1312.not.i, label %gr_def.exit474.i.sw.epilog.i_crit_edge, label %gr_def.exit474.i.for.body27.i_crit_edge

gr_def.exit474.i.for.body27.i_crit_edge:          ; preds = %gr_def.exit474.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body27.i

gr_def.exit474.i.sw.epilog.i_crit_edge:           ; preds = %gr_def.exit474.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %gr_def.exit474.i.sw.epilog.i_crit_edge, %gr_def.exit442.i.sw.epilog.i_crit_edge
  %1549 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1549)
  store i32 1666, ptr %ctxprog_reg.i.i, align 4
  %1550 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1550)
  %1551 = load i32, ptr %ctxvals_pos.i813, align 4
  %1552 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1552)
  store i32 %1551, ptr %ctxvals_base.i829, align 4
  %add.i478.i = add i32 %1551, 8
  store i32 %add.i478.i, ptr %ctxvals_pos.i813, align 4
  %1553 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1553)
  %1554 = load ptr, ptr %ucode.i.i, align 4
  %1555 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1555)
  %1556 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1556)
  %cmp.not.i.i483.i = icmp eq i32 %1556, 0
  br i1 %cmp.not.i.i483.i, label %do.body.i.i488.i, label %sw.epilog.i.cp_ctx.exit493.i_crit_edge

sw.epilog.i.cp_ctx.exit493.i_crit_edge:           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit493.i

do.body.i.i488.i:                                 ; preds = %sw.epilog.i
  %ctxprog_len.i.i485.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1557 = ptrtoint ptr %ctxprog_len.i.i485.i to i32
  call void @__asan_load4_noabort(i32 %1557)
  %1558 = load i32, ptr %ctxprog_len.i.i485.i, align 4
  %ctxprog_max.i.i486.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1559 = ptrtoint ptr %ctxprog_max.i.i486.i to i32
  call void @__asan_load4_noabort(i32 %1559)
  %1560 = load i32, ptr %ctxprog_max.i.i486.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1558, i32 %1560)
  %cmp1.i.i487.i = icmp eq i32 %1558, %1560
  br i1 %cmp1.i.i487.i, label %do.body4.i.i489.i, label %do.end10.i.i492.i, !prof !9

do.body4.i.i489.i:                                ; preds = %do.body.i.i488.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i492.i:                                ; preds = %do.body.i.i488.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i490.i = add i32 %1558, 1
  %1561 = ptrtoint ptr %ctxprog_len.i.i485.i to i32
  call void @__asan_store4_noabort(i32 %1561)
  store i32 %inc.i.i490.i, ptr %ctxprog_len.i.i485.i, align 4
  %arrayidx.i.i491.i = getelementptr i32, ptr %1554, i32 %1558
  %1562 = ptrtoint ptr %arrayidx.i.i491.i to i32
  call void @__asan_store4_noabort(i32 %1562)
  store i32 1181314, ptr %arrayidx.i.i491.i, align 4
  %1563 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1563)
  %.pr1173.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit493.i

cp_ctx.exit493.i:                                 ; preds = %do.end10.i.i492.i, %sw.epilog.i.cp_ctx.exit493.i_crit_edge
  %1564 = phi i32 [ %1556, %sw.epilog.i.cp_ctx.exit493.i_crit_edge ], [ %.pr1173.i, %do.end10.i.i492.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1564)
  %cmp.not.i495.i = icmp eq i32 %1564, 1
  br i1 %cmp.not.i495.i, label %if.end.i503.i, label %cp_ctx.exit493.i.gr_def.exit504.i_crit_edge

cp_ctx.exit493.i.gr_def.exit504.i_crit_edge:      ; preds = %cp_ctx.exit493.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit504.i

if.end.i503.i:                                    ; preds = %cp_ctx.exit493.i
  call void @__sanitizer_cov_trace_pc() #7
  %1565 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1565)
  %1566 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i497.i = sub i32 1668, %1566
  %1567 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1567)
  %1568 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i499.i = add i32 %sub1.i497.i, %1568
  %data.i500.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1569 = ptrtoint ptr %data.i500.i to i32
  call void @__asan_load4_noabort(i32 %1569)
  %1570 = load ptr, ptr %data.i500.i, align 4
  %1571 = ptrtoint ptr %1570 to i32
  call void @__asan_load4_noabort(i32 %1571)
  %1572 = load ptr, ptr %1570, align 8
  %wr32.i501.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1572, i32 0, i32 3
  %1573 = ptrtoint ptr %wr32.i501.i to i32
  call void @__asan_load4_noabort(i32 %1573)
  %1574 = load ptr, ptr %wr32.i501.i, align 4
  %mul.i502.i = shl i32 %add.i499.i, 2
  tail call void %1574(ptr noundef %1570, i32 noundef %mul.i502.i, i32 noundef 268369920) #5
  br label %gr_def.exit504.i

gr_def.exit504.i:                                 ; preds = %if.end.i503.i, %cp_ctx.exit493.i.gr_def.exit504.i_crit_edge
  %1575 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1575)
  %1576 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1576)
  %cmp.not.i506.i = icmp eq i32 %1576, 1
  br i1 %cmp.not.i506.i, label %gr_def.exit515.i, label %gr_def.exit504.i.gr_def.exit526.i_crit_edge

gr_def.exit504.i.gr_def.exit526.i_crit_edge:      ; preds = %gr_def.exit504.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit526.i

gr_def.exit515.i:                                 ; preds = %gr_def.exit504.i
  %1577 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1577)
  %1578 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i508.i = sub i32 1669, %1578
  %1579 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1579)
  %1580 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i510.i = add i32 %sub1.i508.i, %1580
  %data.i511.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  %1581 = ptrtoint ptr %data.i511.i to i32
  call void @__asan_load4_noabort(i32 %1581)
  %1582 = load ptr, ptr %data.i511.i, align 4
  %1583 = ptrtoint ptr %1582 to i32
  call void @__asan_load4_noabort(i32 %1583)
  %1584 = load ptr, ptr %1582, align 8
  %wr32.i512.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1584, i32 0, i32 3
  %1585 = ptrtoint ptr %wr32.i512.i to i32
  call void @__asan_load4_noabort(i32 %1585)
  %1586 = load ptr, ptr %wr32.i512.i, align 4
  %mul.i513.i = shl i32 %add.i510.i, 2
  tail call void %1586(ptr noundef %1582, i32 noundef %mul.i513.i, i32 noundef 268369920) #5
  %1587 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1587)
  %.pr1174.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1174.i)
  %cmp.not.i517.i = icmp eq i32 %.pr1174.i, 1
  br i1 %cmp.not.i517.i, label %if.end.i525.i, label %gr_def.exit515.i.gr_def.exit526.i_crit_edge

gr_def.exit515.i.gr_def.exit526.i_crit_edge:      ; preds = %gr_def.exit515.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit526.i

if.end.i525.i:                                    ; preds = %gr_def.exit515.i
  call void @__sanitizer_cov_trace_pc() #7
  %1588 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1588)
  %1589 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i519.i = sub i32 1671, %1589
  %1590 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1590)
  %1591 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i521.i = add i32 %sub1.i519.i, %1591
  %1592 = ptrtoint ptr %data.i511.i to i32
  call void @__asan_load4_noabort(i32 %1592)
  %1593 = load ptr, ptr %data.i511.i, align 4
  %1594 = ptrtoint ptr %1593 to i32
  call void @__asan_load4_noabort(i32 %1594)
  %1595 = load ptr, ptr %1593, align 8
  %wr32.i523.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1595, i32 0, i32 3
  %1596 = ptrtoint ptr %wr32.i523.i to i32
  call void @__asan_load4_noabort(i32 %1596)
  %1597 = load ptr, ptr %wr32.i523.i, align 4
  %mul.i524.i = shl i32 %add.i521.i, 2
  tail call void %1597(ptr noundef %1593, i32 noundef %mul.i524.i, i32 noundef 69888) #5
  %1598 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1598)
  %.pr1176.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit526.i

gr_def.exit526.i:                                 ; preds = %if.end.i525.i, %gr_def.exit515.i.gr_def.exit526.i_crit_edge, %gr_def.exit504.i.gr_def.exit526.i_crit_edge
  %1599 = phi i32 [ %.pr1174.i, %gr_def.exit515.i.gr_def.exit526.i_crit_edge ], [ %.pr1176.i, %if.end.i525.i ], [ %1576, %gr_def.exit504.i.gr_def.exit526.i_crit_edge ]
  %1600 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1600)
  store i32 1675, ptr %ctxprog_reg.i.i, align 4
  %1601 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1601)
  %1602 = load i32, ptr %ctxvals_pos.i813, align 4
  %1603 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1603)
  store i32 %1602, ptr %ctxvals_base.i829, align 4
  %add.i530.i = add i32 %1602, 4
  store i32 %add.i530.i, ptr %ctxvals_pos.i813, align 4
  %1604 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1604)
  %1605 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1599)
  %cmp.not.i.i535.i = icmp eq i32 %1599, 0
  br i1 %cmp.not.i.i535.i, label %do.body.i.i540.i, label %gr_def.exit526.i.cp_ctx.exit545.i_crit_edge

gr_def.exit526.i.cp_ctx.exit545.i_crit_edge:      ; preds = %gr_def.exit526.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit545.i

do.body.i.i540.i:                                 ; preds = %gr_def.exit526.i
  %ctxprog_len.i.i537.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1606 = ptrtoint ptr %ctxprog_len.i.i537.i to i32
  call void @__asan_load4_noabort(i32 %1606)
  %1607 = load i32, ptr %ctxprog_len.i.i537.i, align 4
  %ctxprog_max.i.i538.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1608 = ptrtoint ptr %ctxprog_max.i.i538.i to i32
  call void @__asan_load4_noabort(i32 %1608)
  %1609 = load i32, ptr %ctxprog_max.i.i538.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1607, i32 %1609)
  %cmp1.i.i539.i = icmp eq i32 %1607, %1609
  br i1 %cmp1.i.i539.i, label %do.body4.i.i541.i, label %do.end10.i.i544.i, !prof !9

do.body4.i.i541.i:                                ; preds = %do.body.i.i540.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i544.i:                                ; preds = %do.body.i.i540.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i542.i = add i32 %1607, 1
  %1610 = ptrtoint ptr %ctxprog_len.i.i537.i to i32
  call void @__asan_store4_noabort(i32 %1610)
  store i32 %inc.i.i542.i, ptr %ctxprog_len.i.i537.i, align 4
  %arrayidx.i.i543.i = getelementptr i32, ptr %1605, i32 %1607
  %1611 = ptrtoint ptr %arrayidx.i.i543.i to i32
  call void @__asan_store4_noabort(i32 %1611)
  store i32 1115787, ptr %arrayidx.i.i543.i, align 4
  br label %cp_ctx.exit545.i

cp_ctx.exit545.i:                                 ; preds = %do.end10.i.i544.i, %gr_def.exit526.i.cp_ctx.exit545.i_crit_edge
  %1612 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1612)
  store i32 1681, ptr %ctxprog_reg.i.i, align 4
  %1613 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1613)
  %1614 = load i32, ptr %ctxvals_pos.i813, align 4
  %1615 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1615)
  store i32 %1614, ptr %ctxvals_base.i829, align 4
  %add.i549.i = add i32 %1614, 26
  store i32 %add.i549.i, ptr %ctxvals_pos.i813, align 4
  %1616 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1616)
  %1617 = load ptr, ptr %ucode.i.i, align 4
  %1618 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1618)
  %1619 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1619)
  %cmp.not.i.i554.i = icmp eq i32 %1619, 0
  br i1 %cmp.not.i.i554.i, label %do.body.i.i559.i, label %cp_ctx.exit545.i.cp_ctx.exit564.i_crit_edge

cp_ctx.exit545.i.cp_ctx.exit564.i_crit_edge:      ; preds = %cp_ctx.exit545.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit564.i

do.body.i.i559.i:                                 ; preds = %cp_ctx.exit545.i
  %ctxprog_len.i.i556.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1620 = ptrtoint ptr %ctxprog_len.i.i556.i to i32
  call void @__asan_load4_noabort(i32 %1620)
  %1621 = load i32, ptr %ctxprog_len.i.i556.i, align 4
  %ctxprog_max.i.i557.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1622 = ptrtoint ptr %ctxprog_max.i.i557.i to i32
  call void @__asan_load4_noabort(i32 %1622)
  %1623 = load i32, ptr %ctxprog_max.i.i557.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1621, i32 %1623)
  %cmp1.i.i558.i = icmp eq i32 %1621, %1623
  br i1 %cmp1.i.i558.i, label %do.body4.i.i560.i, label %do.end10.i.i563.i, !prof !9

do.body4.i.i560.i:                                ; preds = %do.body.i.i559.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i563.i:                                ; preds = %do.body.i.i559.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i561.i = add i32 %1621, 1
  %1624 = ptrtoint ptr %ctxprog_len.i.i556.i to i32
  call void @__asan_store4_noabort(i32 %1624)
  store i32 %inc.i.i561.i, ptr %ctxprog_len.i.i556.i, align 4
  %arrayidx.i.i562.i = getelementptr i32, ptr %1617, i32 %1621
  %1625 = ptrtoint ptr %arrayidx.i.i562.i to i32
  call void @__asan_store4_noabort(i32 %1625)
  store i32 1476241, ptr %arrayidx.i.i562.i, align 4
  br label %cp_ctx.exit564.i

cp_ctx.exit564.i:                                 ; preds = %do.end10.i.i563.i, %cp_ctx.exit545.i.cp_ctx.exit564.i_crit_edge
  %data.i573.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 3
  br label %for.body35.i

for.body35.i:                                     ; preds = %gr_def.exit577.i.for.body35.i_crit_edge, %cp_ctx.exit564.i
  %i.21308.i = phi i32 [ 0, %cp_ctx.exit564.i ], [ %inc39.i, %gr_def.exit577.i.for.body35.i_crit_edge ]
  %1626 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1626)
  %1627 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1627)
  %cmp.not.i566.i = icmp eq i32 %1627, 1
  br i1 %cmp.not.i566.i, label %if.end.i576.i, label %for.body35.i.gr_def.exit577.i_crit_edge

for.body35.i.gr_def.exit577.i_crit_edge:          ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit577.i

if.end.i576.i:                                    ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #7
  %1628 = add nuw nsw i32 %i.21308.i, 1681
  %1629 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1629)
  %1630 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i570.i = sub i32 %1628, %1630
  %1631 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1631)
  %1632 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i572.i = add i32 %sub1.i570.i, %1632
  %1633 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1633)
  %1634 = load ptr, ptr %data.i573.i, align 4
  %1635 = ptrtoint ptr %1634 to i32
  call void @__asan_load4_noabort(i32 %1635)
  %1636 = load ptr, ptr %1634, align 8
  %wr32.i574.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1636, i32 0, i32 3
  %1637 = ptrtoint ptr %wr32.i574.i to i32
  call void @__asan_load4_noabort(i32 %1637)
  %1638 = load ptr, ptr %wr32.i574.i, align 4
  %mul.i575.i = shl i32 %add.i572.i, 2
  tail call void %1638(ptr noundef %1634, i32 noundef %mul.i575.i, i32 noundef 134152192) #5
  br label %gr_def.exit577.i

gr_def.exit577.i:                                 ; preds = %if.end.i576.i, %for.body35.i.gr_def.exit577.i_crit_edge
  %inc39.i = add nuw nsw i32 %i.21308.i, 1
  %exitcond1313.not.i = icmp eq i32 %inc39.i, 16
  br i1 %exitcond1313.not.i, label %for.end40.i, label %gr_def.exit577.i.for.body35.i_crit_edge

gr_def.exit577.i.for.body35.i_crit_edge:          ; preds = %gr_def.exit577.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body35.i

for.end40.i:                                      ; preds = %gr_def.exit577.i
  %1639 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1639)
  %1640 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1640)
  %cmp.not.i579.i = icmp eq i32 %1640, 1
  br i1 %cmp.not.i579.i, label %if.end.i587.i, label %for.end40.i.gr_def.exit588.i_crit_edge

for.end40.i.gr_def.exit588.i_crit_edge:           ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit588.i

if.end.i587.i:                                    ; preds = %for.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  %1641 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1641)
  %1642 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i581.i = sub i32 1699, %1642
  %1643 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1643)
  %1644 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i583.i = add i32 %sub1.i581.i, %1644
  %1645 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1645)
  %1646 = load ptr, ptr %data.i573.i, align 4
  %1647 = ptrtoint ptr %1646 to i32
  call void @__asan_load4_noabort(i32 %1647)
  %1648 = load ptr, ptr %1646, align 8
  %wr32.i585.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1648, i32 0, i32 3
  %1649 = ptrtoint ptr %wr32.i585.i to i32
  call void @__asan_load4_noabort(i32 %1649)
  %1650 = load ptr, ptr %wr32.i585.i, align 4
  %mul.i586.i = shl i32 %add.i583.i, 2
  tail call void %1650(ptr noundef %1646, i32 noundef %mul.i586.i, i32 noundef 1266679807) #5
  br label %gr_def.exit588.i

gr_def.exit588.i:                                 ; preds = %if.end.i587.i, %for.end40.i.gr_def.exit588.i_crit_edge
  %1651 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1651)
  %1652 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1652)
  %cmp42.i = icmp eq i32 %1652, 64
  %1653 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1653)
  store i32 1710, ptr %ctxprog_reg.i.i, align 4
  %1654 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1654)
  %1655 = load i32, ptr %ctxvals_pos.i813, align 4
  %1656 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1656)
  store i32 %1655, ptr %ctxvals_base.i829, align 4
  br i1 %cmp42.i, label %if.then43.i, label %if.else44.i

if.then43.i:                                      ; preds = %gr_def.exit588.i
  %add.i592.i = add i32 %1655, 3
  %1657 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %1657)
  store i32 %add.i592.i, ptr %ctxvals_pos.i813, align 4
  %1658 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1658)
  %1659 = load ptr, ptr %ucode.i.i, align 4
  %1660 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1660)
  %1661 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1661)
  %cmp.not.i.i597.i = icmp eq i32 %1661, 0
  br i1 %cmp.not.i.i597.i, label %do.body.i.i602.i, label %if.then43.i.if.end45.i_crit_edge

if.then43.i.if.end45.i_crit_edge:                 ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

do.body.i.i602.i:                                 ; preds = %if.then43.i
  %ctxprog_len.i.i599.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1662 = ptrtoint ptr %ctxprog_len.i.i599.i to i32
  call void @__asan_load4_noabort(i32 %1662)
  %1663 = load i32, ptr %ctxprog_len.i.i599.i, align 4
  %ctxprog_max.i.i600.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1664 = ptrtoint ptr %ctxprog_max.i.i600.i to i32
  call void @__asan_load4_noabort(i32 %1664)
  %1665 = load i32, ptr %ctxprog_max.i.i600.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1663, i32 %1665)
  %cmp1.i.i601.i = icmp eq i32 %1663, %1665
  br i1 %cmp1.i.i601.i, label %do.body4.i.i603.i, label %do.end10.i.i606.i, !prof !9

do.body4.i.i603.i:                                ; preds = %do.body.i.i602.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i606.i:                                ; preds = %do.body.i.i602.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i604.i = add i32 %1663, 1
  %1666 = ptrtoint ptr %ctxprog_len.i.i599.i to i32
  call void @__asan_store4_noabort(i32 %1666)
  store i32 %inc.i.i604.i, ptr %ctxprog_len.i.i599.i, align 4
  %arrayidx.i.i605.i = getelementptr i32, ptr %1659, i32 %1663
  %1667 = ptrtoint ptr %arrayidx.i.i605.i to i32
  call void @__asan_store4_noabort(i32 %1667)
  store i32 1099438, ptr %arrayidx.i.i605.i, align 4
  br label %if.end45thread-pre-split.i

if.else44.i:                                      ; preds = %gr_def.exit588.i
  %add.i611.i = add i32 %1655, 1
  %1668 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %1668)
  store i32 %add.i611.i, ptr %ctxvals_pos.i813, align 4
  %1669 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1669)
  %1670 = load ptr, ptr %ucode.i.i, align 4
  %1671 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1671)
  %1672 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1672)
  %cmp.not.i.i616.i = icmp eq i32 %1672, 0
  br i1 %cmp.not.i.i616.i, label %do.body.i.i621.i, label %if.else44.i.cp_ctx.exit626.i_crit_edge

if.else44.i.cp_ctx.exit626.i_crit_edge:           ; preds = %if.else44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit626.i

do.body.i.i621.i:                                 ; preds = %if.else44.i
  %ctxprog_len.i.i618.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1673 = ptrtoint ptr %ctxprog_len.i.i618.i to i32
  call void @__asan_load4_noabort(i32 %1673)
  %1674 = load i32, ptr %ctxprog_len.i.i618.i, align 4
  %ctxprog_max.i.i619.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1675 = ptrtoint ptr %ctxprog_max.i.i619.i to i32
  call void @__asan_load4_noabort(i32 %1675)
  %1676 = load i32, ptr %ctxprog_max.i.i619.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1674, i32 %1676)
  %cmp1.i.i620.i = icmp eq i32 %1674, %1676
  br i1 %cmp1.i.i620.i, label %do.body4.i.i622.i, label %do.end10.i.i625.i, !prof !9

do.body4.i.i622.i:                                ; preds = %do.body.i.i621.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i625.i:                                ; preds = %do.body.i.i621.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i623.i = add i32 %1674, 1
  %1677 = ptrtoint ptr %ctxprog_len.i.i618.i to i32
  call void @__asan_store4_noabort(i32 %1677)
  store i32 %inc.i.i623.i, ptr %ctxprog_len.i.i618.i, align 4
  %arrayidx.i.i624.i = getelementptr i32, ptr %1670, i32 %1674
  %1678 = ptrtoint ptr %arrayidx.i.i624.i to i32
  call void @__asan_store4_noabort(i32 %1678)
  store i32 1066670, ptr %arrayidx.i.i624.i, align 4
  %1679 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1679)
  %.pr1177.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit626.i

cp_ctx.exit626.i:                                 ; preds = %do.end10.i.i625.i, %if.else44.i.cp_ctx.exit626.i_crit_edge
  %1680 = phi i32 [ %1672, %if.else44.i.cp_ctx.exit626.i_crit_edge ], [ %.pr1177.i, %do.end10.i.i625.i ]
  %1681 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1681)
  store i32 1712, ptr %ctxprog_reg.i.i, align 4
  %1682 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1682)
  %1683 = load i32, ptr %ctxvals_pos.i813, align 4
  %1684 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1684)
  store i32 %1683, ptr %ctxvals_base.i829, align 4
  %add.i630.i446 = add i32 %1683, 1
  store i32 %add.i630.i446, ptr %ctxvals_pos.i813, align 4
  %1685 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1685)
  %1686 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1680)
  %cmp.not.i.i635.i = icmp eq i32 %1680, 0
  br i1 %cmp.not.i.i635.i, label %do.body.i.i640.i, label %cp_ctx.exit626.i.if.end45thread-pre-split.i_crit_edge

cp_ctx.exit626.i.if.end45thread-pre-split.i_crit_edge: ; preds = %cp_ctx.exit626.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45thread-pre-split.i

do.body.i.i640.i:                                 ; preds = %cp_ctx.exit626.i
  %ctxprog_len.i.i637.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1687 = ptrtoint ptr %ctxprog_len.i.i637.i to i32
  call void @__asan_load4_noabort(i32 %1687)
  %1688 = load i32, ptr %ctxprog_len.i.i637.i, align 4
  %ctxprog_max.i.i638.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1689 = ptrtoint ptr %ctxprog_max.i.i638.i to i32
  call void @__asan_load4_noabort(i32 %1689)
  %1690 = load i32, ptr %ctxprog_max.i.i638.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1688, i32 %1690)
  %cmp1.i.i639.i = icmp eq i32 %1688, %1690
  br i1 %cmp1.i.i639.i, label %do.body4.i.i641.i, label %do.end10.i.i644.i, !prof !9

do.body4.i.i641.i:                                ; preds = %do.body.i.i640.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i644.i:                                ; preds = %do.body.i.i640.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i642.i = add i32 %1688, 1
  %1691 = ptrtoint ptr %ctxprog_len.i.i637.i to i32
  call void @__asan_store4_noabort(i32 %1691)
  store i32 %inc.i.i642.i, ptr %ctxprog_len.i.i637.i, align 4
  %arrayidx.i.i643.i = getelementptr i32, ptr %1686, i32 %1688
  %1692 = ptrtoint ptr %arrayidx.i.i643.i to i32
  call void @__asan_store4_noabort(i32 %1692)
  store i32 1066672, ptr %arrayidx.i.i643.i, align 4
  br label %if.end45thread-pre-split.i

if.end45thread-pre-split.i:                       ; preds = %do.end10.i.i644.i, %cp_ctx.exit626.i.if.end45thread-pre-split.i_crit_edge, %do.end10.i.i606.i
  %1693 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1693)
  %.pr1178.i = load i32, ptr %mode.i.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.end45thread-pre-split.i, %if.then43.i.if.end45.i_crit_edge
  %1694 = phi i32 [ %.pr1178.i, %if.end45thread-pre-split.i ], [ %1661, %if.then43.i.if.end45.i_crit_edge ]
  %1695 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1695)
  store i32 1716, ptr %ctxprog_reg.i.i, align 4
  %1696 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1696)
  %1697 = load i32, ptr %ctxvals_pos.i813, align 4
  %1698 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1698)
  store i32 %1697, ptr %ctxvals_base.i829, align 4
  %add.i649.i = add i32 %1697, 8
  store i32 %add.i649.i, ptr %ctxvals_pos.i813, align 4
  %1699 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1699)
  %1700 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1694)
  %cmp.not.i.i654.i = icmp eq i32 %1694, 0
  br i1 %cmp.not.i.i654.i, label %do.body.i.i659.i, label %if.end45.i.cp_ctx.exit664.i_crit_edge

if.end45.i.cp_ctx.exit664.i_crit_edge:            ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit664.i

do.body.i.i659.i:                                 ; preds = %if.end45.i
  %ctxprog_len.i.i656.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1701 = ptrtoint ptr %ctxprog_len.i.i656.i to i32
  call void @__asan_load4_noabort(i32 %1701)
  %1702 = load i32, ptr %ctxprog_len.i.i656.i, align 4
  %ctxprog_max.i.i657.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1703 = ptrtoint ptr %ctxprog_max.i.i657.i to i32
  call void @__asan_load4_noabort(i32 %1703)
  %1704 = load i32, ptr %ctxprog_max.i.i657.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1702, i32 %1704)
  %cmp1.i.i658.i = icmp eq i32 %1702, %1704
  br i1 %cmp1.i.i658.i, label %do.body4.i.i660.i, label %do.end10.i.i663.i, !prof !9

do.body4.i.i660.i:                                ; preds = %do.body.i.i659.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i663.i:                                ; preds = %do.body.i.i659.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i661.i = add i32 %1702, 1
  %1705 = ptrtoint ptr %ctxprog_len.i.i656.i to i32
  call void @__asan_store4_noabort(i32 %1705)
  store i32 %inc.i.i661.i, ptr %ctxprog_len.i.i656.i, align 4
  %arrayidx.i.i662.i = getelementptr i32, ptr %1700, i32 %1702
  %1706 = ptrtoint ptr %arrayidx.i.i662.i to i32
  call void @__asan_store4_noabort(i32 %1706)
  store i32 1181364, ptr %arrayidx.i.i662.i, align 4
  br label %cp_ctx.exit664.i

cp_ctx.exit664.i:                                 ; preds = %do.end10.i.i663.i, %if.end45.i.cp_ctx.exit664.i_crit_edge
  %1707 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1707)
  %1708 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1708)
  %cmp.not.i666.i = icmp eq i32 %1708, 1
  br i1 %cmp.not.i666.i, label %gr_def.exit675.i, label %cp_ctx.exit664.i.gr_def.exit708.i_crit_edge

cp_ctx.exit664.i.gr_def.exit708.i_crit_edge:      ; preds = %cp_ctx.exit664.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit708.i

gr_def.exit675.i:                                 ; preds = %cp_ctx.exit664.i
  %1709 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1709)
  %1710 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i668.i = sub i32 1716, %1710
  %1711 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1711)
  %1712 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i670.i = add i32 %sub1.i668.i, %1712
  %1713 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1713)
  %1714 = load ptr, ptr %data.i573.i, align 4
  %1715 = ptrtoint ptr %1714 to i32
  call void @__asan_load4_noabort(i32 %1715)
  %1716 = load ptr, ptr %1714, align 8
  %wr32.i672.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1716, i32 0, i32 3
  %1717 = ptrtoint ptr %wr32.i672.i to i32
  call void @__asan_load4_noabort(i32 %1717)
  %1718 = load ptr, ptr %wr32.i672.i, align 4
  %mul.i673.i = shl i32 %add.i670.i, 2
  tail call void %1718(ptr noundef %1714, i32 noundef %mul.i673.i, i32 noundef 807407616) #5
  %1719 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1719)
  %.pr1179.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1179.i)
  %cmp.not.i677.i = icmp eq i32 %.pr1179.i, 1
  br i1 %cmp.not.i677.i, label %gr_def.exit686.i, label %gr_def.exit675.i.gr_def.exit708.i_crit_edge

gr_def.exit675.i.gr_def.exit708.i_crit_edge:      ; preds = %gr_def.exit675.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit708.i

gr_def.exit686.i:                                 ; preds = %gr_def.exit675.i
  %1720 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1720)
  %1721 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i679.i = sub i32 1717, %1721
  %1722 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1722)
  %1723 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i681.i = add i32 %sub1.i679.i, %1723
  %1724 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1724)
  %1725 = load ptr, ptr %data.i573.i, align 4
  %1726 = ptrtoint ptr %1725 to i32
  call void @__asan_load4_noabort(i32 %1726)
  %1727 = load ptr, ptr %1725, align 8
  %wr32.i683.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1727, i32 0, i32 3
  %1728 = ptrtoint ptr %wr32.i683.i to i32
  call void @__asan_load4_noabort(i32 %1728)
  %1729 = load ptr, ptr %wr32.i683.i, align 4
  %mul.i684.i = shl i32 %add.i681.i, 2
  tail call void %1729(ptr noundef %1725, i32 noundef %mul.i684.i, i32 noundef 1885360192) #5
  %1730 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1730)
  %.pr1181.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1181.i)
  %cmp.not.i688.i = icmp eq i32 %.pr1181.i, 1
  br i1 %cmp.not.i688.i, label %gr_def.exit697.i, label %gr_def.exit686.i.gr_def.exit708.i_crit_edge

gr_def.exit686.i.gr_def.exit708.i_crit_edge:      ; preds = %gr_def.exit686.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit708.i

gr_def.exit697.i:                                 ; preds = %gr_def.exit686.i
  %1731 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1731)
  %1732 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i690.i = sub i32 1718, %1732
  %1733 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1733)
  %1734 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i692.i = add i32 %sub1.i690.i, %1734
  %1735 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1735)
  %1736 = load ptr, ptr %data.i573.i, align 4
  %1737 = ptrtoint ptr %1736 to i32
  call void @__asan_load4_noabort(i32 %1737)
  %1738 = load ptr, ptr %1736, align 8
  %wr32.i694.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1738, i32 0, i32 3
  %1739 = ptrtoint ptr %wr32.i694.i to i32
  call void @__asan_load4_noabort(i32 %1739)
  %1740 = load ptr, ptr %wr32.i694.i, align 4
  %mul.i695.i = shl i32 %add.i692.i, 2
  tail call void %1740(ptr noundef %1736, i32 noundef %mul.i695.i, i32 noundef -1196910456) #5
  %1741 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1741)
  %.pr1183.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1183.pr.i)
  %cmp.not.i699.i = icmp eq i32 %.pr1183.pr.i, 1
  br i1 %cmp.not.i699.i, label %if.end.i707.i, label %gr_def.exit697.i.gr_def.exit708.i_crit_edge

gr_def.exit697.i.gr_def.exit708.i_crit_edge:      ; preds = %gr_def.exit697.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit708.i

if.end.i707.i:                                    ; preds = %gr_def.exit697.i
  call void @__sanitizer_cov_trace_pc() #7
  %1742 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1742)
  %1743 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i701.i = sub i32 1719, %1743
  %1744 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1744)
  %1745 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i703.i = add i32 %sub1.i701.i, %1745
  %1746 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1746)
  %1747 = load ptr, ptr %data.i573.i, align 4
  %1748 = ptrtoint ptr %1747 to i32
  call void @__asan_load4_noabort(i32 %1748)
  %1749 = load ptr, ptr %1747, align 8
  %wr32.i705.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1749, i32 0, i32 3
  %1750 = ptrtoint ptr %wr32.i705.i to i32
  call void @__asan_load4_noabort(i32 %1750)
  %1751 = load ptr, ptr %wr32.i705.i, align 4
  %mul.i706.i = shl i32 %add.i703.i, 2
  tail call void %1751(ptr noundef %1747, i32 noundef %mul.i706.i, i32 noundef -118957880) #5
  br label %gr_def.exit708.i

gr_def.exit708.i:                                 ; preds = %if.end.i707.i, %gr_def.exit697.i.gr_def.exit708.i_crit_edge, %gr_def.exit686.i.gr_def.exit708.i_crit_edge, %gr_def.exit675.i.gr_def.exit708.i_crit_edge, %cp_ctx.exit664.i.gr_def.exit708.i_crit_edge
  %1752 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1752)
  %1753 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1753)
  %cmp47.i = icmp eq i32 %1753, 64
  %cond.i = select i1 %cmp47.i, i32 2, i32 1
  %1754 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1754)
  store i32 1732, ptr %ctxprog_reg.i.i, align 4
  %1755 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1755)
  %1756 = load i32, ptr %ctxvals_pos.i813, align 4
  %1757 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1757)
  store i32 %1756, ptr %ctxvals_base.i829, align 4
  %add.i712.i447 = add i32 %1756, %cond.i
  store i32 %add.i712.i447, ptr %ctxvals_pos.i813, align 4
  %shl.i.i = shl nuw nsw i32 %cond.i, 14
  %or4.i714.i = or i32 %shl.i.i, 1050308
  %1758 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1758)
  %1759 = load ptr, ptr %ucode.i.i, align 4
  %1760 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1760)
  %1761 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1761)
  %cmp.not.i.i717.i = icmp eq i32 %1761, 0
  br i1 %cmp.not.i.i717.i, label %do.body.i.i722.i, label %gr_def.exit708.i.cp_ctx.exit727.i_crit_edge

gr_def.exit708.i.cp_ctx.exit727.i_crit_edge:      ; preds = %gr_def.exit708.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit727.i

do.body.i.i722.i:                                 ; preds = %gr_def.exit708.i
  %ctxprog_len.i.i719.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1762 = ptrtoint ptr %ctxprog_len.i.i719.i to i32
  call void @__asan_load4_noabort(i32 %1762)
  %1763 = load i32, ptr %ctxprog_len.i.i719.i, align 4
  %ctxprog_max.i.i720.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1764 = ptrtoint ptr %ctxprog_max.i.i720.i to i32
  call void @__asan_load4_noabort(i32 %1764)
  %1765 = load i32, ptr %ctxprog_max.i.i720.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1763, i32 %1765)
  %cmp1.i.i721.i = icmp eq i32 %1763, %1765
  br i1 %cmp1.i.i721.i, label %do.body4.i.i723.i, label %do.end10.i.i726.i, !prof !9

do.body4.i.i723.i:                                ; preds = %do.body.i.i722.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i726.i:                                ; preds = %do.body.i.i722.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i724.i = add i32 %1763, 1
  %1766 = ptrtoint ptr %ctxprog_len.i.i719.i to i32
  call void @__asan_store4_noabort(i32 %1766)
  store i32 %inc.i.i724.i, ptr %ctxprog_len.i.i719.i, align 4
  %arrayidx.i.i725.i = getelementptr i32, ptr %1759, i32 %1763
  %1767 = ptrtoint ptr %arrayidx.i.i725.i to i32
  call void @__asan_store4_noabort(i32 %1767)
  store i32 %or4.i714.i, ptr %arrayidx.i.i725.i, align 4
  %1768 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1768)
  %.pr1185.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit727.i

cp_ctx.exit727.i:                                 ; preds = %do.end10.i.i726.i, %gr_def.exit708.i.cp_ctx.exit727.i_crit_edge
  %1769 = phi i32 [ %1761, %gr_def.exit708.i.cp_ctx.exit727.i_crit_edge ], [ %.pr1185.i, %do.end10.i.i726.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1769)
  %cmp.not.i729.i = icmp eq i32 %1769, 1
  br i1 %cmp.not.i729.i, label %if.end.i737.i, label %cp_ctx.exit727.i.gr_def.exit738.i_crit_edge

cp_ctx.exit727.i.gr_def.exit738.i_crit_edge:      ; preds = %cp_ctx.exit727.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit738.i

if.end.i737.i:                                    ; preds = %cp_ctx.exit727.i
  call void @__sanitizer_cov_trace_pc() #7
  %1770 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1770)
  %1771 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i731.i = sub i32 1732, %1771
  %1772 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1772)
  %1773 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i733.i = add i32 %sub1.i731.i, %1773
  %1774 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1774)
  %1775 = load ptr, ptr %data.i573.i, align 4
  %1776 = ptrtoint ptr %1775 to i32
  call void @__asan_load4_noabort(i32 %1776)
  %1777 = load ptr, ptr %1775, align 8
  %wr32.i735.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1777, i32 0, i32 3
  %1778 = ptrtoint ptr %wr32.i735.i to i32
  call void @__asan_load4_noabort(i32 %1778)
  %1779 = load ptr, ptr %wr32.i735.i, align 4
  %mul.i736.i = shl i32 %add.i733.i, 2
  tail call void %1779(ptr noundef %1775, i32 noundef %mul.i736.i, i32 noundef 1074790400) #5
  br label %gr_def.exit738.i

gr_def.exit738.i:                                 ; preds = %if.end.i737.i, %cp_ctx.exit727.i.gr_def.exit738.i_crit_edge
  %1780 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1780)
  %1781 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1781)
  %cmp49.i = icmp eq i32 %1781, 64
  %cond50.i = select i1 %cmp49.i, i32 6, i32 5
  %1782 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1782)
  store i32 1734, ptr %ctxprog_reg.i.i, align 4
  %1783 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1783)
  %1784 = load i32, ptr %ctxvals_pos.i813, align 4
  %1785 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1785)
  store i32 %1784, ptr %ctxvals_base.i829, align 4
  %add.i742.i = add i32 %1784, %cond50.i
  store i32 %add.i742.i, ptr %ctxvals_pos.i813, align 4
  %shl.i743.i = shl nuw nsw i32 %cond50.i, 14
  %or4.i745.i = or i32 %shl.i743.i, 1050310
  %1786 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1786)
  %1787 = load ptr, ptr %ucode.i.i, align 4
  %1788 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1788)
  %1789 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1789)
  %cmp.not.i.i748.i448 = icmp eq i32 %1789, 0
  br i1 %cmp.not.i.i748.i448, label %do.body.i.i753.i452, label %gr_def.exit738.i.cp_ctx.exit758.i458_crit_edge

gr_def.exit738.i.cp_ctx.exit758.i458_crit_edge:   ; preds = %gr_def.exit738.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit758.i458

do.body.i.i753.i452:                              ; preds = %gr_def.exit738.i
  %ctxprog_len.i.i750.i449 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1790 = ptrtoint ptr %ctxprog_len.i.i750.i449 to i32
  call void @__asan_load4_noabort(i32 %1790)
  %1791 = load i32, ptr %ctxprog_len.i.i750.i449, align 4
  %ctxprog_max.i.i751.i450 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1792 = ptrtoint ptr %ctxprog_max.i.i751.i450 to i32
  call void @__asan_load4_noabort(i32 %1792)
  %1793 = load i32, ptr %ctxprog_max.i.i751.i450, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1791, i32 %1793)
  %cmp1.i.i752.i451 = icmp eq i32 %1791, %1793
  br i1 %cmp1.i.i752.i451, label %do.body4.i.i754.i453, label %do.end10.i.i757.i456, !prof !9

do.body4.i.i754.i453:                             ; preds = %do.body.i.i753.i452
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i757.i456:                             ; preds = %do.body.i.i753.i452
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i755.i454 = add i32 %1791, 1
  %1794 = ptrtoint ptr %ctxprog_len.i.i750.i449 to i32
  call void @__asan_store4_noabort(i32 %1794)
  store i32 %inc.i.i755.i454, ptr %ctxprog_len.i.i750.i449, align 4
  %arrayidx.i.i756.i455 = getelementptr i32, ptr %1787, i32 %1791
  %1795 = ptrtoint ptr %arrayidx.i.i756.i455 to i32
  call void @__asan_store4_noabort(i32 %1795)
  store i32 %or4.i745.i, ptr %arrayidx.i.i756.i455, align 4
  %1796 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1796)
  %.pr1186.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit758.i458

cp_ctx.exit758.i458:                              ; preds = %do.end10.i.i757.i456, %gr_def.exit738.i.cp_ctx.exit758.i458_crit_edge
  %1797 = phi i32 [ %1789, %gr_def.exit738.i.cp_ctx.exit758.i458_crit_edge ], [ %.pr1186.i, %do.end10.i.i757.i456 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1797)
  %cmp.not.i760.i457 = icmp eq i32 %1797, 1
  br i1 %cmp.not.i760.i457, label %if.end.i768.i463, label %cp_ctx.exit758.i458.gr_def.exit769.i464_crit_edge

cp_ctx.exit758.i458.gr_def.exit769.i464_crit_edge: ; preds = %cp_ctx.exit758.i458
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit769.i464

if.end.i768.i463:                                 ; preds = %cp_ctx.exit758.i458
  call void @__sanitizer_cov_trace_pc() #7
  %1798 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1798)
  %1799 = load i32, ptr %chipset.i417, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %1799)
  %cmp52.i = icmp eq i32 %1799, 64
  %cond53.i = select i1 %cmp52.i, i32 4, i32 0
  %1800 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1800)
  %1801 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i762.i459 = sub i32 1738, %1801
  %1802 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1802)
  %1803 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i764.i460 = add i32 %sub1.i762.i459, %1803
  %1804 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1804)
  %1805 = load ptr, ptr %data.i573.i, align 4
  %1806 = ptrtoint ptr %1805 to i32
  call void @__asan_load4_noabort(i32 %1806)
  %1807 = load ptr, ptr %1805, align 8
  %wr32.i766.i461 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1807, i32 0, i32 3
  %1808 = ptrtoint ptr %wr32.i766.i461 to i32
  call void @__asan_load4_noabort(i32 %1808)
  %1809 = load ptr, ptr %wr32.i766.i461, align 4
  %mul.i767.i462 = shl i32 %add.i764.i460, 2
  tail call void %1809(ptr noundef %1805, i32 noundef %mul.i767.i462, i32 noundef %cond53.i) #5
  br label %gr_def.exit769.i464

gr_def.exit769.i464:                              ; preds = %if.end.i768.i463, %cp_ctx.exit758.i458.gr_def.exit769.i464_crit_edge
  %1810 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1810)
  store i32 1740, ptr %ctxprog_reg.i.i, align 4
  %1811 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1811)
  %1812 = load i32, ptr %ctxvals_pos.i813, align 4
  %1813 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1813)
  store i32 %1812, ptr %ctxvals_base.i829, align 4
  %add.i773.i = add i32 %1812, 25
  store i32 %add.i773.i, ptr %ctxvals_pos.i813, align 4
  %1814 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1814)
  %1815 = load ptr, ptr %ucode.i.i, align 4
  %1816 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1816)
  %1817 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1817)
  %cmp.not.i.i779.i = icmp eq i32 %1817, 0
  br i1 %cmp.not.i.i779.i, label %do.body.i.i784.i, label %gr_def.exit769.i464.cp_ctx.exit789.i_crit_edge

gr_def.exit769.i464.cp_ctx.exit789.i_crit_edge:   ; preds = %gr_def.exit769.i464
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit789.i

do.body.i.i784.i:                                 ; preds = %gr_def.exit769.i464
  %ctxprog_len.i.i781.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1818 = ptrtoint ptr %ctxprog_len.i.i781.i to i32
  call void @__asan_load4_noabort(i32 %1818)
  %1819 = load i32, ptr %ctxprog_len.i.i781.i, align 4
  %ctxprog_max.i.i782.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1820 = ptrtoint ptr %ctxprog_max.i.i782.i to i32
  call void @__asan_load4_noabort(i32 %1820)
  %1821 = load i32, ptr %ctxprog_max.i.i782.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1819, i32 %1821)
  %cmp1.i.i783.i = icmp eq i32 %1819, %1821
  br i1 %cmp1.i.i783.i, label %do.body4.i.i785.i, label %do.end10.i.i788.i, !prof !9

do.body4.i.i785.i:                                ; preds = %do.body.i.i784.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i788.i:                                ; preds = %do.body.i.i784.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i786.i = add i32 %1819, 1
  %1822 = ptrtoint ptr %ctxprog_len.i.i781.i to i32
  call void @__asan_store4_noabort(i32 %1822)
  store i32 %inc.i.i786.i, ptr %ctxprog_len.i.i781.i, align 4
  %arrayidx.i.i787.i = getelementptr i32, ptr %1815, i32 %1819
  %1823 = ptrtoint ptr %arrayidx.i.i787.i to i32
  call void @__asan_store4_noabort(i32 %1823)
  store i32 1459916, ptr %arrayidx.i.i787.i, align 4
  %1824 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1824)
  %.pr1187.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit789.i

cp_ctx.exit789.i:                                 ; preds = %do.end10.i.i788.i, %gr_def.exit769.i464.cp_ctx.exit789.i_crit_edge
  %1825 = phi i32 [ %1817, %gr_def.exit769.i464.cp_ctx.exit789.i_crit_edge ], [ %.pr1187.i, %do.end10.i.i788.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1825)
  %cmp.not.i791.i = icmp eq i32 %1825, 1
  br i1 %cmp.not.i791.i, label %if.end.i799.i, label %cp_ctx.exit789.i.gr_def.exit800.i_crit_edge

cp_ctx.exit789.i.gr_def.exit800.i_crit_edge:      ; preds = %cp_ctx.exit789.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit800.i

if.end.i799.i:                                    ; preds = %cp_ctx.exit789.i
  call void @__sanitizer_cov_trace_pc() #7
  %1826 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1826)
  %1827 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i793.i = sub i32 1741, %1827
  %1828 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1828)
  %1829 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i795.i = add i32 %sub1.i793.i, %1829
  %1830 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1830)
  %1831 = load ptr, ptr %data.i573.i, align 4
  %1832 = ptrtoint ptr %1831 to i32
  call void @__asan_load4_noabort(i32 %1832)
  %1833 = load ptr, ptr %1831, align 8
  %wr32.i797.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1833, i32 0, i32 3
  %1834 = ptrtoint ptr %wr32.i797.i to i32
  call void @__asan_load4_noabort(i32 %1834)
  %1835 = load ptr, ptr %wr32.i797.i, align 4
  %mul.i798.i = shl i32 %add.i795.i, 2
  tail call void %1835(ptr noundef %1831, i32 noundef %mul.i798.i, i32 noundef 65535) #5
  br label %gr_def.exit800.i

gr_def.exit800.i:                                 ; preds = %if.end.i799.i, %cp_ctx.exit789.i.gr_def.exit800.i_crit_edge
  %1836 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1836)
  %1837 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1837)
  %cmp.not.i802.i = icmp eq i32 %1837, 1
  br i1 %cmp.not.i802.i, label %gr_def.exit811.i, label %gr_def.exit800.i.gr_def.exit877.i_crit_edge

gr_def.exit800.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit800.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit811.i:                                 ; preds = %gr_def.exit800.i
  %1838 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1838)
  %1839 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i804.i = sub i32 1754, %1839
  %1840 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1840)
  %1841 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i806.i = add i32 %sub1.i804.i, %1841
  %1842 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1842)
  %1843 = load ptr, ptr %data.i573.i, align 4
  %1844 = ptrtoint ptr %1843 to i32
  call void @__asan_load4_noabort(i32 %1844)
  %1845 = load ptr, ptr %1843, align 8
  %wr32.i808.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1845, i32 0, i32 3
  %1846 = ptrtoint ptr %wr32.i808.i to i32
  call void @__asan_load4_noabort(i32 %1846)
  %1847 = load ptr, ptr %wr32.i808.i, align 4
  %mul.i809.i = shl i32 %add.i806.i, 2
  tail call void %1847(ptr noundef %1843, i32 noundef %mul.i809.i, i32 noundef 1129416150) #5
  %1848 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1848)
  %.pr1188.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1188.i)
  %cmp.not.i813.i = icmp eq i32 %.pr1188.i, 1
  br i1 %cmp.not.i813.i, label %gr_def.exit822.i, label %gr_def.exit811.i.gr_def.exit877.i_crit_edge

gr_def.exit811.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit811.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit822.i:                                 ; preds = %gr_def.exit811.i
  %1849 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1849)
  %1850 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i815.i = sub i32 1755, %1850
  %1851 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1851)
  %1852 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i817.i = add i32 %sub1.i815.i, %1852
  %1853 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1853)
  %1854 = load ptr, ptr %data.i573.i, align 4
  %1855 = ptrtoint ptr %1854 to i32
  call void @__asan_load4_noabort(i32 %1855)
  %1856 = load ptr, ptr %1854, align 8
  %wr32.i819.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1856, i32 0, i32 3
  %1857 = ptrtoint ptr %wr32.i819.i to i32
  call void @__asan_load4_noabort(i32 %1857)
  %1858 = load ptr, ptr %wr32.i819.i, align 4
  %mul.i820.i = shl i32 %add.i817.i, 2
  tail call void %1858(ptr noundef %1854, i32 noundef %mul.i820.i, i32 noundef 559265433) #5
  %1859 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1859)
  %.pr1190.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1190.i)
  %cmp.not.i824.i = icmp eq i32 %.pr1190.i, 1
  br i1 %cmp.not.i824.i, label %gr_def.exit833.i, label %gr_def.exit822.i.gr_def.exit877.i_crit_edge

gr_def.exit822.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit822.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit833.i:                                 ; preds = %gr_def.exit822.i
  %1860 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1860)
  %1861 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i826.i = sub i32 1756, %1861
  %1862 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1862)
  %1863 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i828.i = add i32 %sub1.i826.i, %1863
  %1864 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1864)
  %1865 = load ptr, ptr %data.i573.i, align 4
  %1866 = ptrtoint ptr %1865 to i32
  call void @__asan_load4_noabort(i32 %1866)
  %1867 = load ptr, ptr %1865, align 8
  %wr32.i830.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1867, i32 0, i32 3
  %1868 = ptrtoint ptr %wr32.i830.i to i32
  call void @__asan_load4_noabort(i32 %1868)
  %1869 = load ptr, ptr %wr32.i830.i, align 4
  %mul.i831.i = shl i32 %add.i828.i, 2
  tail call void %1869(ptr noundef %1865, i32 noundef %mul.i831.i, i32 noundef -19088744) #5
  %1870 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1870)
  %.pr1192.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1192.pr.i)
  %cmp.not.i835.i = icmp eq i32 %.pr1192.pr.i, 1
  br i1 %cmp.not.i835.i, label %gr_def.exit844.i, label %gr_def.exit833.i.gr_def.exit877.i_crit_edge

gr_def.exit833.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit833.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit844.i:                                 ; preds = %gr_def.exit833.i
  %1871 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1871)
  %1872 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i837.i = sub i32 1757, %1872
  %1873 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1873)
  %1874 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i839.i = add i32 %sub1.i837.i, %1874
  %1875 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1875)
  %1876 = load ptr, ptr %data.i573.i, align 4
  %1877 = ptrtoint ptr %1876 to i32
  call void @__asan_load4_noabort(i32 %1877)
  %1878 = load ptr, ptr %1876, align 8
  %wr32.i841.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1878, i32 0, i32 3
  %1879 = ptrtoint ptr %wr32.i841.i to i32
  call void @__asan_load4_noabort(i32 %1879)
  %1880 = load ptr, ptr %wr32.i841.i, align 4
  %mul.i842.i = shl i32 %add.i839.i, 2
  tail call void %1880(ptr noundef %1876, i32 noundef %mul.i842.i, i32 noundef 152) #5
  %1881 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1881)
  %.pr1194.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1194.i)
  %cmp.not.i846.i = icmp eq i32 %.pr1194.i, 1
  br i1 %cmp.not.i846.i, label %gr_def.exit855.i, label %gr_def.exit844.i.gr_def.exit877.i_crit_edge

gr_def.exit844.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit844.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit855.i:                                 ; preds = %gr_def.exit844.i
  %1882 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1882)
  %1883 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i848.i = sub i32 1761, %1883
  %1884 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1884)
  %1885 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i850.i = add i32 %sub1.i848.i, %1885
  %1886 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1886)
  %1887 = load ptr, ptr %data.i573.i, align 4
  %1888 = ptrtoint ptr %1887 to i32
  call void @__asan_load4_noabort(i32 %1888)
  %1889 = load ptr, ptr %1887, align 8
  %wr32.i852.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1889, i32 0, i32 3
  %1890 = ptrtoint ptr %wr32.i852.i to i32
  call void @__asan_load4_noabort(i32 %1890)
  %1891 = load ptr, ptr %wr32.i852.i, align 4
  %mul.i853.i = shl i32 %add.i850.i, 2
  tail call void %1891(ptr noundef %1887, i32 noundef %mul.i853.i, i32 noundef -1) #5
  %1892 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1892)
  %.pr1196.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1196.pr.pr.i)
  %cmp.not.i857.i = icmp eq i32 %.pr1196.pr.pr.i, 1
  br i1 %cmp.not.i857.i, label %gr_def.exit866.i, label %gr_def.exit855.i.gr_def.exit877.i_crit_edge

gr_def.exit855.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit855.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

gr_def.exit866.i:                                 ; preds = %gr_def.exit855.i
  %1893 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1893)
  %1894 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i859.i = sub i32 1762, %1894
  %1895 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1895)
  %1896 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i861.i = add i32 %sub1.i859.i, %1896
  %1897 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1897)
  %1898 = load ptr, ptr %data.i573.i, align 4
  %1899 = ptrtoint ptr %1898 to i32
  call void @__asan_load4_noabort(i32 %1899)
  %1900 = load ptr, ptr %1898, align 8
  %wr32.i863.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1900, i32 0, i32 3
  %1901 = ptrtoint ptr %wr32.i863.i to i32
  call void @__asan_load4_noabort(i32 %1901)
  %1902 = load ptr, ptr %wr32.i863.i, align 4
  %mul.i864.i = shl i32 %add.i861.i, 2
  tail call void %1902(ptr noundef %1898, i32 noundef %mul.i864.i, i32 noundef 16740352) #5
  %1903 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1903)
  %.pr1198.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1198.i)
  %cmp.not.i868.i = icmp eq i32 %.pr1198.i, 1
  br i1 %cmp.not.i868.i, label %if.end.i876.i, label %gr_def.exit866.i.gr_def.exit877.i_crit_edge

gr_def.exit866.i.gr_def.exit877.i_crit_edge:      ; preds = %gr_def.exit866.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit877.i

if.end.i876.i:                                    ; preds = %gr_def.exit866.i
  call void @__sanitizer_cov_trace_pc() #7
  %1904 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1904)
  %1905 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i870.i = sub i32 1763, %1905
  %1906 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1906)
  %1907 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i872.i = add i32 %sub1.i870.i, %1907
  %1908 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1908)
  %1909 = load ptr, ptr %data.i573.i, align 4
  %1910 = ptrtoint ptr %1909 to i32
  call void @__asan_load4_noabort(i32 %1910)
  %1911 = load ptr, ptr %1909, align 8
  %wr32.i874.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1911, i32 0, i32 3
  %1912 = ptrtoint ptr %wr32.i874.i to i32
  call void @__asan_load4_noabort(i32 %1912)
  %1913 = load ptr, ptr %wr32.i874.i, align 4
  %mul.i875.i = shl i32 %add.i872.i, 2
  tail call void %1913(ptr noundef %1909, i32 noundef %mul.i875.i, i32 noundef 65535) #5
  br label %gr_def.exit877.i

gr_def.exit877.i:                                 ; preds = %if.end.i876.i, %gr_def.exit866.i.gr_def.exit877.i_crit_edge, %gr_def.exit855.i.gr_def.exit877.i_crit_edge, %gr_def.exit844.i.gr_def.exit877.i_crit_edge, %gr_def.exit833.i.gr_def.exit877.i_crit_edge, %gr_def.exit822.i.gr_def.exit877.i_crit_edge, %gr_def.exit811.i.gr_def.exit877.i_crit_edge, %gr_def.exit800.i.gr_def.exit877.i_crit_edge
  %1914 = ptrtoint ptr %chipset.i417 to i32
  call void @__asan_load4_noabort(i32 %1914)
  %1915 = load i32, ptr %chipset.i417, align 4
  %1916 = zext i32 %1915 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1916, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %1915, label %if.then61.i [
    i32 68, label %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge
    i32 74, label %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1127
    i32 78, label %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1128
  ]

gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1128: ; preds = %gr_def.exit877.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62thread-pre-split.i

gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1127: ; preds = %gr_def.exit877.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62thread-pre-split.i

gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge: ; preds = %gr_def.exit877.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62thread-pre-split.i

if.then61.i:                                      ; preds = %gr_def.exit877.i
  %1917 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1917)
  store i32 1765, ptr %ctxprog_reg.i.i, align 4
  %1918 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1918)
  %1919 = load i32, ptr %ctxvals_pos.i813, align 4
  %1920 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1920)
  store i32 %1919, ptr %ctxvals_base.i829, align 4
  %add.i881.i = add i32 %1919, 1
  store i32 %add.i881.i, ptr %ctxvals_pos.i813, align 4
  %1921 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1921)
  %1922 = load ptr, ptr %ucode.i.i, align 4
  %1923 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1923)
  %1924 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1924)
  %cmp.not.i.i887.i = icmp eq i32 %1924, 0
  br i1 %cmp.not.i.i887.i, label %do.body.i.i892.i, label %if.then61.i.if.end62.i_crit_edge

if.then61.i.if.end62.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62.i

do.body.i.i892.i:                                 ; preds = %if.then61.i
  %ctxprog_len.i.i889.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1925 = ptrtoint ptr %ctxprog_len.i.i889.i to i32
  call void @__asan_load4_noabort(i32 %1925)
  %1926 = load i32, ptr %ctxprog_len.i.i889.i, align 4
  %ctxprog_max.i.i890.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1927 = ptrtoint ptr %ctxprog_max.i.i890.i to i32
  call void @__asan_load4_noabort(i32 %1927)
  %1928 = load i32, ptr %ctxprog_max.i.i890.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1926, i32 %1928)
  %cmp1.i.i891.i = icmp eq i32 %1926, %1928
  br i1 %cmp1.i.i891.i, label %do.body4.i.i893.i, label %do.end10.i.i896.i, !prof !9

do.body4.i.i893.i:                                ; preds = %do.body.i.i892.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i896.i:                                ; preds = %do.body.i.i892.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i894.i = add i32 %1926, 1
  %1929 = ptrtoint ptr %ctxprog_len.i.i889.i to i32
  call void @__asan_store4_noabort(i32 %1929)
  store i32 %inc.i.i894.i, ptr %ctxprog_len.i.i889.i, align 4
  %arrayidx.i.i895.i = getelementptr i32, ptr %1922, i32 %1926
  %1930 = ptrtoint ptr %arrayidx.i.i895.i to i32
  call void @__asan_store4_noabort(i32 %1930)
  store i32 1066725, ptr %arrayidx.i.i895.i, align 4
  br label %if.end62thread-pre-split.i

if.end62thread-pre-split.i:                       ; preds = %do.end10.i.i896.i, %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge, %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1127, %gr_def.exit877.i.if.end62thread-pre-split.i_crit_edge1128
  %1931 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1931)
  %.pr1200.i = load i32, ptr %mode.i.i, align 4
  br label %if.end62.i

if.end62.i:                                       ; preds = %if.end62thread-pre-split.i, %if.then61.i.if.end62.i_crit_edge
  %1932 = phi i32 [ %.pr1200.i, %if.end62thread-pre-split.i ], [ %1924, %if.then61.i.if.end62.i_crit_edge ]
  %1933 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1933)
  store i32 1766, ptr %ctxprog_reg.i.i, align 4
  %1934 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1934)
  %1935 = load i32, ptr %ctxvals_pos.i813, align 4
  %1936 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1936)
  store i32 %1935, ptr %ctxvals_base.i829, align 4
  %add.i901.i = add i32 %1935, 8
  store i32 %add.i901.i, ptr %ctxvals_pos.i813, align 4
  %1937 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1937)
  %1938 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1932)
  %cmp.not.i.i907.i = icmp eq i32 %1932, 0
  br i1 %cmp.not.i.i907.i, label %do.body.i.i912.i, label %if.end62.i.cp_ctx.exit917.i_crit_edge

if.end62.i.cp_ctx.exit917.i_crit_edge:            ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit917.i

do.body.i.i912.i:                                 ; preds = %if.end62.i
  %ctxprog_len.i.i909.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1939 = ptrtoint ptr %ctxprog_len.i.i909.i to i32
  call void @__asan_load4_noabort(i32 %1939)
  %1940 = load i32, ptr %ctxprog_len.i.i909.i, align 4
  %ctxprog_max.i.i910.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1941 = ptrtoint ptr %ctxprog_max.i.i910.i to i32
  call void @__asan_load4_noabort(i32 %1941)
  %1942 = load i32, ptr %ctxprog_max.i.i910.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1940, i32 %1942)
  %cmp1.i.i911.i = icmp eq i32 %1940, %1942
  br i1 %cmp1.i.i911.i, label %do.body4.i.i913.i, label %do.end10.i.i916.i, !prof !9

do.body4.i.i913.i:                                ; preds = %do.body.i.i912.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i916.i:                                ; preds = %do.body.i.i912.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i914.i = add i32 %1940, 1
  %1943 = ptrtoint ptr %ctxprog_len.i.i909.i to i32
  call void @__asan_store4_noabort(i32 %1943)
  store i32 %inc.i.i914.i, ptr %ctxprog_len.i.i909.i, align 4
  %arrayidx.i.i915.i = getelementptr i32, ptr %1938, i32 %1940
  %1944 = ptrtoint ptr %arrayidx.i.i915.i to i32
  call void @__asan_store4_noabort(i32 %1944)
  store i32 1181414, ptr %arrayidx.i.i915.i, align 4
  br label %cp_ctx.exit917.i

cp_ctx.exit917.i:                                 ; preds = %do.end10.i.i916.i, %if.end62.i.cp_ctx.exit917.i_crit_edge
  %1945 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1945)
  %1946 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1946)
  %cmp.not.i919.i = icmp eq i32 %1946, 1
  br i1 %cmp.not.i919.i, label %if.end.i927.i, label %cp_ctx.exit917.i.gr_def.exit928.i_crit_edge

cp_ctx.exit917.i.gr_def.exit928.i_crit_edge:      ; preds = %cp_ctx.exit917.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit928.i

if.end.i927.i:                                    ; preds = %cp_ctx.exit917.i
  call void @__sanitizer_cov_trace_pc() #7
  %1947 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1947)
  %1948 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i921.i = sub i32 1767, %1948
  %1949 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1949)
  %1950 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i923.i = add i32 %sub1.i921.i, %1950
  %1951 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1951)
  %1952 = load ptr, ptr %data.i573.i, align 4
  %1953 = ptrtoint ptr %1952 to i32
  call void @__asan_load4_noabort(i32 %1953)
  %1954 = load ptr, ptr %1952, align 8
  %wr32.i925.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1954, i32 0, i32 3
  %1955 = ptrtoint ptr %wr32.i925.i to i32
  call void @__asan_load4_noabort(i32 %1955)
  %1956 = load ptr, ptr %wr32.i925.i, align 4
  %mul.i926.i = shl i32 %add.i923.i, 2
  tail call void %1956(ptr noundef %1952, i32 noundef %mul.i926.i, i32 noundef 16711680) #5
  %1957 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1957)
  %.pr1201.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit928.i

gr_def.exit928.i:                                 ; preds = %if.end.i927.i, %cp_ctx.exit917.i.gr_def.exit928.i_crit_edge
  %1958 = phi i32 [ %1946, %cp_ctx.exit917.i.gr_def.exit928.i_crit_edge ], [ %.pr1201.i, %if.end.i927.i ]
  %1959 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1959)
  store i32 1776, ptr %ctxprog_reg.i.i, align 4
  %1960 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1960)
  %1961 = load i32, ptr %ctxvals_pos.i813, align 4
  %1962 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1962)
  store i32 %1961, ptr %ctxvals_base.i829, align 4
  %add.i932.i = add i32 %1961, 9
  store i32 %add.i932.i, ptr %ctxvals_pos.i813, align 4
  %1963 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1963)
  %1964 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1958)
  %cmp.not.i.i938.i = icmp eq i32 %1958, 0
  br i1 %cmp.not.i.i938.i, label %do.body.i.i943.i, label %gr_def.exit928.i.cp_ctx.exit948.i_crit_edge

gr_def.exit928.i.cp_ctx.exit948.i_crit_edge:      ; preds = %gr_def.exit928.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit948.i

do.body.i.i943.i:                                 ; preds = %gr_def.exit928.i
  %ctxprog_len.i.i940.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1965 = ptrtoint ptr %ctxprog_len.i.i940.i to i32
  call void @__asan_load4_noabort(i32 %1965)
  %1966 = load i32, ptr %ctxprog_len.i.i940.i, align 4
  %ctxprog_max.i.i941.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1967 = ptrtoint ptr %ctxprog_max.i.i941.i to i32
  call void @__asan_load4_noabort(i32 %1967)
  %1968 = load i32, ptr %ctxprog_max.i.i941.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1966, i32 %1968)
  %cmp1.i.i942.i = icmp eq i32 %1966, %1968
  br i1 %cmp1.i.i942.i, label %do.body4.i.i944.i, label %do.end10.i.i947.i, !prof !9

do.body4.i.i944.i:                                ; preds = %do.body.i.i943.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i947.i:                                ; preds = %do.body.i.i943.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i945.i = add i32 %1966, 1
  %1969 = ptrtoint ptr %ctxprog_len.i.i940.i to i32
  call void @__asan_store4_noabort(i32 %1969)
  store i32 %inc.i.i945.i, ptr %ctxprog_len.i.i940.i, align 4
  %arrayidx.i.i946.i = getelementptr i32, ptr %1964, i32 %1966
  %1970 = ptrtoint ptr %arrayidx.i.i946.i to i32
  call void @__asan_store4_noabort(i32 %1970)
  store i32 1197808, ptr %arrayidx.i.i946.i, align 4
  br label %cp_ctx.exit948.i

cp_ctx.exit948.i:                                 ; preds = %do.end10.i.i947.i, %gr_def.exit928.i.cp_ctx.exit948.i_crit_edge
  %1971 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1971)
  %1972 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1972)
  %cmp.not.i950.i = icmp eq i32 %1972, 1
  br i1 %cmp.not.i950.i, label %if.end.i958.i, label %cp_ctx.exit948.i.gr_def.exit959.i_crit_edge

cp_ctx.exit948.i.gr_def.exit959.i_crit_edge:      ; preds = %cp_ctx.exit948.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit959.i

if.end.i958.i:                                    ; preds = %cp_ctx.exit948.i
  call void @__sanitizer_cov_trace_pc() #7
  %1973 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1973)
  %1974 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i952.i = sub i32 1784, %1974
  %1975 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %1975)
  %1976 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i954.i = add i32 %sub1.i952.i, %1976
  %1977 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %1977)
  %1978 = load ptr, ptr %data.i573.i, align 4
  %1979 = ptrtoint ptr %1978 to i32
  call void @__asan_load4_noabort(i32 %1979)
  %1980 = load ptr, ptr %1978, align 8
  %wr32.i956.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %1980, i32 0, i32 3
  %1981 = ptrtoint ptr %wr32.i956.i to i32
  call void @__asan_load4_noabort(i32 %1981)
  %1982 = load ptr, ptr %wr32.i956.i, align 4
  %mul.i957.i = shl i32 %add.i954.i, 2
  tail call void %1982(ptr noundef %1978, i32 noundef %mul.i957.i, i32 noundef 16776960) #5
  %1983 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %1983)
  %.pr1202.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit959.i

gr_def.exit959.i:                                 ; preds = %if.end.i958.i, %cp_ctx.exit948.i.gr_def.exit959.i_crit_edge
  %1984 = phi i32 [ %1972, %cp_ctx.exit948.i.gr_def.exit959.i_crit_edge ], [ %.pr1202.i, %if.end.i958.i ]
  %1985 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %1985)
  store i32 1792, ptr %ctxprog_reg.i.i, align 4
  %1986 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %1986)
  %1987 = load i32, ptr %ctxvals_pos.i813, align 4
  %1988 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %1988)
  store i32 %1987, ptr %ctxvals_base.i829, align 4
  %add.i963.i = add i32 %1987, 192
  store i32 %add.i963.i, ptr %ctxvals_pos.i813, align 4
  %1989 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1989)
  %1990 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1984)
  %cmp.not.i.i.i.i465 = icmp eq i32 %1984, 0
  br i1 %cmp.not.i.i.i.i465, label %do.body.i.i.i.i469, label %gr_def.exit959.i.if.end.i970.i_crit_edge

gr_def.exit959.i.if.end.i970.i_crit_edge:         ; preds = %gr_def.exit959.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i970.i

do.body.i.i.i.i469:                               ; preds = %gr_def.exit959.i
  %ctxprog_len.i.i.i.i466 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %1991 = ptrtoint ptr %ctxprog_len.i.i.i.i466 to i32
  call void @__asan_load4_noabort(i32 %1991)
  %1992 = load i32, ptr %ctxprog_len.i.i.i.i466, align 4
  %ctxprog_max.i.i.i.i467 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %1993 = ptrtoint ptr %ctxprog_max.i.i.i.i467 to i32
  call void @__asan_load4_noabort(i32 %1993)
  %1994 = load i32, ptr %ctxprog_max.i.i.i.i467, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1992, i32 %1994)
  %cmp1.i.i.i.i468 = icmp eq i32 %1992, %1994
  br i1 %cmp1.i.i.i.i468, label %do.body4.i.i.i.i470, label %do.end10.i.i.i.i473, !prof !9

do.body4.i.i.i.i470:                              ; preds = %do.body.i.i.i.i469
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i.i473:                              ; preds = %do.body.i.i.i.i469
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i.i471 = add i32 %1992, 1
  %1995 = ptrtoint ptr %ctxprog_len.i.i.i.i466 to i32
  call void @__asan_store4_noabort(i32 %1995)
  store i32 %inc.i.i.i.i471, ptr %ctxprog_len.i.i.i.i466, align 4
  %arrayidx.i.i.i.i472 = getelementptr i32, ptr %1990, i32 %1992
  %1996 = ptrtoint ptr %arrayidx.i.i.i.i472 to i32
  call void @__asan_store4_noabort(i32 %1996)
  store i32 2097344, ptr %arrayidx.i.i.i.i472, align 4
  br label %if.end.i970.i

if.end.i970.i:                                    ; preds = %do.end10.i.i.i.i473, %gr_def.exit959.i.if.end.i970.i_crit_edge
  %1997 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1997)
  %1998 = load i32, ptr %ctxprog_reg.i.i, align 4
  %or4.i966.i = or i32 %1998, 1048576
  %1999 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %1999)
  %2000 = load ptr, ptr %ucode.i.i, align 4
  %2001 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2001)
  %2002 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2002)
  %cmp.not.i.i969.i = icmp eq i32 %2002, 0
  br i1 %cmp.not.i.i969.i, label %do.body.i.i974.i, label %if.end.i970.i.for.body65.i.preheader_crit_edge

if.end.i970.i.for.body65.i.preheader_crit_edge:   ; preds = %if.end.i970.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65.i.preheader

do.body.i.i974.i:                                 ; preds = %if.end.i970.i
  %ctxprog_len.i.i971.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2003 = ptrtoint ptr %ctxprog_len.i.i971.i to i32
  call void @__asan_load4_noabort(i32 %2003)
  %2004 = load i32, ptr %ctxprog_len.i.i971.i, align 4
  %ctxprog_max.i.i972.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2005 = ptrtoint ptr %ctxprog_max.i.i972.i to i32
  call void @__asan_load4_noabort(i32 %2005)
  %2006 = load i32, ptr %ctxprog_max.i.i972.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2004, i32 %2006)
  %cmp1.i.i973.i = icmp eq i32 %2004, %2006
  br i1 %cmp1.i.i973.i, label %do.body4.i.i975.i, label %do.end10.i.i978.i, !prof !9

do.body4.i.i975.i:                                ; preds = %do.body.i.i974.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i978.i:                                ; preds = %do.body.i.i974.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i976.i = add i32 %2004, 1
  %2007 = ptrtoint ptr %ctxprog_len.i.i971.i to i32
  call void @__asan_store4_noabort(i32 %2007)
  store i32 %inc.i.i976.i, ptr %ctxprog_len.i.i971.i, align 4
  %arrayidx.i.i977.i = getelementptr i32, ptr %2000, i32 %2004
  %2008 = ptrtoint ptr %arrayidx.i.i977.i to i32
  call void @__asan_store4_noabort(i32 %2008)
  store i32 %or4.i966.i, ptr %arrayidx.i.i977.i, align 4
  br label %for.body65.i.preheader

for.body65.i.preheader:                           ; preds = %do.end10.i.i978.i, %if.end.i970.i.for.body65.i.preheader_crit_edge
  br label %for.body65.i

for.body65.i:                                     ; preds = %gr_def.exit1057.i.for.body65.i_crit_edge, %for.body65.i.preheader
  %i.31310.i = phi i32 [ %inc79.i, %gr_def.exit1057.i.for.body65.i_crit_edge ], [ 0, %for.body65.i.preheader ]
  %mul66.i = shl i32 %i.31310.i, 2
  %2009 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2009)
  %2010 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2010)
  %cmp.not.i981.i = icmp eq i32 %2010, 1
  br i1 %cmp.not.i981.i, label %gr_def.exit992.i, label %for.body65.i.gr_def.exit1057.i_crit_edge

for.body65.i.gr_def.exit1057.i_crit_edge:         ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

gr_def.exit992.i:                                 ; preds = %for.body65.i
  %sub.i982.i = add nuw nsw i32 %mul66.i, 7232
  %div9.i983.i = lshr exact i32 %sub.i982.i, 2
  %2011 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2011)
  %2012 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i985.i = sub i32 %div9.i983.i, %2012
  %2013 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2013)
  %2014 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i987.i = add i32 %sub1.i985.i, %2014
  %2015 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2015)
  %2016 = load ptr, ptr %data.i573.i, align 4
  %2017 = ptrtoint ptr %2016 to i32
  call void @__asan_load4_noabort(i32 %2017)
  %2018 = load ptr, ptr %2016, align 8
  %wr32.i989.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2018, i32 0, i32 3
  %2019 = ptrtoint ptr %wr32.i989.i to i32
  call void @__asan_load4_noabort(i32 %2019)
  %2020 = load ptr, ptr %wr32.i989.i, align 4
  %mul.i990.i = shl i32 %add.i987.i, 2
  tail call void %2020(ptr noundef %2016, i32 noundef %mul.i990.i, i32 noundef 99464) #5
  %2021 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2021)
  %.pr1203.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1203.i)
  %cmp.not.i994.i = icmp eq i32 %.pr1203.i, 1
  br i1 %cmp.not.i994.i, label %gr_def.exit1005.i, label %gr_def.exit992.i.gr_def.exit1057.i_crit_edge

gr_def.exit992.i.gr_def.exit1057.i_crit_edge:     ; preds = %gr_def.exit992.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

gr_def.exit1005.i:                                ; preds = %gr_def.exit992.i
  %sub.i995.i = add nuw nsw i32 %mul66.i, 7296
  %div9.i996.i = lshr exact i32 %sub.i995.i, 2
  %2022 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2022)
  %2023 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i998.i = sub i32 %div9.i996.i, %2023
  %2024 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2024)
  %2025 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1000.i = add i32 %sub1.i998.i, %2025
  %2026 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2026)
  %2027 = load ptr, ptr %data.i573.i, align 4
  %2028 = ptrtoint ptr %2027 to i32
  call void @__asan_load4_noabort(i32 %2028)
  %2029 = load ptr, ptr %2027, align 8
  %wr32.i1002.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2029, i32 0, i32 3
  %2030 = ptrtoint ptr %wr32.i1002.i to i32
  call void @__asan_load4_noabort(i32 %2030)
  %2031 = load ptr, ptr %wr32.i1002.i, align 4
  %mul.i1003.i = shl i32 %add.i1000.i, 2
  tail call void %2031(ptr noundef %2027, i32 noundef %mul.i1003.i, i32 noundef 164354) #5
  %2032 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2032)
  %.pr1206.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1206.i)
  %cmp.not.i1007.i = icmp eq i32 %.pr1206.i, 1
  br i1 %cmp.not.i1007.i, label %gr_def.exit1018.i, label %gr_def.exit1005.i.gr_def.exit1057.i_crit_edge

gr_def.exit1005.i.gr_def.exit1057.i_crit_edge:    ; preds = %gr_def.exit1005.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

gr_def.exit1018.i:                                ; preds = %gr_def.exit1005.i
  %sub.i1008.i = add nuw nsw i32 %mul66.i, 7424
  %div9.i1009.i = lshr exact i32 %sub.i1008.i, 2
  %2033 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2033)
  %2034 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1011.i = sub i32 %div9.i1009.i, %2034
  %2035 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2035)
  %2036 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1013.i = add i32 %sub1.i1011.i, %2036
  %2037 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2037)
  %2038 = load ptr, ptr %data.i573.i, align 4
  %2039 = ptrtoint ptr %2038 to i32
  call void @__asan_load4_noabort(i32 %2039)
  %2040 = load ptr, ptr %2038, align 8
  %wr32.i1015.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2040, i32 0, i32 3
  %2041 = ptrtoint ptr %wr32.i1015.i to i32
  call void @__asan_load4_noabort(i32 %2041)
  %2042 = load ptr, ptr %wr32.i1015.i, align 4
  %mul.i1016.i = shl i32 %add.i1013.i, 2
  tail call void %2042(ptr noundef %2038, i32 noundef %mul.i1016.i, i32 noundef 43748) #5
  %2043 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2043)
  %.pr1209.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1209.pr.i)
  %cmp.not.i1020.i = icmp eq i32 %.pr1209.pr.i, 1
  br i1 %cmp.not.i1020.i, label %gr_def.exit1031.i, label %gr_def.exit1018.i.gr_def.exit1057.i_crit_edge

gr_def.exit1018.i.gr_def.exit1057.i_crit_edge:    ; preds = %gr_def.exit1018.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

gr_def.exit1031.i:                                ; preds = %gr_def.exit1018.i
  %sub.i1021.i = add nuw nsw i32 %mul66.i, 7488
  %div9.i1022.i = lshr exact i32 %sub.i1021.i, 2
  %2044 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2044)
  %2045 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1024.i = sub i32 %div9.i1022.i, %2045
  %2046 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2046)
  %2047 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1026.i = add i32 %sub1.i1024.i, %2047
  %2048 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2048)
  %2049 = load ptr, ptr %data.i573.i, align 4
  %2050 = ptrtoint ptr %2049 to i32
  call void @__asan_load4_noabort(i32 %2050)
  %2051 = load ptr, ptr %2049, align 8
  %wr32.i1028.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2051, i32 0, i32 3
  %2052 = ptrtoint ptr %wr32.i1028.i to i32
  call void @__asan_load4_noabort(i32 %2052)
  %2053 = load ptr, ptr %wr32.i1028.i, align 4
  %mul.i1029.i = shl i32 %add.i1026.i, 2
  tail call void %2053(ptr noundef %2049, i32 noundef %mul.i1029.i, i32 noundef 16850944) #5
  %2054 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2054)
  %.pr1212.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1212.i)
  %cmp.not.i1033.i = icmp eq i32 %.pr1212.i, 1
  br i1 %cmp.not.i1033.i, label %gr_def.exit1044.i, label %gr_def.exit1031.i.gr_def.exit1057.i_crit_edge

gr_def.exit1031.i.gr_def.exit1057.i_crit_edge:    ; preds = %gr_def.exit1031.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

gr_def.exit1044.i:                                ; preds = %gr_def.exit1031.i
  %sub.i1034.i = add nuw nsw i32 %mul66.i, 7552
  %div9.i1035.i = lshr exact i32 %sub.i1034.i, 2
  %2055 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2055)
  %2056 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1037.i = sub i32 %div9.i1035.i, %2056
  %2057 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2057)
  %2058 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1039.i = add i32 %sub1.i1037.i, %2058
  %2059 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2059)
  %2060 = load ptr, ptr %data.i573.i, align 4
  %2061 = ptrtoint ptr %2060 to i32
  call void @__asan_load4_noabort(i32 %2061)
  %2062 = load ptr, ptr %2060, align 8
  %wr32.i1041.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2062, i32 0, i32 3
  %2063 = ptrtoint ptr %wr32.i1041.i to i32
  call void @__asan_load4_noabort(i32 %2063)
  %2064 = load ptr, ptr %wr32.i1041.i, align 4
  %mul.i1042.i = shl i32 %add.i1039.i, 2
  tail call void %2064(ptr noundef %2060, i32 noundef %mul.i1042.i, i32 noundef 524296) #5
  %2065 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2065)
  %.pr1215.pr.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1215.pr.pr.i)
  %cmp.not.i1046.i = icmp eq i32 %.pr1215.pr.pr.i, 1
  br i1 %cmp.not.i1046.i, label %if.end.i1056.i, label %gr_def.exit1044.i.gr_def.exit1057.i_crit_edge

gr_def.exit1044.i.gr_def.exit1057.i_crit_edge:    ; preds = %gr_def.exit1044.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i

if.end.i1056.i:                                   ; preds = %gr_def.exit1044.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i1047.i = add nuw nsw i32 %mul66.i, 7680
  %div9.i1048.i = lshr exact i32 %sub.i1047.i, 2
  %2066 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2066)
  %2067 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1050.i = sub i32 %div9.i1048.i, %2067
  %2068 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2068)
  %2069 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1052.i = add i32 %sub1.i1050.i, %2069
  %2070 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2070)
  %2071 = load ptr, ptr %data.i573.i, align 4
  %2072 = ptrtoint ptr %2071 to i32
  call void @__asan_load4_noabort(i32 %2072)
  %2073 = load ptr, ptr %2071, align 8
  %wr32.i1054.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2073, i32 0, i32 3
  %2074 = ptrtoint ptr %wr32.i1054.i to i32
  call void @__asan_load4_noabort(i32 %2074)
  %2075 = load ptr, ptr %wr32.i1054.i, align 4
  %mul.i1055.i = shl i32 %add.i1052.i, 2
  tail call void %2075(ptr noundef %2071, i32 noundef %mul.i1055.i, i32 noundef 1048584) #5
  br label %gr_def.exit1057.i

gr_def.exit1057.i:                                ; preds = %if.end.i1056.i, %gr_def.exit1044.i.gr_def.exit1057.i_crit_edge, %gr_def.exit1031.i.gr_def.exit1057.i_crit_edge, %gr_def.exit1018.i.gr_def.exit1057.i_crit_edge, %gr_def.exit1005.i.gr_def.exit1057.i_crit_edge, %gr_def.exit992.i.gr_def.exit1057.i_crit_edge, %for.body65.i.gr_def.exit1057.i_crit_edge
  %inc79.i = add nuw nsw i32 %i.31310.i, 1
  %exitcond1314.not.i = icmp eq i32 %inc79.i, 16
  br i1 %exitcond1314.not.i, label %gr_def.exit1057.i.for.body83.i_crit_edge, label %gr_def.exit1057.i.for.body65.i_crit_edge

gr_def.exit1057.i.for.body65.i_crit_edge:         ; preds = %gr_def.exit1057.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65.i

gr_def.exit1057.i.for.body83.i_crit_edge:         ; preds = %gr_def.exit1057.i
  br label %for.body83.i

for.body83.i:                                     ; preds = %gr_def.exit1109.i.for.body83.i_crit_edge, %gr_def.exit1057.i.for.body83.i_crit_edge
  %i.41311.i = phi i32 [ %inc93.i, %gr_def.exit1109.i.for.body83.i_crit_edge ], [ 0, %gr_def.exit1057.i.for.body83.i_crit_edge ]
  %mul84.i = shl i32 %i.41311.i, 2
  %2076 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2076)
  %2077 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2077)
  %cmp.not.i1059.i = icmp eq i32 %2077, 1
  br i1 %cmp.not.i1059.i, label %gr_def.exit1070.i, label %for.body83.i.gr_def.exit1109.i_crit_edge

for.body83.i.gr_def.exit1109.i_crit_edge:         ; preds = %for.body83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1109.i

gr_def.exit1070.i:                                ; preds = %for.body83.i
  %sub.i1060.i = add nuw nsw i32 %mul84.i, 7824
  %div9.i1061.i = lshr exact i32 %sub.i1060.i, 2
  %2078 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2078)
  %2079 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1063.i = sub i32 %div9.i1061.i, %2079
  %2080 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2080)
  %2081 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1065.i = add i32 %sub1.i1063.i, %2081
  %2082 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2082)
  %2083 = load ptr, ptr %data.i573.i, align 4
  %2084 = ptrtoint ptr %2083 to i32
  call void @__asan_load4_noabort(i32 %2084)
  %2085 = load ptr, ptr %2083, align 8
  %wr32.i1067.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2085, i32 0, i32 3
  %2086 = ptrtoint ptr %wr32.i1067.i to i32
  call void @__asan_load4_noabort(i32 %2086)
  %2087 = load ptr, ptr %wr32.i1067.i, align 4
  %mul.i1068.i = shl i32 %add.i1065.i, 2
  tail call void %2087(ptr noundef %2083, i32 noundef %mul.i1068.i, i32 noundef 113792) #5
  %2088 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2088)
  %.pr1218.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1218.i)
  %cmp.not.i1072.i = icmp eq i32 %.pr1218.i, 1
  br i1 %cmp.not.i1072.i, label %gr_def.exit1083.i, label %gr_def.exit1070.i.gr_def.exit1109.i_crit_edge

gr_def.exit1070.i.gr_def.exit1109.i_crit_edge:    ; preds = %gr_def.exit1070.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1109.i

gr_def.exit1083.i:                                ; preds = %gr_def.exit1070.i
  %sub.i1073.i = add nuw nsw i32 %mul84.i, 7840
  %div9.i1074.i = lshr exact i32 %sub.i1073.i, 2
  %2089 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2089)
  %2090 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1076.i = sub i32 %div9.i1074.i, %2090
  %2091 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2091)
  %2092 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1078.i = add i32 %sub1.i1076.i, %2092
  %2093 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2093)
  %2094 = load ptr, ptr %data.i573.i, align 4
  %2095 = ptrtoint ptr %2094 to i32
  call void @__asan_load4_noabort(i32 %2095)
  %2096 = load ptr, ptr %2094, align 8
  %wr32.i1080.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2096, i32 0, i32 3
  %2097 = ptrtoint ptr %wr32.i1080.i to i32
  call void @__asan_load4_noabort(i32 %2097)
  %2098 = load ptr, ptr %wr32.i1080.i, align 4
  %mul.i1081.i = shl i32 %add.i1078.i, 2
  tail call void %2098(ptr noundef %2094, i32 noundef %mul.i1081.i, i32 noundef 514) #5
  %2099 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2099)
  %.pr1221.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1221.i)
  %cmp.not.i1085.i = icmp eq i32 %.pr1221.i, 1
  br i1 %cmp.not.i1085.i, label %gr_def.exit1096.i, label %gr_def.exit1083.i.gr_def.exit1109.i_crit_edge

gr_def.exit1083.i.gr_def.exit1109.i_crit_edge:    ; preds = %gr_def.exit1083.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1109.i

gr_def.exit1096.i:                                ; preds = %gr_def.exit1083.i
  %sub.i1086.i = add nuw nsw i32 %mul84.i, 7872
  %div9.i1087.i = lshr exact i32 %sub.i1086.i, 2
  %2100 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2100)
  %2101 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1089.i = sub i32 %div9.i1087.i, %2101
  %2102 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2102)
  %2103 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1091.i = add i32 %sub1.i1089.i, %2103
  %2104 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2104)
  %2105 = load ptr, ptr %data.i573.i, align 4
  %2106 = ptrtoint ptr %2105 to i32
  call void @__asan_load4_noabort(i32 %2106)
  %2107 = load ptr, ptr %2105, align 8
  %wr32.i1093.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2107, i32 0, i32 3
  %2108 = ptrtoint ptr %wr32.i1093.i to i32
  call void @__asan_load4_noabort(i32 %2108)
  %2109 = load ptr, ptr %wr32.i1093.i, align 4
  %mul.i1094.i = shl i32 %add.i1091.i, 2
  tail call void %2109(ptr noundef %2105, i32 noundef %mul.i1094.i, i32 noundef 8) #5
  %2110 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2110)
  %.pr1224.pr.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1224.pr.i)
  %cmp.not.i1098.i = icmp eq i32 %.pr1224.pr.i, 1
  br i1 %cmp.not.i1098.i, label %if.end.i1108.i, label %gr_def.exit1096.i.gr_def.exit1109.i_crit_edge

gr_def.exit1096.i.gr_def.exit1109.i_crit_edge:    ; preds = %gr_def.exit1096.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1109.i

if.end.i1108.i:                                   ; preds = %gr_def.exit1096.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i1099.i = add nuw nsw i32 %mul84.i, 7904
  %div9.i1100.i = lshr exact i32 %sub.i1099.i, 2
  %2111 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2111)
  %2112 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1102.i = sub i32 %div9.i1100.i, %2112
  %2113 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2113)
  %2114 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1104.i = add i32 %sub1.i1102.i, %2114
  %2115 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2115)
  %2116 = load ptr, ptr %data.i573.i, align 4
  %2117 = ptrtoint ptr %2116 to i32
  call void @__asan_load4_noabort(i32 %2117)
  %2118 = load ptr, ptr %2116, align 8
  %wr32.i1106.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2118, i32 0, i32 3
  %2119 = ptrtoint ptr %wr32.i1106.i to i32
  call void @__asan_load4_noabort(i32 %2119)
  %2120 = load ptr, ptr %wr32.i1106.i, align 4
  %mul.i1107.i = shl i32 %add.i1104.i, 2
  tail call void %2120(ptr noundef %2116, i32 noundef %mul.i1107.i, i32 noundef 524296) #5
  br label %gr_def.exit1109.i

gr_def.exit1109.i:                                ; preds = %if.end.i1108.i, %gr_def.exit1096.i.gr_def.exit1109.i_crit_edge, %gr_def.exit1083.i.gr_def.exit1109.i_crit_edge, %gr_def.exit1070.i.gr_def.exit1109.i_crit_edge, %for.body83.i.gr_def.exit1109.i_crit_edge
  %inc93.i = add nuw nsw i32 %i.41311.i, 1
  %exitcond1315.not.i = icmp eq i32 %inc93.i, 4
  br i1 %exitcond1315.not.i, label %for.end94.i, label %gr_def.exit1109.i.for.body83.i_crit_edge

gr_def.exit1109.i.for.body83.i_crit_edge:         ; preds = %gr_def.exit1109.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body83.i

for.end94.i:                                      ; preds = %gr_def.exit1109.i
  %2121 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2121)
  store i32 983, ptr %ctxprog_reg.i.i, align 4
  %2122 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2122)
  %2123 = load i32, ptr %ctxvals_pos.i813, align 4
  %2124 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2124)
  store i32 %2123, ptr %ctxvals_base.i829, align 4
  %add.i1113.i = add i32 %2123, 3
  store i32 %add.i1113.i, ptr %ctxvals_pos.i813, align 4
  %2125 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2125)
  %2126 = load ptr, ptr %ucode.i.i, align 4
  %2127 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2127)
  %2128 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2128)
  %cmp.not.i.i1119.i = icmp eq i32 %2128, 0
  br i1 %cmp.not.i.i1119.i, label %do.body.i.i1124.i, label %for.end94.i.cp_ctx.exit1129.i_crit_edge

for.end94.i.cp_ctx.exit1129.i_crit_edge:          ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1129.i

do.body.i.i1124.i:                                ; preds = %for.end94.i
  %ctxprog_len.i.i1121.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2129 = ptrtoint ptr %ctxprog_len.i.i1121.i to i32
  call void @__asan_load4_noabort(i32 %2129)
  %2130 = load i32, ptr %ctxprog_len.i.i1121.i, align 4
  %ctxprog_max.i.i1122.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2131 = ptrtoint ptr %ctxprog_max.i.i1122.i to i32
  call void @__asan_load4_noabort(i32 %2131)
  %2132 = load i32, ptr %ctxprog_max.i.i1122.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2130, i32 %2132)
  %cmp1.i.i1123.i = icmp eq i32 %2130, %2132
  br i1 %cmp1.i.i1123.i, label %do.body4.i.i1125.i, label %do.end10.i.i1128.i, !prof !9

do.body4.i.i1125.i:                               ; preds = %do.body.i.i1124.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1128.i:                               ; preds = %do.body.i.i1124.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1126.i = add i32 %2130, 1
  %2133 = ptrtoint ptr %ctxprog_len.i.i1121.i to i32
  call void @__asan_store4_noabort(i32 %2133)
  store i32 %inc.i.i1126.i, ptr %ctxprog_len.i.i1121.i, align 4
  %arrayidx.i.i1127.i = getelementptr i32, ptr %2126, i32 %2130
  %2134 = ptrtoint ptr %arrayidx.i.i1127.i to i32
  call void @__asan_store4_noabort(i32 %2134)
  store i32 1098711, ptr %arrayidx.i.i1127.i, align 4
  %2135 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2135)
  %.pr1227.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1129.i

cp_ctx.exit1129.i:                                ; preds = %do.end10.i.i1128.i, %for.end94.i.cp_ctx.exit1129.i_crit_edge
  %2136 = phi i32 [ %2128, %for.end94.i.cp_ctx.exit1129.i_crit_edge ], [ %.pr1227.i, %do.end10.i.i1128.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2136)
  %cmp.not.i1131.i = icmp eq i32 %2136, 1
  br i1 %cmp.not.i1131.i, label %if.end.i1139.i, label %cp_ctx.exit1129.i.gr_def.exit1140.i_crit_edge

cp_ctx.exit1129.i.gr_def.exit1140.i_crit_edge:    ; preds = %cp_ctx.exit1129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1140.i

if.end.i1139.i:                                   ; preds = %cp_ctx.exit1129.i
  call void @__sanitizer_cov_trace_pc() #7
  %2137 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2137)
  %2138 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1133.i = sub i32 983, %2138
  %2139 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2139)
  %2140 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1135.i = add i32 %sub1.i1133.i, %2140
  %2141 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2141)
  %2142 = load ptr, ptr %data.i573.i, align 4
  %2143 = ptrtoint ptr %2142 to i32
  call void @__asan_load4_noabort(i32 %2143)
  %2144 = load ptr, ptr %2142, align 8
  %wr32.i1137.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2144, i32 0, i32 3
  %2145 = ptrtoint ptr %wr32.i1137.i to i32
  call void @__asan_load4_noabort(i32 %2145)
  %2146 = load ptr, ptr %wr32.i1137.i, align 4
  %mul.i1138.i = shl i32 %add.i1135.i, 2
  tail call void %2146(ptr noundef %2142, i32 noundef %mul.i1138.i, i32 noundef 2) #5
  br label %gr_def.exit1140.i

gr_def.exit1140.i:                                ; preds = %if.end.i1139.i, %cp_ctx.exit1129.i.gr_def.exit1140.i_crit_edge
  %2147 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2147)
  store i32 993, ptr %ctxprog_reg.i.i, align 4
  %2148 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2148)
  %2149 = load i32, ptr %ctxvals_pos.i813, align 4
  %2150 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2150)
  store i32 %2149, ptr %ctxvals_base.i829, align 4
  %add.i1144.i = add i32 %2149, 1
  store i32 %add.i1144.i, ptr %ctxvals_pos.i813, align 4
  %2151 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2151)
  %2152 = load ptr, ptr %ucode.i.i, align 4
  %2153 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2153)
  %2154 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2154)
  %cmp.not.i.i1150.i = icmp eq i32 %2154, 0
  br i1 %cmp.not.i.i1150.i, label %do.body.i.i1155.i, label %gr_def.exit1140.i._cp_wait.exit485_crit_edge

gr_def.exit1140.i._cp_wait.exit485_crit_edge:     ; preds = %gr_def.exit1140.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_wait.exit485

do.body.i.i1155.i:                                ; preds = %gr_def.exit1140.i
  %ctxprog_len.i.i1152.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2155 = ptrtoint ptr %ctxprog_len.i.i1152.i to i32
  call void @__asan_load4_noabort(i32 %2155)
  %2156 = load i32, ptr %ctxprog_len.i.i1152.i, align 4
  %ctxprog_max.i.i1153.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2157 = ptrtoint ptr %ctxprog_max.i.i1153.i to i32
  call void @__asan_load4_noabort(i32 %2157)
  %2158 = load i32, ptr %ctxprog_max.i.i1153.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2156, i32 %2158)
  %cmp1.i.i1154.i = icmp eq i32 %2156, %2158
  br i1 %cmp1.i.i1154.i, label %do.body4.i.i1156.i, label %nv40_gr_construct_state3d.exit, !prof !9

do.body4.i.i1156.i:                               ; preds = %do.body.i.i1155.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

nv40_gr_construct_state3d.exit:                   ; preds = %do.body.i.i1155.i
  %inc.i.i1157.i = add i32 %2156, 1
  %2159 = ptrtoint ptr %ctxprog_len.i.i1152.i to i32
  call void @__asan_store4_noabort(i32 %2159)
  store i32 %inc.i.i1157.i, ptr %ctxprog_len.i.i1152.i, align 4
  %arrayidx.i.i1158.i = getelementptr i32, ptr %2152, i32 %2156
  %2160 = ptrtoint ptr %arrayidx.i.i1158.i to i32
  call void @__asan_store4_noabort(i32 %2160)
  store i32 1065953, ptr %arrayidx.i.i1158.i, align 4
  %2161 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2161)
  %.pr901 = load i32, ptr %mode.i.i, align 4
  %2162 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2162)
  %2163 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr901)
  %cmp.not.i.i476 = icmp eq i32 %.pr901, 0
  br i1 %cmp.not.i.i476, label %do.body.i.i480, label %nv40_gr_construct_state3d.exit._cp_wait.exit485_crit_edge

nv40_gr_construct_state3d.exit._cp_wait.exit485_crit_edge: ; preds = %nv40_gr_construct_state3d.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_wait.exit485

do.body.i.i480:                                   ; preds = %nv40_gr_construct_state3d.exit
  %2164 = ptrtoint ptr %ctxprog_len.i.i1152.i to i32
  call void @__asan_load4_noabort(i32 %2164)
  %2165 = load i32, ptr %ctxprog_len.i.i1152.i, align 4
  %2166 = ptrtoint ptr %ctxprog_max.i.i1153.i to i32
  call void @__asan_load4_noabort(i32 %2166)
  %2167 = load i32, ptr %ctxprog_max.i.i1153.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2165, i32 %2167)
  %cmp1.i.i479 = icmp eq i32 %2165, %2167
  br i1 %cmp1.i.i479, label %do.body4.i.i481, label %do.end10.i.i484, !prof !9

do.body4.i.i481:                                  ; preds = %do.body.i.i480
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i484:                                  ; preds = %do.body.i.i480
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i482 = add i32 %2165, 1
  %2168 = ptrtoint ptr %ctxprog_len.i.i1152.i to i32
  call void @__asan_store4_noabort(i32 %2168)
  store i32 %inc.i.i482, ptr %ctxprog_len.i.i1152.i, align 4
  %arrayidx.i.i483 = getelementptr i32, ptr %2163, i32 %2165
  %2169 = ptrtoint ptr %arrayidx.i.i483 to i32
  call void @__asan_store4_noabort(i32 %2169)
  store i32 5242976, ptr %arrayidx.i.i483, align 4
  br label %_cp_wait.exit485

_cp_wait.exit485:                                 ; preds = %do.end10.i.i484, %nv40_gr_construct_state3d.exit._cp_wait.exit485_crit_edge, %gr_def.exit1140.i._cp_wait.exit485_crit_edge
  %2170 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2170)
  %2171 = load ptr, ptr %ctx, align 4
  %2172 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2172)
  store i32 2048, ptr %ctxprog_reg.i.i, align 4
  %2173 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2173)
  %2174 = load i32, ptr %ctxvals_pos.i813, align 4
  %2175 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2175)
  store i32 %2174, ptr %ctxvals_base.i829, align 4
  %add.i.i489 = add i32 %2174, 1
  store i32 %add.i.i489, ptr %ctxvals_pos.i813, align 4
  %2176 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2176)
  %2177 = load ptr, ptr %ucode.i.i, align 4
  %2178 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2178)
  %2179 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2179)
  %cmp.not.i.i.i492 = icmp eq i32 %2179, 0
  br i1 %cmp.not.i.i.i492, label %do.body.i.i.i496, label %_cp_wait.exit485.cp_ctx.exit.i505_crit_edge

_cp_wait.exit485.cp_ctx.exit.i505_crit_edge:      ; preds = %_cp_wait.exit485
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit.i505

do.body.i.i.i496:                                 ; preds = %_cp_wait.exit485
  %ctxprog_len.i.i.i493 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2180 = ptrtoint ptr %ctxprog_len.i.i.i493 to i32
  call void @__asan_load4_noabort(i32 %2180)
  %2181 = load i32, ptr %ctxprog_len.i.i.i493, align 4
  %ctxprog_max.i.i.i494 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2182 = ptrtoint ptr %ctxprog_max.i.i.i494 to i32
  call void @__asan_load4_noabort(i32 %2182)
  %2183 = load i32, ptr %ctxprog_max.i.i.i494, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2181, i32 %2183)
  %cmp1.i.i.i495 = icmp eq i32 %2181, %2183
  br i1 %cmp1.i.i.i495, label %do.body4.i.i.i497, label %do.end10.i.i.i500, !prof !9

do.body4.i.i.i497:                                ; preds = %do.body.i.i.i496
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i500:                                ; preds = %do.body.i.i.i496
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i498 = add i32 %2181, 1
  %2184 = ptrtoint ptr %ctxprog_len.i.i.i493 to i32
  call void @__asan_store4_noabort(i32 %2184)
  store i32 %inc.i.i.i498, ptr %ctxprog_len.i.i.i493, align 4
  %arrayidx.i.i.i499 = getelementptr i32, ptr %2177, i32 %2181
  %2185 = ptrtoint ptr %arrayidx.i.i.i499 to i32
  call void @__asan_store4_noabort(i32 %2185)
  store i32 1067008, ptr %arrayidx.i.i.i499, align 4
  br label %cp_ctx.exit.i505

cp_ctx.exit.i505:                                 ; preds = %do.end10.i.i.i500, %_cp_wait.exit485.cp_ctx.exit.i505_crit_edge
  %chipset.i501 = getelementptr inbounds %struct.nvkm_device, ptr %2171, i32 0, i32 16
  %2186 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2186)
  %2187 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2187)
  %cmp.i502 = icmp eq i32 %2187, 64
  %cond.i503 = select i1 %cmp.i502, i32 1, i32 2
  %2188 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2188)
  store i32 2305, ptr %ctxprog_reg.i.i, align 4
  %2189 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2189)
  %2190 = load i32, ptr %ctxvals_pos.i813, align 4
  %2191 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2191)
  store i32 %2190, ptr %ctxvals_base.i829, align 4
  %add.i196.i = add i32 %2190, %cond.i503
  store i32 %add.i196.i, ptr %ctxvals_pos.i813, align 4
  %shl.i.i504 = shl nuw nsw i32 %cond.i503, 14
  %or4.i198.i = or i32 %shl.i.i504, 1050881
  %2192 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2192)
  %2193 = load ptr, ptr %ucode.i.i, align 4
  %2194 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2194)
  %2195 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2195)
  %cmp.not.i.i201.i = icmp eq i32 %2195, 0
  br i1 %cmp.not.i.i201.i, label %do.body.i.i205.i, label %cp_ctx.exit.i505.cp_ctx.exit210.i_crit_edge

cp_ctx.exit.i505.cp_ctx.exit210.i_crit_edge:      ; preds = %cp_ctx.exit.i505
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit210.i

do.body.i.i205.i:                                 ; preds = %cp_ctx.exit.i505
  %ctxprog_len.i.i202.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2196 = ptrtoint ptr %ctxprog_len.i.i202.i to i32
  call void @__asan_load4_noabort(i32 %2196)
  %2197 = load i32, ptr %ctxprog_len.i.i202.i, align 4
  %ctxprog_max.i.i203.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2198 = ptrtoint ptr %ctxprog_max.i.i203.i to i32
  call void @__asan_load4_noabort(i32 %2198)
  %2199 = load i32, ptr %ctxprog_max.i.i203.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2197, i32 %2199)
  %cmp1.i.i204.i = icmp eq i32 %2197, %2199
  br i1 %cmp1.i.i204.i, label %do.body4.i.i206.i, label %do.end10.i.i209.i, !prof !9

do.body4.i.i206.i:                                ; preds = %do.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i209.i:                                ; preds = %do.body.i.i205.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i207.i = add i32 %2197, 1
  %2200 = ptrtoint ptr %ctxprog_len.i.i202.i to i32
  call void @__asan_store4_noabort(i32 %2200)
  store i32 %inc.i.i207.i, ptr %ctxprog_len.i.i202.i, align 4
  %arrayidx.i.i208.i = getelementptr i32, ptr %2193, i32 %2197
  %2201 = ptrtoint ptr %arrayidx.i.i208.i to i32
  call void @__asan_store4_noabort(i32 %2201)
  store i32 %or4.i198.i, ptr %arrayidx.i.i208.i, align 4
  br label %cp_ctx.exit210.i

cp_ctx.exit210.i:                                 ; preds = %do.end10.i.i209.i, %cp_ctx.exit.i505.cp_ctx.exit210.i_crit_edge
  %2202 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2202)
  %2203 = load i32, ptr %chipset.i501, align 4
  %2204 = zext i32 %2203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2204, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %2203, label %sw.default.i513 [
    i32 64, label %sw.bb.i507
    i32 76, label %cp_ctx.exit210.i.sw.bb3.i_crit_edge
    i32 78, label %cp_ctx.exit210.i.sw.bb3.i_crit_edge1129
    i32 103, label %cp_ctx.exit210.i.sw.bb3.i_crit_edge1130
    i32 70, label %cp_ctx.exit210.i.sw.bb4.i_crit_edge
    i32 73, label %cp_ctx.exit210.i.sw.bb4.i_crit_edge1131
    i32 75, label %cp_ctx.exit210.i.sw.bb4.i_crit_edge1132
  ]

cp_ctx.exit210.i.sw.bb4.i_crit_edge1132:          ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

cp_ctx.exit210.i.sw.bb4.i_crit_edge1131:          ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

cp_ctx.exit210.i.sw.bb4.i_crit_edge:              ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4.i

cp_ctx.exit210.i.sw.bb3.i_crit_edge1130:          ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

cp_ctx.exit210.i.sw.bb3.i_crit_edge1129:          ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

cp_ctx.exit210.i.sw.bb3.i_crit_edge:              ; preds = %cp_ctx.exit210.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

sw.bb.i507:                                       ; preds = %cp_ctx.exit210.i
  %2205 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2205)
  %2206 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2206)
  %cmp.not.i.i506 = icmp eq i32 %2206, 1
  br i1 %cmp.not.i.i506, label %if.end.i.i512, label %sw.bb.i507.sw.epilog10.i_crit_edge

sw.bb.i507.sw.epilog10.i_crit_edge:               ; preds = %sw.bb.i507
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10.i

if.end.i.i512:                                    ; preds = %sw.bb.i507
  call void @__sanitizer_cov_trace_pc() #7
  %2207 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2207)
  %2208 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i.i508 = sub i32 2305, %2208
  %2209 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2209)
  %2210 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i213.i = add i32 %sub1.i.i508, %2210
  %2211 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2211)
  %2212 = load ptr, ptr %data.i573.i, align 4
  %2213 = ptrtoint ptr %2212 to i32
  call void @__asan_load4_noabort(i32 %2213)
  %2214 = load ptr, ptr %2212, align 8
  %wr32.i.i510 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2214, i32 0, i32 3
  %2215 = ptrtoint ptr %wr32.i.i510 to i32
  call void @__asan_load4_noabort(i32 %2215)
  %2216 = load ptr, ptr %wr32.i.i510, align 4
  %mul.i.i511 = shl i32 %add.i213.i, 2
  tail call void %2216(ptr noundef %2212, i32 noundef %mul.i.i511, i32 noundef 1) #5
  br label %sw.epilogthread-pre-split.i

sw.bb3.i:                                         ; preds = %cp_ctx.exit210.i.sw.bb3.i_crit_edge, %cp_ctx.exit210.i.sw.bb3.i_crit_edge1129, %cp_ctx.exit210.i.sw.bb3.i_crit_edge1130
  %2217 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2217)
  %2218 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2218)
  %cmp.not.i215.i = icmp eq i32 %2218, 1
  br i1 %cmp.not.i215.i, label %if.end.i223.i, label %sw.bb3.i.sw.epilogthread-pre-split.i_crit_edge

sw.bb3.i.sw.epilogthread-pre-split.i_crit_edge:   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i

if.end.i223.i:                                    ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #7
  %2219 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2219)
  %2220 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i217.i = sub i32 2305, %2220
  %2221 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2221)
  %2222 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i219.i = add i32 %sub1.i217.i, %2222
  %2223 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2223)
  %2224 = load ptr, ptr %data.i573.i, align 4
  %2225 = ptrtoint ptr %2224 to i32
  call void @__asan_load4_noabort(i32 %2225)
  %2226 = load ptr, ptr %2224, align 8
  %wr32.i221.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2226, i32 0, i32 3
  %2227 = ptrtoint ptr %wr32.i221.i to i32
  call void @__asan_load4_noabort(i32 %2227)
  %2228 = load ptr, ptr %wr32.i221.i, align 4
  %mul.i222.i = shl i32 %add.i219.i, 2
  tail call void %2228(ptr noundef %2224, i32 noundef %mul.i222.i, i32 noundef 32) #5
  br label %sw.epilogthread-pre-split.i

sw.bb4.i:                                         ; preds = %cp_ctx.exit210.i.sw.bb4.i_crit_edge, %cp_ctx.exit210.i.sw.bb4.i_crit_edge1131, %cp_ctx.exit210.i.sw.bb4.i_crit_edge1132
  %2229 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2229)
  %2230 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2230)
  %cmp.not.i226.i = icmp eq i32 %2230, 1
  br i1 %cmp.not.i226.i, label %if.end.i234.i, label %sw.bb4.i.sw.epilogthread-pre-split.i_crit_edge

sw.bb4.i.sw.epilogthread-pre-split.i_crit_edge:   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilogthread-pre-split.i

if.end.i234.i:                                    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  %2231 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2231)
  %2232 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i228.i = sub i32 2305, %2232
  %2233 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2233)
  %2234 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i230.i = add i32 %sub1.i228.i, %2234
  %2235 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2235)
  %2236 = load ptr, ptr %data.i573.i, align 4
  %2237 = ptrtoint ptr %2236 to i32
  call void @__asan_load4_noabort(i32 %2237)
  %2238 = load ptr, ptr %2236, align 8
  %wr32.i232.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2238, i32 0, i32 3
  %2239 = ptrtoint ptr %wr32.i232.i to i32
  call void @__asan_load4_noabort(i32 %2239)
  %2240 = load ptr, ptr %wr32.i232.i, align 4
  %mul.i233.i = shl i32 %add.i230.i, 2
  tail call void %2240(ptr noundef %2236, i32 noundef %mul.i233.i, i32 noundef 1057) #5
  br label %sw.epilogthread-pre-split.i

sw.default.i513:                                  ; preds = %cp_ctx.exit210.i
  %2241 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2241)
  %2242 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2242)
  %cmp.not.i237.i = icmp eq i32 %2242, 1
  br i1 %cmp.not.i237.i, label %if.end.i245.i, label %sw.default.i513.sw.epilog.i515_crit_edge

sw.default.i513.sw.epilog.i515_crit_edge:         ; preds = %sw.default.i513
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i515

if.end.i245.i:                                    ; preds = %sw.default.i513
  call void @__sanitizer_cov_trace_pc() #7
  %2243 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2243)
  %2244 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i239.i = sub i32 2305, %2244
  %2245 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2245)
  %2246 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i241.i = add i32 %sub1.i239.i, %2246
  %2247 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2247)
  %2248 = load ptr, ptr %data.i573.i, align 4
  %2249 = ptrtoint ptr %2248 to i32
  call void @__asan_load4_noabort(i32 %2249)
  %2250 = load ptr, ptr %2248, align 8
  %wr32.i243.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2250, i32 0, i32 3
  %2251 = ptrtoint ptr %wr32.i243.i to i32
  call void @__asan_load4_noabort(i32 %2251)
  %2252 = load ptr, ptr %wr32.i243.i, align 4
  %mul.i244.i = shl i32 %add.i241.i, 2
  tail call void %2252(ptr noundef %2248, i32 noundef %mul.i244.i, i32 noundef 33) #5
  br label %sw.epilogthread-pre-split.i

sw.epilogthread-pre-split.i:                      ; preds = %if.end.i245.i, %if.end.i234.i, %sw.bb4.i.sw.epilogthread-pre-split.i_crit_edge, %if.end.i223.i, %sw.bb3.i.sw.epilogthread-pre-split.i_crit_edge, %if.end.i.i512
  %2253 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2253)
  %.pr.i514 = load i32, ptr %chipset.i501, align 4
  br label %sw.epilog.i515

sw.epilog.i515:                                   ; preds = %sw.epilogthread-pre-split.i, %sw.default.i513.sw.epilog.i515_crit_edge
  %2254 = phi i32 [ %.pr.i514, %sw.epilogthread-pre-split.i ], [ %2203, %sw.default.i513.sw.epilog.i515_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2254)
  %cmp6.not.i = icmp eq i32 %2254, 64
  br i1 %cmp6.not.i, label %sw.epilog.i515.if.end.i517_crit_edge, label %if.then.i516

sw.epilog.i515.if.end.i517_crit_edge:             ; preds = %sw.epilog.i515
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i517

if.then.i516:                                     ; preds = %sw.epilog.i515
  %2255 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2255)
  %2256 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2256)
  %cmp.not.i248.i = icmp eq i32 %2256, 1
  br i1 %cmp.not.i248.i, label %if.end.i256.i, label %if.then.i516.if.end.i517_crit_edge

if.then.i516.if.end.i517_crit_edge:               ; preds = %if.then.i516
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i517

if.end.i256.i:                                    ; preds = %if.then.i516
  call void @__sanitizer_cov_trace_pc() #7
  %2257 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2257)
  %2258 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i250.i = sub i32 2306, %2258
  %2259 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2259)
  %2260 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i252.i = add i32 %sub1.i250.i, %2260
  %2261 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2261)
  %2262 = load ptr, ptr %data.i573.i, align 4
  %2263 = ptrtoint ptr %2262 to i32
  call void @__asan_load4_noabort(i32 %2263)
  %2264 = load ptr, ptr %2262, align 8
  %wr32.i254.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2264, i32 0, i32 3
  %2265 = ptrtoint ptr %wr32.i254.i to i32
  call void @__asan_load4_noabort(i32 %2265)
  %2266 = load ptr, ptr %wr32.i254.i, align 4
  %mul.i255.i = shl i32 %add.i252.i, 2
  tail call void %2266(ptr noundef %2262, i32 noundef %mul.i255.i, i32 noundef 51130563) #5
  br label %if.end.i517

if.end.i517:                                      ; preds = %if.end.i256.i, %if.then.i516.if.end.i517_crit_edge, %sw.epilog.i515.if.end.i517_crit_edge
  %2267 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2267)
  %.pr1334.i = load i32, ptr %chipset.i501, align 4
  %2268 = zext i32 %.pr1334.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2268, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %.pr1334.i, label %if.end.i517.sw.epilog10.i_crit_edge [
    i32 68, label %if.end.i517.sw.bb8.i_crit_edge
    i32 70, label %if.end.i517.sw.bb8.i_crit_edge1133
    i32 74, label %if.end.i517.sw.bb8.i_crit_edge1134
    i32 76, label %if.end.i517.sw.bb8.i_crit_edge1135
    i32 78, label %if.end.i517.sw.bb8.i_crit_edge1136
    i32 103, label %if.end.i517.sw.bb8.i_crit_edge1137
  ]

if.end.i517.sw.bb8.i_crit_edge1137:               ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.bb8.i_crit_edge1136:               ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.bb8.i_crit_edge1135:               ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.bb8.i_crit_edge1134:               ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.bb8.i_crit_edge1133:               ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.bb8.i_crit_edge:                   ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8.i

if.end.i517.sw.epilog10.i_crit_edge:              ; preds = %if.end.i517
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10.i

sw.bb8.i:                                         ; preds = %if.end.i517.sw.bb8.i_crit_edge, %if.end.i517.sw.bb8.i_crit_edge1133, %if.end.i517.sw.bb8.i_crit_edge1134, %if.end.i517.sw.bb8.i_crit_edge1135, %if.end.i517.sw.bb8.i_crit_edge1136, %if.end.i517.sw.bb8.i_crit_edge1137
  %2269 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2269)
  store i32 2320, ptr %ctxprog_reg.i.i, align 4
  %2270 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2270)
  %2271 = load i32, ptr %ctxvals_pos.i813, align 4
  %2272 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2272)
  store i32 %2271, ptr %ctxvals_base.i829, align 4
  %add.i261.i = add i32 %2271, 1
  store i32 %add.i261.i, ptr %ctxvals_pos.i813, align 4
  %2273 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2273)
  %2274 = load ptr, ptr %ucode.i.i, align 4
  %2275 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2275)
  %2276 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2276)
  %cmp.not.i.i267.i = icmp eq i32 %2276, 0
  br i1 %cmp.not.i.i267.i, label %do.body.i.i272.i, label %sw.bb8.i.cp_ctx.exit277.i_crit_edge

sw.bb8.i.cp_ctx.exit277.i_crit_edge:              ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit277.i

do.body.i.i272.i:                                 ; preds = %sw.bb8.i
  %ctxprog_len.i.i269.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2277 = ptrtoint ptr %ctxprog_len.i.i269.i to i32
  call void @__asan_load4_noabort(i32 %2277)
  %2278 = load i32, ptr %ctxprog_len.i.i269.i, align 4
  %ctxprog_max.i.i270.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2279 = ptrtoint ptr %ctxprog_max.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %2279)
  %2280 = load i32, ptr %ctxprog_max.i.i270.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2278, i32 %2280)
  %cmp1.i.i271.i = icmp eq i32 %2278, %2280
  br i1 %cmp1.i.i271.i, label %do.body4.i.i273.i, label %do.end10.i.i276.i, !prof !9

do.body4.i.i273.i:                                ; preds = %do.body.i.i272.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i276.i:                                ; preds = %do.body.i.i272.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i274.i = add i32 %2278, 1
  %2281 = ptrtoint ptr %ctxprog_len.i.i269.i to i32
  call void @__asan_store4_noabort(i32 %2281)
  store i32 %inc.i.i274.i, ptr %ctxprog_len.i.i269.i, align 4
  %arrayidx.i.i275.i = getelementptr i32, ptr %2274, i32 %2278
  %2282 = ptrtoint ptr %arrayidx.i.i275.i to i32
  call void @__asan_store4_noabort(i32 %2282)
  store i32 1067280, ptr %arrayidx.i.i275.i, align 4
  %2283 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2283)
  %.pr1335.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit277.i

cp_ctx.exit277.i:                                 ; preds = %do.end10.i.i276.i, %sw.bb8.i.cp_ctx.exit277.i_crit_edge
  %2284 = phi i32 [ %2276, %sw.bb8.i.cp_ctx.exit277.i_crit_edge ], [ %.pr1335.i, %do.end10.i.i276.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2284)
  %cmp.not.i279.i = icmp eq i32 %2284, 1
  br i1 %cmp.not.i279.i, label %if.end.i287.i, label %cp_ctx.exit277.i.sw.epilog10.i_crit_edge

cp_ctx.exit277.i.sw.epilog10.i_crit_edge:         ; preds = %cp_ctx.exit277.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10.i

if.end.i287.i:                                    ; preds = %cp_ctx.exit277.i
  call void @__sanitizer_cov_trace_pc() #7
  %2285 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2285)
  %2286 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i281.i = sub i32 2320, %2286
  %2287 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2287)
  %2288 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i283.i = add i32 %sub1.i281.i, %2288
  %2289 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2289)
  %2290 = load ptr, ptr %data.i573.i, align 4
  %2291 = ptrtoint ptr %2290 to i32
  call void @__asan_load4_noabort(i32 %2291)
  %2292 = load ptr, ptr %2290, align 8
  %wr32.i285.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2292, i32 0, i32 3
  %2293 = ptrtoint ptr %wr32.i285.i to i32
  call void @__asan_load4_noabort(i32 %2293)
  %2294 = load ptr, ptr %wr32.i285.i, align 4
  %mul.i286.i = shl i32 %add.i283.i, 2
  tail call void %2294(ptr noundef %2290, i32 noundef %mul.i286.i, i32 noundef 69633) #5
  br label %sw.epilog10.i

sw.epilog10.i:                                    ; preds = %if.end.i287.i, %cp_ctx.exit277.i.sw.epilog10.i_crit_edge, %if.end.i517.sw.epilog10.i_crit_edge, %sw.bb.i507.sw.epilog10.i_crit_edge
  %2295 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2295)
  %2296 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2296)
  %cmp12.i = icmp eq i32 %2296, 64
  %cond13.i = select i1 %cmp12.i, i32 8, i32 9
  %2297 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2297)
  store i32 2336, ptr %ctxprog_reg.i.i, align 4
  %2298 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2298)
  %2299 = load i32, ptr %ctxvals_pos.i813, align 4
  %2300 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2300)
  store i32 %2299, ptr %ctxvals_base.i829, align 4
  %add.i292.i = add i32 %2299, %cond13.i
  store i32 %add.i292.i, ptr %ctxvals_pos.i813, align 4
  %shl.i293.i = shl nuw nsw i32 %cond13.i, 14
  %or4.i295.i = or i32 %shl.i293.i, 1050912
  %2301 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2301)
  %2302 = load ptr, ptr %ucode.i.i, align 4
  %2303 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2303)
  %2304 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2304)
  %cmp.not.i.i298.i = icmp eq i32 %2304, 0
  br i1 %cmp.not.i.i298.i, label %do.body.i.i303.i, label %sw.epilog10.i.cp_ctx.exit308.i_crit_edge

sw.epilog10.i.cp_ctx.exit308.i_crit_edge:         ; preds = %sw.epilog10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit308.i

do.body.i.i303.i:                                 ; preds = %sw.epilog10.i
  %ctxprog_len.i.i300.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2305 = ptrtoint ptr %ctxprog_len.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %2305)
  %2306 = load i32, ptr %ctxprog_len.i.i300.i, align 4
  %ctxprog_max.i.i301.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2307 = ptrtoint ptr %ctxprog_max.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %2307)
  %2308 = load i32, ptr %ctxprog_max.i.i301.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2306, i32 %2308)
  %cmp1.i.i302.i = icmp eq i32 %2306, %2308
  br i1 %cmp1.i.i302.i, label %do.body4.i.i304.i, label %do.end10.i.i307.i, !prof !9

do.body4.i.i304.i:                                ; preds = %do.body.i.i303.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i307.i:                                ; preds = %do.body.i.i303.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i305.i = add i32 %2306, 1
  %2309 = ptrtoint ptr %ctxprog_len.i.i300.i to i32
  call void @__asan_store4_noabort(i32 %2309)
  store i32 %inc.i.i305.i, ptr %ctxprog_len.i.i300.i, align 4
  %arrayidx.i.i306.i = getelementptr i32, ptr %2302, i32 %2306
  %2310 = ptrtoint ptr %arrayidx.i.i306.i to i32
  call void @__asan_store4_noabort(i32 %2310)
  store i32 %or4.i295.i, ptr %arrayidx.i.i306.i, align 4
  %2311 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2311)
  %.pr1336.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit308.i

cp_ctx.exit308.i:                                 ; preds = %do.end10.i.i307.i, %sw.epilog10.i.cp_ctx.exit308.i_crit_edge
  %2312 = phi i32 [ %2304, %sw.epilog10.i.cp_ctx.exit308.i_crit_edge ], [ %.pr1336.i, %do.end10.i.i307.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2312)
  %cmp.not.i310.i = icmp eq i32 %2312, 1
  br i1 %cmp.not.i310.i, label %if.end.i318.i, label %cp_ctx.exit308.i.gr_def.exit319.i_crit_edge

cp_ctx.exit308.i.gr_def.exit319.i_crit_edge:      ; preds = %cp_ctx.exit308.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit319.i

if.end.i318.i:                                    ; preds = %cp_ctx.exit308.i
  call void @__sanitizer_cov_trace_pc() #7
  %2313 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2313)
  %2314 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i312.i = sub i32 2338, %2314
  %2315 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2315)
  %2316 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i314.i = add i32 %sub1.i312.i, %2316
  %2317 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2317)
  %2318 = load ptr, ptr %data.i573.i, align 4
  %2319 = ptrtoint ptr %2318 to i32
  call void @__asan_load4_noabort(i32 %2319)
  %2320 = load ptr, ptr %2318, align 8
  %wr32.i316.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2320, i32 0, i32 3
  %2321 = ptrtoint ptr %wr32.i316.i to i32
  call void @__asan_load4_noabort(i32 %2321)
  %2322 = load ptr, ptr %wr32.i316.i, align 4
  %mul.i317.i = shl i32 %add.i314.i, 2
  tail call void %2322(ptr noundef %2318, i32 noundef %mul.i317.i, i32 noundef 1040318976) #5
  br label %gr_def.exit319.i

gr_def.exit319.i:                                 ; preds = %if.end.i318.i, %cp_ctx.exit308.i.gr_def.exit319.i_crit_edge
  %2323 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2323)
  %2324 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2324)
  %cmp.not.i321.i = icmp eq i32 %2324, 1
  br i1 %cmp.not.i321.i, label %if.end.i329.i, label %gr_def.exit319.i.gr_def.exit330.i_crit_edge

gr_def.exit319.i.gr_def.exit330.i_crit_edge:      ; preds = %gr_def.exit319.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit330.i

if.end.i329.i:                                    ; preds = %gr_def.exit319.i
  call void @__sanitizer_cov_trace_pc() #7
  %2325 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2325)
  %2326 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i323.i = sub i32 2339, %2326
  %2327 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2327)
  %2328 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i325.i518 = add i32 %sub1.i323.i, %2328
  %2329 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2329)
  %2330 = load ptr, ptr %data.i573.i, align 4
  %2331 = ptrtoint ptr %2330 to i32
  call void @__asan_load4_noabort(i32 %2331)
  %2332 = load ptr, ptr %2330, align 8
  %wr32.i327.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2332, i32 0, i32 3
  %2333 = ptrtoint ptr %wr32.i327.i to i32
  call void @__asan_load4_noabort(i32 %2333)
  %2334 = load ptr, ptr %wr32.i327.i, align 4
  %mul.i328.i = shl i32 %add.i325.i518, 2
  tail call void %2334(ptr noundef %2330, i32 noundef %mul.i328.i, i32 noundef 16777215) #5
  br label %gr_def.exit330.i

gr_def.exit330.i:                                 ; preds = %if.end.i329.i, %gr_def.exit319.i.gr_def.exit330.i_crit_edge
  %2335 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2335)
  %2336 = load i32, ptr %chipset.i501, align 4
  %2337 = zext i32 %2336 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2337, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %2336, label %sw.default18.i [
    i32 64, label %sw.bb15.i
    i32 71, label %sw.bb16.i
    i32 65, label %gr_def.exit330.i.sw.bb17.i_crit_edge
    i32 66, label %gr_def.exit330.i.sw.bb17.i_crit_edge1138
    i32 73, label %gr_def.exit330.i.sw.bb17.i_crit_edge1139
    i32 75, label %gr_def.exit330.i.sw.bb17.i_crit_edge1140
  ]

gr_def.exit330.i.sw.bb17.i_crit_edge1140:         ; preds = %gr_def.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

gr_def.exit330.i.sw.bb17.i_crit_edge1139:         ; preds = %gr_def.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

gr_def.exit330.i.sw.bb17.i_crit_edge1138:         ; preds = %gr_def.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

gr_def.exit330.i.sw.bb17.i_crit_edge:             ; preds = %gr_def.exit330.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb17.i

sw.bb15.i:                                        ; preds = %gr_def.exit330.i
  %2338 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2338)
  %2339 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2339)
  %cmp.not.i332.i = icmp eq i32 %2339, 1
  br i1 %cmp.not.i332.i, label %if.end.i340.i, label %sw.bb15.i.gr_def.exit385thread-pre-split.i_crit_edge

sw.bb15.i.gr_def.exit385thread-pre-split.i_crit_edge: ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit385thread-pre-split.i

if.end.i340.i:                                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #7
  %2340 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2340)
  %2341 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i334.i = sub i32 2340, %2341
  %2342 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2342)
  %2343 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i336.i = add i32 %sub1.i334.i, %2343
  %2344 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2344)
  %2345 = load ptr, ptr %data.i573.i, align 4
  %2346 = ptrtoint ptr %2345 to i32
  call void @__asan_load4_noabort(i32 %2346)
  %2347 = load ptr, ptr %2345, align 8
  %wr32.i338.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2347, i32 0, i32 3
  %2348 = ptrtoint ptr %wr32.i338.i to i32
  call void @__asan_load4_noabort(i32 %2348)
  %2349 = load ptr, ptr %wr32.i338.i, align 4
  %mul.i339.i = shl i32 %add.i336.i, 2
  tail call void %2349(ptr noundef %2345, i32 noundef %mul.i339.i, i32 noundef 1611677440) #5
  br label %sw.epilog19.i

sw.bb16.i:                                        ; preds = %gr_def.exit330.i
  %2350 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2350)
  %2351 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2351)
  %cmp.not.i343.i = icmp eq i32 %2351, 1
  br i1 %cmp.not.i343.i, label %if.end.i351.i, label %sw.bb16.i.gr_def.exit385thread-pre-split.i_crit_edge

sw.bb16.i.gr_def.exit385thread-pre-split.i_crit_edge: ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit385thread-pre-split.i

if.end.i351.i:                                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #7
  %2352 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2352)
  %2353 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i345.i = sub i32 2340, %2353
  %2354 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2354)
  %2355 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i347.i = add i32 %sub1.i345.i, %2355
  %2356 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2356)
  %2357 = load ptr, ptr %data.i573.i, align 4
  %2358 = ptrtoint ptr %2357 to i32
  call void @__asan_load4_noabort(i32 %2358)
  %2359 = load ptr, ptr %2357, align 8
  %wr32.i349.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2359, i32 0, i32 3
  %2360 = ptrtoint ptr %wr32.i349.i to i32
  call void @__asan_load4_noabort(i32 %2360)
  %2361 = load ptr, ptr %wr32.i349.i, align 4
  %mul.i350.i = shl i32 %add.i347.i, 2
  tail call void %2361(ptr noundef %2357, i32 noundef %mul.i350.i, i32 noundef 1074806528) #5
  br label %sw.epilog19.i

sw.bb17.i:                                        ; preds = %gr_def.exit330.i.sw.bb17.i_crit_edge, %gr_def.exit330.i.sw.bb17.i_crit_edge1138, %gr_def.exit330.i.sw.bb17.i_crit_edge1139, %gr_def.exit330.i.sw.bb17.i_crit_edge1140
  %2362 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2362)
  %2363 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2363)
  %cmp.not.i354.i = icmp eq i32 %2363, 1
  br i1 %cmp.not.i354.i, label %if.end.i362.i, label %sw.bb17.i.gr_def.exit385thread-pre-split.i_crit_edge

sw.bb17.i.gr_def.exit385thread-pre-split.i_crit_edge: ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit385thread-pre-split.i

if.end.i362.i:                                    ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #7
  %2364 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2364)
  %2365 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i356.i = sub i32 2340, %2365
  %2366 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2366)
  %2367 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i358.i = add i32 %sub1.i356.i, %2367
  %2368 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2368)
  %2369 = load ptr, ptr %data.i573.i, align 4
  %2370 = ptrtoint ptr %2369 to i32
  call void @__asan_load4_noabort(i32 %2370)
  %2371 = load ptr, ptr %2369, align 8
  %wr32.i360.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2371, i32 0, i32 3
  %2372 = ptrtoint ptr %wr32.i360.i to i32
  call void @__asan_load4_noabort(i32 %2372)
  %2373 = load ptr, ptr %wr32.i360.i, align 4
  %mul.i361.i = shl i32 %add.i358.i, 2
  tail call void %2373(ptr noundef %2369, i32 noundef %mul.i361.i, i32 noundef 537935616) #5
  br label %sw.epilog19.i

sw.default18.i:                                   ; preds = %gr_def.exit330.i
  %2374 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2374)
  %2375 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2375)
  %cmp.not.i365.i = icmp eq i32 %2375, 1
  br i1 %cmp.not.i365.i, label %if.end.i373.i, label %sw.default18.i.gr_def.exit385thread-pre-split.i_crit_edge

sw.default18.i.gr_def.exit385thread-pre-split.i_crit_edge: ; preds = %sw.default18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit385thread-pre-split.i

if.end.i373.i:                                    ; preds = %sw.default18.i
  call void @__sanitizer_cov_trace_pc() #7
  %2376 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2376)
  %2377 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i367.i = sub i32 2340, %2377
  %2378 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2378)
  %2379 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i369.i = add i32 %sub1.i367.i, %2379
  %2380 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2380)
  %2381 = load ptr, ptr %data.i573.i, align 4
  %2382 = ptrtoint ptr %2381 to i32
  call void @__asan_load4_noabort(i32 %2382)
  %2383 = load ptr, ptr %2381, align 8
  %wr32.i371.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2383, i32 0, i32 3
  %2384 = ptrtoint ptr %wr32.i371.i to i32
  call void @__asan_load4_noabort(i32 %2384)
  %2385 = load ptr, ptr %wr32.i371.i, align 4
  %mul.i372.i = shl i32 %add.i369.i, 2
  tail call void %2385(ptr noundef %2381, i32 noundef %mul.i372.i, i32 noundef 202391296) #5
  br label %sw.epilog19.i

sw.epilog19.i:                                    ; preds = %if.end.i373.i, %if.end.i362.i, %if.end.i351.i, %if.end.i340.i
  %2386 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2386)
  %.pr1337.i = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr1337.i)
  %cmp.not.i376.i = icmp eq i32 %.pr1337.i, 1
  br i1 %cmp.not.i376.i, label %if.end.i384.i, label %sw.epilog19.i.gr_def.exit385.i_crit_edge

sw.epilog19.i.gr_def.exit385.i_crit_edge:         ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit385.i

if.end.i384.i:                                    ; preds = %sw.epilog19.i
  call void @__sanitizer_cov_trace_pc() #7
  %2387 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2387)
  %2388 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %2388)
  %cmp21.i519 = icmp ult i32 %2388, 68
  %cond22.i = select i1 %cmp21.i519, i32 131072, i32 262144
  %2389 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2389)
  %2390 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i378.i = sub i32 2343, %2390
  %2391 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2391)
  %2392 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i380.i = add i32 %sub1.i378.i, %2392
  %2393 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2393)
  %2394 = load ptr, ptr %data.i573.i, align 4
  %2395 = ptrtoint ptr %2394 to i32
  call void @__asan_load4_noabort(i32 %2395)
  %2396 = load ptr, ptr %2394, align 8
  %wr32.i382.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2396, i32 0, i32 3
  %2397 = ptrtoint ptr %wr32.i382.i to i32
  call void @__asan_load4_noabort(i32 %2397)
  %2398 = load ptr, ptr %wr32.i382.i, align 4
  %mul.i383.i = shl i32 %add.i380.i, 2
  tail call void %2398(ptr noundef %2394, i32 noundef %mul.i383.i, i32 noundef %cond22.i) #5
  br label %gr_def.exit385thread-pre-split.i

gr_def.exit385thread-pre-split.i:                 ; preds = %if.end.i384.i, %sw.default18.i.gr_def.exit385thread-pre-split.i_crit_edge, %sw.bb17.i.gr_def.exit385thread-pre-split.i_crit_edge, %sw.bb16.i.gr_def.exit385thread-pre-split.i_crit_edge, %sw.bb15.i.gr_def.exit385thread-pre-split.i_crit_edge
  %2399 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2399)
  %.pr1341.i = load i32, ptr %mode.i.i, align 4
  br label %gr_def.exit385.i

gr_def.exit385.i:                                 ; preds = %gr_def.exit385thread-pre-split.i, %sw.epilog19.i.gr_def.exit385.i_crit_edge
  %2400 = phi i32 [ %.pr1341.i, %gr_def.exit385thread-pre-split.i ], [ %.pr1337.i, %sw.epilog19.i.gr_def.exit385.i_crit_edge ]
  %2401 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2401)
  store i32 2368, ptr %ctxprog_reg.i.i, align 4
  %2402 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2402)
  %2403 = load i32, ptr %ctxvals_pos.i813, align 4
  %2404 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2404)
  store i32 %2403, ptr %ctxvals_base.i829, align 4
  %add.i389.i = add i32 %2403, 31
  store i32 %add.i389.i, ptr %ctxvals_pos.i813, align 4
  %2405 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2405)
  %2406 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2400)
  %cmp.not.i.i395.i = icmp eq i32 %2400, 0
  br i1 %cmp.not.i.i395.i, label %do.body.i.i400.i, label %gr_def.exit385.i.cp_ctx.exit405.i_crit_edge

gr_def.exit385.i.cp_ctx.exit405.i_crit_edge:      ; preds = %gr_def.exit385.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit405.i

do.body.i.i400.i:                                 ; preds = %gr_def.exit385.i
  %ctxprog_len.i.i397.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2407 = ptrtoint ptr %ctxprog_len.i.i397.i to i32
  call void @__asan_load4_noabort(i32 %2407)
  %2408 = load i32, ptr %ctxprog_len.i.i397.i, align 4
  %ctxprog_max.i.i398.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2409 = ptrtoint ptr %ctxprog_max.i.i398.i to i32
  call void @__asan_load4_noabort(i32 %2409)
  %2410 = load i32, ptr %ctxprog_max.i.i398.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2408, i32 %2410)
  %cmp1.i.i399.i = icmp eq i32 %2408, %2410
  br i1 %cmp1.i.i399.i, label %do.body4.i.i401.i, label %do.end10.i.i404.i, !prof !9

do.body4.i.i401.i:                                ; preds = %do.body.i.i400.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i404.i:                                ; preds = %do.body.i.i400.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i402.i = add i32 %2408, 1
  %2411 = ptrtoint ptr %ctxprog_len.i.i397.i to i32
  call void @__asan_store4_noabort(i32 %2411)
  store i32 %inc.i.i402.i, ptr %ctxprog_len.i.i397.i, align 4
  %arrayidx.i.i403.i = getelementptr i32, ptr %2406, i32 %2408
  %2412 = ptrtoint ptr %arrayidx.i.i403.i to i32
  call void @__asan_store4_noabort(i32 %2412)
  store i32 1558848, ptr %arrayidx.i.i403.i, align 4
  br label %cp_ctx.exit405.i

cp_ctx.exit405.i:                                 ; preds = %do.end10.i.i404.i, %gr_def.exit385.i.cp_ctx.exit405.i_crit_edge
  %2413 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2413)
  %2414 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2414)
  %cmp.not.i407.i = icmp eq i32 %2414, 1
  br i1 %cmp.not.i407.i, label %if.end.i415.i, label %cp_ctx.exit405.i.gr_def.exit416.i_crit_edge

cp_ctx.exit405.i.gr_def.exit416.i_crit_edge:      ; preds = %cp_ctx.exit405.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit416.i

if.end.i415.i:                                    ; preds = %cp_ctx.exit405.i
  call void @__sanitizer_cov_trace_pc() #7
  %2415 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2415)
  %2416 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i409.i = sub i32 2380, %2416
  %2417 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2417)
  %2418 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i411.i = add i32 %sub1.i409.i, %2418
  %2419 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2419)
  %2420 = load ptr, ptr %data.i573.i, align 4
  %2421 = ptrtoint ptr %2420 to i32
  call void @__asan_load4_noabort(i32 %2421)
  %2422 = load ptr, ptr %2420, align 8
  %wr32.i413.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2422, i32 0, i32 3
  %2423 = ptrtoint ptr %wr32.i413.i to i32
  call void @__asan_load4_noabort(i32 %2423)
  %2424 = load ptr, ptr %wr32.i413.i, align 4
  %mul.i414.i = shl i32 %add.i411.i, 2
  tail call void %2424(ptr noundef %2420, i32 noundef %mul.i414.i, i32 noundef 33024) #5
  br label %gr_def.exit416.i

gr_def.exit416.i:                                 ; preds = %if.end.i415.i, %cp_ctx.exit405.i.gr_def.exit416.i_crit_edge
  %2425 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2425)
  %2426 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2426)
  %cmp24.i = icmp eq i32 %2426, 64
  br i1 %cmp24.i, label %if.then25.i, label %gr_def.exit416.i.if.end26thread-pre-split.i_crit_edge

gr_def.exit416.i.if.end26thread-pre-split.i_crit_edge: ; preds = %gr_def.exit416.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26thread-pre-split.i

if.then25.i:                                      ; preds = %gr_def.exit416.i
  %2427 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2427)
  store i32 2399, ptr %ctxprog_reg.i.i, align 4
  %2428 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2428)
  %2429 = load i32, ptr %ctxvals_pos.i813, align 4
  %2430 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2430)
  store i32 %2429, ptr %ctxvals_base.i829, align 4
  %add.i420.i = add i32 %2429, 6
  store i32 %add.i420.i, ptr %ctxvals_pos.i813, align 4
  %2431 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2431)
  %2432 = load ptr, ptr %ucode.i.i, align 4
  %2433 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2433)
  %2434 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2434)
  %cmp.not.i.i426.i = icmp eq i32 %2434, 0
  br i1 %cmp.not.i.i426.i, label %do.body.i.i431.i, label %if.then25.i.if.end26.i_crit_edge

if.then25.i.if.end26.i_crit_edge:                 ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

do.body.i.i431.i:                                 ; preds = %if.then25.i
  %ctxprog_len.i.i428.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2435 = ptrtoint ptr %ctxprog_len.i.i428.i to i32
  call void @__asan_load4_noabort(i32 %2435)
  %2436 = load i32, ptr %ctxprog_len.i.i428.i, align 4
  %ctxprog_max.i.i429.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2437 = ptrtoint ptr %ctxprog_max.i.i429.i to i32
  call void @__asan_load4_noabort(i32 %2437)
  %2438 = load i32, ptr %ctxprog_max.i.i429.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2436, i32 %2438)
  %cmp1.i.i430.i = icmp eq i32 %2436, %2438
  br i1 %cmp1.i.i430.i, label %do.body4.i.i432.i, label %do.end10.i.i435.i, !prof !9

do.body4.i.i432.i:                                ; preds = %do.body.i.i431.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i435.i:                                ; preds = %do.body.i.i431.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i433.i = add i32 %2436, 1
  %2439 = ptrtoint ptr %ctxprog_len.i.i428.i to i32
  call void @__asan_store4_noabort(i32 %2439)
  store i32 %inc.i.i433.i, ptr %ctxprog_len.i.i428.i, align 4
  %arrayidx.i.i434.i = getelementptr i32, ptr %2432, i32 %2436
  %2440 = ptrtoint ptr %arrayidx.i.i434.i to i32
  call void @__asan_store4_noabort(i32 %2440)
  store i32 1149279, ptr %arrayidx.i.i434.i, align 4
  br label %if.end26thread-pre-split.i

if.end26thread-pre-split.i:                       ; preds = %do.end10.i.i435.i, %gr_def.exit416.i.if.end26thread-pre-split.i_crit_edge
  %2441 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2441)
  %.pr1342.i = load i32, ptr %mode.i.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26thread-pre-split.i, %if.then25.i.if.end26.i_crit_edge
  %2442 = phi i32 [ %.pr1342.i, %if.end26thread-pre-split.i ], [ %2434, %if.then25.i.if.end26.i_crit_edge ]
  %2443 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2443)
  store i32 2405, ptr %ctxprog_reg.i.i, align 4
  %2444 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2444)
  %2445 = load i32, ptr %ctxvals_pos.i813, align 4
  %2446 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2446)
  store i32 %2445, ptr %ctxvals_base.i829, align 4
  %add.i440.i = add i32 %2445, 16
  store i32 %add.i440.i, ptr %ctxvals_pos.i813, align 4
  %2447 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2447)
  %2448 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2442)
  %cmp.not.i.i446.i = icmp eq i32 %2442, 0
  br i1 %cmp.not.i.i446.i, label %do.body.i.i451.i, label %if.end26.i.cp_ctx.exit456.i_crit_edge

if.end26.i.cp_ctx.exit456.i_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit456.i

do.body.i.i451.i:                                 ; preds = %if.end26.i
  %ctxprog_len.i.i448.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2449 = ptrtoint ptr %ctxprog_len.i.i448.i to i32
  call void @__asan_load4_noabort(i32 %2449)
  %2450 = load i32, ptr %ctxprog_len.i.i448.i, align 4
  %ctxprog_max.i.i449.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2451 = ptrtoint ptr %ctxprog_max.i.i449.i to i32
  call void @__asan_load4_noabort(i32 %2451)
  %2452 = load i32, ptr %ctxprog_max.i.i449.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2450, i32 %2452)
  %cmp1.i.i450.i = icmp eq i32 %2450, %2452
  br i1 %cmp1.i.i450.i, label %do.body4.i.i452.i, label %do.end10.i.i455.i, !prof !9

do.body4.i.i452.i:                                ; preds = %do.body.i.i451.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i455.i:                                ; preds = %do.body.i.i451.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i453.i = add i32 %2450, 1
  %2453 = ptrtoint ptr %ctxprog_len.i.i448.i to i32
  call void @__asan_store4_noabort(i32 %2453)
  store i32 %inc.i.i453.i, ptr %ctxprog_len.i.i448.i, align 4
  %arrayidx.i.i454.i = getelementptr i32, ptr %2448, i32 %2450
  %2454 = ptrtoint ptr %arrayidx.i.i454.i to i32
  call void @__asan_store4_noabort(i32 %2454)
  store i32 1313125, ptr %arrayidx.i.i454.i, align 4
  br label %cp_ctx.exit456.i

cp_ctx.exit456.i:                                 ; preds = %do.end10.i.i455.i, %if.end26.i.cp_ctx.exit456.i_crit_edge
  %2455 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2455)
  store i32 2560, ptr %ctxprog_reg.i.i, align 4
  %2456 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2456)
  %2457 = load i32, ptr %ctxvals_pos.i813, align 4
  %2458 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2458)
  store i32 %2457, ptr %ctxvals_base.i829, align 4
  %add.i460.i = add i32 %2457, 17
  store i32 %add.i460.i, ptr %ctxvals_pos.i813, align 4
  %2459 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2459)
  %2460 = load ptr, ptr %ucode.i.i, align 4
  %2461 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2461)
  %2462 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2462)
  %cmp.not.i.i466.i = icmp eq i32 %2462, 0
  br i1 %cmp.not.i.i466.i, label %do.body.i.i471.i, label %cp_ctx.exit456.i.cp_ctx.exit476.i_crit_edge

cp_ctx.exit456.i.cp_ctx.exit476.i_crit_edge:      ; preds = %cp_ctx.exit456.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit476.i

do.body.i.i471.i:                                 ; preds = %cp_ctx.exit456.i
  %ctxprog_len.i.i468.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2463 = ptrtoint ptr %ctxprog_len.i.i468.i to i32
  call void @__asan_load4_noabort(i32 %2463)
  %2464 = load i32, ptr %ctxprog_len.i.i468.i, align 4
  %ctxprog_max.i.i469.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2465 = ptrtoint ptr %ctxprog_max.i.i469.i to i32
  call void @__asan_load4_noabort(i32 %2465)
  %2466 = load i32, ptr %ctxprog_max.i.i469.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2464, i32 %2466)
  %cmp1.i.i470.i = icmp eq i32 %2464, %2466
  br i1 %cmp1.i.i470.i, label %do.body4.i.i472.i, label %do.end10.i.i475.i, !prof !9

do.body4.i.i472.i:                                ; preds = %do.body.i.i471.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i475.i:                                ; preds = %do.body.i.i471.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i473.i = add i32 %2464, 1
  %2467 = ptrtoint ptr %ctxprog_len.i.i468.i to i32
  call void @__asan_store4_noabort(i32 %2467)
  store i32 %inc.i.i473.i, ptr %ctxprog_len.i.i468.i, align 4
  %arrayidx.i.i474.i = getelementptr i32, ptr %2460, i32 %2464
  %2468 = ptrtoint ptr %arrayidx.i.i474.i to i32
  call void @__asan_store4_noabort(i32 %2468)
  store i32 1329664, ptr %arrayidx.i.i474.i, align 4
  %2469 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2469)
  %.pr1343.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit476.i

cp_ctx.exit476.i:                                 ; preds = %do.end10.i.i475.i, %cp_ctx.exit456.i.cp_ctx.exit476.i_crit_edge
  %2470 = phi i32 [ %2462, %cp_ctx.exit456.i.cp_ctx.exit476.i_crit_edge ], [ %.pr1343.i, %do.end10.i.i475.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2470)
  %cmp.not.i478.i = icmp eq i32 %2470, 1
  br i1 %cmp.not.i478.i, label %if.end.i486.i, label %cp_ctx.exit476.i.gr_def.exit487.i_crit_edge

cp_ctx.exit476.i.gr_def.exit487.i_crit_edge:      ; preds = %cp_ctx.exit476.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit487.i

if.end.i486.i:                                    ; preds = %cp_ctx.exit476.i
  call void @__sanitizer_cov_trace_pc() #7
  %2471 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2471)
  %2472 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i480.i = sub i32 2560, %2472
  %2473 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2473)
  %2474 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i482.i = add i32 %sub1.i480.i, %2474
  %2475 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2475)
  %2476 = load ptr, ptr %data.i573.i, align 4
  %2477 = ptrtoint ptr %2476 to i32
  call void @__asan_load4_noabort(i32 %2477)
  %2478 = load ptr, ptr %2476, align 8
  %wr32.i484.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2478, i32 0, i32 3
  %2479 = ptrtoint ptr %wr32.i484.i to i32
  call void @__asan_load4_noabort(i32 %2479)
  %2480 = load ptr, ptr %wr32.i484.i, align 4
  %mul.i485.i = shl i32 %add.i482.i, 2
  tail call void %2480(ptr noundef %2476, i32 noundef %mul.i485.i, i32 noundef 1) #5
  br label %gr_def.exit487.i

gr_def.exit487.i:                                 ; preds = %if.end.i486.i, %cp_ctx.exit476.i.gr_def.exit487.i_crit_edge
  %2481 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2481)
  %2482 = load i32, ptr %chipset.i501, align 4
  %2483 = zext i32 %2482 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2483, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %2482, label %sw.default34.i [
    i32 71, label %gr_def.exit487.i.sw.bb28.i520_crit_edge
    i32 73, label %gr_def.exit487.i.sw.bb28.i520_crit_edge1141
    i32 75, label %gr_def.exit487.i.sw.bb28.i520_crit_edge1142
    i32 64, label %sw.bb33.i
  ]

gr_def.exit487.i.sw.bb28.i520_crit_edge1142:      ; preds = %gr_def.exit487.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i520

gr_def.exit487.i.sw.bb28.i520_crit_edge1141:      ; preds = %gr_def.exit487.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i520

gr_def.exit487.i.sw.bb28.i520_crit_edge:          ; preds = %gr_def.exit487.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb28.i520

sw.bb28.i520:                                     ; preds = %gr_def.exit487.i.sw.bb28.i520_crit_edge, %gr_def.exit487.i.sw.bb28.i520_crit_edge1141, %gr_def.exit487.i.sw.bb28.i520_crit_edge1142
  %2484 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2484)
  store i32 2585, ptr %ctxprog_reg.i.i, align 4
  %2485 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2485)
  %2486 = load i32, ptr %ctxvals_pos.i813, align 4
  %2487 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2487)
  store i32 %2486, ptr %ctxvals_base.i829, align 4
  %add.i491.i = add i32 %2486, 1
  store i32 %add.i491.i, ptr %ctxvals_pos.i813, align 4
  %2488 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2488)
  %2489 = load ptr, ptr %ucode.i.i, align 4
  %2490 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2490)
  %2491 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2491)
  %cmp.not.i.i497.i = icmp eq i32 %2491, 0
  br i1 %cmp.not.i.i497.i, label %do.body.i.i502.i, label %sw.bb28.i520.cp_ctx.exit507.i_crit_edge

sw.bb28.i520.cp_ctx.exit507.i_crit_edge:          ; preds = %sw.bb28.i520
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit507.i

do.body.i.i502.i:                                 ; preds = %sw.bb28.i520
  %ctxprog_len.i.i499.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2492 = ptrtoint ptr %ctxprog_len.i.i499.i to i32
  call void @__asan_load4_noabort(i32 %2492)
  %2493 = load i32, ptr %ctxprog_len.i.i499.i, align 4
  %ctxprog_max.i.i500.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2494 = ptrtoint ptr %ctxprog_max.i.i500.i to i32
  call void @__asan_load4_noabort(i32 %2494)
  %2495 = load i32, ptr %ctxprog_max.i.i500.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2493, i32 %2495)
  %cmp1.i.i501.i = icmp eq i32 %2493, %2495
  br i1 %cmp1.i.i501.i, label %do.body4.i.i503.i, label %do.end10.i.i506.i, !prof !9

do.body4.i.i503.i:                                ; preds = %do.body.i.i502.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i506.i:                                ; preds = %do.body.i.i502.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i504.i = add i32 %2493, 1
  %2496 = ptrtoint ptr %ctxprog_len.i.i499.i to i32
  call void @__asan_store4_noabort(i32 %2496)
  store i32 %inc.i.i504.i, ptr %ctxprog_len.i.i499.i, align 4
  %arrayidx.i.i505.i = getelementptr i32, ptr %2489, i32 %2493
  %2497 = ptrtoint ptr %arrayidx.i.i505.i to i32
  call void @__asan_store4_noabort(i32 %2497)
  store i32 1067545, ptr %arrayidx.i.i505.i, align 4
  %2498 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2498)
  %.pr1344.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit507.i

cp_ctx.exit507.i:                                 ; preds = %do.end10.i.i506.i, %sw.bb28.i520.cp_ctx.exit507.i_crit_edge
  %2499 = phi i32 [ %2491, %sw.bb28.i520.cp_ctx.exit507.i_crit_edge ], [ %.pr1344.i, %do.end10.i.i506.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2499)
  %cmp.not.i509.i = icmp eq i32 %2499, 1
  br i1 %cmp.not.i509.i, label %if.end.i517.i, label %cp_ctx.exit507.i.gr_def.exit518.i_crit_edge

cp_ctx.exit507.i.gr_def.exit518.i_crit_edge:      ; preds = %cp_ctx.exit507.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit518.i

if.end.i517.i:                                    ; preds = %cp_ctx.exit507.i
  call void @__sanitizer_cov_trace_pc() #7
  %2500 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2500)
  %2501 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i511.i = sub i32 2585, %2501
  %2502 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2502)
  %2503 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i513.i = add i32 %sub1.i511.i, %2503
  %2504 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2504)
  %2505 = load ptr, ptr %data.i573.i, align 4
  %2506 = ptrtoint ptr %2505 to i32
  call void @__asan_load4_noabort(i32 %2506)
  %2507 = load ptr, ptr %2505, align 8
  %wr32.i515.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2507, i32 0, i32 3
  %2508 = ptrtoint ptr %wr32.i515.i to i32
  call void @__asan_load4_noabort(i32 %2508)
  %2509 = load ptr, ptr %wr32.i515.i, align 4
  %mul.i516.i = shl i32 %add.i513.i, 2
  tail call void %2509(ptr noundef %2505, i32 noundef %mul.i516.i, i32 noundef 4097) #5
  br label %gr_def.exit518.i

gr_def.exit518.i:                                 ; preds = %if.end.i517.i, %cp_ctx.exit507.i.gr_def.exit518.i_crit_edge
  %2510 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2510)
  store i32 2588, ptr %ctxprog_reg.i.i, align 4
  %2511 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2511)
  %2512 = load i32, ptr %ctxvals_pos.i813, align 4
  %2513 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2513)
  store i32 %2512, ptr %ctxvals_base.i829, align 4
  %add.i522.i = add i32 %2512, 3
  store i32 %add.i522.i, ptr %ctxvals_pos.i813, align 4
  %2514 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2514)
  %2515 = load ptr, ptr %ucode.i.i, align 4
  %2516 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2516)
  %2517 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2517)
  %cmp.not.i.i528.i = icmp eq i32 %2517, 0
  br i1 %cmp.not.i.i528.i, label %do.body.i.i533.i, label %gr_def.exit518.i.cp_ctx.exit538.i_crit_edge

gr_def.exit518.i.cp_ctx.exit538.i_crit_edge:      ; preds = %gr_def.exit518.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit538.i

do.body.i.i533.i:                                 ; preds = %gr_def.exit518.i
  %ctxprog_len.i.i530.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2518 = ptrtoint ptr %ctxprog_len.i.i530.i to i32
  call void @__asan_load4_noabort(i32 %2518)
  %2519 = load i32, ptr %ctxprog_len.i.i530.i, align 4
  %ctxprog_max.i.i531.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2520 = ptrtoint ptr %ctxprog_max.i.i531.i to i32
  call void @__asan_load4_noabort(i32 %2520)
  %2521 = load i32, ptr %ctxprog_max.i.i531.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2519, i32 %2521)
  %cmp1.i.i532.i = icmp eq i32 %2519, %2521
  br i1 %cmp1.i.i532.i, label %do.body4.i.i534.i, label %do.end10.i.i537.i, !prof !9

do.body4.i.i534.i:                                ; preds = %do.body.i.i533.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i537.i:                                ; preds = %do.body.i.i533.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i535.i = add i32 %2519, 1
  %2522 = ptrtoint ptr %ctxprog_len.i.i530.i to i32
  call void @__asan_store4_noabort(i32 %2522)
  store i32 %inc.i.i535.i, ptr %ctxprog_len.i.i530.i, align 4
  %arrayidx.i.i536.i = getelementptr i32, ptr %2515, i32 %2519
  %2523 = ptrtoint ptr %arrayidx.i.i536.i to i32
  call void @__asan_store4_noabort(i32 %2523)
  store i32 1100316, ptr %arrayidx.i.i536.i, align 4
  %2524 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2524)
  %.pr1345.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit538.i

cp_ctx.exit538.i:                                 ; preds = %do.end10.i.i537.i, %gr_def.exit518.i.cp_ctx.exit538.i_crit_edge
  %2525 = phi i32 [ %2517, %gr_def.exit518.i.cp_ctx.exit538.i_crit_edge ], [ %.pr1345.i, %do.end10.i.i537.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2525)
  %cmp.not.i540.i = icmp eq i32 %2525, 1
  br i1 %cmp.not.i540.i, label %if.end.i548.i, label %cp_ctx.exit538.i.gr_def.exit549.i_crit_edge

cp_ctx.exit538.i.gr_def.exit549.i_crit_edge:      ; preds = %cp_ctx.exit538.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit549.i

if.end.i548.i:                                    ; preds = %cp_ctx.exit538.i
  call void @__sanitizer_cov_trace_pc() #7
  %2526 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2526)
  %2527 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i542.i = sub i32 2590, %2527
  %2528 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2528)
  %2529 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i544.i = add i32 %sub1.i542.i, %2529
  %2530 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2530)
  %2531 = load ptr, ptr %data.i573.i, align 4
  %2532 = ptrtoint ptr %2531 to i32
  call void @__asan_load4_noabort(i32 %2532)
  %2533 = load ptr, ptr %2531, align 8
  %wr32.i546.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2533, i32 0, i32 3
  %2534 = ptrtoint ptr %wr32.i546.i to i32
  call void @__asan_load4_noabort(i32 %2534)
  %2535 = load ptr, ptr %wr32.i546.i, align 4
  %mul.i547.i = shl i32 %add.i544.i, 2
  tail call void %2535(ptr noundef %2531, i32 noundef %mul.i547.i, i32 noundef 3) #5
  br label %gr_def.exit549.i

gr_def.exit549.i:                                 ; preds = %if.end.i548.i, %cp_ctx.exit538.i.gr_def.exit549.i_crit_edge
  %2536 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2536)
  %2537 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %2537)
  %cmp30.not.i = icmp eq i32 %2537, 71
  br i1 %cmp30.not.i, label %gr_def.exit549.i.sw.epilog35thread-pre-split.i_crit_edge, label %if.then31.i

gr_def.exit549.i.sw.epilog35thread-pre-split.i_crit_edge: ; preds = %gr_def.exit549.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog35thread-pre-split.i

if.then31.i:                                      ; preds = %gr_def.exit549.i
  %2538 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2538)
  store i32 2624, ptr %ctxprog_reg.i.i, align 4
  %2539 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2539)
  %2540 = load i32, ptr %ctxvals_pos.i813, align 4
  %2541 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2541)
  store i32 %2540, ptr %ctxvals_base.i829, align 4
  %add.i553.i = add i32 %2540, 1
  store i32 %add.i553.i, ptr %ctxvals_pos.i813, align 4
  %2542 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2542)
  %2543 = load ptr, ptr %ucode.i.i, align 4
  %2544 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2544)
  %2545 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2545)
  %cmp.not.i.i559.i521 = icmp eq i32 %2545, 0
  br i1 %cmp.not.i.i559.i521, label %do.body.i.i564.i525, label %if.then31.i.cp_ctx.exit569.i530_crit_edge

if.then31.i.cp_ctx.exit569.i530_crit_edge:        ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit569.i530

do.body.i.i564.i525:                              ; preds = %if.then31.i
  %ctxprog_len.i.i561.i522 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2546 = ptrtoint ptr %ctxprog_len.i.i561.i522 to i32
  call void @__asan_load4_noabort(i32 %2546)
  %2547 = load i32, ptr %ctxprog_len.i.i561.i522, align 4
  %ctxprog_max.i.i562.i523 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2548 = ptrtoint ptr %ctxprog_max.i.i562.i523 to i32
  call void @__asan_load4_noabort(i32 %2548)
  %2549 = load i32, ptr %ctxprog_max.i.i562.i523, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2547, i32 %2549)
  %cmp1.i.i563.i524 = icmp eq i32 %2547, %2549
  br i1 %cmp1.i.i563.i524, label %do.body4.i.i565.i526, label %do.end10.i.i568.i529, !prof !9

do.body4.i.i565.i526:                             ; preds = %do.body.i.i564.i525
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i568.i529:                             ; preds = %do.body.i.i564.i525
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i566.i527 = add i32 %2547, 1
  %2550 = ptrtoint ptr %ctxprog_len.i.i561.i522 to i32
  call void @__asan_store4_noabort(i32 %2550)
  store i32 %inc.i.i566.i527, ptr %ctxprog_len.i.i561.i522, align 4
  %arrayidx.i.i567.i528 = getelementptr i32, ptr %2543, i32 %2547
  %2551 = ptrtoint ptr %arrayidx.i.i567.i528 to i32
  call void @__asan_store4_noabort(i32 %2551)
  store i32 1067584, ptr %arrayidx.i.i567.i528, align 4
  %2552 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2552)
  %.pr1346.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit569.i530

cp_ctx.exit569.i530:                              ; preds = %do.end10.i.i568.i529, %if.then31.i.cp_ctx.exit569.i530_crit_edge
  %2553 = phi i32 [ %2545, %if.then31.i.cp_ctx.exit569.i530_crit_edge ], [ %.pr1346.i, %do.end10.i.i568.i529 ]
  %2554 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2554)
  store i32 2640, ptr %ctxprog_reg.i.i, align 4
  %2555 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2555)
  %2556 = load i32, ptr %ctxvals_pos.i813, align 4
  %2557 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2557)
  store i32 %2556, ptr %ctxvals_base.i829, align 4
  %add.i573.i = add i32 %2556, 1
  store i32 %add.i573.i, ptr %ctxvals_pos.i813, align 4
  %2558 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2558)
  %2559 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2553)
  %cmp.not.i.i579.i = icmp eq i32 %2553, 0
  br i1 %cmp.not.i.i579.i, label %do.body.i.i584.i, label %cp_ctx.exit569.i530.cp_ctx.exit589.i_crit_edge

cp_ctx.exit569.i530.cp_ctx.exit589.i_crit_edge:   ; preds = %cp_ctx.exit569.i530
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit589.i

do.body.i.i584.i:                                 ; preds = %cp_ctx.exit569.i530
  %ctxprog_len.i.i581.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2560 = ptrtoint ptr %ctxprog_len.i.i581.i to i32
  call void @__asan_load4_noabort(i32 %2560)
  %2561 = load i32, ptr %ctxprog_len.i.i581.i, align 4
  %ctxprog_max.i.i582.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2562 = ptrtoint ptr %ctxprog_max.i.i582.i to i32
  call void @__asan_load4_noabort(i32 %2562)
  %2563 = load i32, ptr %ctxprog_max.i.i582.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2561, i32 %2563)
  %cmp1.i.i583.i = icmp eq i32 %2561, %2563
  br i1 %cmp1.i.i583.i, label %do.body4.i.i585.i, label %do.end10.i.i588.i, !prof !9

do.body4.i.i585.i:                                ; preds = %do.body.i.i584.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i588.i:                                ; preds = %do.body.i.i584.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i586.i = add i32 %2561, 1
  %2564 = ptrtoint ptr %ctxprog_len.i.i581.i to i32
  call void @__asan_store4_noabort(i32 %2564)
  store i32 %inc.i.i586.i, ptr %ctxprog_len.i.i581.i, align 4
  %arrayidx.i.i587.i = getelementptr i32, ptr %2559, i32 %2561
  %2565 = ptrtoint ptr %arrayidx.i.i587.i to i32
  call void @__asan_store4_noabort(i32 %2565)
  store i32 1067600, ptr %arrayidx.i.i587.i, align 4
  br label %cp_ctx.exit589.i

cp_ctx.exit589.i:                                 ; preds = %do.end10.i.i588.i, %cp_ctx.exit569.i530.cp_ctx.exit589.i_crit_edge
  %2566 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2566)
  store i32 2656, ptr %ctxprog_reg.i.i, align 4
  %2567 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2567)
  %2568 = load i32, ptr %ctxvals_pos.i813, align 4
  %2569 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2569)
  store i32 %2568, ptr %ctxvals_base.i829, align 4
  %add.i593.i = add i32 %2568, 1
  store i32 %add.i593.i, ptr %ctxvals_pos.i813, align 4
  %2570 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2570)
  %2571 = load ptr, ptr %ucode.i.i, align 4
  %2572 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2572)
  %2573 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2573)
  %cmp.not.i.i599.i = icmp eq i32 %2573, 0
  br i1 %cmp.not.i.i599.i, label %do.body.i.i604.i, label %cp_ctx.exit589.i.cp_ctx.exit609.i_crit_edge

cp_ctx.exit589.i.cp_ctx.exit609.i_crit_edge:      ; preds = %cp_ctx.exit589.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit609.i

do.body.i.i604.i:                                 ; preds = %cp_ctx.exit589.i
  %ctxprog_len.i.i601.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2574 = ptrtoint ptr %ctxprog_len.i.i601.i to i32
  call void @__asan_load4_noabort(i32 %2574)
  %2575 = load i32, ptr %ctxprog_len.i.i601.i, align 4
  %ctxprog_max.i.i602.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2576 = ptrtoint ptr %ctxprog_max.i.i602.i to i32
  call void @__asan_load4_noabort(i32 %2576)
  %2577 = load i32, ptr %ctxprog_max.i.i602.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2575, i32 %2577)
  %cmp1.i.i603.i = icmp eq i32 %2575, %2577
  br i1 %cmp1.i.i603.i, label %do.body4.i.i605.i, label %do.end10.i.i608.i, !prof !9

do.body4.i.i605.i:                                ; preds = %do.body.i.i604.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i608.i:                                ; preds = %do.body.i.i604.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i606.i = add i32 %2575, 1
  %2578 = ptrtoint ptr %ctxprog_len.i.i601.i to i32
  call void @__asan_store4_noabort(i32 %2578)
  store i32 %inc.i.i606.i, ptr %ctxprog_len.i.i601.i, align 4
  %arrayidx.i.i607.i = getelementptr i32, ptr %2571, i32 %2575
  %2579 = ptrtoint ptr %arrayidx.i.i607.i to i32
  call void @__asan_store4_noabort(i32 %2579)
  store i32 1067616, ptr %arrayidx.i.i607.i, align 4
  %2580 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2580)
  %.pr1347.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit609.i

cp_ctx.exit609.i:                                 ; preds = %do.end10.i.i608.i, %cp_ctx.exit589.i.cp_ctx.exit609.i_crit_edge
  %2581 = phi i32 [ %2573, %cp_ctx.exit589.i.cp_ctx.exit609.i_crit_edge ], [ %.pr1347.i, %do.end10.i.i608.i ]
  %2582 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2582)
  store i32 2672, ptr %ctxprog_reg.i.i, align 4
  %2583 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2583)
  %2584 = load i32, ptr %ctxvals_pos.i813, align 4
  %2585 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2585)
  store i32 %2584, ptr %ctxvals_base.i829, align 4
  %add.i613.i = add i32 %2584, 1
  store i32 %add.i613.i, ptr %ctxvals_pos.i813, align 4
  %2586 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2586)
  %2587 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2581)
  %cmp.not.i.i619.i = icmp eq i32 %2581, 0
  br i1 %cmp.not.i.i619.i, label %do.body.i.i624.i, label %cp_ctx.exit609.i.cp_ctx.exit629.i_crit_edge

cp_ctx.exit609.i.cp_ctx.exit629.i_crit_edge:      ; preds = %cp_ctx.exit609.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit629.i

do.body.i.i624.i:                                 ; preds = %cp_ctx.exit609.i
  %ctxprog_len.i.i621.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2588 = ptrtoint ptr %ctxprog_len.i.i621.i to i32
  call void @__asan_load4_noabort(i32 %2588)
  %2589 = load i32, ptr %ctxprog_len.i.i621.i, align 4
  %ctxprog_max.i.i622.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2590 = ptrtoint ptr %ctxprog_max.i.i622.i to i32
  call void @__asan_load4_noabort(i32 %2590)
  %2591 = load i32, ptr %ctxprog_max.i.i622.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2589, i32 %2591)
  %cmp1.i.i623.i = icmp eq i32 %2589, %2591
  br i1 %cmp1.i.i623.i, label %do.body4.i.i625.i, label %do.end10.i.i628.i, !prof !9

do.body4.i.i625.i:                                ; preds = %do.body.i.i624.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i628.i:                                ; preds = %do.body.i.i624.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i626.i = add i32 %2589, 1
  %2592 = ptrtoint ptr %ctxprog_len.i.i621.i to i32
  call void @__asan_store4_noabort(i32 %2592)
  store i32 %inc.i.i626.i, ptr %ctxprog_len.i.i621.i, align 4
  %arrayidx.i.i627.i = getelementptr i32, ptr %2587, i32 %2589
  %2593 = ptrtoint ptr %arrayidx.i.i627.i to i32
  call void @__asan_store4_noabort(i32 %2593)
  store i32 1067632, ptr %arrayidx.i.i627.i, align 4
  br label %cp_ctx.exit629.i

cp_ctx.exit629.i:                                 ; preds = %do.end10.i.i628.i, %cp_ctx.exit609.i.cp_ctx.exit629.i_crit_edge
  %2594 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2594)
  store i32 2688, ptr %ctxprog_reg.i.i, align 4
  %2595 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2595)
  %2596 = load i32, ptr %ctxvals_pos.i813, align 4
  %2597 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2597)
  store i32 %2596, ptr %ctxvals_base.i829, align 4
  %add.i633.i = add i32 %2596, 1
  store i32 %add.i633.i, ptr %ctxvals_pos.i813, align 4
  %2598 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2598)
  %2599 = load ptr, ptr %ucode.i.i, align 4
  %2600 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2600)
  %2601 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2601)
  %cmp.not.i.i639.i = icmp eq i32 %2601, 0
  br i1 %cmp.not.i.i639.i, label %do.body.i.i644.i, label %cp_ctx.exit629.i.cp_ctx.exit649.i_crit_edge

cp_ctx.exit629.i.cp_ctx.exit649.i_crit_edge:      ; preds = %cp_ctx.exit629.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit649.i

do.body.i.i644.i:                                 ; preds = %cp_ctx.exit629.i
  %ctxprog_len.i.i641.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2602 = ptrtoint ptr %ctxprog_len.i.i641.i to i32
  call void @__asan_load4_noabort(i32 %2602)
  %2603 = load i32, ptr %ctxprog_len.i.i641.i, align 4
  %ctxprog_max.i.i642.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2604 = ptrtoint ptr %ctxprog_max.i.i642.i to i32
  call void @__asan_load4_noabort(i32 %2604)
  %2605 = load i32, ptr %ctxprog_max.i.i642.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2603, i32 %2605)
  %cmp1.i.i643.i = icmp eq i32 %2603, %2605
  br i1 %cmp1.i.i643.i, label %do.body4.i.i645.i, label %do.end10.i.i648.i, !prof !9

do.body4.i.i645.i:                                ; preds = %do.body.i.i644.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i648.i:                                ; preds = %do.body.i.i644.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i646.i = add i32 %2603, 1
  %2606 = ptrtoint ptr %ctxprog_len.i.i641.i to i32
  call void @__asan_store4_noabort(i32 %2606)
  store i32 %inc.i.i646.i, ptr %ctxprog_len.i.i641.i, align 4
  %arrayidx.i.i647.i = getelementptr i32, ptr %2599, i32 %2603
  %2607 = ptrtoint ptr %arrayidx.i.i647.i to i32
  call void @__asan_store4_noabort(i32 %2607)
  store i32 1067648, ptr %arrayidx.i.i647.i, align 4
  %2608 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2608)
  %.pr1348.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit649.i

cp_ctx.exit649.i:                                 ; preds = %do.end10.i.i648.i, %cp_ctx.exit629.i.cp_ctx.exit649.i_crit_edge
  %2609 = phi i32 [ %2601, %cp_ctx.exit629.i.cp_ctx.exit649.i_crit_edge ], [ %.pr1348.i, %do.end10.i.i648.i ]
  %2610 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2610)
  store i32 2704, ptr %ctxprog_reg.i.i, align 4
  %2611 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2611)
  %2612 = load i32, ptr %ctxvals_pos.i813, align 4
  %2613 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2613)
  store i32 %2612, ptr %ctxvals_base.i829, align 4
  %add.i653.i = add i32 %2612, 1
  store i32 %add.i653.i, ptr %ctxvals_pos.i813, align 4
  %2614 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2614)
  %2615 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2609)
  %cmp.not.i.i659.i = icmp eq i32 %2609, 0
  br i1 %cmp.not.i.i659.i, label %do.body.i.i664.i, label %cp_ctx.exit649.i.cp_ctx.exit669.i_crit_edge

cp_ctx.exit649.i.cp_ctx.exit669.i_crit_edge:      ; preds = %cp_ctx.exit649.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit669.i

do.body.i.i664.i:                                 ; preds = %cp_ctx.exit649.i
  %ctxprog_len.i.i661.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2616 = ptrtoint ptr %ctxprog_len.i.i661.i to i32
  call void @__asan_load4_noabort(i32 %2616)
  %2617 = load i32, ptr %ctxprog_len.i.i661.i, align 4
  %ctxprog_max.i.i662.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2618 = ptrtoint ptr %ctxprog_max.i.i662.i to i32
  call void @__asan_load4_noabort(i32 %2618)
  %2619 = load i32, ptr %ctxprog_max.i.i662.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2617, i32 %2619)
  %cmp1.i.i663.i = icmp eq i32 %2617, %2619
  br i1 %cmp1.i.i663.i, label %do.body4.i.i665.i, label %do.end10.i.i668.i, !prof !9

do.body4.i.i665.i:                                ; preds = %do.body.i.i664.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i668.i:                                ; preds = %do.body.i.i664.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i666.i = add i32 %2617, 1
  %2620 = ptrtoint ptr %ctxprog_len.i.i661.i to i32
  call void @__asan_store4_noabort(i32 %2620)
  store i32 %inc.i.i666.i, ptr %ctxprog_len.i.i661.i, align 4
  %arrayidx.i.i667.i = getelementptr i32, ptr %2615, i32 %2617
  %2621 = ptrtoint ptr %arrayidx.i.i667.i to i32
  call void @__asan_store4_noabort(i32 %2621)
  store i32 1067664, ptr %arrayidx.i.i667.i, align 4
  br label %cp_ctx.exit669.i

cp_ctx.exit669.i:                                 ; preds = %do.end10.i.i668.i, %cp_ctx.exit649.i.cp_ctx.exit669.i_crit_edge
  %2622 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2622)
  store i32 2720, ptr %ctxprog_reg.i.i, align 4
  %2623 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2623)
  %2624 = load i32, ptr %ctxvals_pos.i813, align 4
  %2625 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2625)
  store i32 %2624, ptr %ctxvals_base.i829, align 4
  %add.i673.i = add i32 %2624, 1
  store i32 %add.i673.i, ptr %ctxvals_pos.i813, align 4
  %2626 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2626)
  %2627 = load ptr, ptr %ucode.i.i, align 4
  %2628 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2628)
  %2629 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2629)
  %cmp.not.i.i679.i = icmp eq i32 %2629, 0
  br i1 %cmp.not.i.i679.i, label %do.body.i.i684.i, label %cp_ctx.exit669.i.cp_ctx.exit689.i_crit_edge

cp_ctx.exit669.i.cp_ctx.exit689.i_crit_edge:      ; preds = %cp_ctx.exit669.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit689.i

do.body.i.i684.i:                                 ; preds = %cp_ctx.exit669.i
  %ctxprog_len.i.i681.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2630 = ptrtoint ptr %ctxprog_len.i.i681.i to i32
  call void @__asan_load4_noabort(i32 %2630)
  %2631 = load i32, ptr %ctxprog_len.i.i681.i, align 4
  %ctxprog_max.i.i682.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2632 = ptrtoint ptr %ctxprog_max.i.i682.i to i32
  call void @__asan_load4_noabort(i32 %2632)
  %2633 = load i32, ptr %ctxprog_max.i.i682.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2631, i32 %2633)
  %cmp1.i.i683.i = icmp eq i32 %2631, %2633
  br i1 %cmp1.i.i683.i, label %do.body4.i.i685.i, label %do.end10.i.i688.i, !prof !9

do.body4.i.i685.i:                                ; preds = %do.body.i.i684.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i688.i:                                ; preds = %do.body.i.i684.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i686.i = add i32 %2631, 1
  %2634 = ptrtoint ptr %ctxprog_len.i.i681.i to i32
  call void @__asan_store4_noabort(i32 %2634)
  store i32 %inc.i.i686.i, ptr %ctxprog_len.i.i681.i, align 4
  %arrayidx.i.i687.i = getelementptr i32, ptr %2627, i32 %2631
  %2635 = ptrtoint ptr %arrayidx.i.i687.i to i32
  call void @__asan_store4_noabort(i32 %2635)
  store i32 1067680, ptr %arrayidx.i.i687.i, align 4
  %2636 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2636)
  %.pr1349.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit689.i

cp_ctx.exit689.i:                                 ; preds = %do.end10.i.i688.i, %cp_ctx.exit669.i.cp_ctx.exit689.i_crit_edge
  %2637 = phi i32 [ %2629, %cp_ctx.exit669.i.cp_ctx.exit689.i_crit_edge ], [ %.pr1349.i, %do.end10.i.i688.i ]
  %2638 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2638)
  store i32 2736, ptr %ctxprog_reg.i.i, align 4
  %2639 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2639)
  %2640 = load i32, ptr %ctxvals_pos.i813, align 4
  %2641 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2641)
  store i32 %2640, ptr %ctxvals_base.i829, align 4
  %add.i693.i = add i32 %2640, 1
  store i32 %add.i693.i, ptr %ctxvals_pos.i813, align 4
  %2642 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2642)
  %2643 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2637)
  %cmp.not.i.i699.i = icmp eq i32 %2637, 0
  br i1 %cmp.not.i.i699.i, label %do.body.i.i704.i, label %cp_ctx.exit689.i.sw.epilog35thread-pre-split.i_crit_edge

cp_ctx.exit689.i.sw.epilog35thread-pre-split.i_crit_edge: ; preds = %cp_ctx.exit689.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog35thread-pre-split.i

do.body.i.i704.i:                                 ; preds = %cp_ctx.exit689.i
  %ctxprog_len.i.i701.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2644 = ptrtoint ptr %ctxprog_len.i.i701.i to i32
  call void @__asan_load4_noabort(i32 %2644)
  %2645 = load i32, ptr %ctxprog_len.i.i701.i, align 4
  %ctxprog_max.i.i702.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2646 = ptrtoint ptr %ctxprog_max.i.i702.i to i32
  call void @__asan_load4_noabort(i32 %2646)
  %2647 = load i32, ptr %ctxprog_max.i.i702.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2645, i32 %2647)
  %cmp1.i.i703.i = icmp eq i32 %2645, %2647
  br i1 %cmp1.i.i703.i, label %do.body4.i.i705.i, label %do.end10.i.i708.i, !prof !9

do.body4.i.i705.i:                                ; preds = %do.body.i.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i708.i:                                ; preds = %do.body.i.i704.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i706.i = add i32 %2645, 1
  %2648 = ptrtoint ptr %ctxprog_len.i.i701.i to i32
  call void @__asan_store4_noabort(i32 %2648)
  store i32 %inc.i.i706.i, ptr %ctxprog_len.i.i701.i, align 4
  %arrayidx.i.i707.i = getelementptr i32, ptr %2643, i32 %2645
  %2649 = ptrtoint ptr %arrayidx.i.i707.i to i32
  call void @__asan_store4_noabort(i32 %2649)
  store i32 1067696, ptr %arrayidx.i.i707.i, align 4
  br label %sw.epilog35thread-pre-split.i

sw.bb33.i:                                        ; preds = %gr_def.exit487.i
  %2650 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2650)
  store i32 2577, ptr %ctxprog_reg.i.i, align 4
  %2651 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2651)
  %2652 = load i32, ptr %ctxvals_pos.i813, align 4
  %2653 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2653)
  store i32 %2652, ptr %ctxvals_base.i829, align 4
  %add.i713.i = add i32 %2652, 1
  store i32 %add.i713.i, ptr %ctxvals_pos.i813, align 4
  %2654 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2654)
  %2655 = load ptr, ptr %ucode.i.i, align 4
  %2656 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2656)
  %2657 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2657)
  %cmp.not.i.i719.i = icmp eq i32 %2657, 0
  br i1 %cmp.not.i.i719.i, label %do.body.i.i724.i, label %sw.bb33.i.cp_ctx.exit729.i_crit_edge

sw.bb33.i.cp_ctx.exit729.i_crit_edge:             ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit729.i

do.body.i.i724.i:                                 ; preds = %sw.bb33.i
  %ctxprog_len.i.i721.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2658 = ptrtoint ptr %ctxprog_len.i.i721.i to i32
  call void @__asan_load4_noabort(i32 %2658)
  %2659 = load i32, ptr %ctxprog_len.i.i721.i, align 4
  %ctxprog_max.i.i722.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2660 = ptrtoint ptr %ctxprog_max.i.i722.i to i32
  call void @__asan_load4_noabort(i32 %2660)
  %2661 = load i32, ptr %ctxprog_max.i.i722.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2659, i32 %2661)
  %cmp1.i.i723.i = icmp eq i32 %2659, %2661
  br i1 %cmp1.i.i723.i, label %do.body4.i.i725.i, label %do.end10.i.i728.i, !prof !9

do.body4.i.i725.i:                                ; preds = %do.body.i.i724.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i728.i:                                ; preds = %do.body.i.i724.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i726.i = add i32 %2659, 1
  %2662 = ptrtoint ptr %ctxprog_len.i.i721.i to i32
  call void @__asan_store4_noabort(i32 %2662)
  store i32 %inc.i.i726.i, ptr %ctxprog_len.i.i721.i, align 4
  %arrayidx.i.i727.i = getelementptr i32, ptr %2655, i32 %2659
  %2663 = ptrtoint ptr %arrayidx.i.i727.i to i32
  call void @__asan_store4_noabort(i32 %2663)
  store i32 1067537, ptr %arrayidx.i.i727.i, align 4
  %2664 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2664)
  %.pr1350.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit729.i

cp_ctx.exit729.i:                                 ; preds = %do.end10.i.i728.i, %sw.bb33.i.cp_ctx.exit729.i_crit_edge
  %2665 = phi i32 [ %2657, %sw.bb33.i.cp_ctx.exit729.i_crit_edge ], [ %.pr1350.i, %do.end10.i.i728.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2665)
  %cmp.not.i731.i = icmp eq i32 %2665, 1
  br i1 %cmp.not.i731.i, label %if.end.i739.i, label %cp_ctx.exit729.i.gr_def.exit740.i_crit_edge

cp_ctx.exit729.i.gr_def.exit740.i_crit_edge:      ; preds = %cp_ctx.exit729.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit740.i

if.end.i739.i:                                    ; preds = %cp_ctx.exit729.i
  call void @__sanitizer_cov_trace_pc() #7
  %2666 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2666)
  %2667 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i733.i = sub i32 2577, %2667
  %2668 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2668)
  %2669 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i735.i = add i32 %sub1.i733.i, %2669
  %2670 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2670)
  %2671 = load ptr, ptr %data.i573.i, align 4
  %2672 = ptrtoint ptr %2671 to i32
  call void @__asan_load4_noabort(i32 %2672)
  %2673 = load ptr, ptr %2671, align 8
  %wr32.i737.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2673, i32 0, i32 3
  %2674 = ptrtoint ptr %wr32.i737.i to i32
  call void @__asan_load4_noabort(i32 %2674)
  %2675 = load ptr, ptr %wr32.i737.i, align 4
  %mul.i738.i = shl i32 %add.i735.i, 2
  tail call void %2675(ptr noundef %2671, i32 noundef %mul.i738.i, i32 noundef 1) #5
  br label %gr_def.exit740.i

gr_def.exit740.i:                                 ; preds = %if.end.i739.i, %cp_ctx.exit729.i.gr_def.exit740.i_crit_edge
  %2676 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2676)
  store i32 2580, ptr %ctxprog_reg.i.i, align 4
  %2677 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2677)
  %2678 = load i32, ptr %ctxvals_pos.i813, align 4
  %2679 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2679)
  store i32 %2678, ptr %ctxvals_base.i829, align 4
  %add.i744.i = add i32 %2678, 1
  store i32 %add.i744.i, ptr %ctxvals_pos.i813, align 4
  %2680 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2680)
  %2681 = load ptr, ptr %ucode.i.i, align 4
  %2682 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2682)
  %2683 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2683)
  %cmp.not.i.i750.i = icmp eq i32 %2683, 0
  br i1 %cmp.not.i.i750.i, label %do.body.i.i755.i, label %gr_def.exit740.i.sw.epilog35.i_crit_edge

gr_def.exit740.i.sw.epilog35.i_crit_edge:         ; preds = %gr_def.exit740.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog35.i

do.body.i.i755.i:                                 ; preds = %gr_def.exit740.i
  %ctxprog_len.i.i752.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2684 = ptrtoint ptr %ctxprog_len.i.i752.i to i32
  call void @__asan_load4_noabort(i32 %2684)
  %2685 = load i32, ptr %ctxprog_len.i.i752.i, align 4
  %ctxprog_max.i.i753.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2686 = ptrtoint ptr %ctxprog_max.i.i753.i to i32
  call void @__asan_load4_noabort(i32 %2686)
  %2687 = load i32, ptr %ctxprog_max.i.i753.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2685, i32 %2687)
  %cmp1.i.i754.i = icmp eq i32 %2685, %2687
  br i1 %cmp1.i.i754.i, label %do.body4.i.i756.i, label %do.end10.i.i759.i, !prof !9

do.body4.i.i756.i:                                ; preds = %do.body.i.i755.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i759.i:                                ; preds = %do.body.i.i755.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i757.i = add i32 %2685, 1
  %2688 = ptrtoint ptr %ctxprog_len.i.i752.i to i32
  call void @__asan_store4_noabort(i32 %2688)
  store i32 %inc.i.i757.i, ptr %ctxprog_len.i.i752.i, align 4
  %arrayidx.i.i758.i = getelementptr i32, ptr %2681, i32 %2685
  %2689 = ptrtoint ptr %arrayidx.i.i758.i to i32
  call void @__asan_store4_noabort(i32 %2689)
  store i32 1067540, ptr %arrayidx.i.i758.i, align 4
  br label %sw.epilog35thread-pre-split.i

sw.default34.i:                                   ; preds = %gr_def.exit487.i
  %2690 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2690)
  store i32 2577, ptr %ctxprog_reg.i.i, align 4
  %2691 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2691)
  %2692 = load i32, ptr %ctxvals_pos.i813, align 4
  %2693 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2693)
  store i32 %2692, ptr %ctxvals_base.i829, align 4
  %add.i764.i531 = add i32 %2692, 1
  store i32 %add.i764.i531, ptr %ctxvals_pos.i813, align 4
  %2694 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2694)
  %2695 = load ptr, ptr %ucode.i.i, align 4
  %2696 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2696)
  %2697 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2697)
  %cmp.not.i.i770.i = icmp eq i32 %2697, 0
  br i1 %cmp.not.i.i770.i, label %do.body.i.i775.i, label %sw.default34.i.cp_ctx.exit780.i_crit_edge

sw.default34.i.cp_ctx.exit780.i_crit_edge:        ; preds = %sw.default34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit780.i

do.body.i.i775.i:                                 ; preds = %sw.default34.i
  %ctxprog_len.i.i772.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2698 = ptrtoint ptr %ctxprog_len.i.i772.i to i32
  call void @__asan_load4_noabort(i32 %2698)
  %2699 = load i32, ptr %ctxprog_len.i.i772.i, align 4
  %ctxprog_max.i.i773.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2700 = ptrtoint ptr %ctxprog_max.i.i773.i to i32
  call void @__asan_load4_noabort(i32 %2700)
  %2701 = load i32, ptr %ctxprog_max.i.i773.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2699, i32 %2701)
  %cmp1.i.i774.i = icmp eq i32 %2699, %2701
  br i1 %cmp1.i.i774.i, label %do.body4.i.i776.i, label %do.end10.i.i779.i, !prof !9

do.body4.i.i776.i:                                ; preds = %do.body.i.i775.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i779.i:                                ; preds = %do.body.i.i775.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i777.i = add i32 %2699, 1
  %2702 = ptrtoint ptr %ctxprog_len.i.i772.i to i32
  call void @__asan_store4_noabort(i32 %2702)
  store i32 %inc.i.i777.i, ptr %ctxprog_len.i.i772.i, align 4
  %arrayidx.i.i778.i = getelementptr i32, ptr %2695, i32 %2699
  %2703 = ptrtoint ptr %arrayidx.i.i778.i to i32
  call void @__asan_store4_noabort(i32 %2703)
  store i32 1067537, ptr %arrayidx.i.i778.i, align 4
  %2704 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2704)
  %.pr1351.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit780.i

cp_ctx.exit780.i:                                 ; preds = %do.end10.i.i779.i, %sw.default34.i.cp_ctx.exit780.i_crit_edge
  %2705 = phi i32 [ %2697, %sw.default34.i.cp_ctx.exit780.i_crit_edge ], [ %.pr1351.i, %do.end10.i.i779.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2705)
  %cmp.not.i782.i = icmp eq i32 %2705, 1
  br i1 %cmp.not.i782.i, label %if.end.i790.i, label %cp_ctx.exit780.i.gr_def.exit791.i_crit_edge

cp_ctx.exit780.i.gr_def.exit791.i_crit_edge:      ; preds = %cp_ctx.exit780.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit791.i

if.end.i790.i:                                    ; preds = %cp_ctx.exit780.i
  call void @__sanitizer_cov_trace_pc() #7
  %2706 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2706)
  %2707 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i784.i = sub i32 2577, %2707
  %2708 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2708)
  %2709 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i786.i = add i32 %sub1.i784.i, %2709
  %2710 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2710)
  %2711 = load ptr, ptr %data.i573.i, align 4
  %2712 = ptrtoint ptr %2711 to i32
  call void @__asan_load4_noabort(i32 %2712)
  %2713 = load ptr, ptr %2711, align 8
  %wr32.i788.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2713, i32 0, i32 3
  %2714 = ptrtoint ptr %wr32.i788.i to i32
  call void @__asan_load4_noabort(i32 %2714)
  %2715 = load ptr, ptr %wr32.i788.i, align 4
  %mul.i789.i = shl i32 %add.i786.i, 2
  tail call void %2715(ptr noundef %2711, i32 noundef %mul.i789.i, i32 noundef 4097) #5
  br label %gr_def.exit791.i

gr_def.exit791.i:                                 ; preds = %if.end.i790.i, %cp_ctx.exit780.i.gr_def.exit791.i_crit_edge
  %2716 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2716)
  store i32 2580, ptr %ctxprog_reg.i.i, align 4
  %2717 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2717)
  %2718 = load i32, ptr %ctxvals_pos.i813, align 4
  %2719 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2719)
  store i32 %2718, ptr %ctxvals_base.i829, align 4
  %add.i795.i532 = add i32 %2718, 2
  store i32 %add.i795.i532, ptr %ctxvals_pos.i813, align 4
  %2720 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2720)
  %2721 = load ptr, ptr %ucode.i.i, align 4
  %2722 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2722)
  %2723 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2723)
  %cmp.not.i.i801.i = icmp eq i32 %2723, 0
  br i1 %cmp.not.i.i801.i, label %do.body.i.i806.i, label %gr_def.exit791.i.cp_ctx.exit811.i_crit_edge

gr_def.exit791.i.cp_ctx.exit811.i_crit_edge:      ; preds = %gr_def.exit791.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit811.i

do.body.i.i806.i:                                 ; preds = %gr_def.exit791.i
  %ctxprog_len.i.i803.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2724 = ptrtoint ptr %ctxprog_len.i.i803.i to i32
  call void @__asan_load4_noabort(i32 %2724)
  %2725 = load i32, ptr %ctxprog_len.i.i803.i, align 4
  %ctxprog_max.i.i804.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2726 = ptrtoint ptr %ctxprog_max.i.i804.i to i32
  call void @__asan_load4_noabort(i32 %2726)
  %2727 = load i32, ptr %ctxprog_max.i.i804.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2725, i32 %2727)
  %cmp1.i.i805.i = icmp eq i32 %2725, %2727
  br i1 %cmp1.i.i805.i, label %do.body4.i.i807.i, label %do.end10.i.i810.i, !prof !9

do.body4.i.i807.i:                                ; preds = %do.body.i.i806.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i810.i:                                ; preds = %do.body.i.i806.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i808.i = add i32 %2725, 1
  %2728 = ptrtoint ptr %ctxprog_len.i.i803.i to i32
  call void @__asan_store4_noabort(i32 %2728)
  store i32 %inc.i.i808.i, ptr %ctxprog_len.i.i803.i, align 4
  %arrayidx.i.i809.i = getelementptr i32, ptr %2721, i32 %2725
  %2729 = ptrtoint ptr %arrayidx.i.i809.i to i32
  call void @__asan_store4_noabort(i32 %2729)
  store i32 1083924, ptr %arrayidx.i.i809.i, align 4
  %2730 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2730)
  %.pr1352.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit811.i

cp_ctx.exit811.i:                                 ; preds = %do.end10.i.i810.i, %gr_def.exit791.i.cp_ctx.exit811.i_crit_edge
  %2731 = phi i32 [ %2723, %gr_def.exit791.i.cp_ctx.exit811.i_crit_edge ], [ %.pr1352.i, %do.end10.i.i810.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2731)
  %cmp.not.i813.i533 = icmp eq i32 %2731, 1
  br i1 %cmp.not.i813.i533, label %if.end.i821.i, label %cp_ctx.exit811.i.sw.epilog35thread-pre-split.i_crit_edge

cp_ctx.exit811.i.sw.epilog35thread-pre-split.i_crit_edge: ; preds = %cp_ctx.exit811.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog35thread-pre-split.i

if.end.i821.i:                                    ; preds = %cp_ctx.exit811.i
  call void @__sanitizer_cov_trace_pc() #7
  %2732 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2732)
  %2733 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i815.i534 = sub i32 2581, %2733
  %2734 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2734)
  %2735 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i817.i535 = add i32 %sub1.i815.i534, %2735
  %2736 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2736)
  %2737 = load ptr, ptr %data.i573.i, align 4
  %2738 = ptrtoint ptr %2737 to i32
  call void @__asan_load4_noabort(i32 %2738)
  %2739 = load ptr, ptr %2737, align 8
  %wr32.i819.i536 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2739, i32 0, i32 3
  %2740 = ptrtoint ptr %wr32.i819.i536 to i32
  call void @__asan_load4_noabort(i32 %2740)
  %2741 = load ptr, ptr %wr32.i819.i536, align 4
  %mul.i820.i537 = shl i32 %add.i817.i535, 2
  tail call void %2741(ptr noundef %2737, i32 noundef %mul.i820.i537, i32 noundef 3) #5
  br label %sw.epilog35thread-pre-split.i

sw.epilog35thread-pre-split.i:                    ; preds = %if.end.i821.i, %cp_ctx.exit811.i.sw.epilog35thread-pre-split.i_crit_edge, %do.end10.i.i759.i, %do.end10.i.i708.i, %cp_ctx.exit689.i.sw.epilog35thread-pre-split.i_crit_edge, %gr_def.exit549.i.sw.epilog35thread-pre-split.i_crit_edge
  %2742 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2742)
  %.pr1353.i = load i32, ptr %mode.i.i, align 4
  br label %sw.epilog35.i

sw.epilog35.i:                                    ; preds = %sw.epilog35thread-pre-split.i, %gr_def.exit740.i.sw.epilog35.i_crit_edge
  %2743 = phi i32 [ %.pr1353.i, %sw.epilog35thread-pre-split.i ], [ %2683, %gr_def.exit740.i.sw.epilog35.i_crit_edge ]
  %2744 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2744)
  store i32 2816, ptr %ctxprog_reg.i.i, align 4
  %2745 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2745)
  %2746 = load i32, ptr %ctxvals_pos.i813, align 4
  %2747 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2747)
  store i32 %2746, ptr %ctxvals_base.i829, align 4
  %add.i826.i = add i32 %2746, 4
  store i32 %add.i826.i, ptr %ctxvals_pos.i813, align 4
  %2748 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2748)
  %2749 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2743)
  %cmp.not.i.i832.i = icmp eq i32 %2743, 0
  br i1 %cmp.not.i.i832.i, label %do.body.i.i837.i, label %sw.epilog35.i.cp_ctx.exit842.i_crit_edge

sw.epilog35.i.cp_ctx.exit842.i_crit_edge:         ; preds = %sw.epilog35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit842.i

do.body.i.i837.i:                                 ; preds = %sw.epilog35.i
  %ctxprog_len.i.i834.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2750 = ptrtoint ptr %ctxprog_len.i.i834.i to i32
  call void @__asan_load4_noabort(i32 %2750)
  %2751 = load i32, ptr %ctxprog_len.i.i834.i, align 4
  %ctxprog_max.i.i835.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2752 = ptrtoint ptr %ctxprog_max.i.i835.i to i32
  call void @__asan_load4_noabort(i32 %2752)
  %2753 = load i32, ptr %ctxprog_max.i.i835.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2751, i32 %2753)
  %cmp1.i.i836.i = icmp eq i32 %2751, %2753
  br i1 %cmp1.i.i836.i, label %do.body4.i.i838.i, label %do.end10.i.i841.i, !prof !9

do.body4.i.i838.i:                                ; preds = %do.body.i.i837.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i841.i:                                ; preds = %do.body.i.i837.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i839.i = add i32 %2751, 1
  %2754 = ptrtoint ptr %ctxprog_len.i.i834.i to i32
  call void @__asan_store4_noabort(i32 %2754)
  store i32 %inc.i.i839.i, ptr %ctxprog_len.i.i834.i, align 4
  %arrayidx.i.i840.i = getelementptr i32, ptr %2749, i32 %2751
  %2755 = ptrtoint ptr %arrayidx.i.i840.i to i32
  call void @__asan_store4_noabort(i32 %2755)
  store i32 1116928, ptr %arrayidx.i.i840.i, align 4
  br label %cp_ctx.exit842.i

cp_ctx.exit842.i:                                 ; preds = %do.end10.i.i841.i, %sw.epilog35.i.cp_ctx.exit842.i_crit_edge
  %2756 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2756)
  %2757 = load i32, ptr %chipset.i501, align 4
  %2758 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2758)
  %2759 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2759)
  %cmp.not.i844.i = icmp eq i32 %2759, 1
  br i1 %cmp.not.i844.i, label %if.end.i852.i, label %cp_ctx.exit842.i.gr_def.exit853.i_crit_edge

cp_ctx.exit842.i.gr_def.exit853.i_crit_edge:      ; preds = %cp_ctx.exit842.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit853.i

if.end.i852.i:                                    ; preds = %cp_ctx.exit842.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2757)
  %cmp37.i = icmp eq i32 %2757, 64
  %cond38.i = select i1 %cmp37.i, i32 -2139095039, i32 8945665
  %2760 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2760)
  %2761 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i846.i = sub i32 2816, %2761
  %2762 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2762)
  %2763 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i848.i538 = add i32 %sub1.i846.i, %2763
  %2764 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2764)
  %2765 = load ptr, ptr %data.i573.i, align 4
  %2766 = ptrtoint ptr %2765 to i32
  call void @__asan_load4_noabort(i32 %2766)
  %2767 = load ptr, ptr %2765, align 8
  %wr32.i850.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2767, i32 0, i32 3
  %2768 = ptrtoint ptr %wr32.i850.i to i32
  call void @__asan_load4_noabort(i32 %2768)
  %2769 = load ptr, ptr %wr32.i850.i, align 4
  %mul.i851.i = shl i32 %add.i848.i538, 2
  tail call void %2769(ptr noundef %2765, i32 noundef %mul.i851.i, i32 noundef %cond38.i) #5
  %2770 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2770)
  %.pr1354.i = load i32, ptr %chipset.i501, align 4
  br label %gr_def.exit853.i

gr_def.exit853.i:                                 ; preds = %if.end.i852.i, %cp_ctx.exit842.i.gr_def.exit853.i_crit_edge
  %2771 = phi i32 [ %2757, %cp_ctx.exit842.i.gr_def.exit853.i_crit_edge ], [ %.pr1354.i, %if.end.i852.i ]
  %2772 = zext i32 %2771 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2772, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %2771, label %sw.default42.i [
    i32 71, label %gr_def.exit853.i.sw.bb40.i_crit_edge
    i32 73, label %gr_def.exit853.i.sw.bb40.i_crit_edge1143
    i32 75, label %gr_def.exit853.i.sw.bb40.i_crit_edge1144
  ]

gr_def.exit853.i.sw.bb40.i_crit_edge1144:         ; preds = %gr_def.exit853.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb40.i

gr_def.exit853.i.sw.bb40.i_crit_edge1143:         ; preds = %gr_def.exit853.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb40.i

gr_def.exit853.i.sw.bb40.i_crit_edge:             ; preds = %gr_def.exit853.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb40.i

sw.bb40.i:                                        ; preds = %gr_def.exit853.i.sw.bb40.i_crit_edge, %gr_def.exit853.i.sw.bb40.i_crit_edge1143, %gr_def.exit853.i.sw.bb40.i_crit_edge1144
  %2773 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2773)
  store i32 2824, ptr %ctxprog_reg.i.i, align 4
  %2774 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2774)
  %2775 = load i32, ptr %ctxvals_pos.i813, align 4
  %2776 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2776)
  store i32 %2775, ptr %ctxvals_base.i829, align 4
  %add.i857.i = add i32 %2775, 40
  store i32 %add.i857.i, ptr %ctxvals_pos.i813, align 4
  %2777 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2777)
  %2778 = load ptr, ptr %ucode.i.i, align 4
  %2779 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2779)
  %2780 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2780)
  %cmp.not.i.i863.i = icmp eq i32 %2780, 0
  br i1 %cmp.not.i.i863.i, label %do.body.i.i868.i, label %sw.bb40.i.for.body.i539.preheader_crit_edge

sw.bb40.i.for.body.i539.preheader_crit_edge:      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i539.preheader

do.body.i.i868.i:                                 ; preds = %sw.bb40.i
  %ctxprog_len.i.i865.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2781 = ptrtoint ptr %ctxprog_len.i.i865.i to i32
  call void @__asan_load4_noabort(i32 %2781)
  %2782 = load i32, ptr %ctxprog_len.i.i865.i, align 4
  %ctxprog_max.i.i866.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2783 = ptrtoint ptr %ctxprog_max.i.i866.i to i32
  call void @__asan_load4_noabort(i32 %2783)
  %2784 = load i32, ptr %ctxprog_max.i.i866.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2782, i32 %2784)
  %cmp1.i.i867.i = icmp eq i32 %2782, %2784
  br i1 %cmp1.i.i867.i, label %do.body4.i.i869.i, label %do.end10.i.i872.i, !prof !9

do.body4.i.i869.i:                                ; preds = %do.body.i.i868.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i872.i:                                ; preds = %do.body.i.i868.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i870.i = add i32 %2782, 1
  %2785 = ptrtoint ptr %ctxprog_len.i.i865.i to i32
  call void @__asan_store4_noabort(i32 %2785)
  store i32 %inc.i.i870.i, ptr %ctxprog_len.i.i865.i, align 4
  %arrayidx.i.i871.i = getelementptr i32, ptr %2778, i32 %2782
  %2786 = ptrtoint ptr %arrayidx.i.i871.i to i32
  call void @__asan_store4_noabort(i32 %2786)
  store i32 1706760, ptr %arrayidx.i.i871.i, align 4
  br label %for.body.i539.preheader

for.body.i539.preheader:                          ; preds = %do.end10.i.i872.i, %sw.bb40.i.for.body.i539.preheader_crit_edge
  br label %for.body.i539

for.body.i539:                                    ; preds = %gr_def.exit884.i.for.body.i539_crit_edge, %for.body.i539.preheader
  %i.01393.i = phi i32 [ %inc.i540, %gr_def.exit884.i.for.body.i539_crit_edge ], [ 0, %for.body.i539.preheader ]
  %2787 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2787)
  %2788 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2788)
  %cmp.not.i875.i = icmp eq i32 %2788, 1
  br i1 %cmp.not.i875.i, label %if.end.i883.i, label %for.body.i539.gr_def.exit884.i_crit_edge

for.body.i539.gr_def.exit884.i_crit_edge:         ; preds = %for.body.i539
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit884.i

if.end.i883.i:                                    ; preds = %for.body.i539
  call void @__sanitizer_cov_trace_pc() #7
  %2789 = add nuw nsw i32 %i.01393.i, 2832
  %2790 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2790)
  %2791 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i877.i = sub i32 %2789, %2791
  %2792 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2792)
  %2793 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i879.i = add i32 %sub1.i877.i, %2793
  %2794 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2794)
  %2795 = load ptr, ptr %data.i573.i, align 4
  %2796 = ptrtoint ptr %2795 to i32
  call void @__asan_load4_noabort(i32 %2796)
  %2797 = load ptr, ptr %2795, align 8
  %wr32.i881.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2797, i32 0, i32 3
  %2798 = ptrtoint ptr %wr32.i881.i to i32
  call void @__asan_load4_noabort(i32 %2798)
  %2799 = load ptr, ptr %wr32.i881.i, align 4
  %mul.i882.i = shl i32 %add.i879.i, 2
  tail call void %2799(ptr noundef %2795, i32 noundef %mul.i882.i, i32 noundef -1) #5
  br label %gr_def.exit884.i

gr_def.exit884.i:                                 ; preds = %if.end.i883.i, %for.body.i539.gr_def.exit884.i_crit_edge
  %inc.i540 = add nuw nsw i32 %i.01393.i, 1
  %exitcond.not.i541 = icmp eq i32 %inc.i540, 32
  br i1 %exitcond.not.i541, label %for.end.i542, label %gr_def.exit884.i.for.body.i539_crit_edge

gr_def.exit884.i.for.body.i539_crit_edge:         ; preds = %gr_def.exit884.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i539

for.end.i542:                                     ; preds = %gr_def.exit884.i
  %2800 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2800)
  store i32 3118, ptr %ctxprog_reg.i.i, align 4
  %2801 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2801)
  %2802 = load i32, ptr %ctxvals_pos.i813, align 4
  %2803 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2803)
  store i32 %2802, ptr %ctxvals_base.i829, align 4
  %add.i888.i = add i32 %2802, 13
  store i32 %add.i888.i, ptr %ctxvals_pos.i813, align 4
  %2804 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2804)
  %2805 = load ptr, ptr %ucode.i.i, align 4
  %2806 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2806)
  %2807 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2807)
  %cmp.not.i.i894.i = icmp eq i32 %2807, 0
  br i1 %cmp.not.i.i894.i, label %do.body.i.i899.i, label %for.end.i542.cp_ctx.exit904.i_crit_edge

for.end.i542.cp_ctx.exit904.i_crit_edge:          ; preds = %for.end.i542
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit904.i

do.body.i.i899.i:                                 ; preds = %for.end.i542
  %ctxprog_len.i.i896.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2808 = ptrtoint ptr %ctxprog_len.i.i896.i to i32
  call void @__asan_load4_noabort(i32 %2808)
  %2809 = load i32, ptr %ctxprog_len.i.i896.i, align 4
  %ctxprog_max.i.i897.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2810 = ptrtoint ptr %ctxprog_max.i.i897.i to i32
  call void @__asan_load4_noabort(i32 %2810)
  %2811 = load i32, ptr %ctxprog_max.i.i897.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2809, i32 %2811)
  %cmp1.i.i898.i = icmp eq i32 %2809, %2811
  br i1 %cmp1.i.i898.i, label %do.body4.i.i900.i, label %do.end10.i.i903.i, !prof !9

do.body4.i.i900.i:                                ; preds = %do.body.i.i899.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i903.i:                                ; preds = %do.body.i.i899.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i901.i = add i32 %2809, 1
  %2812 = ptrtoint ptr %ctxprog_len.i.i896.i to i32
  call void @__asan_store4_noabort(i32 %2812)
  store i32 %inc.i.i901.i, ptr %ctxprog_len.i.i896.i, align 4
  %arrayidx.i.i902.i = getelementptr i32, ptr %2805, i32 %2809
  %2813 = ptrtoint ptr %arrayidx.i.i902.i to i32
  call void @__asan_store4_noabort(i32 %2813)
  store i32 1264686, ptr %arrayidx.i.i902.i, align 4
  %2814 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2814)
  %.pr1355.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit904.i

cp_ctx.exit904.i:                                 ; preds = %do.end10.i.i903.i, %for.end.i542.cp_ctx.exit904.i_crit_edge
  %2815 = phi i32 [ %2807, %for.end.i542.cp_ctx.exit904.i_crit_edge ], [ %.pr1355.i, %do.end10.i.i903.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2815)
  %cmp.not.i906.i = icmp eq i32 %2815, 1
  br i1 %cmp.not.i906.i, label %if.end.i914.i, label %cp_ctx.exit904.i.gr_def.exit915.i_crit_edge

cp_ctx.exit904.i.gr_def.exit915.i_crit_edge:      ; preds = %cp_ctx.exit904.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit915.i

if.end.i914.i:                                    ; preds = %cp_ctx.exit904.i
  call void @__sanitizer_cov_trace_pc() #7
  %2816 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2816)
  %2817 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i908.i = sub i32 3127, %2817
  %2818 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2818)
  %2819 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i910.i = add i32 %sub1.i908.i, %2819
  %2820 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2820)
  %2821 = load ptr, ptr %data.i573.i, align 4
  %2822 = ptrtoint ptr %2821 to i32
  call void @__asan_load4_noabort(i32 %2822)
  %2823 = load ptr, ptr %2821, align 8
  %wr32.i912.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2823, i32 0, i32 3
  %2824 = ptrtoint ptr %wr32.i912.i to i32
  call void @__asan_load4_noabort(i32 %2824)
  %2825 = load ptr, ptr %wr32.i912.i, align 4
  %mul.i913.i = shl i32 %add.i910.i, 2
  tail call void %2825(ptr noundef %2821, i32 noundef %mul.i913.i, i32 noundef 5) #5
  br label %gr_def.exit915.i

gr_def.exit915.i:                                 ; preds = %if.end.i914.i, %cp_ctx.exit904.i.gr_def.exit915.i_crit_edge
  %2826 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2826)
  %2827 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2827)
  %cmp.not.i917.i = icmp eq i32 %2827, 1
  br i1 %cmp.not.i917.i, label %gr_def.exit915.i.sw.epilog64.sink.split.i_crit_edge, label %gr_def.exit915.i.sw.epilog64.i_crit_edge

gr_def.exit915.i.sw.epilog64.i_crit_edge:         ; preds = %gr_def.exit915.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog64.i

gr_def.exit915.i.sw.epilog64.sink.split.i_crit_edge: ; preds = %gr_def.exit915.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog64.sink.split.i

sw.default42.i:                                   ; preds = %gr_def.exit853.i
  %2828 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2828)
  store i32 2820, ptr %ctxprog_reg.i.i, align 4
  %2829 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2829)
  %2830 = load i32, ptr %ctxvals_pos.i813, align 4
  %2831 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2831)
  store i32 %2830, ptr %ctxvals_base.i829, align 4
  %add.i930.i = add i32 %2830, 4
  store i32 %add.i930.i, ptr %ctxvals_pos.i813, align 4
  %2832 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2832)
  %2833 = load ptr, ptr %ucode.i.i, align 4
  %2834 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2834)
  %2835 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2835)
  %cmp.not.i.i936.i = icmp eq i32 %2835, 0
  br i1 %cmp.not.i.i936.i, label %do.body.i.i941.i, label %sw.default42.i.cp_ctx.exit946.i_crit_edge

sw.default42.i.cp_ctx.exit946.i_crit_edge:        ; preds = %sw.default42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit946.i

do.body.i.i941.i:                                 ; preds = %sw.default42.i
  %ctxprog_len.i.i938.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2836 = ptrtoint ptr %ctxprog_len.i.i938.i to i32
  call void @__asan_load4_noabort(i32 %2836)
  %2837 = load i32, ptr %ctxprog_len.i.i938.i, align 4
  %ctxprog_max.i.i939.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2838 = ptrtoint ptr %ctxprog_max.i.i939.i to i32
  call void @__asan_load4_noabort(i32 %2838)
  %2839 = load i32, ptr %ctxprog_max.i.i939.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2837, i32 %2839)
  %cmp1.i.i940.i = icmp eq i32 %2837, %2839
  br i1 %cmp1.i.i940.i, label %do.body4.i.i942.i, label %do.end10.i.i945.i, !prof !9

do.body4.i.i942.i:                                ; preds = %do.body.i.i941.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i945.i:                                ; preds = %do.body.i.i941.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i943.i = add i32 %2837, 1
  %2840 = ptrtoint ptr %ctxprog_len.i.i938.i to i32
  call void @__asan_store4_noabort(i32 %2840)
  store i32 %inc.i.i943.i, ptr %ctxprog_len.i.i938.i, align 4
  %arrayidx.i.i944.i = getelementptr i32, ptr %2833, i32 %2837
  %2841 = ptrtoint ptr %arrayidx.i.i944.i to i32
  call void @__asan_store4_noabort(i32 %2841)
  store i32 1116932, ptr %arrayidx.i.i944.i, align 4
  br label %cp_ctx.exit946.i

cp_ctx.exit946.i:                                 ; preds = %do.end10.i.i945.i, %sw.default42.i.cp_ctx.exit946.i_crit_edge
  %2842 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2842)
  %2843 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2843)
  %cmp44.i = icmp eq i32 %2843, 64
  br i1 %cmp44.i, label %if.then45.i, label %if.else.i544

if.then45.i:                                      ; preds = %cp_ctx.exit946.i
  %2844 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2844)
  store i32 2824, ptr %ctxprog_reg.i.i, align 4
  %2845 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2845)
  %2846 = load i32, ptr %ctxvals_pos.i813, align 4
  %2847 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2847)
  store i32 %2846, ptr %ctxvals_base.i829, align 4
  %add.i950.i = add i32 %2846, 36
  store i32 %add.i950.i, ptr %ctxvals_pos.i813, align 4
  %2848 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2848)
  %2849 = load ptr, ptr %ucode.i.i, align 4
  %2850 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2850)
  %2851 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2851)
  %cmp.not.i.i956.i = icmp eq i32 %2851, 0
  br i1 %cmp.not.i.i956.i, label %do.body.i.i961.i, label %if.then45.i.if.end56.i_crit_edge

if.then45.i.if.end56.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body.i.i961.i:                                 ; preds = %if.then45.i
  %ctxprog_len.i.i958.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2852 = ptrtoint ptr %ctxprog_len.i.i958.i to i32
  call void @__asan_load4_noabort(i32 %2852)
  %2853 = load i32, ptr %ctxprog_len.i.i958.i, align 4
  %ctxprog_max.i.i959.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2854 = ptrtoint ptr %ctxprog_max.i.i959.i to i32
  call void @__asan_load4_noabort(i32 %2854)
  %2855 = load i32, ptr %ctxprog_max.i.i959.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2853, i32 %2855)
  %cmp1.i.i960.i = icmp eq i32 %2853, %2855
  br i1 %cmp1.i.i960.i, label %do.body4.i.i962.i, label %do.end10.i.i965.i, !prof !9

do.body4.i.i962.i:                                ; preds = %do.body.i.i961.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i965.i:                                ; preds = %do.body.i.i961.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i963.i = add i32 %2853, 1
  %2856 = ptrtoint ptr %ctxprog_len.i.i958.i to i32
  call void @__asan_store4_noabort(i32 %2856)
  store i32 %inc.i.i963.i, ptr %ctxprog_len.i.i958.i, align 4
  %arrayidx.i.i964.i = getelementptr i32, ptr %2849, i32 %2853
  %2857 = ptrtoint ptr %arrayidx.i.i964.i to i32
  call void @__asan_store4_noabort(i32 %2857)
  store i32 1641224, ptr %arrayidx.i.i964.i, align 4
  br label %if.end56.i

if.else.i544:                                     ; preds = %cp_ctx.exit946.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %2843)
  %cmp47.i543 = icmp ult i32 %2843, 67
  br i1 %cmp47.i543, label %if.then48.i, label %if.else49.i

if.then48.i:                                      ; preds = %if.else.i544
  %2858 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2858)
  store i32 2824, ptr %ctxprog_reg.i.i, align 4
  %2859 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2859)
  %2860 = load i32, ptr %ctxvals_pos.i813, align 4
  %2861 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2861)
  store i32 %2860, ptr %ctxvals_base.i829, align 4
  %add.i970.i = add i32 %2860, 24
  store i32 %add.i970.i, ptr %ctxvals_pos.i813, align 4
  %2862 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2862)
  %2863 = load ptr, ptr %ucode.i.i, align 4
  %2864 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2864)
  %2865 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2865)
  %cmp.not.i.i976.i = icmp eq i32 %2865, 0
  br i1 %cmp.not.i.i976.i, label %do.body.i.i981.i, label %if.then48.i.if.end56.i_crit_edge

if.then48.i.if.end56.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body.i.i981.i:                                 ; preds = %if.then48.i
  %ctxprog_len.i.i978.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2866 = ptrtoint ptr %ctxprog_len.i.i978.i to i32
  call void @__asan_load4_noabort(i32 %2866)
  %2867 = load i32, ptr %ctxprog_len.i.i978.i, align 4
  %ctxprog_max.i.i979.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2868 = ptrtoint ptr %ctxprog_max.i.i979.i to i32
  call void @__asan_load4_noabort(i32 %2868)
  %2869 = load i32, ptr %ctxprog_max.i.i979.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2867, i32 %2869)
  %cmp1.i.i980.i = icmp eq i32 %2867, %2869
  br i1 %cmp1.i.i980.i, label %do.body4.i.i982.i, label %do.end10.i.i985.i, !prof !9

do.body4.i.i982.i:                                ; preds = %do.body.i.i981.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i985.i:                                ; preds = %do.body.i.i981.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i983.i = add i32 %2867, 1
  %2870 = ptrtoint ptr %ctxprog_len.i.i978.i to i32
  call void @__asan_store4_noabort(i32 %2870)
  store i32 %inc.i.i983.i, ptr %ctxprog_len.i.i978.i, align 4
  %arrayidx.i.i984.i = getelementptr i32, ptr %2863, i32 %2867
  %2871 = ptrtoint ptr %arrayidx.i.i984.i to i32
  call void @__asan_store4_noabort(i32 %2871)
  store i32 1444616, ptr %arrayidx.i.i984.i, align 4
  br label %if.end56.i

if.else49.i:                                      ; preds = %if.else.i544
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %2843)
  %cmp51.i = icmp ult i32 %2843, 75
  %2872 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2872)
  store i32 2824, ptr %ctxprog_reg.i.i, align 4
  %2873 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2873)
  %2874 = load i32, ptr %ctxvals_pos.i813, align 4
  %2875 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2875)
  store i32 %2874, ptr %ctxvals_base.i829, align 4
  br i1 %cmp51.i, label %if.then52.i, label %if.else53.i

if.then52.i:                                      ; preds = %if.else49.i
  %add.i990.i = add i32 %2874, 16
  %2876 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %2876)
  store i32 %add.i990.i, ptr %ctxvals_pos.i813, align 4
  %2877 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2877)
  %2878 = load ptr, ptr %ucode.i.i, align 4
  %2879 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2879)
  %2880 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2880)
  %cmp.not.i.i996.i = icmp eq i32 %2880, 0
  br i1 %cmp.not.i.i996.i, label %do.body.i.i1001.i, label %if.then52.i.if.end56.i_crit_edge

if.then52.i.if.end56.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body.i.i1001.i:                                ; preds = %if.then52.i
  %ctxprog_len.i.i998.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2881 = ptrtoint ptr %ctxprog_len.i.i998.i to i32
  call void @__asan_load4_noabort(i32 %2881)
  %2882 = load i32, ptr %ctxprog_len.i.i998.i, align 4
  %ctxprog_max.i.i999.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2883 = ptrtoint ptr %ctxprog_max.i.i999.i to i32
  call void @__asan_load4_noabort(i32 %2883)
  %2884 = load i32, ptr %ctxprog_max.i.i999.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2882, i32 %2884)
  %cmp1.i.i1000.i = icmp eq i32 %2882, %2884
  br i1 %cmp1.i.i1000.i, label %do.body4.i.i1002.i, label %do.end10.i.i1005.i, !prof !9

do.body4.i.i1002.i:                               ; preds = %do.body.i.i1001.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1005.i:                               ; preds = %do.body.i.i1001.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1003.i = add i32 %2882, 1
  %2885 = ptrtoint ptr %ctxprog_len.i.i998.i to i32
  call void @__asan_store4_noabort(i32 %2885)
  store i32 %inc.i.i1003.i, ptr %ctxprog_len.i.i998.i, align 4
  %arrayidx.i.i1004.i = getelementptr i32, ptr %2878, i32 %2882
  %2886 = ptrtoint ptr %arrayidx.i.i1004.i to i32
  call void @__asan_store4_noabort(i32 %2886)
  store i32 1313544, ptr %arrayidx.i.i1004.i, align 4
  br label %if.end56.i

if.else53.i:                                      ; preds = %if.else49.i
  %add.i1010.i = add i32 %2874, 8
  %2887 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_store4_noabort(i32 %2887)
  store i32 %add.i1010.i, ptr %ctxvals_pos.i813, align 4
  %2888 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2888)
  %2889 = load ptr, ptr %ucode.i.i, align 4
  %2890 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2890)
  %2891 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2891)
  %cmp.not.i.i1016.i = icmp eq i32 %2891, 0
  br i1 %cmp.not.i.i1016.i, label %do.body.i.i1021.i, label %if.else53.i.if.end56.i_crit_edge

if.else53.i.if.end56.i_crit_edge:                 ; preds = %if.else53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.i

do.body.i.i1021.i:                                ; preds = %if.else53.i
  %ctxprog_len.i.i1018.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2892 = ptrtoint ptr %ctxprog_len.i.i1018.i to i32
  call void @__asan_load4_noabort(i32 %2892)
  %2893 = load i32, ptr %ctxprog_len.i.i1018.i, align 4
  %ctxprog_max.i.i1019.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2894 = ptrtoint ptr %ctxprog_max.i.i1019.i to i32
  call void @__asan_load4_noabort(i32 %2894)
  %2895 = load i32, ptr %ctxprog_max.i.i1019.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2893, i32 %2895)
  %cmp1.i.i1020.i = icmp eq i32 %2893, %2895
  br i1 %cmp1.i.i1020.i, label %do.body4.i.i1022.i, label %do.end10.i.i1025.i, !prof !9

do.body4.i.i1022.i:                               ; preds = %do.body.i.i1021.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1025.i:                               ; preds = %do.body.i.i1021.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1023.i = add i32 %2893, 1
  %2896 = ptrtoint ptr %ctxprog_len.i.i1018.i to i32
  call void @__asan_store4_noabort(i32 %2896)
  store i32 %inc.i.i1023.i, ptr %ctxprog_len.i.i1018.i, align 4
  %arrayidx.i.i1024.i = getelementptr i32, ptr %2889, i32 %2893
  %2897 = ptrtoint ptr %arrayidx.i.i1024.i to i32
  call void @__asan_store4_noabort(i32 %2897)
  store i32 1182472, ptr %arrayidx.i.i1024.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end10.i.i1025.i, %if.else53.i.if.end56.i_crit_edge, %do.end10.i.i1005.i, %if.then52.i.if.end56.i_crit_edge, %do.end10.i.i985.i, %if.then48.i.if.end56.i_crit_edge, %do.end10.i.i965.i, %if.then45.i.if.end56.i_crit_edge
  %2898 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2898)
  %2899 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2899)
  %cmp58.i = icmp eq i32 %2899, 64
  %cond59.i = select i1 %cmp58.i, i32 12, i32 13
  %2900 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2900)
  store i32 2860, ptr %ctxprog_reg.i.i, align 4
  %2901 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2901)
  %2902 = load i32, ptr %ctxvals_pos.i813, align 4
  %2903 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2903)
  store i32 %2902, ptr %ctxvals_base.i829, align 4
  %add.i1030.i = add i32 %2902, %cond59.i
  store i32 %add.i1030.i, ptr %ctxvals_pos.i813, align 4
  %shl.i1031.i = shl nuw nsw i32 %cond59.i, 14
  %or4.i1033.i = or i32 %shl.i1031.i, 1051436
  %2904 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2904)
  %2905 = load ptr, ptr %ucode.i.i, align 4
  %2906 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2906)
  %2907 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2907)
  %cmp.not.i.i1036.i = icmp eq i32 %2907, 0
  br i1 %cmp.not.i.i1036.i, label %do.body.i.i1041.i, label %if.end56.i.cp_ctx.exit1046.i_crit_edge

if.end56.i.cp_ctx.exit1046.i_crit_edge:           ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1046.i

do.body.i.i1041.i:                                ; preds = %if.end56.i
  %ctxprog_len.i.i1038.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2908 = ptrtoint ptr %ctxprog_len.i.i1038.i to i32
  call void @__asan_load4_noabort(i32 %2908)
  %2909 = load i32, ptr %ctxprog_len.i.i1038.i, align 4
  %ctxprog_max.i.i1039.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2910 = ptrtoint ptr %ctxprog_max.i.i1039.i to i32
  call void @__asan_load4_noabort(i32 %2910)
  %2911 = load i32, ptr %ctxprog_max.i.i1039.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2909, i32 %2911)
  %cmp1.i.i1040.i = icmp eq i32 %2909, %2911
  br i1 %cmp1.i.i1040.i, label %do.body4.i.i1042.i, label %do.end10.i.i1045.i, !prof !9

do.body4.i.i1042.i:                               ; preds = %do.body.i.i1041.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1045.i:                               ; preds = %do.body.i.i1041.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1043.i = add i32 %2909, 1
  %2912 = ptrtoint ptr %ctxprog_len.i.i1038.i to i32
  call void @__asan_store4_noabort(i32 %2912)
  store i32 %inc.i.i1043.i, ptr %ctxprog_len.i.i1038.i, align 4
  %arrayidx.i.i1044.i = getelementptr i32, ptr %2905, i32 %2909
  %2913 = ptrtoint ptr %arrayidx.i.i1044.i to i32
  call void @__asan_store4_noabort(i32 %2913)
  store i32 %or4.i1033.i, ptr %arrayidx.i.i1044.i, align 4
  %2914 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2914)
  %.pr1356.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1046.i

cp_ctx.exit1046.i:                                ; preds = %do.end10.i.i1045.i, %if.end56.i.cp_ctx.exit1046.i_crit_edge
  %2915 = phi i32 [ %2907, %if.end56.i.cp_ctx.exit1046.i_crit_edge ], [ %.pr1356.i, %do.end10.i.i1045.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2915)
  %cmp.not.i1048.i = icmp eq i32 %2915, 1
  br i1 %cmp.not.i1048.i, label %if.end.i1056.i549, label %cp_ctx.exit1046.i.gr_def.exit1057.i550_crit_edge

cp_ctx.exit1046.i.gr_def.exit1057.i550_crit_edge: ; preds = %cp_ctx.exit1046.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1057.i550

if.end.i1056.i549:                                ; preds = %cp_ctx.exit1046.i
  call void @__sanitizer_cov_trace_pc() #7
  %2916 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2916)
  %2917 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1050.i545 = sub i32 2869, %2917
  %2918 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2918)
  %2919 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1052.i546 = add i32 %sub1.i1050.i545, %2919
  %2920 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2920)
  %2921 = load ptr, ptr %data.i573.i, align 4
  %2922 = ptrtoint ptr %2921 to i32
  call void @__asan_load4_noabort(i32 %2922)
  %2923 = load ptr, ptr %2921, align 8
  %wr32.i1054.i547 = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2923, i32 0, i32 3
  %2924 = ptrtoint ptr %wr32.i1054.i547 to i32
  call void @__asan_load4_noabort(i32 %2924)
  %2925 = load ptr, ptr %wr32.i1054.i547, align 4
  %mul.i1055.i548 = shl i32 %add.i1052.i546, 2
  tail call void %2925(ptr noundef %2921, i32 noundef %mul.i1055.i548, i32 noundef 5) #5
  br label %gr_def.exit1057.i550

gr_def.exit1057.i550:                             ; preds = %if.end.i1056.i549, %cp_ctx.exit1046.i.gr_def.exit1057.i550_crit_edge
  %2926 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2926)
  %2927 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2927)
  %cmp61.not.i = icmp eq i32 %2927, 64
  br i1 %cmp61.not.i, label %gr_def.exit1057.i550.sw.epilog64.i_crit_edge, label %if.then62.i

gr_def.exit1057.i550.sw.epilog64.i_crit_edge:     ; preds = %gr_def.exit1057.i550
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog64.i

if.then62.i:                                      ; preds = %gr_def.exit1057.i550
  %2928 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2928)
  %2929 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2929)
  %cmp.not.i1059.i551 = icmp eq i32 %2929, 1
  br i1 %cmp.not.i1059.i551, label %if.then62.i.sw.epilog64.sink.split.i_crit_edge, label %if.then62.i.sw.epilog64.i_crit_edge

if.then62.i.sw.epilog64.i_crit_edge:              ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog64.i

if.then62.i.sw.epilog64.sink.split.i_crit_edge:   ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog64.sink.split.i

sw.epilog64.sink.split.i:                         ; preds = %if.then62.i.sw.epilog64.sink.split.i_crit_edge, %gr_def.exit915.i.sw.epilog64.sink.split.i_crit_edge
  %.sink = phi i32 [ 3130, %gr_def.exit915.i.sw.epilog64.sink.split.i_crit_edge ], [ 2872, %if.then62.i.sw.epilog64.sink.split.i_crit_edge ]
  %2930 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %2930)
  %2931 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1061.i = sub i32 %.sink, %2931
  %2932 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %2932)
  %2933 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1063.i = add i32 %sub1.i1061.i, %2933
  %2934 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %2934)
  %2935 = load ptr, ptr %data.i573.i, align 4
  %2936 = ptrtoint ptr %2935 to i32
  call void @__asan_load4_noabort(i32 %2936)
  %2937 = load ptr, ptr %2935, align 8
  %wr32.i1065.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %2937, i32 0, i32 3
  %2938 = ptrtoint ptr %wr32.i1065.i to i32
  call void @__asan_load4_noabort(i32 %2938)
  %2939 = load ptr, ptr %wr32.i1065.i, align 4
  %mul.i1066.i = shl i32 %add.i1063.i, 2
  tail call void %2939(ptr noundef %2935, i32 noundef %mul.i1066.i, i32 noundef 65535) #5
  br label %sw.epilog64.i

sw.epilog64.i:                                    ; preds = %sw.epilog64.sink.split.i, %if.then62.i.sw.epilog64.i_crit_edge, %gr_def.exit1057.i550.sw.epilog64.i_crit_edge, %gr_def.exit915.i.sw.epilog64.i_crit_edge
  %2940 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2940)
  %2941 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2941)
  %cmp66.i = icmp eq i32 %2941, 64
  %cond67.i = select i1 %cmp66.i, i32 4, i32 3
  %2942 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2942)
  store i32 3328, ptr %ctxprog_reg.i.i, align 4
  %2943 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2943)
  %2944 = load i32, ptr %ctxvals_pos.i813, align 4
  %2945 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2945)
  store i32 %2944, ptr %ctxvals_base.i829, align 4
  %add.i1072.i = add i32 %2944, %cond67.i
  store i32 %add.i1072.i, ptr %ctxvals_pos.i813, align 4
  %shl.i1073.i = shl nuw nsw i32 %cond67.i, 14
  %or4.i1075.i = or i32 %shl.i1073.i, 1051904
  %2946 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2946)
  %2947 = load ptr, ptr %ucode.i.i, align 4
  %2948 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2948)
  %2949 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2949)
  %cmp.not.i.i1078.i = icmp eq i32 %2949, 0
  br i1 %cmp.not.i.i1078.i, label %do.body.i.i1083.i, label %sw.epilog64.i.cp_ctx.exit1088.i_crit_edge

sw.epilog64.i.cp_ctx.exit1088.i_crit_edge:        ; preds = %sw.epilog64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1088.i

do.body.i.i1083.i:                                ; preds = %sw.epilog64.i
  %ctxprog_len.i.i1080.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2950 = ptrtoint ptr %ctxprog_len.i.i1080.i to i32
  call void @__asan_load4_noabort(i32 %2950)
  %2951 = load i32, ptr %ctxprog_len.i.i1080.i, align 4
  %ctxprog_max.i.i1081.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2952 = ptrtoint ptr %ctxprog_max.i.i1081.i to i32
  call void @__asan_load4_noabort(i32 %2952)
  %2953 = load i32, ptr %ctxprog_max.i.i1081.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2951, i32 %2953)
  %cmp1.i.i1082.i = icmp eq i32 %2951, %2953
  br i1 %cmp1.i.i1082.i, label %do.body4.i.i1084.i, label %do.end10.i.i1087.i, !prof !9

do.body4.i.i1084.i:                               ; preds = %do.body.i.i1083.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1087.i:                               ; preds = %do.body.i.i1083.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1085.i = add i32 %2951, 1
  %2954 = ptrtoint ptr %ctxprog_len.i.i1080.i to i32
  call void @__asan_store4_noabort(i32 %2954)
  store i32 %inc.i.i1085.i, ptr %ctxprog_len.i.i1080.i, align 4
  %arrayidx.i.i1086.i = getelementptr i32, ptr %2947, i32 %2951
  %2955 = ptrtoint ptr %arrayidx.i.i1086.i to i32
  call void @__asan_store4_noabort(i32 %2955)
  store i32 %or4.i1075.i, ptr %arrayidx.i.i1086.i, align 4
  br label %cp_ctx.exit1088.i

cp_ctx.exit1088.i:                                ; preds = %do.end10.i.i1087.i, %sw.epilog64.i.cp_ctx.exit1088.i_crit_edge
  %2956 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %2956)
  %2957 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %2957)
  %cmp69.i = icmp eq i32 %2957, 64
  %cond70.i = select i1 %cmp69.i, i32 4, i32 3
  %2958 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2958)
  store i32 3332, ptr %ctxprog_reg.i.i, align 4
  %2959 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2959)
  %2960 = load i32, ptr %ctxvals_pos.i813, align 4
  %2961 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2961)
  store i32 %2960, ptr %ctxvals_base.i829, align 4
  %add.i1092.i = add i32 %2960, %cond70.i
  store i32 %add.i1092.i, ptr %ctxvals_pos.i813, align 4
  %shl.i1093.i = shl nuw nsw i32 %cond70.i, 14
  %or4.i1095.i = or i32 %shl.i1093.i, 1051908
  %2962 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2962)
  %2963 = load ptr, ptr %ucode.i.i, align 4
  %2964 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2964)
  %2965 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2965)
  %cmp.not.i.i1098.i = icmp eq i32 %2965, 0
  br i1 %cmp.not.i.i1098.i, label %do.body.i.i1103.i, label %cp_ctx.exit1088.i.cp_ctx.exit1108.i_crit_edge

cp_ctx.exit1088.i.cp_ctx.exit1108.i_crit_edge:    ; preds = %cp_ctx.exit1088.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1108.i

do.body.i.i1103.i:                                ; preds = %cp_ctx.exit1088.i
  %ctxprog_len.i.i1100.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2966 = ptrtoint ptr %ctxprog_len.i.i1100.i to i32
  call void @__asan_load4_noabort(i32 %2966)
  %2967 = load i32, ptr %ctxprog_len.i.i1100.i, align 4
  %ctxprog_max.i.i1101.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2968 = ptrtoint ptr %ctxprog_max.i.i1101.i to i32
  call void @__asan_load4_noabort(i32 %2968)
  %2969 = load i32, ptr %ctxprog_max.i.i1101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2967, i32 %2969)
  %cmp1.i.i1102.i = icmp eq i32 %2967, %2969
  br i1 %cmp1.i.i1102.i, label %do.body4.i.i1104.i, label %do.end10.i.i1107.i, !prof !9

do.body4.i.i1104.i:                               ; preds = %do.body.i.i1103.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1107.i:                               ; preds = %do.body.i.i1103.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1105.i = add i32 %2967, 1
  %2970 = ptrtoint ptr %ctxprog_len.i.i1100.i to i32
  call void @__asan_store4_noabort(i32 %2970)
  store i32 %inc.i.i1105.i, ptr %ctxprog_len.i.i1100.i, align 4
  %arrayidx.i.i1106.i = getelementptr i32, ptr %2963, i32 %2967
  %2971 = ptrtoint ptr %arrayidx.i.i1106.i to i32
  call void @__asan_store4_noabort(i32 %2971)
  store i32 %or4.i1095.i, ptr %arrayidx.i.i1106.i, align 4
  br label %cp_ctx.exit1108.i

cp_ctx.exit1108.i:                                ; preds = %do.end10.i.i1107.i, %cp_ctx.exit1088.i.cp_ctx.exit1108.i_crit_edge
  %2972 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2972)
  %2973 = load ptr, ptr %ctx, align 4
  %chipset.i.i552 = getelementptr inbounds %struct.nvkm_device, ptr %2973, i32 0, i32 16
  %2974 = ptrtoint ptr %chipset.i.i552 to i32
  call void @__asan_load4_noabort(i32 %2974)
  %2975 = load i32, ptr %chipset.i.i552, align 4
  %switch.tableidx = add i32 %2975, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx)
  %2976 = icmp ult i32 %switch.tableidx, 12
  br i1 %2976, label %switch.lookup, label %cp_ctx.exit1108.i.nv40_gr_vs_count.exit.i_crit_edge

cp_ctx.exit1108.i.nv40_gr_vs_count.exit.i_crit_edge: ; preds = %cp_ctx.exit1108.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_vs_count.exit.i

switch.lookup:                                    ; preds = %cp_ctx.exit1108.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [12 x i32], ptr @switch.table.nv40_grctx_generate, i32 0, i32 %switch.tableidx
  %2977 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2977)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %nv40_gr_vs_count.exit.i

nv40_gr_vs_count.exit.i:                          ; preds = %switch.lookup, %cp_ctx.exit1108.i.nv40_gr_vs_count.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 1, %cp_ctx.exit1108.i.nv40_gr_vs_count.exit.i_crit_edge ]
  %2978 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %2978)
  store i32 3336, ptr %ctxprog_reg.i.i, align 4
  %2979 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %2979)
  %2980 = load i32, ptr %ctxvals_pos.i813, align 4
  %2981 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %2981)
  store i32 %2980, ptr %ctxvals_base.i829, align 4
  %add.i1112.i = add i32 %2980, %retval.0.i.i
  store i32 %add.i1112.i, ptr %ctxvals_pos.i813, align 4
  %shl.i1113.i = shl nuw nsw i32 %retval.0.i.i, 14
  %or4.i1115.i = or i32 %shl.i1113.i, 1051912
  %2982 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %2982)
  %2983 = load ptr, ptr %ucode.i.i, align 4
  %2984 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2984)
  %2985 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2985)
  %cmp.not.i.i1118.i = icmp eq i32 %2985, 0
  br i1 %cmp.not.i.i1118.i, label %do.body.i.i1123.i, label %nv40_gr_vs_count.exit.i.for.cond72.i.preheader_crit_edge

nv40_gr_vs_count.exit.i.for.cond72.i.preheader_crit_edge: ; preds = %nv40_gr_vs_count.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond72.i.preheader

do.body.i.i1123.i:                                ; preds = %nv40_gr_vs_count.exit.i
  %ctxprog_len.i.i1120.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %2986 = ptrtoint ptr %ctxprog_len.i.i1120.i to i32
  call void @__asan_load4_noabort(i32 %2986)
  %2987 = load i32, ptr %ctxprog_len.i.i1120.i, align 4
  %ctxprog_max.i.i1121.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %2988 = ptrtoint ptr %ctxprog_max.i.i1121.i to i32
  call void @__asan_load4_noabort(i32 %2988)
  %2989 = load i32, ptr %ctxprog_max.i.i1121.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2987, i32 %2989)
  %cmp1.i.i1122.i = icmp eq i32 %2987, %2989
  br i1 %cmp1.i.i1122.i, label %do.body4.i.i1124.i, label %do.end10.i.i1127.i, !prof !9

do.body4.i.i1124.i:                               ; preds = %do.body.i.i1123.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1127.i:                               ; preds = %do.body.i.i1123.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1125.i = add i32 %2987, 1
  %2990 = ptrtoint ptr %ctxprog_len.i.i1120.i to i32
  call void @__asan_store4_noabort(i32 %2990)
  store i32 %inc.i.i1125.i, ptr %ctxprog_len.i.i1120.i, align 4
  %arrayidx.i.i1126.i = getelementptr i32, ptr %2983, i32 %2987
  %2991 = ptrtoint ptr %arrayidx.i.i1126.i to i32
  call void @__asan_store4_noabort(i32 %2991)
  store i32 %or4.i1115.i, ptr %arrayidx.i.i1126.i, align 4
  br label %for.cond72.i.preheader

for.cond72.i.preheader:                           ; preds = %do.end10.i.i1127.i, %nv40_gr_vs_count.exit.i.for.cond72.i.preheader_crit_edge
  br label %for.cond72.i

for.cond72.i:                                     ; preds = %gr_def.exit1148.i, %for.cond72.i.preheader
  %i.1.i = phi i32 [ %inc80.i, %gr_def.exit1148.i ], [ 0, %for.cond72.i.preheader ]
  %2992 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2992)
  %2993 = load ptr, ptr %ctx, align 4
  %chipset.i1129.i = getelementptr inbounds %struct.nvkm_device, ptr %2993, i32 0, i32 16
  %2994 = ptrtoint ptr %chipset.i1129.i to i32
  call void @__asan_load4_noabort(i32 %2994)
  %2995 = load i32, ptr %chipset.i1129.i, align 4
  %switch.tableidx1114 = add i32 %2995, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx1114)
  %2996 = icmp ult i32 %switch.tableidx1114, 12
  br i1 %2996, label %switch.lookup1113, label %for.cond72.i.nv40_gr_vs_count.exit1135.i_crit_edge

for.cond72.i.nv40_gr_vs_count.exit1135.i_crit_edge: ; preds = %for.cond72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_vs_count.exit1135.i

switch.lookup1113:                                ; preds = %for.cond72.i
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep1115 = getelementptr inbounds [12 x i32], ptr @switch.table.nv40_grctx_generate.1, i32 0, i32 %switch.tableidx1114
  %2997 = ptrtoint ptr %switch.gep1115 to i32
  call void @__asan_load4_noabort(i32 %2997)
  %switch.load1116 = load i32, ptr %switch.gep1115, align 4
  br label %nv40_gr_vs_count.exit1135.i

nv40_gr_vs_count.exit1135.i:                      ; preds = %switch.lookup1113, %for.cond72.i.nv40_gr_vs_count.exit1135.i_crit_edge
  %retval.0.i1134.i = phi i32 [ %switch.load1116, %switch.lookup1113 ], [ 1, %for.cond72.i.nv40_gr_vs_count.exit1135.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1.i, i32 %retval.0.i1134.i)
  %cmp75.i = icmp ult i32 %i.1.i, %retval.0.i1134.i
  br i1 %cmp75.i, label %for.body76.i, label %for.end81.i

for.body76.i:                                     ; preds = %nv40_gr_vs_count.exit1135.i
  %2998 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %2998)
  %2999 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2999)
  %cmp.not.i1137.i = icmp eq i32 %2999, 1
  br i1 %cmp.not.i1137.i, label %if.end.i1147.i, label %for.body76.i.gr_def.exit1148.i_crit_edge

for.body76.i.gr_def.exit1148.i_crit_edge:         ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1148.i

if.end.i1147.i:                                   ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #7
  %3000 = add nuw nsw i32 %i.1.i, 3336
  %3001 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3001)
  %3002 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1141.i = sub i32 %3000, %3002
  %3003 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %3003)
  %3004 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1143.i = add i32 %sub1.i1141.i, %3004
  %3005 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3005)
  %3006 = load ptr, ptr %data.i573.i, align 4
  %3007 = ptrtoint ptr %3006 to i32
  call void @__asan_load4_noabort(i32 %3007)
  %3008 = load ptr, ptr %3006, align 8
  %wr32.i1145.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3008, i32 0, i32 3
  %3009 = ptrtoint ptr %wr32.i1145.i to i32
  call void @__asan_load4_noabort(i32 %3009)
  %3010 = load ptr, ptr %wr32.i1145.i, align 4
  %mul.i1146.i = shl i32 %add.i1143.i, 2
  tail call void %3010(ptr noundef %3006, i32 noundef %mul.i1146.i, i32 noundef 21845) #5
  br label %gr_def.exit1148.i

gr_def.exit1148.i:                                ; preds = %if.end.i1147.i, %for.body76.i.gr_def.exit1148.i_crit_edge
  %inc80.i = add nuw nsw i32 %i.1.i, 1
  br label %for.cond72.i

for.end81.i:                                      ; preds = %nv40_gr_vs_count.exit1135.i
  %3011 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %3011)
  %3012 = load i32, ptr %chipset.i501, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %3012)
  %cmp83.not.i = icmp eq i32 %3012, 64
  br i1 %cmp83.not.i, label %for.end81.i.if.end85.i_crit_edge, label %if.then84.i

for.end81.i.if.end85.i_crit_edge:                 ; preds = %for.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

if.then84.i:                                      ; preds = %for.end81.i
  %3013 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3013)
  store i32 3456, ptr %ctxprog_reg.i.i, align 4
  %3014 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3014)
  %3015 = load i32, ptr %ctxvals_pos.i813, align 4
  %3016 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3016)
  store i32 %3015, ptr %ctxvals_base.i829, align 4
  %add.i1152.i = add i32 %3015, 1
  store i32 %add.i1152.i, ptr %ctxvals_pos.i813, align 4
  %3017 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3017)
  %3018 = load ptr, ptr %ucode.i.i, align 4
  %3019 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3019)
  %3020 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3020)
  %cmp.not.i.i1158.i = icmp eq i32 %3020, 0
  br i1 %cmp.not.i.i1158.i, label %do.body.i.i1163.i, label %if.then84.i.cp_ctx.exit1168.i_crit_edge

if.then84.i.cp_ctx.exit1168.i_crit_edge:          ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1168.i

do.body.i.i1163.i:                                ; preds = %if.then84.i
  %ctxprog_len.i.i1160.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3021 = ptrtoint ptr %ctxprog_len.i.i1160.i to i32
  call void @__asan_load4_noabort(i32 %3021)
  %3022 = load i32, ptr %ctxprog_len.i.i1160.i, align 4
  %ctxprog_max.i.i1161.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3023 = ptrtoint ptr %ctxprog_max.i.i1161.i to i32
  call void @__asan_load4_noabort(i32 %3023)
  %3024 = load i32, ptr %ctxprog_max.i.i1161.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3022, i32 %3024)
  %cmp1.i.i1162.i = icmp eq i32 %3022, %3024
  br i1 %cmp1.i.i1162.i, label %do.body4.i.i1164.i, label %do.end10.i.i1167.i, !prof !9

do.body4.i.i1164.i:                               ; preds = %do.body.i.i1163.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1167.i:                               ; preds = %do.body.i.i1163.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1165.i = add i32 %3022, 1
  %3025 = ptrtoint ptr %ctxprog_len.i.i1160.i to i32
  call void @__asan_store4_noabort(i32 %3025)
  store i32 %inc.i.i1165.i, ptr %ctxprog_len.i.i1160.i, align 4
  %arrayidx.i.i1166.i = getelementptr i32, ptr %3018, i32 %3022
  %3026 = ptrtoint ptr %arrayidx.i.i1166.i to i32
  call void @__asan_store4_noabort(i32 %3026)
  store i32 1068416, ptr %arrayidx.i.i1166.i, align 4
  %3027 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3027)
  %.pr1357.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1168.i

cp_ctx.exit1168.i:                                ; preds = %do.end10.i.i1167.i, %if.then84.i.cp_ctx.exit1168.i_crit_edge
  %3028 = phi i32 [ %3020, %if.then84.i.cp_ctx.exit1168.i_crit_edge ], [ %.pr1357.i, %do.end10.i.i1167.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3028)
  %cmp.not.i1170.i = icmp eq i32 %3028, 1
  br i1 %cmp.not.i1170.i, label %if.end.i1178.i, label %cp_ctx.exit1168.i.if.end85.i_crit_edge

cp_ctx.exit1168.i.if.end85.i_crit_edge:           ; preds = %cp_ctx.exit1168.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85.i

if.end.i1178.i:                                   ; preds = %cp_ctx.exit1168.i
  call void @__sanitizer_cov_trace_pc() #7
  %3029 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3029)
  %3030 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1172.i = sub i32 3456, %3030
  %3031 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %3031)
  %3032 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1174.i = add i32 %sub1.i1172.i, %3032
  %3033 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3033)
  %3034 = load ptr, ptr %data.i573.i, align 4
  %3035 = ptrtoint ptr %3034 to i32
  call void @__asan_load4_noabort(i32 %3035)
  %3036 = load ptr, ptr %3034, align 8
  %wr32.i1176.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3036, i32 0, i32 3
  %3037 = ptrtoint ptr %wr32.i1176.i to i32
  call void @__asan_load4_noabort(i32 %3037)
  %3038 = load ptr, ptr %wr32.i1176.i, align 4
  %mul.i1177.i = shl i32 %add.i1174.i, 2
  tail call void %3038(ptr noundef %3034, i32 noundef %mul.i1177.i, i32 noundef 1) #5
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end.i1178.i, %cp_ctx.exit1168.i.if.end85.i_crit_edge, %for.end81.i.if.end85.i_crit_edge
  %3039 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3039)
  store i32 3584, ptr %ctxprog_reg.i.i, align 4
  %3040 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3040)
  %3041 = load i32, ptr %ctxvals_pos.i813, align 4
  %3042 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3042)
  store i32 %3041, ptr %ctxvals_base.i829, align 4
  %add.i1183.i = add i32 %3041, 1
  store i32 %add.i1183.i, ptr %ctxvals_pos.i813, align 4
  %3043 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3043)
  %3044 = load ptr, ptr %ucode.i.i, align 4
  %3045 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3045)
  %3046 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3046)
  %cmp.not.i.i1189.i = icmp eq i32 %3046, 0
  br i1 %cmp.not.i.i1189.i, label %do.body.i.i1194.i, label %if.end85.i.cp_ctx.exit1199.i_crit_edge

if.end85.i.cp_ctx.exit1199.i_crit_edge:           ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1199.i

do.body.i.i1194.i:                                ; preds = %if.end85.i
  %ctxprog_len.i.i1191.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3047 = ptrtoint ptr %ctxprog_len.i.i1191.i to i32
  call void @__asan_load4_noabort(i32 %3047)
  %3048 = load i32, ptr %ctxprog_len.i.i1191.i, align 4
  %ctxprog_max.i.i1192.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3049 = ptrtoint ptr %ctxprog_max.i.i1192.i to i32
  call void @__asan_load4_noabort(i32 %3049)
  %3050 = load i32, ptr %ctxprog_max.i.i1192.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3048, i32 %3050)
  %cmp1.i.i1193.i = icmp eq i32 %3048, %3050
  br i1 %cmp1.i.i1193.i, label %do.body4.i.i1195.i, label %do.end10.i.i1198.i, !prof !9

do.body4.i.i1195.i:                               ; preds = %do.body.i.i1194.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1198.i:                               ; preds = %do.body.i.i1194.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1196.i = add i32 %3048, 1
  %3051 = ptrtoint ptr %ctxprog_len.i.i1191.i to i32
  call void @__asan_store4_noabort(i32 %3051)
  store i32 %inc.i.i1196.i, ptr %ctxprog_len.i.i1191.i, align 4
  %arrayidx.i.i1197.i = getelementptr i32, ptr %3044, i32 %3048
  %3052 = ptrtoint ptr %arrayidx.i.i1197.i to i32
  call void @__asan_store4_noabort(i32 %3052)
  store i32 1068544, ptr %arrayidx.i.i1197.i, align 4
  %3053 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3053)
  %.pr1358.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1199.i

cp_ctx.exit1199.i:                                ; preds = %do.end10.i.i1198.i, %if.end85.i.cp_ctx.exit1199.i_crit_edge
  %3054 = phi i32 [ %3046, %if.end85.i.cp_ctx.exit1199.i_crit_edge ], [ %.pr1358.i, %do.end10.i.i1198.i ]
  %3055 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3055)
  store i32 3846, ptr %ctxprog_reg.i.i, align 4
  %3056 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3056)
  %3057 = load i32, ptr %ctxvals_pos.i813, align 4
  %3058 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3058)
  store i32 %3057, ptr %ctxvals_base.i829, align 4
  %add.i1203.i = add i32 %3057, 1
  store i32 %add.i1203.i, ptr %ctxvals_pos.i813, align 4
  %3059 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3059)
  %3060 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3054)
  %cmp.not.i.i1209.i = icmp eq i32 %3054, 0
  br i1 %cmp.not.i.i1209.i, label %do.body.i.i1214.i, label %cp_ctx.exit1199.i.cp_ctx.exit1219.i_crit_edge

cp_ctx.exit1199.i.cp_ctx.exit1219.i_crit_edge:    ; preds = %cp_ctx.exit1199.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1219.i

do.body.i.i1214.i:                                ; preds = %cp_ctx.exit1199.i
  %ctxprog_len.i.i1211.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3061 = ptrtoint ptr %ctxprog_len.i.i1211.i to i32
  call void @__asan_load4_noabort(i32 %3061)
  %3062 = load i32, ptr %ctxprog_len.i.i1211.i, align 4
  %ctxprog_max.i.i1212.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3063 = ptrtoint ptr %ctxprog_max.i.i1212.i to i32
  call void @__asan_load4_noabort(i32 %3063)
  %3064 = load i32, ptr %ctxprog_max.i.i1212.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3062, i32 %3064)
  %cmp1.i.i1213.i = icmp eq i32 %3062, %3064
  br i1 %cmp1.i.i1213.i, label %do.body4.i.i1215.i, label %do.end10.i.i1218.i, !prof !9

do.body4.i.i1215.i:                               ; preds = %do.body.i.i1214.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1218.i:                               ; preds = %do.body.i.i1214.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1216.i = add i32 %3062, 1
  %3065 = ptrtoint ptr %ctxprog_len.i.i1211.i to i32
  call void @__asan_store4_noabort(i32 %3065)
  store i32 %inc.i.i1216.i, ptr %ctxprog_len.i.i1211.i, align 4
  %arrayidx.i.i1217.i = getelementptr i32, ptr %3060, i32 %3062
  %3066 = ptrtoint ptr %arrayidx.i.i1217.i to i32
  call void @__asan_store4_noabort(i32 %3066)
  store i32 1068806, ptr %arrayidx.i.i1217.i, align 4
  br label %cp_ctx.exit1219.i

cp_ctx.exit1219.i:                                ; preds = %do.end10.i.i1218.i, %cp_ctx.exit1199.i.cp_ctx.exit1219.i_crit_edge
  %3067 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3067)
  %3068 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3068)
  %cmp.not.i1221.i = icmp eq i32 %3068, 1
  br i1 %cmp.not.i1221.i, label %if.end.i1229.i, label %cp_ctx.exit1219.i.gr_def.exit1230.i_crit_edge

cp_ctx.exit1219.i.gr_def.exit1230.i_crit_edge:    ; preds = %cp_ctx.exit1219.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1230.i

if.end.i1229.i:                                   ; preds = %cp_ctx.exit1219.i
  call void @__sanitizer_cov_trace_pc() #7
  %3069 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3069)
  %3070 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1223.i = sub i32 3846, %3070
  %3071 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %3071)
  %3072 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1225.i = add i32 %sub1.i1223.i, %3072
  %3073 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3073)
  %3074 = load ptr, ptr %data.i573.i, align 4
  %3075 = ptrtoint ptr %3074 to i32
  call void @__asan_load4_noabort(i32 %3075)
  %3076 = load ptr, ptr %3074, align 8
  %wr32.i1227.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3076, i32 0, i32 3
  %3077 = ptrtoint ptr %wr32.i1227.i to i32
  call void @__asan_load4_noabort(i32 %3077)
  %3078 = load ptr, ptr %wr32.i1227.i, align 4
  %mul.i1228.i = shl i32 %add.i1225.i, 2
  tail call void %3078(ptr noundef %3074, i32 noundef %mul.i1228.i, i32 noundef 1) #5
  br label %gr_def.exit1230.i

gr_def.exit1230.i:                                ; preds = %if.end.i1229.i, %cp_ctx.exit1219.i.gr_def.exit1230.i_crit_edge
  %3079 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %3079)
  %3080 = load i32, ptr %chipset.i501, align 4
  %3081 = zext i32 %3080 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3081, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3080, label %gr_def.exit1230.i.sw.epilog88.i_crit_edge [
    i32 70, label %gr_def.exit1230.i.sw.bb87.i_crit_edge
    i32 71, label %gr_def.exit1230.i.sw.bb87.i_crit_edge1145
    i32 73, label %gr_def.exit1230.i.sw.bb87.i_crit_edge1146
    i32 75, label %gr_def.exit1230.i.sw.bb87.i_crit_edge1147
  ]

gr_def.exit1230.i.sw.bb87.i_crit_edge1147:        ; preds = %gr_def.exit1230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb87.i

gr_def.exit1230.i.sw.bb87.i_crit_edge1146:        ; preds = %gr_def.exit1230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb87.i

gr_def.exit1230.i.sw.bb87.i_crit_edge1145:        ; preds = %gr_def.exit1230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb87.i

gr_def.exit1230.i.sw.bb87.i_crit_edge:            ; preds = %gr_def.exit1230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb87.i

gr_def.exit1230.i.sw.epilog88.i_crit_edge:        ; preds = %gr_def.exit1230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog88.i

sw.bb87.i:                                        ; preds = %gr_def.exit1230.i.sw.bb87.i_crit_edge, %gr_def.exit1230.i.sw.bb87.i_crit_edge1145, %gr_def.exit1230.i.sw.bb87.i_crit_edge1146, %gr_def.exit1230.i.sw.bb87.i_crit_edge1147
  %3082 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3082)
  store i32 5126, ptr %ctxprog_reg.i.i, align 4
  %3083 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3083)
  %3084 = load i32, ptr %ctxvals_pos.i813, align 4
  %3085 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3085)
  store i32 %3084, ptr %ctxvals_base.i829, align 4
  %add.i1234.i = add i32 %3084, 1
  store i32 %add.i1234.i, ptr %ctxvals_pos.i813, align 4
  %3086 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3086)
  %3087 = load ptr, ptr %ucode.i.i, align 4
  %3088 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3088)
  %3089 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3089)
  %cmp.not.i.i1240.i = icmp eq i32 %3089, 0
  br i1 %cmp.not.i.i1240.i, label %do.body.i.i1245.i, label %sw.bb87.i.cp_ctx.exit1250.i_crit_edge

sw.bb87.i.cp_ctx.exit1250.i_crit_edge:            ; preds = %sw.bb87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1250.i

do.body.i.i1245.i:                                ; preds = %sw.bb87.i
  %ctxprog_len.i.i1242.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3090 = ptrtoint ptr %ctxprog_len.i.i1242.i to i32
  call void @__asan_load4_noabort(i32 %3090)
  %3091 = load i32, ptr %ctxprog_len.i.i1242.i, align 4
  %ctxprog_max.i.i1243.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3092 = ptrtoint ptr %ctxprog_max.i.i1243.i to i32
  call void @__asan_load4_noabort(i32 %3092)
  %3093 = load i32, ptr %ctxprog_max.i.i1243.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3091, i32 %3093)
  %cmp1.i.i1244.i = icmp eq i32 %3091, %3093
  br i1 %cmp1.i.i1244.i, label %do.body4.i.i1246.i, label %do.end10.i.i1249.i, !prof !9

do.body4.i.i1246.i:                               ; preds = %do.body.i.i1245.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1249.i:                               ; preds = %do.body.i.i1245.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1247.i = add i32 %3091, 1
  %3094 = ptrtoint ptr %ctxprog_len.i.i1242.i to i32
  call void @__asan_store4_noabort(i32 %3094)
  store i32 %inc.i.i1247.i, ptr %ctxprog_len.i.i1242.i, align 4
  %arrayidx.i.i1248.i = getelementptr i32, ptr %3087, i32 %3091
  %3095 = ptrtoint ptr %arrayidx.i.i1248.i to i32
  call void @__asan_store4_noabort(i32 %3095)
  store i32 1070086, ptr %arrayidx.i.i1248.i, align 4
  %3096 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3096)
  %.pr1359.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1250.i

cp_ctx.exit1250.i:                                ; preds = %do.end10.i.i1249.i, %sw.bb87.i.cp_ctx.exit1250.i_crit_edge
  %3097 = phi i32 [ %3089, %sw.bb87.i.cp_ctx.exit1250.i_crit_edge ], [ %.pr1359.i, %do.end10.i.i1249.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3097)
  %cmp.not.i1252.i = icmp eq i32 %3097, 1
  br i1 %cmp.not.i1252.i, label %if.end.i1260.i, label %cp_ctx.exit1250.i.gr_def.exit1261.i_crit_edge

cp_ctx.exit1250.i.gr_def.exit1261.i_crit_edge:    ; preds = %cp_ctx.exit1250.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gr_def.exit1261.i

if.end.i1260.i:                                   ; preds = %cp_ctx.exit1250.i
  call void @__sanitizer_cov_trace_pc() #7
  %3098 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3098)
  %3099 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1254.i = sub i32 5126, %3099
  %3100 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %3100)
  %3101 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1256.i = add i32 %sub1.i1254.i, %3101
  %3102 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3102)
  %3103 = load ptr, ptr %data.i573.i, align 4
  %3104 = ptrtoint ptr %3103 to i32
  call void @__asan_load4_noabort(i32 %3104)
  %3105 = load ptr, ptr %3103, align 8
  %wr32.i1258.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3105, i32 0, i32 3
  %3106 = ptrtoint ptr %wr32.i1258.i to i32
  call void @__asan_load4_noabort(i32 %3106)
  %3107 = load ptr, ptr %wr32.i1258.i, align 4
  %mul.i1259.i = shl i32 %add.i1256.i, 2
  tail call void %3107(ptr noundef %3103, i32 noundef %mul.i1259.i, i32 noundef 148897793) #5
  br label %gr_def.exit1261.i

gr_def.exit1261.i:                                ; preds = %if.end.i1260.i, %cp_ctx.exit1250.i.gr_def.exit1261.i_crit_edge
  %3108 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3108)
  store i32 5897, ptr %ctxprog_reg.i.i, align 4
  %3109 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3109)
  %3110 = load i32, ptr %ctxvals_pos.i813, align 4
  %3111 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3111)
  store i32 %3110, ptr %ctxvals_base.i829, align 4
  %add.i1265.i = add i32 %3110, 1
  store i32 %add.i1265.i, ptr %ctxvals_pos.i813, align 4
  %3112 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3112)
  %3113 = load ptr, ptr %ucode.i.i, align 4
  %3114 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3114)
  %3115 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3115)
  %cmp.not.i.i1271.i = icmp eq i32 %3115, 0
  br i1 %cmp.not.i.i1271.i, label %do.body.i.i1276.i, label %gr_def.exit1261.i.cp_ctx.exit1281.i_crit_edge

gr_def.exit1261.i.cp_ctx.exit1281.i_crit_edge:    ; preds = %gr_def.exit1261.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_ctx.exit1281.i

do.body.i.i1276.i:                                ; preds = %gr_def.exit1261.i
  %ctxprog_len.i.i1273.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3116 = ptrtoint ptr %ctxprog_len.i.i1273.i to i32
  call void @__asan_load4_noabort(i32 %3116)
  %3117 = load i32, ptr %ctxprog_len.i.i1273.i, align 4
  %ctxprog_max.i.i1274.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3118 = ptrtoint ptr %ctxprog_max.i.i1274.i to i32
  call void @__asan_load4_noabort(i32 %3118)
  %3119 = load i32, ptr %ctxprog_max.i.i1274.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3117, i32 %3119)
  %cmp1.i.i1275.i = icmp eq i32 %3117, %3119
  br i1 %cmp1.i.i1275.i, label %do.body4.i.i1277.i, label %do.end10.i.i1280.i, !prof !9

do.body4.i.i1277.i:                               ; preds = %do.body.i.i1276.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1280.i:                               ; preds = %do.body.i.i1276.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1278.i = add i32 %3117, 1
  %3120 = ptrtoint ptr %ctxprog_len.i.i1273.i to i32
  call void @__asan_store4_noabort(i32 %3120)
  store i32 %inc.i.i1278.i, ptr %ctxprog_len.i.i1273.i, align 4
  %arrayidx.i.i1279.i = getelementptr i32, ptr %3113, i32 %3117
  %3121 = ptrtoint ptr %arrayidx.i.i1279.i to i32
  call void @__asan_store4_noabort(i32 %3121)
  store i32 1070857, ptr %arrayidx.i.i1279.i, align 4
  %3122 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3122)
  %.pr1360.i = load i32, ptr %mode.i.i, align 4
  br label %cp_ctx.exit1281.i

cp_ctx.exit1281.i:                                ; preds = %do.end10.i.i1280.i, %gr_def.exit1261.i.cp_ctx.exit1281.i_crit_edge
  %3123 = phi i32 [ %3115, %gr_def.exit1261.i.cp_ctx.exit1281.i_crit_edge ], [ %.pr1360.i, %do.end10.i.i1280.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3123)
  %cmp.not.i1283.i = icmp eq i32 %3123, 1
  br i1 %cmp.not.i1283.i, label %if.end.i1291.i, label %cp_ctx.exit1281.i.sw.epilog88thread-pre-split.i_crit_edge

cp_ctx.exit1281.i.sw.epilog88thread-pre-split.i_crit_edge: ; preds = %cp_ctx.exit1281.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog88thread-pre-split.i

if.end.i1291.i:                                   ; preds = %cp_ctx.exit1281.i
  call void @__sanitizer_cov_trace_pc() #7
  %3124 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3124)
  %3125 = load i32, ptr %ctxprog_reg.i.i, align 4
  %sub1.i1285.i = sub i32 5897, %3125
  %3126 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_load4_noabort(i32 %3126)
  %3127 = load i32, ptr %ctxvals_base.i829, align 4
  %add.i1287.i = add i32 %sub1.i1285.i, %3127
  %3128 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3128)
  %3129 = load ptr, ptr %data.i573.i, align 4
  %3130 = ptrtoint ptr %3129 to i32
  call void @__asan_load4_noabort(i32 %3130)
  %3131 = load ptr, ptr %3129, align 8
  %wr32.i1289.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3131, i32 0, i32 3
  %3132 = ptrtoint ptr %wr32.i1289.i to i32
  call void @__asan_load4_noabort(i32 %3132)
  %3133 = load ptr, ptr %wr32.i1289.i, align 4
  %mul.i1290.i = shl i32 %add.i1287.i, 2
  tail call void %3133(ptr noundef %3129, i32 noundef %mul.i1290.i, i32 noundef 929792) #5
  br label %sw.epilog88thread-pre-split.i

sw.epilog88thread-pre-split.i:                    ; preds = %if.end.i1291.i, %cp_ctx.exit1281.i.sw.epilog88thread-pre-split.i_crit_edge
  %3134 = ptrtoint ptr %chipset.i501 to i32
  call void @__asan_load4_noabort(i32 %3134)
  %.pr1361.i = load i32, ptr %chipset.i501, align 4
  br label %sw.epilog88.i

sw.epilog88.i:                                    ; preds = %sw.epilog88thread-pre-split.i, %gr_def.exit1230.i.sw.epilog88.i_crit_edge
  %3135 = phi i32 [ %.pr1361.i, %sw.epilog88thread-pre-split.i ], [ %3080, %gr_def.exit1230.i.sw.epilog88.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 78, i32 %3135)
  %cmp90.not.i = icmp eq i32 %3135, 78
  br i1 %cmp90.not.i, label %sw.epilog88.i.if.end92thread-pre-split.i_crit_edge, label %if.then91.i

sw.epilog88.i.if.end92thread-pre-split.i_crit_edge: ; preds = %sw.epilog88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92thread-pre-split.i

if.then91.i:                                      ; preds = %sw.epilog88.i
  %3136 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3136)
  store i32 5632, ptr %ctxprog_reg.i.i, align 4
  %3137 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3137)
  %3138 = load i32, ptr %ctxvals_pos.i813, align 4
  %3139 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3139)
  store i32 %3138, ptr %ctxvals_base.i829, align 4
  %add.i1296.i = add i32 %3138, 11
  store i32 %add.i1296.i, ptr %ctxvals_pos.i813, align 4
  %3140 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3140)
  %3141 = load ptr, ptr %ucode.i.i, align 4
  %3142 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3142)
  %3143 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3143)
  %cmp.not.i.i1302.i = icmp eq i32 %3143, 0
  br i1 %cmp.not.i.i1302.i, label %do.body.i.i1307.i, label %if.then91.i.if.end92.i_crit_edge

if.then91.i.if.end92.i_crit_edge:                 ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92.i

do.body.i.i1307.i:                                ; preds = %if.then91.i
  %ctxprog_len.i.i1304.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3144 = ptrtoint ptr %ctxprog_len.i.i1304.i to i32
  call void @__asan_load4_noabort(i32 %3144)
  %3145 = load i32, ptr %ctxprog_len.i.i1304.i, align 4
  %ctxprog_max.i.i1305.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3146 = ptrtoint ptr %ctxprog_max.i.i1305.i to i32
  call void @__asan_load4_noabort(i32 %3146)
  %3147 = load i32, ptr %ctxprog_max.i.i1305.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3145, i32 %3147)
  %cmp1.i.i1306.i = icmp eq i32 %3145, %3147
  br i1 %cmp1.i.i1306.i, label %do.body4.i.i1308.i, label %do.end10.i.i1311.i, !prof !9

do.body4.i.i1308.i:                               ; preds = %do.body.i.i1307.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1311.i:                               ; preds = %do.body.i.i1307.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1309.i = add i32 %3145, 1
  %3148 = ptrtoint ptr %ctxprog_len.i.i1304.i to i32
  call void @__asan_store4_noabort(i32 %3148)
  store i32 %inc.i.i1309.i, ptr %ctxprog_len.i.i1304.i, align 4
  %arrayidx.i.i1310.i = getelementptr i32, ptr %3141, i32 %3145
  %3149 = ptrtoint ptr %arrayidx.i.i1310.i to i32
  call void @__asan_store4_noabort(i32 %3149)
  store i32 1234432, ptr %arrayidx.i.i1310.i, align 4
  br label %if.end92thread-pre-split.i

if.end92thread-pre-split.i:                       ; preds = %do.end10.i.i1311.i, %sw.epilog88.i.if.end92thread-pre-split.i_crit_edge
  %3150 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3150)
  %.pr1362.i = load i32, ptr %mode.i.i, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end92thread-pre-split.i, %if.then91.i.if.end92.i_crit_edge
  %3151 = phi i32 [ %.pr1362.i, %if.end92thread-pre-split.i ], [ %3143, %if.then91.i.if.end92.i_crit_edge ]
  %3152 = ptrtoint ptr %ctxprog_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %3152)
  store i32 7168, ptr %ctxprog_reg.i.i, align 4
  %3153 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3153)
  %3154 = load i32, ptr %ctxvals_pos.i813, align 4
  %3155 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3155)
  store i32 %3154, ptr %ctxvals_base.i829, align 4
  %add.i1316.i = add i32 %3154, 1
  store i32 %add.i1316.i, ptr %ctxvals_pos.i813, align 4
  %3156 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3156)
  %3157 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3151)
  %cmp.not.i.i1322.i = icmp eq i32 %3151, 0
  br i1 %cmp.not.i.i1322.i, label %do.body.i.i1327.i, label %if.end92.i.nv40_gr_construct_state3d_2.exit_crit_edge

if.end92.i.nv40_gr_construct_state3d_2.exit_crit_edge: ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_state3d_2.exit

do.body.i.i1327.i:                                ; preds = %if.end92.i
  %ctxprog_len.i.i1324.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3158 = ptrtoint ptr %ctxprog_len.i.i1324.i to i32
  call void @__asan_load4_noabort(i32 %3158)
  %3159 = load i32, ptr %ctxprog_len.i.i1324.i, align 4
  %ctxprog_max.i.i1325.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3160 = ptrtoint ptr %ctxprog_max.i.i1325.i to i32
  call void @__asan_load4_noabort(i32 %3160)
  %3161 = load i32, ptr %ctxprog_max.i.i1325.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3159, i32 %3161)
  %cmp1.i.i1326.i = icmp eq i32 %3159, %3161
  br i1 %cmp1.i.i1326.i, label %do.body4.i.i1328.i, label %do.end10.i.i1331.i, !prof !9

do.body4.i.i1328.i:                               ; preds = %do.body.i.i1327.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i1331.i:                               ; preds = %do.body.i.i1327.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i1329.i = add i32 %3159, 1
  %3162 = ptrtoint ptr %ctxprog_len.i.i1324.i to i32
  call void @__asan_store4_noabort(i32 %3162)
  store i32 %inc.i.i1329.i, ptr %ctxprog_len.i.i1324.i, align 4
  %arrayidx.i.i1330.i = getelementptr i32, ptr %3157, i32 %3159
  %3163 = ptrtoint ptr %arrayidx.i.i1330.i to i32
  call void @__asan_store4_noabort(i32 %3163)
  store i32 1072128, ptr %arrayidx.i.i1330.i, align 4
  br label %nv40_gr_construct_state3d_2.exit

nv40_gr_construct_state3d_2.exit:                 ; preds = %do.end10.i.i1331.i, %if.end92.i.nv40_gr_construct_state3d_2.exit_crit_edge
  %3164 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3164)
  %3165 = load ptr, ptr %ctx, align 4
  %chipset.i.i553 = getelementptr inbounds %struct.nvkm_device, ptr %3165, i32 0, i32 16
  %3166 = ptrtoint ptr %chipset.i.i553 to i32
  call void @__asan_load4_noabort(i32 %3166)
  %3167 = load i32, ptr %chipset.i.i553, align 4
  %and.i.i554 = and i32 %3167, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i.i554)
  %cmp.i.i555 = icmp ne i32 %and.i.i554, 96
  %and2.i.i556 = and i32 %3167, 15
  %3168 = lshr i32 -2736, %and2.i.i556
  %3169 = and i32 %3168, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3169)
  %tobool.not70.i = icmp eq i32 %3169, 0
  %tobool.not.i557 = select i1 %cmp.i.i555, i1 %tobool.not70.i, i1 false
  %cond.i558 = select i1 %tobool.not.i557, i32 1668, i32 132
  %3170 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3170)
  %3171 = load ptr, ptr %ucode.i.i, align 4
  %3172 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3172)
  %3173 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3173)
  %cmp.not.i.i561 = icmp eq i32 %3173, 0
  br i1 %cmp.not.i.i561, label %do.body.i.i565, label %nv40_gr_construct_state3d_2.exit.cp_lsr.exit.i578_crit_edge

nv40_gr_construct_state3d_2.exit.cp_lsr.exit.i578_crit_edge: ; preds = %nv40_gr_construct_state3d_2.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_lsr.exit.i578

do.body.i.i565:                                   ; preds = %nv40_gr_construct_state3d_2.exit
  %ctxprog_len.i.i562 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3174 = ptrtoint ptr %ctxprog_len.i.i562 to i32
  call void @__asan_load4_noabort(i32 %3174)
  %3175 = load i32, ptr %ctxprog_len.i.i562, align 4
  %ctxprog_max.i.i563 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3176 = ptrtoint ptr %ctxprog_max.i.i563 to i32
  call void @__asan_load4_noabort(i32 %3176)
  %3177 = load i32, ptr %ctxprog_max.i.i563, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3175, i32 %3177)
  %cmp1.i.i564 = icmp eq i32 %3175, %3177
  br i1 %cmp1.i.i564, label %do.body4.i.i566, label %cp_out.exit.i, !prof !9

do.body4.i.i566:                                  ; preds = %do.body.i.i565
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit.i:                                    ; preds = %do.body.i.i565
  %inc.i.i567 = add i32 %3175, 1
  %3178 = ptrtoint ptr %ctxprog_len.i.i562 to i32
  call void @__asan_store4_noabort(i32 %3178)
  store i32 %inc.i.i567, ptr %ctxprog_len.i.i562, align 4
  %arrayidx.i.i568 = getelementptr i32, ptr %3171, i32 %3175
  %3179 = ptrtoint ptr %arrayidx.i.i568 to i32
  call void @__asan_store4_noabort(i32 %3179)
  store i32 3145728, ptr %arrayidx.i.i568, align 4
  %3180 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3180)
  %.pr.i569 = load i32, ptr %mode.i.i, align 4
  %or.i.i = add nuw nsw i32 %cond.i558, 2097148
  %3181 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3181)
  %3182 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i569)
  %cmp.not.i.i.i570 = icmp eq i32 %.pr.i569, 0
  br i1 %cmp.not.i.i.i570, label %do.body.i.i.i572, label %cp_out.exit.i.cp_lsr.exit.i578_crit_edge

cp_out.exit.i.cp_lsr.exit.i578_crit_edge:         ; preds = %cp_out.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_lsr.exit.i578

do.body.i.i.i572:                                 ; preds = %cp_out.exit.i
  %3183 = ptrtoint ptr %ctxprog_len.i.i562 to i32
  call void @__asan_load4_noabort(i32 %3183)
  %3184 = load i32, ptr %ctxprog_len.i.i562, align 4
  %3185 = ptrtoint ptr %ctxprog_max.i.i563 to i32
  call void @__asan_load4_noabort(i32 %3185)
  %3186 = load i32, ptr %ctxprog_max.i.i563, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3184, i32 %3186)
  %cmp1.i.i.i571 = icmp eq i32 %3184, %3186
  br i1 %cmp1.i.i.i571, label %do.body4.i.i.i573, label %do.end10.i.i.i576, !prof !9

do.body4.i.i.i573:                                ; preds = %do.body.i.i.i572
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i576:                                ; preds = %do.body.i.i.i572
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i574 = add i32 %3184, 1
  %3187 = ptrtoint ptr %ctxprog_len.i.i562 to i32
  call void @__asan_store4_noabort(i32 %3187)
  store i32 %inc.i.i.i574, ptr %ctxprog_len.i.i562, align 4
  %arrayidx.i.i.i575 = getelementptr i32, ptr %3182, i32 %3184
  %3188 = ptrtoint ptr %arrayidx.i.i.i575 to i32
  call void @__asan_store4_noabort(i32 %3188)
  store i32 %or.i.i, ptr %arrayidx.i.i.i575, align 4
  br label %cp_lsr.exit.i578

cp_lsr.exit.i578:                                 ; preds = %do.end10.i.i.i576, %cp_out.exit.i.cp_lsr.exit.i578_crit_edge, %nv40_gr_construct_state3d_2.exit.cp_lsr.exit.i578_crit_edge
  %arrayidx.i10.i = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 6
  %3189 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_load4_noabort(i32 %3189)
  %3190 = load i32, ptr %arrayidx.i10.i, align 4
  %shl.i.i577 = shl i32 %3190, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i.i577)
  %cmp1.i11.i = icmp eq i32 %shl.i.i577, 0
  %shl.i.op.i = or i32 %shl.i.i577, 4194304
  %or9.i.i = select i1 %cmp1.i11.i, i32 -12581376, i32 %shl.i.op.i
  %3191 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3191)
  %3192 = load ptr, ptr %ucode.i.i, align 4
  %3193 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3193)
  %3194 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3194)
  %cmp.not.i.i14.i = icmp eq i32 %3194, 0
  br i1 %cmp.not.i.i14.i, label %do.body.i.i18.i, label %cp_lsr.exit.i578.nv40_gr_construct_state3d_3.exit_crit_edge

cp_lsr.exit.i578.nv40_gr_construct_state3d_3.exit_crit_edge: ; preds = %cp_lsr.exit.i578
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_state3d_3.exit

do.body.i.i18.i:                                  ; preds = %cp_lsr.exit.i578
  %ctxprog_len.i.i15.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3195 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %3195)
  %3196 = load i32, ptr %ctxprog_len.i.i15.i, align 4
  %ctxprog_max.i.i16.i = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3197 = ptrtoint ptr %ctxprog_max.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %3197)
  %3198 = load i32, ptr %ctxprog_max.i.i16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3196, i32 %3198)
  %cmp1.i.i17.i = icmp eq i32 %3196, %3198
  br i1 %cmp1.i.i17.i, label %do.body4.i.i19.i, label %_cp_bra.exit.i, !prof !9

do.body4.i.i19.i:                                 ; preds = %do.body.i.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_bra.exit.i:                                   ; preds = %do.body.i.i18.i
  %inc.i.i20.i = add i32 %3196, 1
  %3199 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %3199)
  store i32 %inc.i.i20.i, ptr %ctxprog_len.i.i15.i, align 4
  %arrayidx.i.i21.i = getelementptr i32, ptr %3192, i32 %3196
  %3200 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %3200)
  store i32 %or9.i.i, ptr %arrayidx.i.i21.i, align 4
  %3201 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3201)
  %.pr59.i = load i32, ptr %mode.i.i, align 4
  %or.i23.i = or i32 %cond.i558, 2097152
  %3202 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3202)
  %3203 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr59.i)
  %cmp.not.i.i26.i = icmp eq i32 %.pr59.i, 0
  br i1 %cmp.not.i.i26.i, label %do.body.i.i30.i, label %_cp_bra.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge

_cp_bra.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge: ; preds = %_cp_bra.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_state3d_3.exit

do.body.i.i30.i:                                  ; preds = %_cp_bra.exit.i
  %3204 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %3204)
  %3205 = load i32, ptr %ctxprog_len.i.i15.i, align 4
  %3206 = ptrtoint ptr %ctxprog_max.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %3206)
  %3207 = load i32, ptr %ctxprog_max.i.i16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3205, i32 %3207)
  %cmp1.i.i29.i = icmp eq i32 %3205, %3207
  br i1 %cmp1.i.i29.i, label %do.body4.i.i31.i, label %cp_lsr.exit35.i, !prof !9

do.body4.i.i31.i:                                 ; preds = %do.body.i.i30.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_lsr.exit35.i:                                  ; preds = %do.body.i.i30.i
  %inc.i.i32.i = add i32 %3205, 1
  %3208 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %3208)
  store i32 %inc.i.i32.i, ptr %ctxprog_len.i.i15.i, align 4
  %arrayidx.i.i33.i = getelementptr i32, ptr %3203, i32 %3205
  %3209 = ptrtoint ptr %arrayidx.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %3209)
  store i32 %or.i23.i, ptr %arrayidx.i.i33.i, align 4
  %3210 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3210)
  %.pr62.i = load i32, ptr %mode.i.i, align 4
  %3211 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3211)
  %3212 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr62.i)
  %cmp.not.i38.i = icmp eq i32 %.pr62.i, 0
  br i1 %cmp.not.i38.i, label %if.end.i.i579, label %cp_lsr.exit35.i.nv40_gr_construct_state3d_3.exit_crit_edge

cp_lsr.exit35.i.nv40_gr_construct_state3d_3.exit_crit_edge: ; preds = %cp_lsr.exit35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_state3d_3.exit

if.end.i.i579:                                    ; preds = %cp_lsr.exit35.i
  %3213 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %3213)
  %3214 = load i32, ptr %ctxprog_len.i.i15.i, align 4
  %3215 = ptrtoint ptr %arrayidx.i10.i to i32
  call void @__asan_store4_noabort(i32 %3215)
  store i32 %3214, ptr %arrayidx.i10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3214)
  %cmp232.not.i.i = icmp eq i32 %3214, 0
  br i1 %cmp232.not.i.i, label %if.end.i.i579.cp_name.exit.i_crit_edge, label %if.end.i.i579.for.body.i.i_crit_edge

if.end.i.i579.for.body.i.i_crit_edge:             ; preds = %if.end.i.i579
  br label %for.body.i.i

if.end.i.i579.cp_name.exit.i_crit_edge:           ; preds = %if.end.i.i579
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i579.for.body.i.i_crit_edge
  %3216 = phi i32 [ %3223, %for.inc.i.i.for.body.i.i_crit_edge ], [ %3214, %if.end.i.i579.for.body.i.i_crit_edge ]
  %i.033.i.i = phi i32 [ %inc.i43.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.i579.for.body.i.i_crit_edge ]
  %arrayidx3.i.i = getelementptr i32, ptr %3212, i32 %i.033.i.i
  %3217 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %3217)
  %3218 = load i32, ptr %arrayidx3.i.i, align 4
  %3219 = and i32 %3218, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12581376, i32 %3219)
  %3220 = icmp eq i32 %3219, -12581376
  br i1 %3220, label %if.end11.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

if.end11.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i.i = and i32 %3218, 16711935
  %shl15.i.i = shl i32 %3216, 8
  %or.i42.i = or i32 %and13.i.i, %shl15.i.i
  %3221 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %3221)
  store i32 %or.i42.i, ptr %arrayidx3.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end11.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i43.i = add nuw i32 %i.033.i.i, 1
  %3222 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %3222)
  %3223 = load i32, ptr %ctxprog_len.i.i15.i, align 4
  %cmp2.i.i = icmp ult i32 %inc.i43.i, %3223
  br i1 %cmp2.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.cp_name.exit.i_crit_edge

for.inc.i.i.cp_name.exit.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

cp_name.exit.i:                                   ; preds = %for.inc.i.i.cp_name.exit.i_crit_edge, %if.end.i.i579.cp_name.exit.i_crit_edge
  %3224 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3224)
  %.pr64.pr.i = load i32, ptr %mode.i.i, align 4
  %3225 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3225)
  %3226 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr64.pr.i)
  %cmp.not.i46.i = icmp eq i32 %.pr64.pr.i, 0
  br i1 %cmp.not.i46.i, label %do.body.i50.i, label %cp_name.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge

cp_name.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge: ; preds = %cp_name.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_state3d_3.exit

do.body.i50.i:                                    ; preds = %cp_name.exit.i
  %3227 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %3227)
  %3228 = load i32, ptr %ctxprog_len.i.i15.i, align 4
  %3229 = ptrtoint ptr %ctxprog_max.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %3229)
  %3230 = load i32, ptr %ctxprog_max.i.i16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3228, i32 %3230)
  %cmp1.i49.i = icmp eq i32 %3228, %3230
  br i1 %cmp1.i49.i, label %do.body4.i51.i, label %do.end10.i54.i, !prof !9

do.body4.i51.i:                                   ; preds = %do.body.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i54.i:                                   ; preds = %do.body.i50.i
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i52.i = add i32 %3228, 1
  %3231 = ptrtoint ptr %ctxprog_len.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %3231)
  store i32 %inc.i52.i, ptr %ctxprog_len.i.i15.i, align 4
  %arrayidx.i53.i = getelementptr i32, ptr %3226, i32 %3228
  %3232 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %3232)
  store i32 8388609, ptr %arrayidx.i53.i, align 4
  %3233 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3233)
  %.pr1110 = load i32, ptr %mode.i.i, align 4
  br label %nv40_gr_construct_state3d_3.exit

nv40_gr_construct_state3d_3.exit:                 ; preds = %do.end10.i54.i, %cp_name.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge, %cp_lsr.exit35.i.nv40_gr_construct_state3d_3.exit_crit_edge, %_cp_bra.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge, %cp_lsr.exit.i578.nv40_gr_construct_state3d_3.exit_crit_edge
  %3234 = phi i32 [ %3194, %cp_lsr.exit.i578.nv40_gr_construct_state3d_3.exit_crit_edge ], [ %.pr59.i, %_cp_bra.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge ], [ %.pr62.i, %cp_lsr.exit35.i.nv40_gr_construct_state3d_3.exit_crit_edge ], [ %.pr64.pr.i, %cp_name.exit.i.nv40_gr_construct_state3d_3.exit_crit_edge ], [ %.pr1110, %do.end10.i54.i ]
  %3235 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3235)
  %3236 = load i32, ptr %ctxvals_pos.i813, align 4
  %add.i = add i32 %3236, %cond.i558
  store i32 %add.i, ptr %ctxvals_pos.i813, align 4
  %3237 = ptrtoint ptr %ctxvals_base.i829 to i32
  call void @__asan_store4_noabort(i32 %3237)
  store i32 %add.i, ptr %ctxvals_base.i829, align 4
  %or.i.i583 = or i32 %add.i, 2097152
  %3238 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3238)
  %3239 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3234)
  %cmp.not.i.i.i586 = icmp eq i32 %3234, 0
  br i1 %cmp.not.i.i.i586, label %do.body.i.i.i590, label %nv40_gr_construct_state3d_3.exit.cp_pos.exit604_crit_edge

nv40_gr_construct_state3d_3.exit.cp_pos.exit604_crit_edge: ; preds = %nv40_gr_construct_state3d_3.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_pos.exit604

do.body.i.i.i590:                                 ; preds = %nv40_gr_construct_state3d_3.exit
  %ctxprog_len.i.i.i587 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3240 = ptrtoint ptr %ctxprog_len.i.i.i587 to i32
  call void @__asan_load4_noabort(i32 %3240)
  %3241 = load i32, ptr %ctxprog_len.i.i.i587, align 4
  %ctxprog_max.i.i.i588 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3242 = ptrtoint ptr %ctxprog_max.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %3242)
  %3243 = load i32, ptr %ctxprog_max.i.i.i588, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3241, i32 %3243)
  %cmp1.i.i.i589 = icmp eq i32 %3241, %3243
  br i1 %cmp1.i.i.i589, label %do.body4.i.i.i591, label %cp_lsr.exit.i596, !prof !9

do.body4.i.i.i591:                                ; preds = %do.body.i.i.i590
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_lsr.exit.i596:                                 ; preds = %do.body.i.i.i590
  %inc.i.i.i592 = add i32 %3241, 1
  %3244 = ptrtoint ptr %ctxprog_len.i.i.i587 to i32
  call void @__asan_store4_noabort(i32 %3244)
  store i32 %inc.i.i.i592, ptr %ctxprog_len.i.i.i587, align 4
  %arrayidx.i.i.i593 = getelementptr i32, ptr %3239, i32 %3241
  %3245 = ptrtoint ptr %arrayidx.i.i.i593 to i32
  call void @__asan_store4_noabort(i32 %3245)
  store i32 %or.i.i583, ptr %arrayidx.i.i.i593, align 4
  %3246 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3246)
  %.pr.i594 = load i32, ptr %mode.i.i, align 4
  %3247 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3247)
  %3248 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i594)
  %cmp.not.i.i595 = icmp eq i32 %.pr.i594, 0
  br i1 %cmp.not.i.i595, label %do.body.i.i598, label %cp_lsr.exit.i596.cp_pos.exit604_crit_edge

cp_lsr.exit.i596.cp_pos.exit604_crit_edge:        ; preds = %cp_lsr.exit.i596
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_pos.exit604

do.body.i.i598:                                   ; preds = %cp_lsr.exit.i596
  %3249 = ptrtoint ptr %ctxprog_len.i.i.i587 to i32
  call void @__asan_load4_noabort(i32 %3249)
  %3250 = load i32, ptr %ctxprog_len.i.i.i587, align 4
  %3251 = ptrtoint ptr %ctxprog_max.i.i.i588 to i32
  call void @__asan_load4_noabort(i32 %3251)
  %3252 = load i32, ptr %ctxprog_max.i.i.i588, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3250, i32 %3252)
  %cmp1.i.i597 = icmp eq i32 %3250, %3252
  br i1 %cmp1.i.i597, label %do.body4.i.i599, label %do.end10.i.i602, !prof !9

do.body4.i.i599:                                  ; preds = %do.body.i.i598
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i602:                                  ; preds = %do.body.i.i598
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i600 = add i32 %3250, 1
  %3253 = ptrtoint ptr %ctxprog_len.i.i.i587 to i32
  call void @__asan_store4_noabort(i32 %3253)
  store i32 %inc.i.i600, ptr %ctxprog_len.i.i.i587, align 4
  %arrayidx.i.i601 = getelementptr i32, ptr %3248, i32 %3250
  %3254 = ptrtoint ptr %arrayidx.i.i601 to i32
  call void @__asan_store4_noabort(i32 %3254)
  store i32 6291466, ptr %arrayidx.i.i601, align 4
  br label %cp_pos.exit604

cp_pos.exit604:                                   ; preds = %do.end10.i.i602, %cp_lsr.exit.i596.cp_pos.exit604_crit_edge, %nv40_gr_construct_state3d_3.exit.cp_pos.exit604_crit_edge
  %3255 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %3255)
  %3256 = load ptr, ptr %ctx, align 4
  %3257 = ptrtoint ptr %data.i573.i to i32
  call void @__asan_load4_noabort(i32 %3257)
  %3258 = load ptr, ptr %data.i573.i, align 4
  %chipset.i.i605 = getelementptr inbounds %struct.nvkm_device, ptr %3256, i32 0, i32 16
  %3259 = ptrtoint ptr %chipset.i.i605 to i32
  call void @__asan_load4_noabort(i32 %3259)
  %3260 = load i32, ptr %chipset.i.i605, align 4
  %3261 = zext i32 %3260 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3261, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %3260, label %sw.default.i.i607 [
    i32 71, label %cp_pos.exit604.if.else10.i_crit_edge
    i32 73, label %cp_pos.exit604.if.else10.i_crit_edge1148
    i32 75, label %cp_pos.exit604.if.else10.i_crit_edge1149
    i32 64, label %cp_pos.exit604.if.end13.i_crit_edge
    i32 65, label %cp_pos.exit604.if.else.thread121.i_crit_edge
    i32 66, label %cp_pos.exit604.if.else.thread121.i_crit_edge1150
    i32 67, label %cp_pos.exit604.sw.bb3.i.i606_crit_edge
    i32 68, label %cp_pos.exit604.sw.bb3.i.i606_crit_edge1151
    i32 70, label %cp_pos.exit604.sw.bb3.i.i606_crit_edge1152
    i32 74, label %cp_pos.exit604.sw.bb3.i.i606_crit_edge1153
  ]

cp_pos.exit604.sw.bb3.i.i606_crit_edge1153:       ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i606

cp_pos.exit604.sw.bb3.i.i606_crit_edge1152:       ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i606

cp_pos.exit604.sw.bb3.i.i606_crit_edge1151:       ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i606

cp_pos.exit604.sw.bb3.i.i606_crit_edge:           ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i.i606

cp_pos.exit604.if.else.thread121.i_crit_edge1150: ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.thread121.i

cp_pos.exit604.if.else.thread121.i_crit_edge:     ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.thread121.i

cp_pos.exit604.if.end13.i_crit_edge:              ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

cp_pos.exit604.if.else10.i_crit_edge1149:         ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

cp_pos.exit604.if.else10.i_crit_edge1148:         ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

cp_pos.exit604.if.else10.i_crit_edge:             ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

sw.bb3.i.i606:                                    ; preds = %cp_pos.exit604.sw.bb3.i.i606_crit_edge, %cp_pos.exit604.sw.bb3.i.i606_crit_edge1151, %cp_pos.exit604.sw.bb3.i.i606_crit_edge1152, %cp_pos.exit604.sw.bb3.i.i606_crit_edge1153
  br label %if.else10.i

sw.default.i.i607:                                ; preds = %cp_pos.exit604
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else10.i

if.else.thread121.i:                              ; preds = %cp_pos.exit604.if.else.thread121.i_crit_edge, %cp_pos.exit604.if.else.thread121.i_crit_edge1150
  br label %if.end13.i

if.else10.i:                                      ; preds = %sw.default.i.i607, %sw.bb3.i.i606, %cp_pos.exit604.if.else10.i_crit_edge, %cp_pos.exit604.if.else10.i_crit_edge1148, %cp_pos.exit604.if.else10.i_crit_edge1149
  %retval.0.i.ph.ph.i = phi i32 [ 1, %sw.default.i.i607 ], [ 3, %sw.bb3.i.i606 ], [ 8, %cp_pos.exit604.if.else10.i_crit_edge ], [ 8, %cp_pos.exit604.if.else10.i_crit_edge1148 ], [ 8, %cp_pos.exit604.if.else10.i_crit_edge1149 ]
  %and.i.i608 = and i32 %3260, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i.i608)
  %cmp.i.i609 = icmp ne i32 %and.i.i608, 96
  %and2.i.i610 = and i32 %3260, 15
  %3262 = lshr i32 -2736, %and2.i.i610
  %3263 = and i32 %3262, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3263)
  %tobool.not125.i = icmp eq i32 %3263, 0
  %tobool.not.i611 = select i1 %cmp.i.i609, i1 %tobool.not125.i, i1 false
  %cond12.i = select i1 %tobool.not.i611, i32 4752, i32 4704
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.else10.i, %if.else.thread121.i, %cp_pos.exit604.if.end13.i_crit_edge
  %cmp113.i = phi i32 [ 256, %if.else10.i ], [ 512, %cp_pos.exit604.if.end13.i_crit_edge ], [ 256, %if.else.thread121.i ]
  %retval.0.i111.i = phi i32 [ %retval.0.i.ph.ph.i, %if.else10.i ], [ 6, %cp_pos.exit604.if.end13.i_crit_edge ], [ 5, %if.else.thread121.i ]
  %vs_len.0.i = phi i32 [ %cond12.i, %if.else10.i ], [ 6824, %cp_pos.exit604.if.end13.i_crit_edge ], [ 5056, %if.else.thread121.i ]
  %b0_offset.0.i = phi i32 [ 1872, %if.else10.i ], [ 2176, %cp_pos.exit604.if.end13.i_crit_edge ], [ 2176, %if.else.thread121.i ]
  %b1_offset.0.i = phi i32 [ 4048, %if.else10.i ], [ 5480, %cp_pos.exit604.if.end13.i_crit_edge ], [ 4352, %if.else.thread121.i ]
  %mul.i = mul nuw nsw i32 %vs_len.0.i, %retval.0.i111.i
  %add.i612 = add nuw nsw i32 %mul.i, 192
  %or.i.i613 = or i32 %add.i612, 2097152
  %3264 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3264)
  %3265 = load ptr, ptr %ucode.i.i, align 4
  %3266 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3266)
  %3267 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3267)
  %cmp.not.i.i.i616 = icmp eq i32 %3267, 0
  br i1 %cmp.not.i.i.i616, label %do.body.i.i.i620, label %if.end13.i.cp_lsr.exit.i626_crit_edge

if.end13.i.cp_lsr.exit.i626_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_lsr.exit.i626

do.body.i.i.i620:                                 ; preds = %if.end13.i
  %ctxprog_len.i.i.i617 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3268 = ptrtoint ptr %ctxprog_len.i.i.i617 to i32
  call void @__asan_load4_noabort(i32 %3268)
  %3269 = load i32, ptr %ctxprog_len.i.i.i617, align 4
  %ctxprog_max.i.i.i618 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3270 = ptrtoint ptr %ctxprog_max.i.i.i618 to i32
  call void @__asan_load4_noabort(i32 %3270)
  %3271 = load i32, ptr %ctxprog_max.i.i.i618, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3269, i32 %3271)
  %cmp1.i.i.i619 = icmp eq i32 %3269, %3271
  br i1 %cmp1.i.i.i619, label %do.body4.i.i.i621, label %do.end10.i.i.i624, !prof !9

do.body4.i.i.i621:                                ; preds = %do.body.i.i.i620
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i.i624:                                ; preds = %do.body.i.i.i620
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i.i622 = add i32 %3269, 1
  %3272 = ptrtoint ptr %ctxprog_len.i.i.i617 to i32
  call void @__asan_store4_noabort(i32 %3272)
  store i32 %inc.i.i.i622, ptr %ctxprog_len.i.i.i617, align 4
  %arrayidx.i.i.i623 = getelementptr i32, ptr %3265, i32 %3269
  %3273 = ptrtoint ptr %arrayidx.i.i.i623 to i32
  call void @__asan_store4_noabort(i32 %3273)
  store i32 %or.i.i613, ptr %arrayidx.i.i.i623, align 4
  br label %cp_lsr.exit.i626

cp_lsr.exit.i626:                                 ; preds = %do.end10.i.i.i624, %if.end13.i.cp_lsr.exit.i626_crit_edge
  %3274 = ptrtoint ptr %chipset.i.i605 to i32
  call void @__asan_load4_noabort(i32 %3274)
  %3275 = load i32, ptr %chipset.i.i605, align 4
  %and.i104.i = and i32 %3275, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %and.i104.i)
  %cmp.i105.i = icmp ne i32 %and.i104.i, 96
  %and2.i106.i = and i32 %3275, 15
  %3276 = lshr i32 -2736, %and2.i106.i
  %3277 = and i32 %3276, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3277)
  %tobool15.not126.i = icmp eq i32 %3277, 0
  %tobool15.not.i = select i1 %cmp.i105.i, i1 %tobool15.not126.i, i1 false
  %cond16.i = select i1 %tobool15.not.i, i32 8388673, i32 8388649
  %3278 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3278)
  %3279 = load ptr, ptr %ucode.i.i, align 4
  %3280 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3280)
  %3281 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3281)
  %cmp.not.i.i625 = icmp eq i32 %3281, 0
  br i1 %cmp.not.i.i625, label %do.body.i.i630, label %cp_lsr.exit.i626.cp_out.exit.i637_crit_edge

cp_lsr.exit.i626.cp_out.exit.i637_crit_edge:      ; preds = %cp_lsr.exit.i626
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit.i637

do.body.i.i630:                                   ; preds = %cp_lsr.exit.i626
  %ctxprog_len.i.i627 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3282 = ptrtoint ptr %ctxprog_len.i.i627 to i32
  call void @__asan_load4_noabort(i32 %3282)
  %3283 = load i32, ptr %ctxprog_len.i.i627, align 4
  %ctxprog_max.i.i628 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3284 = ptrtoint ptr %ctxprog_max.i.i628 to i32
  call void @__asan_load4_noabort(i32 %3284)
  %3285 = load i32, ptr %ctxprog_max.i.i628, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3283, i32 %3285)
  %cmp1.i.i629 = icmp eq i32 %3283, %3285
  br i1 %cmp1.i.i629, label %do.body4.i.i631, label %do.end10.i.i635, !prof !9

do.body4.i.i631:                                  ; preds = %do.body.i.i630
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i635:                                  ; preds = %do.body.i.i630
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i632 = add i32 %3283, 1
  %3286 = ptrtoint ptr %ctxprog_len.i.i627 to i32
  call void @__asan_store4_noabort(i32 %3286)
  store i32 %inc.i.i632, ptr %ctxprog_len.i.i627, align 4
  %arrayidx.i.i633 = getelementptr i32, ptr %3279, i32 %3283
  %3287 = ptrtoint ptr %arrayidx.i.i633 to i32
  call void @__asan_store4_noabort(i32 %3287)
  store i32 %cond16.i, ptr %arrayidx.i.i633, align 4
  %3288 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3288)
  %.pr.i634 = load i32, ptr %mode.i.i, align 4
  br label %cp_out.exit.i637

cp_out.exit.i637:                                 ; preds = %do.end10.i.i635, %cp_lsr.exit.i626.cp_out.exit.i637_crit_edge
  %3289 = phi i32 [ %3281, %cp_lsr.exit.i626.cp_out.exit.i637_crit_edge ], [ %.pr.i634, %do.end10.i.i635 ]
  %3290 = ptrtoint ptr %ctxvals_pos.i813 to i32
  call void @__asan_load4_noabort(i32 %3290)
  %3291 = load i32, ptr %ctxvals_pos.i813, align 4
  %add20.i = add i32 %3291, %add.i612
  store i32 %add20.i, ptr %ctxvals_pos.i813, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3289)
  %cmp21.not.i = icmp eq i32 %3289, 1
  br i1 %cmp21.not.i, label %if.end23.i638, label %cp_out.exit.i637.nv40_gr_construct_shader.exit_crit_edge

cp_out.exit.i637.nv40_gr_construct_shader.exit_crit_edge: ; preds = %cp_out.exit.i637
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_shader.exit

if.end23.i638:                                    ; preds = %cp_out.exit.i637
  %3292 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3292)
  %3293 = load ptr, ptr %3258, align 8
  %wr32.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3293, i32 0, i32 3
  %3294 = ptrtoint ptr %wr32.i to i32
  call void @__asan_load4_noabort(i32 %3294)
  %3295 = load ptr, ptr %wr32.i, align 4
  %add24.i = shl i32 %3291, 2
  %mul26.i = add i32 %add24.i, 640
  tail call void %3295(ptr noundef %3258, i32 noundef %mul26.i, i32 noundef 1065353216) #5
  %3296 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3296)
  %3297 = load ptr, ptr %3258, align 8
  %wr32.1.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3297, i32 0, i32 3
  %3298 = ptrtoint ptr %wr32.1.i to i32
  call void @__asan_load4_noabort(i32 %3298)
  %3299 = load ptr, ptr %wr32.1.i, align 4
  %mul26.1.i = add i32 %add24.i, 648
  tail call void %3299(ptr noundef %3258, i32 noundef %mul26.1.i, i32 noundef 1065353216) #5
  %3300 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3300)
  %3301 = load ptr, ptr %3258, align 8
  %wr32.2.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3301, i32 0, i32 3
  %3302 = ptrtoint ptr %wr32.2.i to i32
  call void @__asan_load4_noabort(i32 %3302)
  %3303 = load ptr, ptr %wr32.2.i, align 4
  %mul26.2.i = add i32 %add24.i, 656
  tail call void %3303(ptr noundef %3258, i32 noundef %mul26.2.i, i32 noundef 1065353216) #5
  %3304 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3304)
  %3305 = load ptr, ptr %3258, align 8
  %wr32.3.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3305, i32 0, i32 3
  %3306 = ptrtoint ptr %wr32.3.i to i32
  call void @__asan_load4_noabort(i32 %3306)
  %3307 = load ptr, ptr %wr32.3.i, align 4
  %mul26.3.i = add i32 %add24.i, 664
  tail call void %3307(ptr noundef %3258, i32 noundef %mul26.3.i, i32 noundef 1065353216) #5
  %3308 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3308)
  %3309 = load ptr, ptr %3258, align 8
  %wr32.4.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3309, i32 0, i32 3
  %3310 = ptrtoint ptr %wr32.4.i to i32
  call void @__asan_load4_noabort(i32 %3310)
  %3311 = load ptr, ptr %wr32.4.i, align 4
  %mul26.4.i = add i32 %add24.i, 672
  tail call void %3311(ptr noundef %3258, i32 noundef %mul26.4.i, i32 noundef 1065353216) #5
  %3312 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3312)
  %3313 = load ptr, ptr %3258, align 8
  %wr32.5.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3313, i32 0, i32 3
  %3314 = ptrtoint ptr %wr32.5.i to i32
  call void @__asan_load4_noabort(i32 %3314)
  %3315 = load ptr, ptr %wr32.5.i, align 4
  %mul26.5.i = add i32 %add24.i, 680
  tail call void %3315(ptr noundef %3258, i32 noundef %mul26.5.i, i32 noundef 1065353216) #5
  %3316 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3316)
  %3317 = load ptr, ptr %3258, align 8
  %wr32.6.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3317, i32 0, i32 3
  %3318 = ptrtoint ptr %wr32.6.i to i32
  call void @__asan_load4_noabort(i32 %3318)
  %3319 = load ptr, ptr %wr32.6.i, align 4
  %mul26.6.i = add i32 %add24.i, 688
  tail call void %3319(ptr noundef %3258, i32 noundef %mul26.6.i, i32 noundef 1065353216) #5
  %3320 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3320)
  %3321 = load ptr, ptr %3258, align 8
  %wr32.7.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3321, i32 0, i32 3
  %3322 = ptrtoint ptr %wr32.7.i to i32
  call void @__asan_load4_noabort(i32 %3322)
  %3323 = load ptr, ptr %wr32.7.i, align 4
  %mul26.7.i = add i32 %add24.i, 696
  tail call void %3323(ptr noundef %3258, i32 noundef %mul26.7.i, i32 noundef 1065353216) #5
  %3324 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3324)
  %3325 = load ptr, ptr %3258, align 8
  %wr32.8.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3325, i32 0, i32 3
  %3326 = ptrtoint ptr %wr32.8.i to i32
  call void @__asan_load4_noabort(i32 %3326)
  %3327 = load ptr, ptr %wr32.8.i, align 4
  %mul26.8.i = add i32 %add24.i, 704
  tail call void %3327(ptr noundef %3258, i32 noundef %mul26.8.i, i32 noundef 1065353216) #5
  %3328 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3328)
  %3329 = load ptr, ptr %3258, align 8
  %wr32.9.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3329, i32 0, i32 3
  %3330 = ptrtoint ptr %wr32.9.i to i32
  call void @__asan_load4_noabort(i32 %3330)
  %3331 = load ptr, ptr %wr32.9.i, align 4
  %mul26.9.i = add i32 %add24.i, 712
  tail call void %3331(ptr noundef %3258, i32 noundef %mul26.9.i, i32 noundef 1065353216) #5
  %3332 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3332)
  %3333 = load ptr, ptr %3258, align 8
  %wr32.10.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3333, i32 0, i32 3
  %3334 = ptrtoint ptr %wr32.10.i to i32
  call void @__asan_load4_noabort(i32 %3334)
  %3335 = load ptr, ptr %wr32.10.i, align 4
  %mul26.10.i = add i32 %add24.i, 720
  tail call void %3335(ptr noundef %3258, i32 noundef %mul26.10.i, i32 noundef 1065353216) #5
  %3336 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3336)
  %3337 = load ptr, ptr %3258, align 8
  %wr32.11.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3337, i32 0, i32 3
  %3338 = ptrtoint ptr %wr32.11.i to i32
  call void @__asan_load4_noabort(i32 %3338)
  %3339 = load ptr, ptr %wr32.11.i, align 4
  %mul26.11.i = add i32 %add24.i, 728
  tail call void %3339(ptr noundef %3258, i32 noundef %mul26.11.i, i32 noundef 1065353216) #5
  %3340 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3340)
  %3341 = load ptr, ptr %3258, align 8
  %wr32.12.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3341, i32 0, i32 3
  %3342 = ptrtoint ptr %wr32.12.i to i32
  call void @__asan_load4_noabort(i32 %3342)
  %3343 = load ptr, ptr %wr32.12.i, align 4
  %mul26.12.i = add i32 %add24.i, 736
  tail call void %3343(ptr noundef %3258, i32 noundef %mul26.12.i, i32 noundef 1065353216) #5
  %3344 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3344)
  %3345 = load ptr, ptr %3258, align 8
  %wr32.13.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3345, i32 0, i32 3
  %3346 = ptrtoint ptr %wr32.13.i to i32
  call void @__asan_load4_noabort(i32 %3346)
  %3347 = load ptr, ptr %wr32.13.i, align 4
  %mul26.13.i = add i32 %add24.i, 744
  tail call void %3347(ptr noundef %3258, i32 noundef %mul26.13.i, i32 noundef 1065353216) #5
  %3348 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3348)
  %3349 = load ptr, ptr %3258, align 8
  %wr32.14.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3349, i32 0, i32 3
  %3350 = ptrtoint ptr %wr32.14.i to i32
  call void @__asan_load4_noabort(i32 %3350)
  %3351 = load ptr, ptr %wr32.14.i, align 4
  %mul26.14.i = add i32 %add24.i, 752
  tail call void %3351(ptr noundef %3258, i32 noundef %mul26.14.i, i32 noundef 1065353216) #5
  %3352 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3352)
  %3353 = load ptr, ptr %3258, align 8
  %wr32.15.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3353, i32 0, i32 3
  %3354 = ptrtoint ptr %wr32.15.i to i32
  call void @__asan_load4_noabort(i32 %3354)
  %3355 = load ptr, ptr %wr32.15.i, align 4
  %mul26.15.i = add i32 %add24.i, 760
  tail call void %3355(ptr noundef %3258, i32 noundef %mul26.15.i, i32 noundef 1065353216) #5
  %add27.15.i = add i32 %3291, 192
  br label %for.cond31.preheader.i

for.cond31.preheader.i:                           ; preds = %for.inc53.i.for.cond31.preheader.i_crit_edge, %if.end23.i638
  %offset.1132.i = phi i32 [ %add55.i, %for.inc53.i.for.cond31.preheader.i_crit_edge ], [ %add27.15.i, %if.end23.i638 ]
  %vs.0131.i = phi i32 [ %inc54.i, %for.inc53.i.for.cond31.preheader.i_crit_edge ], [ 0, %if.end23.i638 ]
  %add36.i = add i32 %offset.1132.i, %b0_offset.0.i
  br label %for.body34.i

for.cond42.preheader.i:                           ; preds = %for.body34.i
  %add47.i = add i32 %offset.1132.i, %b1_offset.0.i
  br label %for.body45.i

for.body34.i:                                     ; preds = %for.body34.i.for.body34.i_crit_edge, %for.cond31.preheader.i
  %i.1129.i = phi i32 [ 0, %for.cond31.preheader.i ], [ %add40.i, %for.body34.i.for.body34.i_crit_edge ]
  %3356 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3356)
  %3357 = load ptr, ptr %3258, align 8
  %wr3235.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3357, i32 0, i32 3
  %3358 = ptrtoint ptr %wr3235.i to i32
  call void @__asan_load4_noabort(i32 %3358)
  %3359 = load ptr, ptr %wr3235.i, align 4
  %add37.i = add i32 %add36.i, %i.1129.i
  %mul38.i = shl i32 %add37.i, 2
  tail call void %3359(ptr noundef %3258, i32 noundef %mul38.i, i32 noundef 1) #5
  %add40.i = add nuw nsw i32 %i.1129.i, 6
  %cmp33.i = icmp ult i32 %i.1129.i, 2172
  br i1 %cmp33.i, label %for.body34.i.for.body34.i_crit_edge, label %for.cond42.preheader.i

for.body34.i.for.body34.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34.i

for.body45.i:                                     ; preds = %for.body45.i.for.body45.i_crit_edge, %for.cond42.preheader.i
  %i.2130.i = phi i32 [ 0, %for.cond42.preheader.i ], [ %add51.i, %for.body45.i.for.body45.i_crit_edge ]
  %3360 = ptrtoint ptr %3258 to i32
  call void @__asan_load4_noabort(i32 %3360)
  %3361 = load ptr, ptr %3258, align 8
  %wr3246.i = getelementptr inbounds %struct.nvkm_gpuobj_func, ptr %3361, i32 0, i32 3
  %3362 = ptrtoint ptr %wr3246.i to i32
  call void @__asan_load4_noabort(i32 %3362)
  %3363 = load ptr, ptr %wr3246.i, align 4
  %add48.i = add i32 %add47.i, %i.2130.i
  %mul49.i = shl i32 %add48.i, 2
  tail call void %3363(ptr noundef %3258, i32 noundef %mul49.i, i32 noundef 1065353216) #5
  %add51.i = add nuw nsw i32 %i.2130.i, 4
  %cmp44.i639 = icmp ult i32 %add51.i, %cmp113.i
  br i1 %cmp44.i639, label %for.body45.i.for.body45.i_crit_edge, label %for.inc53.i

for.body45.i.for.body45.i_crit_edge:              ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45.i

for.inc53.i:                                      ; preds = %for.body45.i
  %inc54.i = add nuw nsw i32 %vs.0131.i, 1
  %add55.i = add i32 %offset.1132.i, %vs_len.0.i
  %exitcond.not.i640 = icmp eq i32 %inc54.i, %retval.0.i111.i
  br i1 %exitcond.not.i640, label %for.inc53.i.nv40_gr_construct_shader.exit_crit_edge, label %for.inc53.i.for.cond31.preheader.i_crit_edge

for.inc53.i.for.cond31.preheader.i_crit_edge:     ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond31.preheader.i

for.inc53.i.nv40_gr_construct_shader.exit_crit_edge: ; preds = %for.inc53.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nv40_gr_construct_shader.exit

nv40_gr_construct_shader.exit:                    ; preds = %for.inc53.i.nv40_gr_construct_shader.exit_crit_edge, %cp_out.exit.i637.nv40_gr_construct_shader.exit_crit_edge
  %3364 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3364)
  %3365 = load ptr, ptr %ucode.i.i, align 4
  %3366 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3366)
  %3367 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3367)
  %cmp.not.i643 = icmp eq i32 %3367, 0
  br i1 %cmp.not.i643, label %if.end.i647, label %nv40_gr_construct_shader.exit.cp_name.exit664_crit_edge

nv40_gr_construct_shader.exit.cp_name.exit664_crit_edge: ; preds = %nv40_gr_construct_shader.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit664

if.end.i647:                                      ; preds = %nv40_gr_construct_shader.exit
  %ctxprog_len.i644 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3368 = ptrtoint ptr %ctxprog_len.i644 to i32
  call void @__asan_load4_noabort(i32 %3368)
  %3369 = load i32, ptr %ctxprog_len.i644, align 4
  %3370 = ptrtoint ptr %arrayidx.i399 to i32
  call void @__asan_store4_noabort(i32 %3370)
  store i32 %3369, ptr %arrayidx.i399, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3369)
  %cmp232.not.i646 = icmp eq i32 %3369, 0
  br i1 %cmp232.not.i646, label %if.end.i647.cp_name.exit664_crit_edge, label %if.end.i647.for.body.i656_crit_edge

if.end.i647.for.body.i656_crit_edge:              ; preds = %if.end.i647
  br label %for.body.i656

if.end.i647.cp_name.exit664_crit_edge:            ; preds = %if.end.i647
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit664

for.body.i656:                                    ; preds = %for.inc.i663.for.body.i656_crit_edge, %if.end.i647.for.body.i656_crit_edge
  %3371 = phi i32 [ %3378, %for.inc.i663.for.body.i656_crit_edge ], [ %3369, %if.end.i647.for.body.i656_crit_edge ]
  %i.033.i649 = phi i32 [ %inc.i661, %for.inc.i663.for.body.i656_crit_edge ], [ 0, %if.end.i647.for.body.i656_crit_edge ]
  %arrayidx3.i650 = getelementptr i32, ptr %3365, i32 %i.033.i649
  %3372 = ptrtoint ptr %arrayidx3.i650 to i32
  call void @__asan_load4_noabort(i32 %3372)
  %3373 = load i32, ptr %arrayidx3.i650, align 4
  %3374 = and i32 %3373, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12581120, i32 %3374)
  %3375 = icmp eq i32 %3374, -12581120
  br i1 %3375, label %if.end11.i660, label %for.body.i656.for.inc.i663_crit_edge

for.body.i656.for.inc.i663_crit_edge:             ; preds = %for.body.i656
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i663

if.end11.i660:                                    ; preds = %for.body.i656
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i657 = and i32 %3373, 16711935
  %shl15.i658 = shl i32 %3371, 8
  %or.i659 = or i32 %and13.i657, %shl15.i658
  %3376 = ptrtoint ptr %arrayidx3.i650 to i32
  call void @__asan_store4_noabort(i32 %3376)
  store i32 %or.i659, ptr %arrayidx3.i650, align 4
  br label %for.inc.i663

for.inc.i663:                                     ; preds = %if.end11.i660, %for.body.i656.for.inc.i663_crit_edge
  %inc.i661 = add nuw i32 %i.033.i649, 1
  %3377 = ptrtoint ptr %ctxprog_len.i644 to i32
  call void @__asan_load4_noabort(i32 %3377)
  %3378 = load i32, ptr %ctxprog_len.i644, align 4
  %cmp2.i662 = icmp ult i32 %inc.i661, %3378
  br i1 %cmp2.i662, label %for.inc.i663.for.body.i656_crit_edge, label %for.inc.i663.cp_name.exit664_crit_edge

for.inc.i663.cp_name.exit664_crit_edge:           ; preds = %for.inc.i663
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit664

for.inc.i663.for.body.i656_crit_edge:             ; preds = %for.inc.i663
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i656

cp_name.exit664:                                  ; preds = %for.inc.i663.cp_name.exit664_crit_edge, %if.end.i647.cp_name.exit664_crit_edge, %nv40_gr_construct_shader.exit.cp_name.exit664_crit_edge
  %arrayidx.i665 = getelementptr %struct.nvkm_grctx, ptr %ctx, i32 0, i32 7, i32 1
  %3379 = ptrtoint ptr %arrayidx.i665 to i32
  call void @__asan_load4_noabort(i32 %3379)
  %3380 = load i32, ptr %arrayidx.i665, align 4
  %shl.i666 = shl i32 %3380, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i666)
  %cmp1.i667 = icmp eq i32 %shl.i666, 0
  %shl.i666.op = or i32 %shl.i666, 4194304
  %or9.i669 = select i1 %cmp1.i667, i32 -12582656, i32 %shl.i666.op
  %3381 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3381)
  %3382 = load ptr, ptr %ucode.i.i, align 4
  %3383 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3383)
  %3384 = load i32, ptr %mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3384)
  %cmp.not.i.i672 = icmp eq i32 %3384, 0
  br i1 %cmp.not.i.i672, label %do.body.i.i676, label %cp_name.exit664._cp_bra.exit682_crit_edge

cp_name.exit664._cp_bra.exit682_crit_edge:        ; preds = %cp_name.exit664
  call void @__sanitizer_cov_trace_pc() #7
  br label %_cp_bra.exit682

do.body.i.i676:                                   ; preds = %cp_name.exit664
  %ctxprog_len.i.i673 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3385 = ptrtoint ptr %ctxprog_len.i.i673 to i32
  call void @__asan_load4_noabort(i32 %3385)
  %3386 = load i32, ptr %ctxprog_len.i.i673, align 4
  %ctxprog_max.i.i674 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3387 = ptrtoint ptr %ctxprog_max.i.i674 to i32
  call void @__asan_load4_noabort(i32 %3387)
  %3388 = load i32, ptr %ctxprog_max.i.i674, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3386, i32 %3388)
  %cmp1.i.i675 = icmp eq i32 %3386, %3388
  br i1 %cmp1.i.i675, label %do.body4.i.i677, label %do.end10.i.i680, !prof !9

do.body4.i.i677:                                  ; preds = %do.body.i.i676
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i.i680:                                  ; preds = %do.body.i.i676
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i.i678 = add i32 %3386, 1
  %3389 = ptrtoint ptr %ctxprog_len.i.i673 to i32
  call void @__asan_store4_noabort(i32 %3389)
  store i32 %inc.i.i678, ptr %ctxprog_len.i.i673, align 4
  %arrayidx.i.i679 = getelementptr i32, ptr %3382, i32 %3386
  %3390 = ptrtoint ptr %arrayidx.i.i679 to i32
  call void @__asan_store4_noabort(i32 %3390)
  store i32 %or9.i669, ptr %arrayidx.i.i679, align 4
  %3391 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3391)
  %.pr1111 = load i32, ptr %mode.i.i, align 4
  br label %_cp_bra.exit682

_cp_bra.exit682:                                  ; preds = %do.end10.i.i680, %cp_name.exit664._cp_bra.exit682_crit_edge
  %3392 = phi i32 [ %3384, %cp_name.exit664._cp_bra.exit682_crit_edge ], [ %.pr1111, %do.end10.i.i680 ]
  %3393 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_load4_noabort(i32 %3393)
  %3394 = load i32, ptr %arrayidx.i97, align 4
  %shl.i684 = shl i32 %3394, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i684)
  %cmp1.i685 = icmp eq i32 %shl.i684, 0
  %shl.i684.op.op = or i32 %shl.i684, 4194309
  %or9.i688 = select i1 %cmp1.i685, i32 -12580859, i32 %shl.i684.op.op
  %3395 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3395)
  %3396 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3392)
  %cmp.not.i.i691 = icmp eq i32 %3392, 0
  br i1 %cmp.not.i.i691, label %do.body.i.i695, label %_cp_bra.exit682.cp_out.exit775_crit_edge

_cp_bra.exit682.cp_out.exit775_crit_edge:         ; preds = %_cp_bra.exit682
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

do.body.i.i695:                                   ; preds = %_cp_bra.exit682
  %ctxprog_len.i.i692 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %3397 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3397)
  %3398 = load i32, ptr %ctxprog_len.i.i692, align 4
  %ctxprog_max.i.i693 = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %3399 = ptrtoint ptr %ctxprog_max.i.i693 to i32
  call void @__asan_load4_noabort(i32 %3399)
  %3400 = load i32, ptr %ctxprog_max.i.i693, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3398, i32 %3400)
  %cmp1.i.i694 = icmp eq i32 %3398, %3400
  br i1 %cmp1.i.i694, label %do.body4.i.i696, label %_cp_bra.exit701, !prof !9

do.body4.i.i696:                                  ; preds = %do.body.i.i695
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_bra.exit701:                                  ; preds = %do.body.i.i695
  %inc.i.i697 = add i32 %3398, 1
  %3401 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_store4_noabort(i32 %3401)
  store i32 %inc.i.i697, ptr %ctxprog_len.i.i692, align 4
  %arrayidx.i.i698 = getelementptr i32, ptr %3396, i32 %3398
  %3402 = ptrtoint ptr %arrayidx.i.i698 to i32
  call void @__asan_store4_noabort(i32 %3402)
  store i32 %or9.i688, ptr %arrayidx.i.i698, align 4
  %3403 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3403)
  %.pr903 = load i32, ptr %mode.i.i, align 4
  %3404 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3404)
  %3405 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr903)
  %cmp.not.i704 = icmp eq i32 %.pr903, 0
  br i1 %cmp.not.i704, label %do.body.i708, label %_cp_bra.exit701.cp_out.exit775_crit_edge

_cp_bra.exit701.cp_out.exit775_crit_edge:         ; preds = %_cp_bra.exit701
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

do.body.i708:                                     ; preds = %_cp_bra.exit701
  %3406 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3406)
  %3407 = load i32, ptr %ctxprog_len.i.i692, align 4
  %3408 = ptrtoint ptr %ctxprog_max.i.i693 to i32
  call void @__asan_load4_noabort(i32 %3408)
  %3409 = load i32, ptr %ctxprog_max.i.i693, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3407, i32 %3409)
  %cmp1.i707 = icmp eq i32 %3407, %3409
  br i1 %cmp1.i707, label %do.body4.i709, label %cp_out.exit713, !prof !9

do.body4.i709:                                    ; preds = %do.body.i708
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

cp_out.exit713:                                   ; preds = %do.body.i708
  %inc.i710 = add i32 %3407, 1
  %3410 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_store4_noabort(i32 %3410)
  store i32 %inc.i710, ptr %ctxprog_len.i.i692, align 4
  %arrayidx.i711 = getelementptr i32, ptr %3405, i32 %3407
  %3411 = ptrtoint ptr %arrayidx.i711 to i32
  call void @__asan_store4_noabort(i32 %3411)
  store i32 6291465, ptr %arrayidx.i711, align 4
  %3412 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3412)
  %.pr905 = load i32, ptr %mode.i.i, align 4
  %3413 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3413)
  %3414 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr905)
  %cmp.not.i716 = icmp eq i32 %.pr905, 0
  br i1 %cmp.not.i716, label %if.end.i720, label %cp_out.exit713.cp_out.exit775_crit_edge

cp_out.exit713.cp_out.exit775_crit_edge:          ; preds = %cp_out.exit713
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

if.end.i720:                                      ; preds = %cp_out.exit713
  %3415 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3415)
  %3416 = load i32, ptr %ctxprog_len.i.i692, align 4
  %3417 = ptrtoint ptr %arrayidx.i97 to i32
  call void @__asan_store4_noabort(i32 %3417)
  store i32 %3416, ptr %arrayidx.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3416)
  %cmp232.not.i719 = icmp eq i32 %3416, 0
  br i1 %cmp232.not.i719, label %if.end.i720.cp_name.exit737_crit_edge, label %if.end.i720.for.body.i729_crit_edge

if.end.i720.for.body.i729_crit_edge:              ; preds = %if.end.i720
  br label %for.body.i729

if.end.i720.cp_name.exit737_crit_edge:            ; preds = %if.end.i720
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit737

for.body.i729:                                    ; preds = %for.inc.i736.for.body.i729_crit_edge, %if.end.i720.for.body.i729_crit_edge
  %3418 = phi i32 [ %3425, %for.inc.i736.for.body.i729_crit_edge ], [ %3416, %if.end.i720.for.body.i729_crit_edge ]
  %i.033.i722 = phi i32 [ %inc.i734, %for.inc.i736.for.body.i729_crit_edge ], [ 0, %if.end.i720.for.body.i729_crit_edge ]
  %arrayidx3.i723 = getelementptr i32, ptr %3414, i32 %i.033.i722
  %3419 = ptrtoint ptr %arrayidx3.i723 to i32
  call void @__asan_load4_noabort(i32 %3419)
  %3420 = load i32, ptr %arrayidx3.i723, align 4
  %3421 = and i32 %3420, -983296
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12580864, i32 %3421)
  %3422 = icmp eq i32 %3421, -12580864
  br i1 %3422, label %if.end11.i733, label %for.body.i729.for.inc.i736_crit_edge

for.body.i729.for.inc.i736_crit_edge:             ; preds = %for.body.i729
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i736

if.end11.i733:                                    ; preds = %for.body.i729
  call void @__sanitizer_cov_trace_pc() #7
  %and13.i730 = and i32 %3420, 16711935
  %shl15.i731 = shl i32 %3418, 8
  %or.i732 = or i32 %and13.i730, %shl15.i731
  %3423 = ptrtoint ptr %arrayidx3.i723 to i32
  call void @__asan_store4_noabort(i32 %3423)
  store i32 %or.i732, ptr %arrayidx3.i723, align 4
  br label %for.inc.i736

for.inc.i736:                                     ; preds = %if.end11.i733, %for.body.i729.for.inc.i736_crit_edge
  %inc.i734 = add nuw i32 %i.033.i722, 1
  %3424 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3424)
  %3425 = load i32, ptr %ctxprog_len.i.i692, align 4
  %cmp2.i735 = icmp ult i32 %inc.i734, %3425
  br i1 %cmp2.i735, label %for.inc.i736.for.body.i729_crit_edge, label %for.inc.i736.cp_name.exit737_crit_edge

for.inc.i736.cp_name.exit737_crit_edge:           ; preds = %for.inc.i736
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_name.exit737

for.inc.i736.for.body.i729_crit_edge:             ; preds = %for.inc.i736
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i729

cp_name.exit737:                                  ; preds = %for.inc.i736.cp_name.exit737_crit_edge, %if.end.i720.cp_name.exit737_crit_edge
  %3426 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3426)
  %.pr907.pr = load i32, ptr %mode.i.i, align 4
  %3427 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3427)
  %3428 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr907.pr)
  %cmp.not.i.i740 = icmp eq i32 %.pr907.pr, 0
  br i1 %cmp.not.i.i740, label %do.body.i.i744, label %cp_name.exit737.cp_out.exit775_crit_edge

cp_name.exit737.cp_out.exit775_crit_edge:         ; preds = %cp_name.exit737
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

do.body.i.i744:                                   ; preds = %cp_name.exit737
  %3429 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3429)
  %3430 = load i32, ptr %ctxprog_len.i.i692, align 4
  %3431 = ptrtoint ptr %ctxprog_max.i.i693 to i32
  call void @__asan_load4_noabort(i32 %3431)
  %3432 = load i32, ptr %ctxprog_max.i.i693, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3430, i32 %3432)
  %cmp1.i.i743 = icmp eq i32 %3430, %3432
  br i1 %cmp1.i.i743, label %do.body4.i.i745, label %_cp_set.exit750, !prof !9

do.body4.i.i745:                                  ; preds = %do.body.i.i744
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_set.exit750:                                  ; preds = %do.body.i.i744
  %inc.i.i746 = add i32 %3430, 1
  %3433 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_store4_noabort(i32 %3433)
  store i32 %inc.i.i746, ptr %ctxprog_len.i.i692, align 4
  %arrayidx.i.i747 = getelementptr i32, ptr %3428, i32 %3430
  %3434 = ptrtoint ptr %arrayidx.i.i747 to i32
  call void @__asan_store4_noabort(i32 %3434)
  store i32 7340037, ptr %arrayidx.i.i747, align 4
  %3435 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3435)
  %.pr909 = load i32, ptr %mode.i.i, align 4
  %3436 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3436)
  %3437 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr909)
  %cmp.not.i.i753 = icmp eq i32 %.pr909, 0
  br i1 %cmp.not.i.i753, label %do.body.i.i757, label %_cp_set.exit750.cp_out.exit775_crit_edge

_cp_set.exit750.cp_out.exit775_crit_edge:         ; preds = %_cp_set.exit750
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

do.body.i.i757:                                   ; preds = %_cp_set.exit750
  %3438 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3438)
  %3439 = load i32, ptr %ctxprog_len.i.i692, align 4
  %3440 = ptrtoint ptr %ctxprog_max.i.i693 to i32
  call void @__asan_load4_noabort(i32 %3440)
  %3441 = load i32, ptr %ctxprog_max.i.i693, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3439, i32 %3441)
  %cmp1.i.i756 = icmp eq i32 %3439, %3441
  br i1 %cmp1.i.i756, label %do.body4.i.i758, label %_cp_set.exit763, !prof !9

do.body4.i.i758:                                  ; preds = %do.body.i.i757
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

_cp_set.exit763:                                  ; preds = %do.body.i.i757
  %inc.i.i759 = add i32 %3439, 1
  %3442 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_store4_noabort(i32 %3442)
  store i32 %inc.i.i759, ptr %ctxprog_len.i.i692, align 4
  %arrayidx.i.i760 = getelementptr i32, ptr %3437, i32 %3439
  %3443 = ptrtoint ptr %arrayidx.i.i760 to i32
  call void @__asan_store4_noabort(i32 %3443)
  store i32 7340038, ptr %arrayidx.i.i760, align 4
  %3444 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load4_noabort(i32 %3444)
  %.pr911.pr.pr = load i32, ptr %mode.i.i, align 4
  %3445 = ptrtoint ptr %ucode.i.i to i32
  call void @__asan_load4_noabort(i32 %3445)
  %3446 = load ptr, ptr %ucode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr911.pr.pr)
  %cmp.not.i766 = icmp eq i32 %.pr911.pr.pr, 0
  br i1 %cmp.not.i766, label %do.body.i770, label %_cp_set.exit763.cp_out.exit775_crit_edge

_cp_set.exit763.cp_out.exit775_crit_edge:         ; preds = %_cp_set.exit763
  call void @__sanitizer_cov_trace_pc() #7
  br label %cp_out.exit775

do.body.i770:                                     ; preds = %_cp_set.exit763
  %3447 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_load4_noabort(i32 %3447)
  %3448 = load i32, ptr %ctxprog_len.i.i692, align 4
  %3449 = ptrtoint ptr %ctxprog_max.i.i693 to i32
  call void @__asan_load4_noabort(i32 %3449)
  %3450 = load i32, ptr %ctxprog_max.i.i693, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3448, i32 %3450)
  %cmp1.i769 = icmp eq i32 %3448, %3450
  br i1 %cmp1.i769, label %do.body4.i771, label %do.end10.i774, !prof !9

do.body4.i771:                                    ; preds = %do.body.i770
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nvkm/engine/gr/ctxnv40.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 32, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

do.end10.i774:                                    ; preds = %do.body.i770
  call void @__sanitizer_cov_trace_pc() #7
  %inc.i772 = add i32 %3448, 1
  %3451 = ptrtoint ptr %ctxprog_len.i.i692 to i32
  call void @__asan_store4_noabort(i32 %3451)
  store i32 %inc.i772, ptr %ctxprog_len.i.i692, align 4
  %arrayidx.i773 = getelementptr i32, ptr %3446, i32 %3448
  %3452 = ptrtoint ptr %arrayidx.i773 to i32
  call void @__asan_store4_noabort(i32 %3452)
  store i32 6291470, ptr %arrayidx.i773, align 4
  br label %cp_out.exit775

cp_out.exit775:                                   ; preds = %do.end10.i774, %_cp_set.exit763.cp_out.exit775_crit_edge, %_cp_set.exit750.cp_out.exit775_crit_edge, %cp_name.exit737.cp_out.exit775_crit_edge, %cp_out.exit713.cp_out.exit775_crit_edge, %_cp_bra.exit701.cp_out.exit775_crit_edge, %_cp_bra.exit682.cp_out.exit775_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv40_grctx_init(ptr noundef %device, ptr nocapture noundef writeonly %size) local_unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.nvkm_grctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 1024) #8
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %ctx) #5
  %1 = getelementptr inbounds i8, ptr %ctx, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 152)
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %device, ptr %ctx, align 4
  %mode = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mode, align 4
  %ucode = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %ucode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %ucode, align 4
  %ctxprog_max = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 4
  %6 = ptrtoint ptr %ctxprog_max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 256, ptr %ctxprog_max, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call fastcc void @nv40_grctx_generate(ptr noundef nonnull %ctx)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !11
  call void @arm_heavy_mb() #5
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %device, i32 0, i32 11
  %7 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4195108
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !12
  %ctxprog_len = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 5
  %9 = ptrtoint ptr %ctxprog_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctxprog_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.not = icmp eq i32 %10, 0
  br i1 %cmp16.not, label %if.end.for.end_crit_edge, label %if.end.do.body2_crit_edge

if.end.do.body2_crit_edge:                        ; preds = %if.end
  br label %do.body2

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %if.end.do.body2_crit_edge
  %i.017 = phi i32 [ %inc, %do.body2.do.body2_crit_edge ], [ 0, %if.end.do.body2_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !13
  call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i32, ptr %call7.i, i32 %i.017
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pri, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 4195112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %12) #5, !srcloc !12
  %inc = add nuw i32 %i.017, 1
  %15 = ptrtoint ptr %ctxprog_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctxprog_len, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %do.body2.do.body2_crit_edge, label %do.body2.for.end_crit_edge

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body2

for.end:                                          ; preds = %do.body2.for.end_crit_edge, %if.end.for.end_crit_edge
  %ctxvals_pos = getelementptr inbounds %struct.nvkm_grctx, ptr %ctx, i32 0, i32 8
  %17 = ptrtoint ptr %ctxvals_pos to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctxvals_pos, align 4
  %mul = shl i32 %18, 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul, ptr %size, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %ctx) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2156214409, i64 2156214921, i64 2156214446, i64 2156214502, i64 2156214536, i64 2156214560, i64 2156214601, i64 2156214622, i64 2156214650, i64 2156214684}
!11 = !{i64 2156274377}
!12 = !{i64 5401536}
!13 = !{i64 2156274781}
