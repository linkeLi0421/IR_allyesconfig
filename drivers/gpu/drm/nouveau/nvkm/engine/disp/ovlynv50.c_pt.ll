; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nv50_disp_chan_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32, ptr }
%struct.anon.0 = type { i32, i32, ptr }
%struct.nvkm_oclass = type { ptr, %struct.nvkm_sclass, ptr, ptr, i32, i8, i64, i64, ptr, ptr, ptr }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nv50_disp_overlay_channel_dma_v0 = type { i8, i8, [6 x i8], i64 }
%struct.nv50_disp = type { ptr, %struct.nvkm_disp, ptr, %struct.work_struct, i32, %struct.nvkm_event, %struct.anon.141, %struct.anon.141, %struct.anon.141, %struct.anon.142, %struct.anon.143, ptr, ptr, [81 x ptr] }
%struct.nvkm_disp = type { ptr, %struct.nvkm_engine, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event, %struct.nvkm_event, %struct.anon.139 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.138 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.138 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.139 = type { %struct.spinlock, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.141 = type { i32, i32 }
%struct.anon.142 = type { i32, i32, i32 }
%struct.anon.143 = type { i32, i32, [3 x i8] }

@nv50_disp_ovly_new_._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp overlay channel dma size %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nv50_disp_ovly_new_\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c\00", [44 x i8] zeroinitializer }, align 32
@nv50_disp_ovly_new_._entry_ptr = internal global ptr @nv50_disp_ovly_new_._entry, section ".printk_index", align 4
@nv50_disp_ovly_new_._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: create disp overlay channel dma vers %d pushbuf %016llx head %d\0A\00", [63 x i8] zeroinitializer }, align 32
@nv50_disp_ovly_new_._entry_ptr.5 = internal global ptr @nv50_disp_ovly_new_._entry.3, section ".printk_index", align 4
@nv50_disp_dmac_func = external dso_local constant %struct.nv50_disp_chan_func, align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Global\00", [25 x i8] zeroinitializer }, align 32
@nv50_disp_ovly_mthd = internal constant { { ptr, i32, i32, [2 x %struct.anon] }, [60 x i8] } { { ptr, i32, i32, [2 x %struct.anon] } { ptr @.str.6, i32 1344, i32 4, [2 x %struct.anon] [%struct.anon { ptr @.str.7, i32 1, ptr @nv50_disp_ovly_mthd_base }, %struct.anon zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@nv50_disp_ovly_mthd_base = internal constant { { i32, i32, [20 x %struct.anon.0] }, [40 x i8] } { { i32, i32, [20 x %struct.anon.0] } { i32 0, i32 0, [20 x %struct.anon.0] [%struct.anon.0 { i32 128, i32 0, ptr null }, %struct.anon.0 { i32 132, i32 2464, ptr null }, %struct.anon.0 { i32 136, i32 2496, ptr null }, %struct.anon.0 { i32 140, i32 2504, ptr null }, %struct.anon.0 { i32 144, i32 6359476, ptr null }, %struct.anon.0 { i32 148, i32 6359408, ptr null }, %struct.anon.0 { i32 160, i32 6359448, ptr null }, %struct.anon.0 { i32 164, i32 6359396, ptr null }, %struct.anon.0 { i32 192, i32 6359384, ptr null }, %struct.anon.0 { i32 224, i32 6359464, ptr null }, %struct.anon.0 { i32 228, i32 6359504, ptr null }, %struct.anon.0 { i32 232, i32 6359512, ptr null }, %struct.anon.0 { i32 256, i32 6359372, ptr null }, %struct.anon.0 { i32 260, i32 6359428, ptr null }, %struct.anon.0 { i32 264, i32 6359436, ptr null }, %struct.anon.0 { i32 2048, i32 6359544, ptr null }, %struct.anon.0 { i32 2056, i32 6359560, ptr null }, %struct.anon.0 { i32 2060, i32 6359568, ptr null }, %struct.anon.0 { i32 2064, i32 6359552, ptr null }, %struct.anon.0 zeroinitializer] }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 46, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 48, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 92, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 96, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"nv50_disp_ovly_mthd\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 91, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"nv50_disp_ovly_mthd_base\00", align 1
@___asan_gen_.38 = private constant [55 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 63, i32 1 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @nv50_disp_ovly_new_._entry, ptr @nv50_disp_ovly_new_._entry.3, ptr @nv50_disp_ovly_new_._entry_ptr, ptr @nv50_disp_ovly_new_._entry_ptr.5, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @nv50_disp_ovly_mthd, ptr @nv50_disp_ovly_mthd_base], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_ovly_new_._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_ovly_new_._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_ovly_mthd to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nv50_disp_ovly_mthd_base to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_ovly_new_(ptr noundef %func, ptr noundef %mthd, ptr noundef %disp, i32 noundef %chid, ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent1 = getelementptr inbounds %struct.nvkm_oclass, ptr %oclass, i32 0, i32 9
  %0 = ptrtoint ptr %parent1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent1, align 4
  %client = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp ugt i32 %5, 4
  br i1 %cmp, label %do.end, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %land.lhs.true

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %name = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 1
  %handle = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %oclass3 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %oclass3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oclass3, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %7, i32 noundef %9, i32 noundef %argc) #6
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end, %entry.land.lhs.true_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %argc)
  %cmp7 = icmp ugt i32 %argc, 15
  br i1 %cmp7, label %land.lhs.true11, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true11:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %argv, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp14 = icmp eq i8 %11, 0
  br i1 %cmp14, label %if.then16, label %land.lhs.true11.cleanup_crit_edge

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %argc)
  %tobool.not = icmp eq i32 %argc, 16
  br i1 %tobool.not, label %do.body23, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.body23:                                        ; preds = %if.then16
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %debug27 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %debug27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp28 = icmp ugt i32 %15, 4
  br i1 %cmp28, label %do.end33, label %do.body23.if.end44_crit_edge

do.body23.if.end44_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end44

do.end33:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #5
  %name35 = getelementptr inbounds %struct.nvkm_client, ptr %13, i32 0, i32 1
  %handle37 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %handle37 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle37, align 8
  %oclass38 = getelementptr inbounds %struct.nvkm_object, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %oclass38 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass38, align 4
  %20 = ptrtoint ptr %argv to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %argv, align 8
  %conv40 = zext i8 %21 to i32
  %pushbuf = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %argv, i32 0, i32 3
  %22 = ptrtoint ptr %pushbuf to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %pushbuf, align 8
  %head41 = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %argv, i32 0, i32 1
  %24 = ptrtoint ptr %head41 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %head41, align 1
  %conv42 = zext i8 %25 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35, i32 noundef %17, i32 noundef %19, i32 noundef %conv40, i64 noundef %23, i32 noundef %conv42) #6
  br label %if.end44

if.end44:                                         ; preds = %do.end33, %do.body23.if.end44_crit_edge
  %base = getelementptr inbounds %struct.nv50_disp, ptr %disp, i32 0, i32 1
  %head47 = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %argv, i32 0, i32 1
  %26 = ptrtoint ptr %head47 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %head47, align 1
  %conv48 = zext i8 %27 to i32
  %call49 = tail call ptr @nvkm_head_find(ptr noundef %base, i32 noundef %conv48) #3
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end44.cleanup_crit_edge, label %if.end52

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #5
  %pushbuf53 = getelementptr inbounds %struct.nv50_disp_overlay_channel_dma_v0, ptr %argv, i32 0, i32 3
  %28 = ptrtoint ptr %pushbuf53 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %pushbuf53, align 8
  %30 = ptrtoint ptr %head47 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %head47, align 1
  %conv55 = zext i8 %31 to i32
  %add = add i32 %conv55, %chid
  %call57 = tail call i32 @nv50_disp_dmac_new_(ptr noundef %func, ptr noundef %mthd, ptr noundef %disp, i32 noundef %add, i32 noundef %conv55, i64 noundef %29, ptr noundef %oclass, ptr noundef %pobject) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end44.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %land.lhs.true11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call57, %if.end52 ], [ -22, %if.end44.cleanup_crit_edge ], [ -38, %land.lhs.true.cleanup_crit_edge ], [ -38, %land.lhs.true11.cleanup_crit_edge ], [ -7, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_disp_dmac_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nv50_disp_ovly_new(ptr noundef %oclass, ptr nocapture noundef readonly %argv, i32 noundef %argc, ptr noundef %disp, ptr noundef %pobject) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv50_disp_ovly_new_(ptr noundef nonnull @nv50_disp_dmac_func, ptr noundef nonnull @nv50_disp_ovly_mthd, ptr noundef %disp, i32 noundef 3, ptr noundef %oclass, ptr noundef %argv, i32 noundef %argc, ptr noundef %pobject)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 46, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nv50_disp_ovly_new_._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nv50_disp_ovly_new_._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 48, i32 3}
!8 = !{ptr @nv50_disp_ovly_new_._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nv50_disp_ovly_new_._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 92, i32 10}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 96, i32 5}
!14 = !{ptr @nv50_disp_ovly_mthd, !15, !"nv50_disp_ovly_mthd", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 91, i32 1}
!16 = !{ptr @nv50_disp_ovly_mthd_base, !17, !"nv50_disp_ovly_mthd_base", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/disp/ovlynv50.c", i32 63, i32 1}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
