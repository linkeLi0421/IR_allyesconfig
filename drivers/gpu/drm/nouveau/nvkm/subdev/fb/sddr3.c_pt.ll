; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ramxlat = type { i32, i8 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.140, i32, i32, i32, i32, i32, i32, %union.anon.144, i32, i32, [11 x i32], %union.anon.148 }>
%union.anon.140 = type { %struct.anon.143 }
%struct.anon.143 = type { i64 }
%union.anon.144 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i8 }
%union.anon.148 = type <{ %struct.anon.150, [12 x i8] }>
%struct.anon.150 = type { i48 }

@ramddr3_cwl = internal constant { [7 x %struct.ramxlat], [40 x i8] } { [7 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 0 }, %struct.ramxlat { i32 6, i8 1 }, %struct.ramxlat { i32 7, i8 2 }, %struct.ramxlat { i32 8, i8 3 }, %struct.ramxlat { i32 9, i8 4 }, %struct.ramxlat { i32 10, i8 5 }, %struct.ramxlat { i32 -1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@ramddr3_cl = internal constant { [11 x %struct.ramxlat], [40 x i8] } { [11 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 2 }, %struct.ramxlat { i32 6, i8 4 }, %struct.ramxlat { i32 7, i8 6 }, %struct.ramxlat { i32 8, i8 8 }, %struct.ramxlat { i32 9, i8 10 }, %struct.ramxlat { i32 10, i8 12 }, %struct.ramxlat { i32 11, i8 14 }, %struct.ramxlat { i32 12, i8 1 }, %struct.ramxlat { i32 13, i8 3 }, %struct.ramxlat { i32 14, i8 5 }, %struct.ramxlat { i32 -1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@ramddr3_wr = internal constant { [10 x %struct.ramxlat], [48 x i8] } { [10 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 1 }, %struct.ramxlat { i32 6, i8 2 }, %struct.ramxlat { i32 7, i8 3 }, %struct.ramxlat { i32 8, i8 4 }, %struct.ramxlat { i32 10, i8 5 }, %struct.ramxlat { i32 12, i8 6 }, %struct.ramxlat { i32 14, i8 7 }, %struct.ramxlat { i32 15, i8 7 }, %struct.ramxlat { i32 16, i8 0 }, %struct.ramxlat { i32 -1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@switch.table.nvkm_sddr3_calc = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @ramddr3_cwl, ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 4), ptr getelementptr inbounds ([7 x %struct.ramxlat], ptr @ramddr3_cwl, i32 0, i32 5)], [40 x i8] zeroinitializer }, align 32
@switch.table.nvkm_sddr3_calc.1 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @ramddr3_cl, ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 1), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 2), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 3), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 4), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 5), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 6), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 7), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 8), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramddr3_cl, i32 0, i32 9)], [56 x i8] zeroinitializer }, align 32
@switch.table.nvkm_sddr3_calc.2 = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 1), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 2), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 3), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 4), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 5), ptr @ramddr3_wr, ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 6), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 7), ptr getelementptr inbounds ([10 x %struct.ramxlat], ptr @ramddr3_wr, i32 0, i32 8)], [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"ramddr3_cwl\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 62, i32 1 }
@___asan_gen_.6 = private unnamed_addr constant [11 x i8] c"ramddr3_cl\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 45, i32 1 }
@___asan_gen_.9 = private unnamed_addr constant [11 x i8] c"ramddr3_wr\00", align 1
@___asan_gen_.10 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 54, i32 1 }
@___asan_gen_.12 = private unnamed_addr constant [29 x i8] c"switch.table.nvkm_sddr3_calc\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [31 x i8] c"switch.table.nvkm_sddr3_calc.1\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"switch.table.nvkm_sddr3_calc.2\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @ramddr3_cwl, ptr @ramddr3_cl, ptr @ramddr3_wr, ptr @switch.table.nvkm_sddr3_calc, ptr @switch.table.nvkm_sddr3_calc.1, ptr @switch.table.nvkm_sddr3_calc.2], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramddr3_cwl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramddr3_cl to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramddr3_wr to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_sddr3_calc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_sddr3_calc.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_sddr3_calc.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_sddr3_calc(ptr nocapture noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 13
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 8
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  %timing_ver = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %timing_ver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timing_ver, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 32, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %timing_hdr = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 13
  %7 = ptrtoint ptr %timing_hdr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timing_hdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %8)
  %cmp = icmp ult i32 %8, 23
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #3
  %9 = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 15
  %timing_10_CWL = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 15, i32 1, i32 4
  %10 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr = lshr i64 %bf.load, 40
  %11 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %11, 255
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 12)
  %bf.load9 = load i96, ptr %9, align 4
  %bf.lshr10 = lshr i96 %bf.load9, 72
  %13 = trunc i96 %bf.lshr10 to i32
  %bf.cast12 = and i32 %13, 255
  %bf.lshr16 = lshr i96 %bf.load9, 88
  %bf.cast17 = trunc i96 %bf.lshr16 to i32
  %14 = trunc i96 %bf.load9 to i32
  %15 = lshr i32 %14, 5
  %bf.cast23 = and i32 %15, 7
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %17, 7
  %shr = and i32 %and, 31
  %and31 = and i32 %17, 31
  %arrayidx36 = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 2
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx36, align 4
  %and37 = lshr i32 %19, 16
  %shr38 = and i32 %and37, 127
  %arrayidx39 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx39, align 4
  %and40 = lshr i32 %21, 2
  %shr41 = and i32 %and40, 1
  %and44 = lshr i32 %21, 5
  %shr45 = and i32 %and44, 2
  %or = or i32 %shr41, %shr45
  %and48 = lshr i32 %21, 7
  %shr49 = and i32 %and48, 4
  %or50 = or i32 %or, %shr49
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %if.end
  %CWL.0 = phi i32 [ %shr, %sw.bb24 ], [ %bf.cast, %if.end ]
  %CL.0 = phi i32 [ %and31, %sw.bb24 ], [ %bf.cast12, %if.end ]
  %WR.0 = phi i32 [ %shr38, %sw.bb24 ], [ %bf.cast17, %if.end ]
  %ODT.0 = phi i32 [ %or50, %sw.bb24 ], [ %bf.cast23, %if.end ]
  %trunc = trunc i32 %CWL.0 to i8
  %switch.tableidx = add i8 %trunc, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %22 = icmp ult i8 %switch.tableidx, 6
  br i1 %22, label %switch.lookup, label %sw.epilog.ramxlat.exit_crit_edge

sw.epilog.ramxlat.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit

switch.lookup:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #3
  %23 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.nvkm_sddr3_calc, i32 0, i32 %23
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %enc.i = getelementptr inbounds %struct.ramxlat, ptr %switch.load, i32 0, i32 1
  %25 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %enc.i, align 4
  %conv.i = zext i8 %26 to i32
  br label %ramxlat.exit

ramxlat.exit:                                     ; preds = %switch.lookup, %sw.epilog.ramxlat.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %switch.lookup ], [ -22, %sw.epilog.ramxlat.exit_crit_edge ]
  %trunc198 = trunc i32 %CL.0 to i8
  %switch.tableidx200 = add i8 %trunc198, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %switch.tableidx200)
  %27 = icmp ult i8 %switch.tableidx200, 10
  br i1 %27, label %switch.lookup199, label %ramxlat.exit.ramxlat.exit155_crit_edge

ramxlat.exit.ramxlat.exit155_crit_edge:           ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit155

switch.lookup199:                                 ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  %28 = sext i8 %switch.tableidx200 to i32
  %switch.gep201 = getelementptr inbounds [10 x ptr], ptr @switch.table.nvkm_sddr3_calc.1, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep201 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load202 = load ptr, ptr %switch.gep201, align 4
  %enc.i148 = getelementptr inbounds %struct.ramxlat, ptr %switch.load202, i32 0, i32 1
  %30 = ptrtoint ptr %enc.i148 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %enc.i148, align 4
  %conv.i149 = zext i8 %31 to i32
  br label %ramxlat.exit155

ramxlat.exit155:                                  ; preds = %switch.lookup199, %ramxlat.exit.ramxlat.exit155_crit_edge
  %retval.0.i154 = phi i32 [ %conv.i149, %switch.lookup199 ], [ -22, %ramxlat.exit.ramxlat.exit155_crit_edge ]
  %switch.tableidx204 = add nsw i32 %WR.0, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %switch.tableidx204)
  %32 = icmp ult i32 %switch.tableidx204, 12
  br i1 %32, label %switch.hole_check, label %ramxlat.exit155.cleanup_crit_edge

ramxlat.exit155.cleanup_crit_edge:                ; preds = %ramxlat.exit155
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

switch.hole_check:                                ; preds = %ramxlat.exit155
  %switch.maskindex = trunc i32 %switch.tableidx204 to i16
  %switch.shifted = lshr i16 3759, %switch.maskindex
  %33 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %switch.lobit.not = icmp eq i16 %33, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup205

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

switch.lookup205:                                 ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i154)
  %cmp53 = icmp slt i32 %retval.0.i154, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp54 = icmp slt i32 %retval.0.i, 0
  %or.cond = select i1 %cmp53, i1 true, i1 %cmp54
  br i1 %or.cond, label %switch.lookup205.cleanup_crit_edge, label %if.end58

switch.lookup205.cleanup_crit_edge:               ; preds = %switch.lookup205
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end58:                                         ; preds = %switch.lookup205
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep206 = getelementptr inbounds [12 x ptr], ptr @switch.table.nvkm_sddr3_calc.2, i32 0, i32 %switch.tableidx204
  %34 = ptrtoint ptr %switch.gep206 to i32
  call void @__asan_load4_noabort(i32 %34)
  %switch.load207 = load ptr, ptr %switch.gep206, align 4
  %enc.i159 = getelementptr inbounds %struct.ramxlat, ptr %switch.load207, i32 0, i32 1
  %35 = ptrtoint ptr %enc.i159 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %enc.i159, align 4
  %conv.i160 = zext i8 %36 to i32
  %mr59 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 11
  %37 = ptrtoint ptr %mr59 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mr59, align 4
  %and61 = and i32 %38, -3957
  %and62 = shl nuw nsw i32 %conv.i160, 9
  %shl = and i32 %and62, 3584
  %and66 = shl nuw nsw i32 %retval.0.i154, 3
  %shl67 = and i32 %and66, 112
  %and71 = shl nuw nsw i32 %retval.0.i154, 2
  %shl72 = and i32 %and71, 4
  %or65 = or i32 %shl72, %shl67
  %or70 = or i32 %or65, %and61
  %or75 = or i32 %or70, %shl
  store i32 %or75, ptr %mr59, align 4
  %arrayidx77 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %39 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx77, align 4
  %and78 = and i32 %40, -582
  %and79 = shl nsw i32 %ODT.0, 2
  %shl80 = and i32 %and79, 4
  %and84 = shl nsw i32 %ODT.0, 5
  %shl85 = and i32 %and84, 64
  %and89 = shl nsw i32 %ODT.0, 7
  %shl90 = and i32 %and89, 512
  %lnot.ext96 = zext i1 %tobool to i32
  %or83 = or i32 %shl80, %lnot.ext96
  %or88 = or i32 %or83, %shl85
  %or93 = or i32 %or88, %shl90
  %or99 = or i32 %or93, %and78
  store i32 %or99, ptr %arrayidx77, align 4
  %arrayidx101 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 2
  %41 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx101, align 4
  %and102 = and i32 %42, -57
  %and103 = shl nuw nsw i32 %retval.0.i, 3
  %shl104 = and i32 %and103, 56
  %or107 = or i32 %and102, %shl104
  store i32 %or107, ptr %arrayidx101, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %switch.lookup205.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %ramxlat.exit155.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -38, %sw.bb.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ -22, %switch.lookup205.cleanup_crit_edge ], [ -22, %ramxlat.exit155.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ramddr3_cwl, !1, !"ramddr3_cwl", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c", i32 62, i32 1}
!2 = !{ptr @ramddr3_cl, !3, !"ramddr3_cl", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c", i32 45, i32 1}
!4 = !{ptr @ramddr3_wr, !5, !"ramddr3_wr", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/sddr3.c", i32 54, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
