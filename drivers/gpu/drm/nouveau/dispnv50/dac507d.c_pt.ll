; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/dispnv50/dac507d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/dac507d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_outp_func = type { ptr, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.124, %struct.anon.125, %struct.nv50_head_mode, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.131, %struct.anon.132, %struct.anon.133, %struct.anon.134, %struct.anon.136, %struct.nv50_crc_atom, %struct.anon.137, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.anon.124 = type { i32, i32, i32 }
%struct.anon.125 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.126, %struct.anon.127 }
%struct.anon.126 = type { i16, i16, i16, i16 }
%struct.anon.127 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.128 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.129 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.130 = type { i8, i32, [6 x i8], i8 }
%struct.anon.131 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.132 = type { i8 }
%struct.anon.133 = type { i8 }
%struct.anon.134 = type { %struct.anon.135 }
%struct.anon.135 = type { i16, i16 }
%struct.anon.136 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.137 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.138 }
%struct.anon.138 = type { i16 }

@dac507d = dso_local constant { %struct.nv50_outp_func, [24 x i8] } { %struct.nv50_outp_func { ptr @dac507d_ctrl, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/nouveau/dispnv50/dac507d.c\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mthd\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"[%s/%08x:%s] %08x: %08x mthd 0x%04x size %d - %s\0A\00", [46 x i8] zeroinitializer }, align 32
@__func__.dac507d_ctrl = private unnamed_addr constant [13 x i8] c"dac507d_ctrl\00", align 1
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_DAC_SET_CONTROL(or)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"[%s/%08x:%s] %08x: %08x-> NV507D_DAC_SET_POLARITY(or)\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [8 x i8] c"dac507d\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 50, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [46 x i8] c"../drivers/gpu/drm/nouveau/dispnv50/dac507d.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 44, i32 2 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @dac507d, ptr @.str, ptr @.str.2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac507d to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac507d_ctrl(ptr nocapture noundef readonly %core, i32 noundef %or, i32 noundef %ctrl, ptr noundef readonly %asyh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %push1 = getelementptr inbounds %struct.nv50_core, ptr %core, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %push1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push1, align 8
  %tobool.not = icmp eq ptr %asyh, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %or2 = getelementptr inbounds %struct.nv50_head_atom, ptr %asyh, i32 0, i32 11
  %2 = ptrtoint ptr %or2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %or2, align 8
  %bf.lshr = lshr i8 %bf.load, 7
  %3 = lshr i8 %bf.load, 5
  %4 = and i8 %3, 2
  %or13518 = or i8 %4, %bf.lshr
  %conv14 = zext i8 %or13518 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %sync.0 = phi i32 [ %conv14, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %6, i32 3
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %8
  br i1 %cmp.not.i, label %if.end.do.body18_crit_edge, label %if.then.i

if.end.do.body18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body18

if.then.i:                                        ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call.i = tail call i32 %10(ptr noundef %1, i32 noundef 3) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.do.body18_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then.i.do.body18_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %do.body18

do.body18:                                        ; preds = %if.then.i.do.body18_crit_edge, %if.end.do.body18_crit_edge
  %11 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %12, i32 3
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %mul = shl i32 %or, 7
  %add20 = add i32 %mul, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %add20)
  %tobool55.not = icmp ult i32 %add20, 4096
  br i1 %tobool55.not, label %do.body18.if.end110_crit_edge, label %do.end75, !prof !22

do.body18.if.end110_crit_edge:                    ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end110

do.end75:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.2) #2
  br label %if.end110

if.end110:                                        ; preds = %do.end75, %do.body18.if.end110_crit_edge
  %14 = and i32 %add20, 3968
  %15 = or i32 %14, 524288
  %16 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cur.i, align 4
  %18 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %seg.i, align 8
  %cmp130.not = icmp ult ptr %17, %19
  br i1 %cmp130.not, label %if.end110.if.end155_crit_edge, label %do.end149, !prof !22

if.end110.if.end155_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end155

do.end149:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end155

if.end155:                                        ; preds = %do.end149, %if.end110.if.end155_crit_edge
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cur.i, align 4
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %end.i, align 4
  %cmp168.not = icmp ult ptr %21, %23
  br i1 %cmp168.not, label %if.end155.if.end193_crit_edge, label %do.end187, !prof !22

if.end155.if.end193_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end193

do.end187:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end193

if.end193:                                        ; preds = %do.end187, %if.end155.if.end193_crit_edge
  %24 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cur.i, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 6
  %26 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %27 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %28 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mem, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %client = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 1
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client, align 4
  %name = getelementptr inbounds %struct.nvif_object, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 3
  %38 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %handle, align 4
  %name210 = getelementptr inbounds %struct.nvif_push, ptr %1, i32 0, i32 2, i32 0, i32 2
  %40 = ptrtoint ptr %name210 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name210, align 8
  tail call void (ptr, ptr, ...) %33(ptr noundef %mem, ptr noundef nonnull @.str.6, ptr noundef %37, i32 noundef %39, ptr noundef %41, i32 noundef %sub.ptr.sub, i32 noundef %15, i32 noundef %add20, i32 noundef 2, ptr noundef nonnull @__func__.dac507d_ctrl) #2
  %42 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cur.i, align 4
  %incdec.ptr = getelementptr i32, ptr %43, i32 1
  store ptr %incdec.ptr, ptr %cur.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %15, ptr %43, align 4
  %45 = load ptr, ptr %cur.i, align 4
  %46 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %seg.i, align 8
  %cmp230.not = icmp ult ptr %45, %47
  br i1 %cmp230.not, label %if.end193.if.end255_crit_edge, label %do.end249, !prof !22

if.end193.if.end255_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end255

do.end249:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end255

if.end255:                                        ; preds = %do.end249, %if.end193.if.end255_crit_edge
  %48 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cur.i, align 4
  %50 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %end.i, align 4
  %cmp269.not = icmp ult ptr %49, %51
  br i1 %cmp269.not, label %if.end255.if.end294_crit_edge, label %do.end288, !prof !22

if.end255.if.end294_crit_edge:                    ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end294

do.end288:                                        ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end294

if.end294:                                        ; preds = %do.end288, %if.end255.if.end294_crit_edge
  %52 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cur.i, align 4
  %54 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast312 = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast313 = ptrtoint ptr %55 to i32
  %sub.ptr.sub314 = sub i32 %sub.ptr.lhs.cast312, %sub.ptr.rhs.cast313
  %56 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mem, align 8
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %62 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client, align 4
  %name326 = getelementptr inbounds %struct.nvif_object, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %name326 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name326, align 8
  %66 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %handle, align 4
  %68 = ptrtoint ptr %name210 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %name210, align 8
  tail call void (ptr, ptr, ...) %61(ptr noundef %mem, ptr noundef nonnull @.str.7, ptr noundef %65, i32 noundef %67, ptr noundef %69, i32 noundef %sub.ptr.sub314, i32 noundef %ctrl) #2
  %70 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cur.i, align 4
  %incdec.ptr335 = getelementptr i32, ptr %71, i32 1
  store ptr %incdec.ptr335, ptr %cur.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %ctrl, ptr %71, align 4
  %73 = load ptr, ptr %cur.i, align 4
  %74 = ptrtoint ptr %seg.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %seg.i, align 8
  %cmp347.not = icmp ult ptr %73, %75
  br i1 %cmp347.not, label %if.end294.if.end372_crit_edge, label %do.end366, !prof !22

if.end294.if.end372_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end372

do.end366:                                        ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.4) #2
  br label %if.end372

if.end372:                                        ; preds = %do.end366, %if.end294.if.end372_crit_edge
  %76 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %cur.i, align 4
  %78 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i, align 4
  %cmp386.not = icmp ult ptr %77, %79
  br i1 %cmp386.not, label %if.end372.if.end411_crit_edge, label %do.end405, !prof !22

if.end372.if.end411_crit_edge:                    ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end411

do.end405:                                        ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 45, i32 noundef 9, ptr noundef nonnull @.str.5) #2
  br label %if.end411

if.end411:                                        ; preds = %do.end405, %if.end372.if.end411_crit_edge
  %80 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cur.i, align 4
  %82 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast429 = ptrtoint ptr %81 to i32
  %sub.ptr.rhs.cast430 = ptrtoint ptr %83 to i32
  %sub.ptr.sub431 = sub i32 %sub.ptr.lhs.cast429, %sub.ptr.rhs.cast430
  %84 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mem, align 8
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %85, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %client, align 4
  %name443 = getelementptr inbounds %struct.nvif_object, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %name443 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name443, align 8
  %94 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %handle, align 4
  %96 = ptrtoint ptr %name210 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %name210, align 8
  tail call void (ptr, ptr, ...) %89(ptr noundef %mem, ptr noundef nonnull @.str.8, ptr noundef %93, i32 noundef %95, ptr noundef %97, i32 noundef %sub.ptr.sub431, i32 noundef %sync.0) #2
  %98 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %cur.i, align 4
  %incdec.ptr452 = getelementptr i32, ptr %99, i32 1
  store ptr %incdec.ptr452, ptr %cur.i, align 4
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sync.0, ptr %99, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end411, %if.then.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end411 ], [ %call.i, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @dac507d, !1, !"dac507d", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/dispnv50/dac507d.c", i32 50, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/dispnv50/dac507d.c", i32 44, i32 2}
!4 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !3, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__func__.dac507d_ctrl, !3, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !3, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !3, !"<string literal>", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"branch_weights", i32 2000, i32 1}
