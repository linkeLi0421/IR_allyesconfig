; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c"
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

@ramgddr3_cl_hi = internal constant { [9 x %struct.ramxlat], [56 x i8] } { [9 x %struct.ramxlat] [%struct.ramxlat { i32 10, i8 2 }, %struct.ramxlat { i32 11, i8 3 }, %struct.ramxlat { i32 12, i8 4 }, %struct.ramxlat { i32 13, i8 5 }, %struct.ramxlat { i32 14, i8 6 }, %struct.ramxlat { i32 15, i8 7 }, %struct.ramxlat { i32 16, i8 0 }, %struct.ramxlat { i32 17, i8 1 }, %struct.ramxlat { i32 -1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@ramgddr3_cl_lo = internal constant { [10 x %struct.ramxlat], [48 x i8] } { [10 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 5 }, %struct.ramxlat { i32 7, i8 7 }, %struct.ramxlat { i32 8, i8 0 }, %struct.ramxlat { i32 9, i8 1 }, %struct.ramxlat { i32 10, i8 2 }, %struct.ramxlat { i32 11, i8 3 }, %struct.ramxlat { i32 12, i8 8 }, %struct.ramxlat { i32 13, i8 9 }, %struct.ramxlat { i32 14, i8 6 }, %struct.ramxlat { i32 -1, i8 0 }], [48 x i8] zeroinitializer }, align 32
@ramgddr3_wr_lo = internal constant { [11 x %struct.ramxlat], [40 x i8] } { [11 x %struct.ramxlat] [%struct.ramxlat { i32 5, i8 2 }, %struct.ramxlat { i32 7, i8 4 }, %struct.ramxlat { i32 8, i8 5 }, %struct.ramxlat { i32 9, i8 6 }, %struct.ramxlat { i32 10, i8 7 }, %struct.ramxlat { i32 11, i8 0 }, %struct.ramxlat { i32 13, i8 1 }, %struct.ramxlat { i32 4, i8 0 }, %struct.ramxlat { i32 6, i8 3 }, %struct.ramxlat { i32 12, i8 1 }, %struct.ramxlat { i32 -1, i8 0 }], [40 x i8] zeroinitializer }, align 32
@switch.table.nvkm_gddr3_calc = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 7), ptr @ramgddr3_wr_lo, ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 8), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 1), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 2), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 3), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 4), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 5), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 9), ptr getelementptr inbounds ([11 x %struct.ramxlat], ptr @ramgddr3_wr_lo, i32 0, i32 6)], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"ramgddr3_cl_hi\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 55, i32 1 }
@___asan_gen_.4 = private unnamed_addr constant [15 x i8] c"ramgddr3_cl_lo\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 44, i32 1 }
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"ramgddr3_wr_lo\00", align 1
@___asan_gen_.8 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 62, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"switch.table.nvkm_gddr3_calc\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @ramgddr3_cl_hi, ptr @ramgddr3_cl_lo, ptr @ramgddr3_wr_lo, ptr @switch.table.nvkm_gddr3_calc], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramgddr3_cl_hi to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramgddr3_cl_lo to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ramgddr3_wr_lo to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nvkm_gddr3_calc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_gddr3_calc(ptr nocapture noundef %ram) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  %next = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 13
  %0 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next, align 8
  %timing_ver = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 12
  %2 = ptrtoint ptr %timing_ver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing_ver, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 16, label %lor.lhs.false
    i32 32, label %sw.epilog.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #3
  %arrayidx = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = lshr i32 %6, 7
  %shr = and i32 %and, 31
  %and31 = and i32 %6, 31
  %arrayidx36 = getelementptr %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 14, i32 2
  %7 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx36, align 4
  %and37 = lshr i32 %8, 16
  %shr38 = and i32 %and37, 127
  %arrayidx39 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx39, align 4
  %and40 = and i32 %10, 1
  %11 = xor i32 %and40, 1
  %12 = and i32 %10, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool48.not = icmp eq i32 %12, 0
  %lnot.ext50 = zext i1 %tobool48.not to i32
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %13 = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 15
  %timing_10_CWL = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 15, i32 1, i32 4
  %14 = ptrtoint ptr %timing_10_CWL to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load = load i64, ptr %timing_10_CWL, align 4
  %bf.lshr = lshr i64 %bf.load, 40
  %15 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %15, 255
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 12)
  %bf.load5 = load i96, ptr %13, align 4
  %bf.lshr6 = lshr i96 %bf.load5, 72
  %17 = trunc i96 %bf.lshr6 to i32
  %bf.cast8 = and i32 %17, 255
  %bf.lshr12 = lshr i96 %bf.load5, 88
  %bf.cast13 = trunc i96 %bf.lshr12 to i32
  %ramcfg_DLLoff = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 8
  %18 = ptrtoint ptr %ramcfg_DLLoff to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ramcfg_DLLoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not = icmp eq i32 %19, 0
  %lnot.ext = zext i1 %tobool.not to i32
  %20 = trunc i96 %bf.load5 to i32
  %21 = lshr i32 %20, 5
  %bf.cast21 = and i32 %21, 7
  %ramcfg_RON = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 9
  %22 = ptrtoint ptr %ramcfg_RON to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ramcfg_RON, align 4
  %ramcfg_timing = getelementptr inbounds %struct.nvkm_ram_data, ptr %1, i32 0, i32 1, i32 7
  %24 = ptrtoint ptr %ramcfg_timing to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ramcfg_timing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %25)
  %cmp56 = icmp eq i32 %25, 255
  br i1 %cmp56, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.epilog.thread
  %RON.0189 = phi i32 [ %lnot.ext50, %sw.epilog.thread ], [ %23, %lor.lhs.false.if.then_crit_edge ]
  %DLL.0187 = phi i32 [ %11, %sw.epilog.thread ], [ %lnot.ext, %lor.lhs.false.if.then_crit_edge ]
  %CWL.0185 = phi i32 [ %shr, %sw.epilog.thread ], [ %bf.cast, %lor.lhs.false.if.then_crit_edge ]
  %WR.0183 = phi i32 [ %shr38, %sw.epilog.thread ], [ %bf.cast13, %lor.lhs.false.if.then_crit_edge ]
  %CL.0181 = phi i32 [ %and31, %sw.epilog.thread ], [ %bf.cast8, %lor.lhs.false.if.then_crit_edge ]
  %arrayidx58 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx58, align 4
  %and59 = lshr i32 %27, 2
  %shr60 = and i32 %and59, 3
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %RON.0188 = phi i32 [ %RON.0189, %if.then ], [ %23, %lor.lhs.false.if.end_crit_edge ]
  %DLL.0186 = phi i32 [ %DLL.0187, %if.then ], [ %lnot.ext, %lor.lhs.false.if.end_crit_edge ]
  %CWL.0184 = phi i32 [ %CWL.0185, %if.then ], [ %bf.cast, %lor.lhs.false.if.end_crit_edge ]
  %WR.0182 = phi i32 [ %WR.0183, %if.then ], [ %bf.cast13, %lor.lhs.false.if.end_crit_edge ]
  %CL.0180 = phi i32 [ %CL.0181, %if.then ], [ %bf.cast8, %lor.lhs.false.if.end_crit_edge ]
  %ODT.1 = phi i32 [ %shr60, %if.then ], [ %bf.cast21, %lor.lhs.false.if.end_crit_edge ]
  %mr61 = getelementptr inbounds %struct.nvkm_ram, ptr %ram, i32 0, i32 11
  %arrayidx62 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx62, align 4
  %and63 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %cond = select i1 %tobool64.not, ptr @ramgddr3_cl_lo, ptr @ramgddr3_cl_hi
  %30 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp8.i = icmp sgt i32 %31, -1
  br i1 %cmp8.i, label %if.end.while.body.i_crit_edge, label %if.end.ramxlat.exit_crit_edge

if.end.ramxlat.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %32 = phi i32 [ %36, %if.end.i.while.body.i_crit_edge ], [ %31, %if.end.while.body.i_crit_edge ]
  %xlat.addr.09.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %cond, %if.end.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %CL.0180)
  %cmp3.i = icmp eq i32 %32, %CL.0180
  br i1 %cmp3.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #3
  %enc.i = getelementptr inbounds %struct.ramxlat, ptr %xlat.addr.09.i, i32 0, i32 1
  %33 = ptrtoint ptr %enc.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enc.i, align 4
  %conv.i = zext i8 %34 to i32
  br label %ramxlat.exit

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.ramxlat, ptr %xlat.addr.09.i, i32 1
  %35 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.i = icmp sgt i32 %36, -1
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.ramxlat.exit_crit_edge

if.end.i.ramxlat.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #3
  br label %while.body.i

ramxlat.exit:                                     ; preds = %if.end.i.ramxlat.exit_crit_edge, %if.then.i, %if.end.ramxlat.exit_crit_edge
  %retval.0.i = phi i32 [ %conv.i, %if.then.i ], [ -22, %if.end.ramxlat.exit_crit_edge ], [ -22, %if.end.i.ramxlat.exit_crit_edge ]
  %switch.tableidx = add nsw i32 %WR.0182, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %switch.tableidx)
  %37 = icmp ult i32 %switch.tableidx, 10
  br i1 %37, label %switch.lookup, label %ramxlat.exit.ramxlat.exit172_crit_edge

ramxlat.exit.ramxlat.exit172_crit_edge:           ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  br label %ramxlat.exit172

switch.lookup:                                    ; preds = %ramxlat.exit
  call void @__sanitizer_cov_trace_pc() #3
  %switch.gep = getelementptr inbounds [10 x ptr], ptr @switch.table.nvkm_gddr3_calc, i32 0, i32 %switch.tableidx
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %enc.i165 = getelementptr inbounds %struct.ramxlat, ptr %switch.load, i32 0, i32 1
  %39 = ptrtoint ptr %enc.i165 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %enc.i165, align 4
  %conv.i166 = zext i8 %40 to i32
  br label %ramxlat.exit172

ramxlat.exit172:                                  ; preds = %switch.lookup, %ramxlat.exit.ramxlat.exit172_crit_edge
  %retval.0.i171 = phi i32 [ %conv.i166, %switch.lookup ], [ -22, %ramxlat.exit.ramxlat.exit172_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp66 = icmp slt i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %CWL.0184)
  %cmp68 = icmp eq i32 %CWL.0184, 0
  %or.cond = select i1 %cmp66, i1 true, i1 %cmp68
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %CWL.0184)
  %cmp70 = icmp ugt i32 %CWL.0184, 7
  %or.cond160 = select i1 %or.cond, i1 true, i1 %cmp70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i171)
  %cmp72 = icmp slt i32 %retval.0.i171, 0
  %or.cond161 = select i1 %or.cond160, i1 true, i1 %cmp72
  br i1 %or.cond161, label %ramxlat.exit172.cleanup_crit_edge, label %if.end74

ramxlat.exit172.cleanup_crit_edge:                ; preds = %ramxlat.exit172
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.end74:                                         ; preds = %ramxlat.exit172
  call void @__sanitizer_cov_trace_pc() #3
  %41 = ptrtoint ptr %mr61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mr61, align 4
  %and77 = and i32 %42, -3957
  %and78 = shl nuw nsw i32 %CWL.0184, 9
  %shl = and i32 %and78, 3584
  %and81 = shl nuw nsw i32 %retval.0.i, 4
  %shl82 = and i32 %and81, 112
  %and86 = lshr i32 %retval.0.i, 1
  %43 = and i32 %and86, 4
  %or = or i32 %shl82, %shl
  %or85 = or i32 %or, %43
  %or90 = or i32 %or85, %and77
  store i32 %or90, ptr %mr61, align 4
  %arrayidx92 = getelementptr %struct.nvkm_ram, ptr %ram, i32 0, i32 11, i32 1
  %44 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx92, align 4
  %and93 = and i32 %45, -1021
  %and94 = shl nuw nsw i32 %ODT.1, 2
  %shl95 = and i32 %and94, 12
  %and99 = shl i32 %RON.0188, 8
  %shl100 = and i32 %and99, 768
  %and104 = shl nuw nsw i32 %retval.0.i171, 4
  %shl105 = and i32 %and104, 48
  %and109 = shl nuw nsw i32 %retval.0.i171, 5
  %shl110 = and i32 %and109, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %DLL.0186)
  %tobool114.not = icmp eq i32 %DLL.0186, 0
  %shl117 = select i1 %tobool114.not, i32 64, i32 0
  %or98 = or i32 %shl117, %shl100
  %or103 = or i32 %or98, %shl95
  %or108 = or i32 %or103, %shl105
  %or113 = or i32 %or108, %shl110
  %or120 = or i32 %or113, %and93
  %46 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or120, ptr %arrayidx92, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %ramxlat.exit172.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end74 ], [ -38, %entry.cleanup_crit_edge ], [ -22, %ramxlat.exit172.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @ramgddr3_cl_hi, !1, !"ramgddr3_cl_hi", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c", i32 55, i32 1}
!2 = !{ptr @ramgddr3_cl_lo, !3, !"ramgddr3_cl_lo", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c", i32 44, i32 1}
!4 = !{ptr @ramgddr3_wr_lo, !5, !"ramgddr3_wr_lo", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/fb/gddr3.c", i32 62, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
