; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_subdev_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvkm_mmu_pt = type { %union.anon.4, ptr, i8, i16, i64, %struct.list_head }
%union.anon.4 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_mmu = type { ptr, %struct.nvkm_subdev, i8, i32, [4 x %struct.anon.137], i32, [16 x %struct.anon.138], ptr, %struct.anon.139, %struct.anon.139, %struct.mutex, %struct.nvkm_device_oclass }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.anon.137 = type { i8, i64 }
%struct.anon.138 = type { i8, i8 }
%struct.anon.139 = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_mmu_ptp = type { ptr, %struct.list_head, i8, i16, i16 }
%struct.nvkm_mmu_ptc = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nvkm_memory_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_memory = type { ptr, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.nvkm_memory_ptrs = type { ptr, ptr }
%struct.nvkm_mmu_func = type { ptr, i8, %struct.anon, %struct.anon.3, %struct.anon.5, ptr, i8 }
%struct.anon = type { %struct.nvkm_sclass }
%struct.anon.3 = type { %struct.nvkm_sclass, ptr, ptr }
%struct.anon.5 = type { %struct.nvkm_sclass, ptr, i8, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.136, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.136 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_fb = type { ptr, %struct.nvkm_subdev, %struct.nvkm_blob, ptr, %struct.anon.151, %struct.anon.152, i8, ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.151 = type { %struct.mutex, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.anon.152 = type { [16 x %struct.nvkm_fb_tile], i32 }
%struct.nvkm_fb_tile = type { ptr, i32, i32, i32, i32 }
%struct.nvkm_ram = type { ptr, ptr, i32, i64, %struct.nvkm_mm, i64, %struct.mutex, i32, i32, i32, i32, [16 x i32], i32, ptr, %struct.nvkm_ram_data, %struct.nvkm_ram_data, %struct.nvkm_ram_data }
%struct.nvkm_ram_data = type { %struct.list_head, %struct.nvbios_ramcfg, i32 }
%struct.nvbios_ramcfg = type <{ i32, i32, i32, i32, %union.anon.140, i32, i32, i32, i32, i32, i32, %union.anon.144, i32, i32, [11 x i32], %union.anon.148 }>
%union.anon.140 = type { %struct.anon.143 }
%struct.anon.143 = type { i64 }
%union.anon.144 = type { %struct.anon.147 }
%struct.anon.147 = type { i32, i32, i8 }
%union.anon.148 = type <{ %struct.anon.150, [12 x i8] }>
%struct.anon.150 = type { i48 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nvkm_bar = type { ptr, %struct.nvkm_subdev, %struct.spinlock, i8, i8 }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@nvkm_mmu = internal constant { %struct.nvkm_subdev_func, [36 x i8] } { %struct.nvkm_subdev_func { ptr @nvkm_mmu_dtor, ptr null, ptr @nvkm_mmu_oneinit, ptr null, ptr @nvkm_mmu_init, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@nvkm_mmu_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mmu->mutex\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gart\00", [27 x i8] zeroinitializer }, align 32
@nvkm_mmu_ptc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mmu->ptc.mutex\00", [16 x i8] zeroinitializer }, align 32
@nvkm_mmu_ptc_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mmu->ptp.mutex\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [9 x i8] c"nvkm_mmu\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 410, i32 1 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 424, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 239, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 380, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 248, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.31 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 250, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nvkm_mmu, ptr @nvkm_mmu_ctor.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @nvkm_mmu_ptc_init.__key, ptr @.str.3, ptr @nvkm_mmu_ptc_init.__key.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mmu to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mmu_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mmu_ptc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_mmu_ptc_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ptc_put(ptr noundef %mmu, i1 noundef zeroext %force, ptr nocapture noundef readonly %ppt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppt, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %sub = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %sub to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sub, align 8, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %ptp = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ptp, i32 noundef 0) #4
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %base.i, align 2
  %conv.i = zext i16 %5 to i32
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %shift.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift.i, align 4
  %conv1.i = zext i8 %9 to i32
  %shr.i = lshr i32 %conv.i, %conv1.i
  %free.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %free.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %free.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then2.if.end.i_crit_edge

if.then2.if.end.i_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then2
  %head.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 1
  %list.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %list.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef %head.i, ptr noundef %list.i, ptr noundef %13) #4
  br i1 %call.i.i30, label %if.end.i.i32, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i.i32:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %head.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %head.i, align 4
  %prev3.i.i31 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list.i, ptr %prev3.i.i31, align 4
  %17 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %head.i, ptr %list.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i32, %if.then.i.if.end.i_crit_edge, %if.then2.if.end.i_crit_edge
  %shl.i = shl nuw i32 1, %shr.i
  %18 = ptrtoint ptr %free.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %free.i, align 4
  %20 = trunc i32 %shl.i to i16
  %conv5.i = or i16 %19, %20
  store i16 %conv5.i, ptr %free.i, align 4
  %mask.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %mask.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv5.i, i16 %22)
  %cmp.i = icmp eq i16 %conv5.i, %22
  br i1 %cmp.i, label %if.then10.i, label %if.end.i.nvkm_mmu_ptp_put.exit_crit_edge

if.end.i.nvkm_mmu_ptp_put.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_ptp_put.exit

if.then10.i:                                      ; preds = %if.end.i
  tail call void @nvkm_mmu_ptc_put(ptr noundef %mmu, i1 noundef zeroext %force, ptr noundef %7) #4
  %head13.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 1
  %call.i.i27 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head13.i) #4
  br i1 %call.i.i27, label %if.end.i.i28, label %if.then10.i.list_del.exit_crit_edge

if.then10.i.list_del.exit_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i28:                                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %head13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head13.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i28, %if.then10.i.list_del.exit_crit_edge
  %29 = ptrtoint ptr %head13.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %head13.i, align 4
  %prev.i29 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %7, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i29, align 4
  tail call void @kfree(ptr noundef %7) #4
  br label %nvkm_mmu_ptp_put.exit

nvkm_mmu_ptp_put.exit:                            ; preds = %list_del.exit, %if.end.i.nvkm_mmu_ptp_put.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.then
  %ptc = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ptc, i32 noundef 0) #4
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 8
  %refs = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %34)
  %cmp = icmp ugt i32 %34, 7
  %brmerge = or i1 %cmp, %force
  br i1 %brmerge, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %head = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 5
  %item = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %32, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %32, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %36, ptr noundef %item) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.then8.list_add_tail.exit_crit_edge

if.then8.list_add_tail.exit_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %head, ptr %prev.i, align 4
  %38 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %item, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %head, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then8.list_add_tail.exit_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  %refs9 = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %refs9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %refs9, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr %refs9, align 4
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %1, i32 0, i32 1
  tail call void @nvkm_memory_unref(ptr noundef %memory) #4
  tail call void @kfree(ptr noundef nonnull %1) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else, %list_add_tail.exit, %nvkm_mmu_ptp_put.exit
  %ptc.sink = phi ptr [ %ptp, %nvkm_mmu_ptp_put.exit ], [ %ptc, %if.else ], [ %ptc, %list_add_tail.exit ]
  tail call void @mutex_unlock(ptr noundef %ptc.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_memory_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_mmu_ptc_get(ptr noundef %mmu, i32 noundef %size, i32 noundef %align, i1 noundef zeroext %zero) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %align)
  %cmp = icmp ult i32 %align, 4096
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %ptp = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %ptp, i32 noundef 0) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i171 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #7
  %tobool.not.i = icmp eq ptr %call7.i.i171, null
  br i1 %tobool.not.i, label %if.then.nvkm_mmu_ptp_get.exit_crit_edge, label %if.end.i

if.then.nvkm_mmu_ptp_get.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_ptp_get.exit

if.end.i:                                         ; preds = %if.then
  %list.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %list.i, align 4
  %cmp.not.i = icmp eq ptr %2, %list.i
  %add.ptr.i = getelementptr i8, ptr %2, i32 -4
  %tobool4.not.i179 = icmp eq ptr %add.ptr.i, null
  %tobool4.not.i = or i1 %cmp.not.i, %tobool4.not.i179
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end55.i_crit_edge

if.end.i.if.end55.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3264, i32 noundef 20) #7
  %tobool7.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end9.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i171) #4
  br label %nvkm_mmu_ptp_get.exit

if.end9.i:                                        ; preds = %if.then5.i
  %call10.i = tail call ptr @nvkm_mmu_ptc_get(ptr noundef %mmu, i32 noundef 4096, i32 noundef 4096, i1 noundef zeroext false) #4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call10.i, ptr %call7.i.i, align 8
  %tobool13.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool13.not.i, label %if.then14.i, label %cond.false37.i

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  tail call void @kfree(ptr noundef nonnull %call7.i.i171) #4
  br label %nvkm_mmu_ptp_get.exit

cond.false37.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %align)
  %cmp.i = icmp ugt i32 %align, 1
  %sub.i168 = add nsw i32 %align, -1
  %5 = tail call i32 @llvm.ctlz.i32(i32 %sub.i168, i1 false) #4, !range !25
  %add.i169 = sub nuw nsw i32 32, %5
  %cond40.i = select i1 %cmp.i, i32 %add.i169, i32 0
  %conv41.i = trunc i32 %cond40.i to i8
  %shift.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %shift.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv41.i, ptr %shift.i, align 4
  %memory.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call10.i, i32 0, i32 1
  %7 = ptrtoint ptr %memory.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %memory.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %size43.i = getelementptr inbounds %struct.nvkm_memory_func, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %size43.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %size43.i, align 4
  %call46.i = tail call i64 %12(ptr noundef %8) #4
  %conv41.i.mask = and i32 %cond40.i, 255
  %sh_prom.i = zext i32 %conv41.i.mask to i64
  %shr.i = lshr i64 %call46.i, %sh_prom.i
  %conv49.i = trunc i64 %shr.i to i32
  %notmask.i = shl nsw i32 -1, %conv49.i
  %13 = trunc i32 %notmask.i to i16
  %conv51.i = xor i16 %13, -1
  %mask.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %mask.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv51.i, ptr %mask.i, align 2
  %free.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %free.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv51.i, ptr %free.i, align 8
  %head.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list.i, align 4
  %call.i.i166 = tail call zeroext i1 @__list_add_valid(ptr noundef %head.i, ptr noundef %list.i, ptr noundef %17) #4
  br i1 %call.i.i166, label %if.end.i.i167, label %cond.false37.i.if.end55.i_crit_edge

cond.false37.i.if.end55.i_crit_edge:              ; preds = %cond.false37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end55.i

if.end.i.i167:                                    ; preds = %cond.false37.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %head.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %head.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list.i, ptr %prev3.i.i, align 8
  %21 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %head.i, ptr %list.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end.i.i167, %cond.false37.i.if.end55.i_crit_edge, %if.end.i.if.end55.i_crit_edge
  %ptp.0.i = phi ptr [ %add.ptr.i, %if.end.i.if.end55.i_crit_edge ], [ %call7.i.i, %cond.false37.i.if.end55.i_crit_edge ], [ %call7.i.i, %if.end.i.i167 ]
  %22 = ptrtoint ptr %call7.i.i171 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ptp.0.i, ptr %call7.i.i171, align 8
  %sub56.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i.i171, i32 0, i32 2
  %23 = ptrtoint ptr %sub56.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %sub56.i, align 8
  %free57.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %ptp.0.i, i32 0, i32 4
  %24 = ptrtoint ptr %free57.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %free57.i, align 4
  %conv58.i = zext i16 %25 to i32
  %26 = tail call i32 @llvm.cttz.i32(i32 %conv58.i, i1 false) #4, !range !25
  %shl60.i = shl nuw i32 1, %26
  %27 = trunc i32 %shl60.i to i16
  %28 = xor i16 %27, -1
  %conv63.i = and i16 %25, %28
  %29 = ptrtoint ptr %free57.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv63.i, ptr %free57.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv63.i)
  %tobool65.not.i = icmp eq i16 %conv63.i, 0
  br i1 %tobool65.not.i, label %if.then66.i, label %if.end55.i.if.end68.i_crit_edge

if.end55.i.if.end68.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68.i

if.then66.i:                                      ; preds = %if.end55.i
  %head67.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %ptp.0.i, i32 0, i32 1
  %call.i.i160 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head67.i) #4
  br i1 %call.i.i160, label %if.end.i.i163, label %if.then66.i.list_del.exit165_crit_edge

if.then66.i.list_del.exit165_crit_edge:           ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit165

if.end.i.i163:                                    ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i161 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %ptp.0.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i.i161 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i161, align 4
  %32 = ptrtoint ptr %head67.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head67.i, align 4
  %prev1.i.i.i162 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i162, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit165

list_del.exit165:                                 ; preds = %if.end.i.i163, %if.then66.i.list_del.exit165_crit_edge
  %36 = ptrtoint ptr %head67.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %head67.i, align 4
  %prev.i164 = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %ptp.0.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i164 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i164, align 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %list_del.exit165, %if.end55.i.if.end68.i_crit_edge
  %38 = ptrtoint ptr %call7.i.i171 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i171, align 8
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %memory70.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %memory70.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %memory70.i, align 4
  %memory71.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i.i171, i32 0, i32 1
  %44 = ptrtoint ptr %memory71.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %memory71.i, align 4
  %shift72.i = getelementptr inbounds %struct.nvkm_mmu_ptp, ptr %ptp.0.i, i32 0, i32 2
  %45 = ptrtoint ptr %shift72.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %shift72.i, align 4
  %conv73.i = zext i8 %46 to i32
  %shl74.i = shl i32 %26, %conv73.i
  %conv75.i = trunc i32 %shl74.i to i16
  %base.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i.i171, i32 0, i32 3
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv75.i, ptr %base.i, align 2
  %48 = load ptr, ptr %39, align 4
  %addr.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %addr.i, align 8
  %conv75.mask.i = and i32 %shl74.i, 65535
  %conv78.i = zext i32 %conv75.mask.i to i64
  %add79.i = add i64 %50, %conv78.i
  %addr80.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i.i171, i32 0, i32 4
  %51 = ptrtoint ptr %addr80.i to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %add79.i, ptr %addr80.i, align 8
  br label %nvkm_mmu_ptp_get.exit

nvkm_mmu_ptp_get.exit:                            ; preds = %if.end68.i, %if.then14.i, %if.then8.i, %if.then.nvkm_mmu_ptp_get.exit_crit_edge
  %retval.0.i = phi ptr [ %call7.i.i171, %if.end68.i ], [ null, %if.then14.i ], [ null, %if.then8.i ], [ null, %if.then.nvkm_mmu_ptp_get.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ptp) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %ptc3 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %ptc3, i32 noundef 0) #4
  %list.i153 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %ptc.0.in.i = phi ptr [ %list.i153, %if.end ], [ %ptc.0.i, %for.body.i.for.cond.i_crit_edge ]
  %52 = ptrtoint ptr %ptc.0.in.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %ptc.0.i = load ptr, ptr %ptc.0.in.i, align 4
  %cmp.not.i154 = icmp eq ptr %ptc.0.i, %list.i153
  br i1 %cmp.not.i154, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %size4.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %ptc.0.i, i32 0, i32 2
  %53 = ptrtoint ptr %size4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %size4.i, align 4
  %cmp5.i = icmp eq i32 %54, %size
  br i1 %cmp5.i, label %nvkm_mmu_ptc_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i155 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 24) #7
  %tobool.not.i156 = icmp eq ptr %call7.i.i155, null
  br i1 %tobool.not.i156, label %for.end.i.if.then7_crit_edge, label %if.then11.i

for.end.i.if.then7_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then11.i:                                      ; preds = %for.end.i
  %item.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %call7.i.i155, i32 0, i32 1
  %56 = ptrtoint ptr %item.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %item.i, ptr %item.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %call7.i.i155, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %item.i, ptr %prev.i.i, align 4
  %size12.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %call7.i.i155, i32 0, i32 2
  %58 = ptrtoint ptr %size12.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %size, ptr %size12.i, align 8
  %refs.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %call7.i.i155, i32 0, i32 3
  %59 = ptrtoint ptr %refs.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %refs.i, align 4
  %60 = ptrtoint ptr %list.i153 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %list.i153, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i155, ptr noundef %list.i153, ptr noundef %61) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then11.i.if.end10_crit_edge

if.then11.i.if.end10_crit_edge:                   ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end.i.i.i:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i155, ptr %prev1.i.i.i, align 4
  %63 = ptrtoint ptr %call7.i.i155 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %61, ptr %call7.i.i155, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i155, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %list.i153, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %list.i153 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %call7.i.i155, ptr %list.i153, align 4
  br label %if.end10

nvkm_mmu_ptc_find.exit:                           ; preds = %for.body.i
  %tobool6.not = icmp eq ptr %ptc.0.i, null
  br i1 %tobool6.not, label %nvkm_mmu_ptc_find.exit.if.then7_crit_edge, label %nvkm_mmu_ptc_find.exit.if.end10_crit_edge

nvkm_mmu_ptc_find.exit.if.end10_crit_edge:        ; preds = %nvkm_mmu_ptc_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

nvkm_mmu_ptc_find.exit.if.then7_crit_edge:        ; preds = %nvkm_mmu_ptc_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7

if.then7:                                         ; preds = %nvkm_mmu_ptc_find.exit.if.then7_crit_edge, %for.end.i.if.then7_crit_edge
  tail call void @mutex_unlock(ptr noundef %ptc3) #4
  br label %cleanup

if.end10:                                         ; preds = %nvkm_mmu_ptc_find.exit.if.end10_crit_edge, %if.end.i.i.i, %if.then11.i.if.end10_crit_edge
  %retval.0.i157175 = phi ptr [ %ptc.0.i, %nvkm_mmu_ptc_find.exit.if.end10_crit_edge ], [ %call7.i.i155, %if.then11.i.if.end10_crit_edge ], [ %call7.i.i155, %if.end.i.i.i ]
  %item = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %retval.0.i157175, i32 0, i32 1
  %66 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %item, align 4
  %cmp12.not = icmp eq ptr %67, %item
  %add.ptr = getelementptr i8, ptr %67, i32 -24
  %spec.select = select i1 %cmp12.not, ptr null, ptr %add.ptr
  %tobool14.not = icmp eq ptr %spec.select, null
  br i1 %tobool14.not, label %if.end78, label %if.then15

if.then15:                                        ; preds = %if.end10
  br i1 %zero, label %do.body18, label %if.then15.if.end74_crit_edge

if.then15.if.end74_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

do.body18:                                        ; preds = %if.then15
  %memory = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %spec.select, i32 0, i32 1
  %68 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %memory, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %acquire = getelementptr inbounds %struct.nvkm_memory_func, ptr %71, i32 0, i32 7
  %72 = ptrtoint ptr %acquire to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %acquire, align 4
  %call21 = tail call ptr %73(ptr noundef %69) #4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %for.cond.preheader, label %if.else, !prof !26

for.cond.preheader:                               ; preds = %do.body18
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool50.not181 = icmp ult i32 %size, 8
  br i1 %tobool50.not181, label %for.cond.preheader.if.end68_crit_edge, label %do.body51.preheader

for.cond.preheader.if.end68_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

do.body51.preheader:                              ; preds = %for.cond.preheader
  %shr = lshr i32 %size, 3
  %conv = zext i32 %shr to i64
  br label %do.body51

if.else:                                          ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #6
  %shl = and i32 %size, -8
  tail call void @mmioset(ptr noundef nonnull %call21, i32 noundef 0, i32 noundef %shl) #4
  br label %if.end68

do.body51:                                        ; preds = %do.body51.do.body51_crit_edge, %do.body51.preheader
  %_c.1183 = phi i64 [ %dec66, %do.body51.do.body51_crit_edge ], [ %conv, %do.body51.preheader ]
  %_a.0182 = phi i64 [ %add67, %do.body51.do.body51_crit_edge ], [ 0, %do.body51.preheader ]
  %74 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %memory, align 4
  %ptrs = getelementptr inbounds %struct.nvkm_memory, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ptrs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ptrs, align 4
  %wr32 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %wr32 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %wr32, align 4
  tail call void %79(ptr noundef %75, i64 noundef %_a.0182, i32 noundef 0) #4
  %80 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %memory, align 4
  %ptrs57 = getelementptr inbounds %struct.nvkm_memory, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ptrs57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ptrs57, align 4
  %wr3258 = getelementptr inbounds %struct.nvkm_memory_ptrs, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %wr3258 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %wr3258, align 4
  %add60 = or i64 %_a.0182, 4
  tail call void %85(ptr noundef %81, i64 noundef %add60, i32 noundef 0) #4
  %dec66 = add nsw i64 %_c.1183, -1
  %add67 = add nuw nsw i64 %_a.0182, 8
  %tobool50.not = icmp eq i64 %dec66, 0
  br i1 %tobool50.not, label %do.body51.if.end68_crit_edge, label %do.body51.do.body51_crit_edge

do.body51.do.body51_crit_edge:                    ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body51

do.body51.if.end68_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end68

if.end68:                                         ; preds = %do.body51.if.end68_crit_edge, %if.else, %for.cond.preheader.if.end68_crit_edge
  %86 = ptrtoint ptr %memory to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %memory, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %release = getelementptr inbounds %struct.nvkm_memory_func, ptr %89, i32 0, i32 8
  %90 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %release, align 4
  tail call void %91(ptr noundef %87) #4
  br label %if.end74

if.end74:                                         ; preds = %if.end68, %if.then15.if.end74_crit_edge
  %head = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %spec.select, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #4
  br i1 %call.i.i, label %if.end.i.i, label %if.end74.list_del.exit_crit_edge

if.end74.list_del.exit_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i158 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %spec.select, i32 0, i32 5, i32 1
  %92 = ptrtoint ptr %prev.i.i158 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %prev.i.i158, align 4
  %94 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %head, align 4
  %prev1.i.i.i159 = getelementptr inbounds %struct.list_head, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %prev1.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %93, ptr %prev1.i.i.i159, align 4
  %97 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %95, ptr %93, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end74.list_del.exit_crit_edge
  %98 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %spec.select, i32 0, i32 5, i32 1
  %99 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refs = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %retval.0.i157175, i32 0, i32 3
  %100 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %refs, align 4
  %dec75 = add i32 %101, -1
  store i32 %dec75, ptr %refs, align 4
  tail call void @mutex_unlock(ptr noundef %ptc3) #4
  br label %cleanup

if.end78:                                         ; preds = %if.end10
  tail call void @mutex_unlock(ptr noundef %ptc3) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %102 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %102, i32 noundef 3264, i32 noundef 32) #7
  %tobool82.not = icmp eq ptr %call7.i, null
  br i1 %tobool82.not, label %if.end78.cleanup_crit_edge, label %if.end84

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end84:                                         ; preds = %if.end78
  %103 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %retval.0.i157175, ptr %call7.i, align 8
  %sub = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i, i32 0, i32 2
  %104 = ptrtoint ptr %sub to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %sub, align 8
  %device = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %device, align 4
  %conv85 = zext i32 %size to i64
  %memory87 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i, i32 0, i32 1
  %call88 = tail call i32 @nvkm_memory_new(ptr noundef %106, i32 noundef 0, i64 noundef %conv85, i32 noundef %align, i1 noundef zeroext %zero, ptr noundef %memory87) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.then90

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i) #4
  br label %cleanup

if.end91:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  %base = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i, i32 0, i32 3
  %107 = ptrtoint ptr %base to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 0, ptr %base, align 2
  %108 = ptrtoint ptr %memory87 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %memory87, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %109, align 4
  %addr = getelementptr inbounds %struct.nvkm_memory_func, ptr %111, i32 0, i32 4
  %112 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %addr, align 4
  %call95 = tail call i64 %113(ptr noundef %109) #4
  %addr96 = getelementptr inbounds %struct.nvkm_mmu_pt, ptr %call7.i, i32 0, i32 4
  %114 = ptrtoint ptr %addr96 to i32
  call void @__asan_store8_noabort(i32 %114)
  store i64 %call95, ptr %addr96, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end91, %if.then90, %if.end78.cleanup_crit_edge, %list_del.exit, %if.then7, %nvkm_mmu_ptp_get.exit
  %retval.0 = phi ptr [ %retval.0.i, %nvkm_mmu_ptp_get.exit ], [ %spec.select, %list_del.exit ], [ null, %if.then90 ], [ %call7.i, %if.end91 ], [ null, %if.then7 ], [ null, %if.end78.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_memory_new(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ptc_dump(ptr noundef readonly %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ptc.045 = load ptr, ptr %list, align 4
  %cmp.not46 = icmp eq ptr %ptc.045, %list
  br i1 %cmp.not46, label %entry.for.end31_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31

for.cond.loopexit:                                ; preds = %list_del.exit.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %ptc.047 to i32
  call void @__asan_load4_noabort(i32 %1)
  %ptc.0 = load ptr, ptr %ptc.047, align 4
  %cmp.not = icmp eq ptr %ptc.0, %list
  br i1 %cmp.not, label %for.cond.loopexit.for.end31_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond.loopexit.for.end31_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end31

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %entry.for.body_crit_edge
  %ptc.047 = phi ptr [ %ptc.0, %for.cond.loopexit.for.body_crit_edge ], [ %ptc.045, %entry.for.body_crit_edge ]
  %item = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %ptc.047, i32 0, i32 1
  %2 = ptrtoint ptr %item to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %item, align 4
  %cmp16.not42 = icmp eq ptr %3, %item
  br i1 %cmp16.not42, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body18_crit_edge

for.body.for.body18_crit_edge:                    ; preds = %for.body
  br label %for.body18

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

for.body18:                                       ; preds = %list_del.exit.for.body18_crit_edge, %for.body.for.body18_crit_edge
  %.pn.in43 = phi ptr [ %.pn, %list_del.exit.for.body18_crit_edge ], [ %3, %for.body.for.body18_crit_edge ]
  %pt.0 = getelementptr i8, ptr %.pn.in43, i32 -24
  %4 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in43, align 8
  %memory = getelementptr i8, ptr %.pn.in43, i32 -20
  tail call void @nvkm_memory_unref(ptr noundef %memory) #4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in43) #4
  br i1 %call.i.i, label %if.end.i.i, label %for.body18.list_del.exit_crit_edge

for.body18.list_del.exit_crit_edge:               ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.pn.in43, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body18.list_del.exit_crit_edge
  %11 = ptrtoint ptr %.pn.in43 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in43, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in43, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pt.0) #4
  %cmp16.not = icmp eq ptr %.pn, %item
  br i1 %cmp16.not, label %list_del.exit.for.cond.loopexit_crit_edge, label %list_del.exit.for.body18_crit_edge

list_del.exit.for.body18_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body18

list_del.exit.for.cond.loopexit_crit_edge:        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.loopexit

for.end31:                                        ; preds = %for.cond.loopexit.for.end31_crit_edge, %entry.for.end31_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_mmu_ctor(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %mmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mmu, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev) #4
  %0 = ptrtoint ptr %mmu to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %mmu, align 8
  %dma_bits = getelementptr inbounds %struct.nvkm_mmu_func, ptr %func, i32 0, i32 1
  %1 = ptrtoint ptr %dma_bits to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dma_bits, align 4
  %dma_bits2 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 2
  %3 = ptrtoint ptr %dma_bits2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %dma_bits2, align 8
  %ptc.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %ptc.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_mmu_ptc_init.__key) #4
  %list.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8, i32 1
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 8, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list.i, ptr %prev.i.i, align 4
  %ptp.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %ptp.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_mmu_ptc_init.__key.4) #4
  %list6.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %list6.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list6.i, ptr %list6.i, align 4
  %prev.i10.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 9, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i10.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list6.i, ptr %prev.i10.i, align 4
  %mutex = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_mmu_ctor.__key) #4
  %user = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 11
  %8 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @nvkm_ummu_new, ptr %user, align 4
  %base = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 11, i32 1
  %mmu4 = getelementptr inbounds %struct.nvkm_mmu_func, ptr %func, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %base, ptr %mmu4, i32 20)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_subdev_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_ummu_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_mmu_new_(ptr noundef %func, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %pmmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 488) #7
  %1 = ptrtoint ptr %pmmu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pmmu, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %subdev.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 1
  tail call void @nvkm_subdev_ctor(ptr noundef nonnull @nvkm_mmu, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %subdev.i) #4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %func, ptr %call7.i.i, align 8
  %dma_bits.i = getelementptr inbounds %struct.nvkm_mmu_func, ptr %func, i32 0, i32 1
  %3 = ptrtoint ptr %dma_bits.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dma_bits.i, align 4
  %dma_bits2.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dma_bits2.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %dma_bits2.i, align 8
  %ptc.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %ptc.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @nvkm_mmu_ptc_init.__key) #4
  %list.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list.i.i, ptr %list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %list.i.i, ptr %prev.i.i.i, align 8
  %ptp.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %ptp.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @nvkm_mmu_ptc_init.__key.4) #4
  %list6.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %list6.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %list6.i.i, ptr %list6.i.i, align 8
  %prev.i10.i.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 9, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list6.i.i, ptr %prev.i10.i.i, align 4
  %mutex.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str, ptr noundef nonnull @nvkm_mmu_ctor.__key) #4
  %user.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 11
  %10 = ptrtoint ptr %user.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @nvkm_ummu_new, ptr %user.i, align 4
  %base.i = getelementptr inbounds %struct.nvkm_mmu, ptr %call7.i.i, i32 0, i32 11, i32 1
  %mmu4.i = getelementptr inbounds %struct.nvkm_mmu_func, ptr %func, i32 0, i32 2
  %11 = call ptr @memcpy(ptr %base.i, ptr %mmu4.i, i32 20)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nvkm_mmu_dtor(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vmm = getelementptr i8, ptr %subdev, i32 160
  tail call void @nvkm_vmm_unref(ptr noundef %vmm) #4
  %list.i = getelementptr i8, ptr %subdev, i32 256
  %0 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list.i, align 4
  %cmp.not45.i = icmp eq ptr %1, %list.i
  br i1 %cmp.not45.i, label %entry.nvkm_mmu_ptc_fini.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.nvkm_mmu_ptc_fini.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_ptc_fini.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %ptc.046.i = phi ptr [ %ptct.048.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %ptc.046.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %ptct.048.i = load ptr, ptr %ptc.046.i, align 4
  %item.i = getelementptr inbounds %struct.nvkm_mmu_ptc, ptr %ptc.046.i, i32 0, i32 1
  %3 = ptrtoint ptr %item.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %item.i, align 4
  %cmp.i.not.i = icmp eq ptr %4, %item.i
  br i1 %cmp.i.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !27

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 239, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ptc.046.i) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %ptc.046.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %ptc.046.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ptc.046.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %ptc.046.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ptc.046.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ptc.046.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %ptc.046.i) #4
  %cmp.not.i = icmp eq ptr %ptct.048.i, %list.i
  br i1 %cmp.not.i, label %list_del.exit.i.nvkm_mmu_ptc_fini.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

list_del.exit.i.nvkm_mmu_ptc_fini.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_ptc_fini.exit

nvkm_mmu_ptc_fini.exit:                           ; preds = %list_del.exit.i.nvkm_mmu_ptc_fini.exit_crit_edge, %entry.nvkm_mmu_ptc_fini.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %mutex = getelementptr i8, ptr %subdev, i32 364
  tail call void @mutex_destroy(ptr noundef %mutex) #4
  ret ptr %add.ptr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mmu_oneinit(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %device = getelementptr %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %fb = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 33
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %ram = getelementptr inbounds %struct.nvkm_fb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ram to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  %fb.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 33
  %8 = ptrtoint ptr %fb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb.i, align 8
  %ram.i = getelementptr inbounds %struct.nvkm_fb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ram.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ram.i, align 4
  %vram.i = getelementptr inbounds %struct.nvkm_ram, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %vram.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %node.016.i.i = load ptr, ptr %vram.i, align 4
  %cmp.not17.i.i = icmp eq ptr %node.016.i.i, %vram.i
  br i1 %cmp.not17.i.i, label %if.then.nvkm_mm_heap_size.exit96.i_crit_edge, label %if.then.for.body.i.i_crit_edge

if.then.for.body.i.i_crit_edge:                   ; preds = %if.then
  br label %for.body.i.i

if.then.nvkm_mm_heap_size.exit96.i_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mm_heap_size.exit96.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.for.body.i.i_crit_edge
  %node.019.i.i = phi ptr [ %node.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %node.016.i.i, %if.then.for.body.i.i_crit_edge ]
  %size.018.i.i = phi i32 [ %size.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.then.for.body.i.i_crit_edge ]
  %heap2.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %heap2.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %heap2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp4.i.i = icmp eq i8 %14, 1
  br i1 %cmp4.i.i, label %if.then.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %length.i.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i.i, align 4
  %add.i.i = add i32 %16, %size.018.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %size.1.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %size.018.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %17 = ptrtoint ptr %node.019.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %node.0.i.i = load ptr, ptr %node.019.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %node.0.i.i, %vram.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.body.i71.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.inc.i.i.for.body.i71.i_crit_edge:             ; preds = %for.inc.i.i
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %for.inc.i78.i.for.body.i71.i_crit_edge, %for.inc.i.i.for.body.i71.i_crit_edge
  %node.019.i67.i = phi ptr [ %node.0.i76.i, %for.inc.i78.i.for.body.i71.i_crit_edge ], [ %node.016.i.i, %for.inc.i.i.for.body.i71.i_crit_edge ]
  %size.018.i68.i = phi i32 [ %size.1.i75.i, %for.inc.i78.i.for.body.i71.i_crit_edge ], [ 0, %for.inc.i.i.for.body.i71.i_crit_edge ]
  %heap2.i69.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i67.i, i32 0, i32 3
  %18 = ptrtoint ptr %heap2.i69.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %heap2.i69.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp4.i70.i = icmp eq i8 %19, 2
  br i1 %cmp4.i70.i, label %if.then.i74.i, label %for.body.i71.i.for.inc.i78.i_crit_edge

for.body.i71.i.for.inc.i78.i_crit_edge:           ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i78.i

if.then.i74.i:                                    ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #6
  %length.i72.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i67.i, i32 0, i32 6
  %20 = ptrtoint ptr %length.i72.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i72.i, align 4
  %add.i73.i = add i32 %21, %size.018.i68.i
  br label %for.inc.i78.i

for.inc.i78.i:                                    ; preds = %if.then.i74.i, %for.body.i71.i.for.inc.i78.i_crit_edge
  %size.1.i75.i = phi i32 [ %add.i73.i, %if.then.i74.i ], [ %size.018.i68.i, %for.body.i71.i.for.inc.i78.i_crit_edge ]
  %22 = ptrtoint ptr %node.019.i67.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %node.0.i76.i = load ptr, ptr %node.019.i67.i, align 4
  %cmp.not.i77.i = icmp eq ptr %node.0.i76.i, %vram.i
  br i1 %cmp.not.i77.i, label %for.inc.i78.i.for.body.i87.i_crit_edge, label %for.inc.i78.i.for.body.i71.i_crit_edge

for.inc.i78.i.for.body.i71.i_crit_edge:           ; preds = %for.inc.i78.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i71.i

for.inc.i78.i.for.body.i87.i_crit_edge:           ; preds = %for.inc.i78.i
  br label %for.body.i87.i

for.body.i87.i:                                   ; preds = %for.inc.i94.i.for.body.i87.i_crit_edge, %for.inc.i78.i.for.body.i87.i_crit_edge
  %node.019.i83.i = phi ptr [ %node.0.i92.i, %for.inc.i94.i.for.body.i87.i_crit_edge ], [ %node.016.i.i, %for.inc.i78.i.for.body.i87.i_crit_edge ]
  %size.018.i84.i = phi i32 [ %size.1.i91.i, %for.inc.i94.i.for.body.i87.i_crit_edge ], [ 0, %for.inc.i78.i.for.body.i87.i_crit_edge ]
  %heap2.i85.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i83.i, i32 0, i32 3
  %23 = ptrtoint ptr %heap2.i85.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %heap2.i85.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %24)
  %cmp4.i86.i = icmp eq i8 %24, 3
  br i1 %cmp4.i86.i, label %if.then.i90.i, label %for.body.i87.i.for.inc.i94.i_crit_edge

for.body.i87.i.for.inc.i94.i_crit_edge:           ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i94.i

if.then.i90.i:                                    ; preds = %for.body.i87.i
  call void @__sanitizer_cov_trace_pc() #6
  %length.i88.i = getelementptr inbounds %struct.nvkm_mm_node, ptr %node.019.i83.i, i32 0, i32 6
  %25 = ptrtoint ptr %length.i88.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %length.i88.i, align 4
  %add.i89.i = add i32 %26, %size.018.i84.i
  br label %for.inc.i94.i

for.inc.i94.i:                                    ; preds = %if.then.i90.i, %for.body.i87.i.for.inc.i94.i_crit_edge
  %size.1.i91.i = phi i32 [ %add.i89.i, %if.then.i90.i ], [ %size.018.i84.i, %for.body.i87.i.for.inc.i94.i_crit_edge ]
  %27 = ptrtoint ptr %node.019.i83.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.0.i92.i = load ptr, ptr %node.019.i83.i, align 4
  %cmp.not.i93.i = icmp eq ptr %node.0.i92.i, %vram.i
  br i1 %cmp.not.i93.i, label %for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge, label %for.inc.i94.i.for.body.i87.i_crit_edge

for.inc.i94.i.for.body.i87.i_crit_edge:           ; preds = %for.inc.i94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i87.i

for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge: ; preds = %for.inc.i94.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mm_heap_size.exit96.i

nvkm_mm_heap_size.exit96.i:                       ; preds = %for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge, %if.then.nvkm_mm_heap_size.exit96.i_crit_edge
  %conv3209.shrunk.i = phi i32 [ 0, %if.then.nvkm_mm_heap_size.exit96.i_crit_edge ], [ %size.1.i75.i, %for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge ]
  %conv204208.shrunk.i = phi i32 [ 0, %if.then.nvkm_mm_heap_size.exit96.i_crit_edge ], [ %size.1.i.i, %for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge ]
  %size.0.lcssa.i95.i = phi i32 [ 0, %if.then.nvkm_mm_heap_size.exit96.i_crit_edge ], [ %size.1.i91.i, %for.inc.i94.i.nvkm_mm_heap_size.exit96.i_crit_edge ]
  %conv204208.i = zext i32 %conv204208.shrunk.i to i64
  %conv3209.i = zext i32 %conv3209.shrunk.i to i64
  %conv5.i = zext i32 %size.0.lcssa.i95.i to i64
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %kind.i = getelementptr inbounds %struct.nvkm_mmu_func, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kind.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  %conv7.i = select i1 %tobool.not.i, i8 0, i8 16
  %shl.i = shl nuw nsw i64 %conv5.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.0.lcssa.i95.i)
  %tobool.not.i.i = icmp eq i32 %size.0.lcssa.i95.i, 0
  br i1 %tobool.not.i.i, label %nvkm_mm_heap_size.exit96.i.nvkm_mmu_heap.exit.i_crit_edge, label %if.then.i97.i

nvkm_mm_heap_size.exit96.i.nvkm_mmu_heap.exit.i_crit_edge: ; preds = %nvkm_mm_heap_size.exit96.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_heap.exit.i

if.then.i97.i:                                    ; preds = %nvkm_mm_heap_size.exit96.i
  %heap_nr.i.i = getelementptr i8, ptr %subdev, i32 56
  %32 = ptrtoint ptr %heap_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %heap_nr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp.i.i = icmp eq i32 %33, 4
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then22.critedge.i.i, !prof !26

do.end.i.i:                                       ; preds = %if.then.i97.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_heap.exit.i

if.then22.critedge.i.i:                           ; preds = %if.then.i97.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %arrayidx.i.i, align 8
  %size28.i.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %33, i32 1
  %35 = ptrtoint ptr %size28.i.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %shl.i, ptr %size28.i.i, align 8
  %36 = ptrtoint ptr %heap_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %heap_nr.i.i, align 4
  %inc.i.i = add i32 %37, 1
  store i32 %inc.i.i, ptr %heap_nr.i.i, align 4
  br label %nvkm_mmu_heap.exit.i

nvkm_mmu_heap.exit.i:                             ; preds = %if.then22.critedge.i.i, %do.end.i.i, %nvkm_mm_heap_size.exit96.i.nvkm_mmu_heap.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %37, %if.then22.critedge.i.i ], [ -22, %do.end.i.i ], [ -22, %nvkm_mm_heap_size.exit96.i.nvkm_mmu_heap.exit.i_crit_edge ]
  %shl14.i = shl nuw nsw i64 %conv204208.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv204208.shrunk.i)
  %tobool.not.i98.i = icmp eq i32 %conv204208.shrunk.i, 0
  br i1 %tobool.not.i98.i, label %nvkm_mmu_heap.exit.i.nvkm_mmu_heap.exit108.i_crit_edge, label %if.then.i101.i

nvkm_mmu_heap.exit.i.nvkm_mmu_heap.exit108.i_crit_edge: ; preds = %nvkm_mmu_heap.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_heap.exit108.i

if.then.i101.i:                                   ; preds = %nvkm_mmu_heap.exit.i
  %heap_nr.i99.i = getelementptr i8, ptr %subdev, i32 56
  %38 = ptrtoint ptr %heap_nr.i99.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %heap_nr.i99.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.i100.i = icmp eq i32 %39, 4
  br i1 %cmp.i100.i, label %do.end.i102.i, label %if.then22.critedge.i106.i, !prof !26

do.end.i102.i:                                    ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_heap.exit108.i

if.then22.critedge.i106.i:                        ; preds = %if.then.i101.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i103.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %39
  %40 = ptrtoint ptr %arrayidx.i103.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 13, ptr %arrayidx.i103.i, align 8
  %size28.i104.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %39, i32 1
  %41 = ptrtoint ptr %size28.i104.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %shl14.i, ptr %size28.i104.i, align 8
  %42 = ptrtoint ptr %heap_nr.i99.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %heap_nr.i99.i, align 4
  %inc.i105.i = add i32 %43, 1
  store i32 %inc.i105.i, ptr %heap_nr.i99.i, align 4
  br label %nvkm_mmu_heap.exit108.i

nvkm_mmu_heap.exit108.i:                          ; preds = %if.then22.critedge.i106.i, %do.end.i102.i, %nvkm_mmu_heap.exit.i.nvkm_mmu_heap.exit108.i_crit_edge
  %retval.0.i107.i = phi i32 [ %43, %if.then22.critedge.i106.i ], [ -22, %do.end.i102.i ], [ -22, %nvkm_mmu_heap.exit.i.nvkm_mmu_heap.exit108.i_crit_edge ]
  %shl16.i = shl nuw nsw i64 %conv3209.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3209.shrunk.i)
  %tobool.not.i109.i = icmp eq i32 %conv3209.shrunk.i, 0
  br i1 %tobool.not.i109.i, label %nvkm_mmu_heap.exit108.i.nvkm_mmu_type.exit.i_crit_edge, label %if.then.i112.i

nvkm_mmu_heap.exit108.i.nvkm_mmu_type.exit.i_crit_edge: ; preds = %nvkm_mmu_heap.exit108.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit.i

if.then.i112.i:                                   ; preds = %nvkm_mmu_heap.exit108.i
  %heap_nr.i110.i = getelementptr i8, ptr %subdev, i32 56
  %44 = ptrtoint ptr %heap_nr.i110.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %heap_nr.i110.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp.i111.i = icmp eq i32 %45, 4
  br i1 %cmp.i111.i, label %do.end.i113.i, label %nvkm_mmu_heap.exit119.i, !prof !26

do.end.i113.i:                                    ; preds = %if.then.i112.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit.i

nvkm_mmu_heap.exit119.i:                          ; preds = %if.then.i112.i
  %arrayidx.i114.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %45
  %46 = ptrtoint ptr %arrayidx.i114.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 13, ptr %arrayidx.i114.i, align 8
  %size28.i115.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %45, i32 1
  %47 = ptrtoint ptr %size28.i115.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl16.i, ptr %size28.i115.i, align 8
  %48 = ptrtoint ptr %heap_nr.i110.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %heap_nr.i110.i, align 4
  %inc.i116.i = add i32 %49, 1
  store i32 %inc.i116.i, ptr %heap_nr.i110.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i120.i = icmp sgt i32 %49, -1
  br i1 %cmp.i120.i, label %land.lhs.true.i.i, label %nvkm_mmu_heap.exit119.i.nvkm_mmu_type.exit.i_crit_edge

nvkm_mmu_heap.exit119.i.nvkm_mmu_type.exit.i_crit_edge: ; preds = %nvkm_mmu_heap.exit119.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit.i

land.lhs.true.i.i:                                ; preds = %nvkm_mmu_heap.exit119.i
  %type_nr.i.i = getelementptr i8, ptr %subdev, i32 124
  %50 = ptrtoint ptr %type_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %51)
  %cmp1.i.i = icmp eq i32 %51, 16
  br i1 %cmp1.i.i, label %do.end.i121.i, label %if.then21.critedge.i.i, !prof !26

do.end.i121.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit.i

if.then21.critedge.i.i:                           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i122.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %49
  %52 = ptrtoint ptr %arrayidx.i122.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i122.i, align 8
  %or46.i.i = or i8 %53, %conv7.i
  %arrayidx28.i.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %51
  %54 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %or46.i.i, ptr %arrayidx28.i.i, align 2
  %conv30.i.i = trunc i32 %49 to i8
  %55 = ptrtoint ptr %type_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type_nr.i.i, align 8
  %heap34.i.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %56, i32 1
  %57 = ptrtoint ptr %heap34.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv30.i.i, ptr %heap34.i.i, align 1
  %58 = load i32, ptr %type_nr.i.i, align 8
  %inc.i123.i = add i32 %58, 1
  store i32 %inc.i123.i, ptr %type_nr.i.i, align 8
  br label %nvkm_mmu_type.exit.i

nvkm_mmu_type.exit.i:                             ; preds = %if.then21.critedge.i.i, %do.end.i121.i, %nvkm_mmu_heap.exit119.i.nvkm_mmu_type.exit.i_crit_edge, %do.end.i113.i, %nvkm_mmu_heap.exit108.i.nvkm_mmu_type.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i107.i)
  %cmp.i124.i = icmp sgt i32 %retval.0.i107.i, -1
  br i1 %cmp.i124.i, label %land.lhs.true.i127.i, label %nvkm_mmu_type.exit.i.nvkm_mmu_type.exit136.i_crit_edge

nvkm_mmu_type.exit.i.nvkm_mmu_type.exit136.i_crit_edge: ; preds = %nvkm_mmu_type.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit136.i

land.lhs.true.i127.i:                             ; preds = %nvkm_mmu_type.exit.i
  %type_nr.i125.i = getelementptr i8, ptr %subdev, i32 124
  %59 = ptrtoint ptr %type_nr.i125.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type_nr.i125.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %60)
  %cmp1.i126.i = icmp eq i32 %60, 16
  br i1 %cmp1.i126.i, label %do.end.i128.i, label %if.then21.critedge.i135.i, !prof !26

do.end.i128.i:                                    ; preds = %land.lhs.true.i127.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit136.i

if.then21.critedge.i135.i:                        ; preds = %land.lhs.true.i127.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i129.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i107.i
  %61 = ptrtoint ptr %arrayidx.i129.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.i129.i, align 8
  %or46.i130.i = or i8 %62, %conv7.i
  %arrayidx28.i131.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %60
  %63 = ptrtoint ptr %arrayidx28.i131.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %or46.i130.i, ptr %arrayidx28.i131.i, align 2
  %conv30.i132.i = trunc i32 %retval.0.i107.i to i8
  %64 = ptrtoint ptr %type_nr.i125.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type_nr.i125.i, align 8
  %heap34.i133.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %65, i32 1
  %66 = ptrtoint ptr %heap34.i133.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv30.i132.i, ptr %heap34.i133.i, align 1
  %67 = load i32, ptr %type_nr.i125.i, align 8
  %inc.i134.i = add i32 %67, 1
  store i32 %inc.i134.i, ptr %type_nr.i125.i, align 8
  br label %nvkm_mmu_type.exit136.i

nvkm_mmu_type.exit136.i:                          ; preds = %if.then21.critedge.i135.i, %do.end.i128.i, %nvkm_mmu_type.exit.i.nvkm_mmu_type.exit136.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i137.i = icmp sgt i32 %retval.0.i.i, -1
  br i1 %cmp.i137.i, label %land.lhs.true.i140.i, label %nvkm_mmu_type.exit136.i.nvkm_mmu_type.exit149.i_crit_edge

nvkm_mmu_type.exit136.i.nvkm_mmu_type.exit149.i_crit_edge: ; preds = %nvkm_mmu_type.exit136.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit149.i

land.lhs.true.i140.i:                             ; preds = %nvkm_mmu_type.exit136.i
  %type_nr.i138.i = getelementptr i8, ptr %subdev, i32 124
  %68 = ptrtoint ptr %type_nr.i138.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type_nr.i138.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %69)
  %cmp1.i139.i = icmp eq i32 %69, 16
  br i1 %cmp1.i139.i, label %do.end.i141.i, label %if.then21.critedge.i148.i, !prof !26

do.end.i141.i:                                    ; preds = %land.lhs.true.i140.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit149.i

if.then21.critedge.i148.i:                        ; preds = %land.lhs.true.i140.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i142.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i.i
  %70 = ptrtoint ptr %arrayidx.i142.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i142.i, align 8
  %or46.i143.i = or i8 %71, %conv7.i
  %arrayidx28.i144.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %69
  %72 = ptrtoint ptr %arrayidx28.i144.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %or46.i143.i, ptr %arrayidx28.i144.i, align 2
  %conv30.i145.i = trunc i32 %retval.0.i.i to i8
  %73 = ptrtoint ptr %type_nr.i138.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %type_nr.i138.i, align 8
  %heap34.i146.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %74, i32 1
  %75 = ptrtoint ptr %heap34.i146.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv30.i145.i, ptr %heap34.i146.i, align 1
  %76 = load i32, ptr %type_nr.i138.i, align 8
  %inc.i147.i = add i32 %76, 1
  store i32 %inc.i147.i, ptr %type_nr.i138.i, align 8
  br label %nvkm_mmu_type.exit149.i

nvkm_mmu_type.exit149.i:                          ; preds = %if.then21.critedge.i148.i, %do.end.i141.i, %nvkm_mmu_type.exit136.i.nvkm_mmu_type.exit149.i_crit_edge
  tail call fastcc void @nvkm_mmu_host(ptr noundef %add.ptr) #4
  %bar.i = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 36
  %77 = ptrtoint ptr %bar.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %bar.i, align 4
  %tobool18.not.i = icmp eq ptr %78, null
  br i1 %tobool18.not.i, label %nvkm_mmu_type.exit149.i.if.end_crit_edge, label %if.then.i

nvkm_mmu_type.exit149.i.if.end_crit_edge:         ; preds = %nvkm_mmu_type.exit149.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then.i:                                        ; preds = %nvkm_mmu_type.exit149.i
  %iomap_uncached.i = getelementptr inbounds %struct.nvkm_bar, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %iomap_uncached.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %iomap_uncached.i, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool23.not.i = icmp eq i8 %80, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then24.i:                                      ; preds = %if.then.i
  %81 = or i8 %conv7.i, 32
  br i1 %cmp.i124.i, label %land.lhs.true.i153.i, label %if.then24.i.nvkm_mmu_type.exit162.i_crit_edge

if.then24.i.nvkm_mmu_type.exit162.i_crit_edge:    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit162.i

land.lhs.true.i153.i:                             ; preds = %if.then24.i
  %type_nr.i151.i = getelementptr i8, ptr %subdev, i32 124
  %82 = ptrtoint ptr %type_nr.i151.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type_nr.i151.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %83)
  %cmp1.i152.i = icmp eq i32 %83, 16
  br i1 %cmp1.i152.i, label %do.end.i154.i, label %if.then21.critedge.i161.i, !prof !26

do.end.i154.i:                                    ; preds = %land.lhs.true.i153.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit162.i

if.then21.critedge.i161.i:                        ; preds = %land.lhs.true.i153.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i155.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i107.i
  %84 = ptrtoint ptr %arrayidx.i155.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i155.i, align 8
  %or46.i156.i = or i8 %85, %81
  %arrayidx28.i157.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %83
  %86 = ptrtoint ptr %arrayidx28.i157.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %or46.i156.i, ptr %arrayidx28.i157.i, align 2
  %conv30.i158.i = trunc i32 %retval.0.i107.i to i8
  %87 = ptrtoint ptr %type_nr.i151.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %type_nr.i151.i, align 8
  %heap34.i159.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %88, i32 1
  %89 = ptrtoint ptr %heap34.i159.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv30.i158.i, ptr %heap34.i159.i, align 1
  %90 = load i32, ptr %type_nr.i151.i, align 8
  %inc.i160.i = add i32 %90, 1
  store i32 %inc.i160.i, ptr %type_nr.i151.i, align 8
  br label %nvkm_mmu_type.exit162.i

nvkm_mmu_type.exit162.i:                          ; preds = %if.then21.critedge.i161.i, %do.end.i154.i, %if.then24.i.nvkm_mmu_type.exit162.i_crit_edge
  br i1 %cmp.i137.i, label %land.lhs.true.i166.i, label %nvkm_mmu_type.exit162.i.if.end.i_crit_edge

nvkm_mmu_type.exit162.i.if.end.i_crit_edge:       ; preds = %nvkm_mmu_type.exit162.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

land.lhs.true.i166.i:                             ; preds = %nvkm_mmu_type.exit162.i
  %type_nr.i164.i = getelementptr i8, ptr %subdev, i32 124
  %91 = ptrtoint ptr %type_nr.i164.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %type_nr.i164.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %92)
  %cmp1.i165.i = icmp eq i32 %92, 16
  br i1 %cmp1.i165.i, label %do.end.i167.i, label %if.then21.critedge.i174.i, !prof !26

do.end.i167.i:                                    ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %if.end.i

if.then21.critedge.i174.i:                        ; preds = %land.lhs.true.i166.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i168.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i.i
  %93 = ptrtoint ptr %arrayidx.i168.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx.i168.i, align 8
  %or46.i169.i = or i8 %94, %81
  %arrayidx28.i170.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %92
  %95 = ptrtoint ptr %arrayidx28.i170.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %or46.i169.i, ptr %arrayidx28.i170.i, align 2
  %conv30.i171.i = trunc i32 %retval.0.i.i to i8
  %96 = ptrtoint ptr %type_nr.i164.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %type_nr.i164.i, align 8
  %heap34.i172.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %97, i32 1
  %98 = ptrtoint ptr %heap34.i172.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv30.i171.i, ptr %heap34.i172.i, align 1
  %99 = load i32, ptr %type_nr.i164.i, align 8
  %inc.i173.i = add i32 %99, 1
  store i32 %inc.i173.i, ptr %type_nr.i164.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then21.critedge.i174.i, %do.end.i167.i, %nvkm_mmu_type.exit162.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %100 = or i8 %conv7.i, -32
  br i1 %cmp.i124.i, label %land.lhs.true.i179.i, label %if.end.i.nvkm_mmu_type.exit188.i_crit_edge

if.end.i.nvkm_mmu_type.exit188.i_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit188.i

land.lhs.true.i179.i:                             ; preds = %if.end.i
  %type_nr.i177.i = getelementptr i8, ptr %subdev, i32 124
  %101 = ptrtoint ptr %type_nr.i177.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type_nr.i177.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %102)
  %cmp1.i178.i = icmp eq i32 %102, 16
  br i1 %cmp1.i178.i, label %do.end.i180.i, label %if.then21.critedge.i187.i, !prof !26

do.end.i180.i:                                    ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit188.i

if.then21.critedge.i187.i:                        ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i181.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i107.i
  %103 = ptrtoint ptr %arrayidx.i181.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %arrayidx.i181.i, align 8
  %or46.i182.i = or i8 %104, %100
  %arrayidx28.i183.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %102
  %105 = ptrtoint ptr %arrayidx28.i183.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %or46.i182.i, ptr %arrayidx28.i183.i, align 2
  %conv30.i184.i = trunc i32 %retval.0.i107.i to i8
  %106 = ptrtoint ptr %type_nr.i177.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %type_nr.i177.i, align 8
  %heap34.i185.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %107, i32 1
  %108 = ptrtoint ptr %heap34.i185.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv30.i184.i, ptr %heap34.i185.i, align 1
  %109 = load i32, ptr %type_nr.i177.i, align 8
  %inc.i186.i = add i32 %109, 1
  store i32 %inc.i186.i, ptr %type_nr.i177.i, align 8
  br label %nvkm_mmu_type.exit188.i

nvkm_mmu_type.exit188.i:                          ; preds = %if.then21.critedge.i187.i, %do.end.i180.i, %if.end.i.nvkm_mmu_type.exit188.i_crit_edge
  br i1 %cmp.i137.i, label %land.lhs.true.i192.i, label %nvkm_mmu_type.exit188.i.if.end_crit_edge

nvkm_mmu_type.exit188.i.if.end_crit_edge:         ; preds = %nvkm_mmu_type.exit188.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i192.i:                             ; preds = %nvkm_mmu_type.exit188.i
  %type_nr.i190.i = getelementptr i8, ptr %subdev, i32 124
  %110 = ptrtoint ptr %type_nr.i190.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %type_nr.i190.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %111)
  %cmp1.i191.i = icmp eq i32 %111, 16
  br i1 %cmp1.i191.i, label %do.end.i193.i, label %if.then21.critedge.i200.i, !prof !26

do.end.i193.i:                                    ; preds = %land.lhs.true.i192.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.then21.critedge.i200.i:                        ; preds = %land.lhs.true.i192.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i194.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 4, i32 %retval.0.i.i
  %112 = ptrtoint ptr %arrayidx.i194.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx.i194.i, align 8
  %or46.i195.i = or i8 %113, %100
  %arrayidx28.i196.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %111
  %114 = ptrtoint ptr %arrayidx28.i196.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %or46.i195.i, ptr %arrayidx28.i196.i, align 2
  %conv30.i197.i = trunc i32 %retval.0.i.i to i8
  %115 = ptrtoint ptr %type_nr.i190.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %type_nr.i190.i, align 8
  %heap34.i198.i = getelementptr %struct.nvkm_mmu, ptr %add.ptr, i32 0, i32 6, i32 %116, i32 1
  %117 = ptrtoint ptr %heap34.i198.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %conv30.i197.i, ptr %heap34.i198.i, align 1
  %118 = load i32, ptr %type_nr.i190.i, align 8
  %inc.i199.i = add i32 %118, 1
  store i32 %inc.i199.i, ptr %type_nr.i190.i, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  tail call fastcc void @nvkm_mmu_host(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then21.critedge.i200.i, %do.end.i193.i, %nvkm_mmu_type.exit188.i.if.end_crit_edge, %nvkm_mmu_type.exit149.i.if.end_crit_edge
  %119 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %add.ptr, align 8
  %global = getelementptr inbounds %struct.nvkm_mmu_func, ptr %120, i32 0, i32 4, i32 2
  %121 = ptrtoint ptr %global to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %global, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool6.not = icmp eq i8 %122, 0
  br i1 %tobool6.not, label %if.end.if.end13_crit_edge, label %if.then7

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %123 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %device, align 4
  %vmm9 = getelementptr i8, ptr %subdev, i32 160
  %call = tail call i32 @nvkm_vmm_new(ptr noundef %124, i64 noundef 0, i64 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef %vmm9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %if.then7.if.end13_crit_edge, label %if.then7.cleanup14_crit_edge

if.then7.cleanup14_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup14

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %cleanup14

cleanup14:                                        ; preds = %if.end13, %if.then7.cleanup14_crit_edge
  %retval.1 = phi i32 [ 0, %if.end13 ], [ %call, %if.then7.cleanup14_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_mmu_init(ptr noundef %subdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %subdev, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %add.ptr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_vmm_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nvkm_mmu_host(ptr noundef %mmu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %2 = ptrtoint ptr %mmu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmu, align 8
  %kind_sys = getelementptr inbounds %struct.nvkm_mmu_func, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %kind_sys to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %kind_sys, align 4, !range !24
  %6 = shl nuw nsw i8 %5, 4
  %heap_nr.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 3
  %7 = ptrtoint ptr %heap_nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %heap_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp eq i32 %8, 4
  br i1 %cmp.i, label %nvkm_mmu_heap.exit.thread, label %nvkm_mmu_heap.exit, !prof !26

nvkm_mmu_heap.exit.thread:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 268, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit

nvkm_mmu_heap.exit:                               ; preds = %entry
  %arrayidx.i = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %arrayidx.i, align 8
  %size28.i = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %8, i32 1
  %10 = ptrtoint ptr %size28.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 -1, ptr %size28.i, align 8
  %11 = ptrtoint ptr %heap_nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %heap_nr.i, align 4
  %inc.i = add i32 %12, 1
  store i32 %inc.i, ptr %heap_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp.i43 = icmp sgt i32 %12, -1
  br i1 %cmp.i43, label %land.lhs.true.i, label %nvkm_mmu_heap.exit.nvkm_mmu_type.exit_crit_edge

nvkm_mmu_heap.exit.nvkm_mmu_type.exit_crit_edge:  ; preds = %nvkm_mmu_heap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit

land.lhs.true.i:                                  ; preds = %nvkm_mmu_heap.exit
  %type_nr.i = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 5
  %13 = ptrtoint ptr %type_nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp1.i = icmp eq i32 %14, 16
  br i1 %cmp1.i, label %do.end.i44, label %if.then21.critedge.i, !prof !26

do.end.i44:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit

if.then21.critedge.i:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i45 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %12
  %15 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i45, align 8
  %or46.i = or i8 %16, %6
  %arrayidx28.i = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %14
  %17 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %or46.i, ptr %arrayidx28.i, align 2
  %conv30.i = trunc i32 %12 to i8
  %18 = ptrtoint ptr %type_nr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type_nr.i, align 8
  %heap34.i = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %19, i32 1
  %20 = ptrtoint ptr %heap34.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv30.i, ptr %heap34.i, align 1
  %21 = load i32, ptr %type_nr.i, align 8
  %inc.i46 = add i32 %21, 1
  store i32 %inc.i46, ptr %type_nr.i, align 8
  br label %nvkm_mmu_type.exit

nvkm_mmu_type.exit:                               ; preds = %if.then21.critedge.i, %do.end.i44, %nvkm_mmu_heap.exit.nvkm_mmu_type.exit_crit_edge, %nvkm_mmu_heap.exit.thread
  %cmp.i43107 = phi i1 [ false, %nvkm_mmu_heap.exit.thread ], [ false, %nvkm_mmu_heap.exit.nvkm_mmu_type.exit_crit_edge ], [ true, %do.end.i44 ], [ true, %if.then21.critedge.i ]
  %retval.0.i101 = phi i32 [ -22, %nvkm_mmu_heap.exit.thread ], [ %12, %nvkm_mmu_heap.exit.nvkm_mmu_type.exit_crit_edge ], [ %12, %do.end.i44 ], [ %12, %if.then21.critedge.i ]
  %bar = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 36
  %22 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bar, align 4
  %tobool5.not = icmp eq ptr %23, null
  br i1 %tobool5.not, label %nvkm_mmu_type.exit.if.then_crit_edge, label %lor.lhs.false

nvkm_mmu_type.exit.if.then_crit_edge:             ; preds = %nvkm_mmu_type.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %nvkm_mmu_type.exit
  %iomap_uncached = getelementptr inbounds %struct.nvkm_bar, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %iomap_uncached to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %iomap_uncached, align 1, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not = icmp eq i8 %25, 0
  br i1 %tobool7.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %nvkm_mmu_type.exit.if.then_crit_edge
  br i1 %cmp.i43107, label %land.lhs.true.i50, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i50:                                ; preds = %if.then
  %type_nr.i48 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 5
  %26 = ptrtoint ptr %type_nr.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type_nr.i48, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %27)
  %cmp1.i49 = icmp eq i32 %27, 16
  br i1 %cmp1.i49, label %do.end.i51, label %if.then21.critedge.i58, !prof !26

do.end.i51:                                       ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.then21.critedge.i58:                           ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i52 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %retval.0.i101
  %28 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.i52, align 8
  %or46.i53 = or i8 %29, 32
  %arrayidx28.i54 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %27
  %30 = ptrtoint ptr %arrayidx28.i54 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %or46.i53, ptr %arrayidx28.i54, align 2
  %conv30.i55 = trunc i32 %retval.0.i101 to i8
  %31 = ptrtoint ptr %type_nr.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type_nr.i48, align 8
  %heap34.i56 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %32, i32 1
  %33 = ptrtoint ptr %heap34.i56 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv30.i55, ptr %heap34.i56, align 1
  %34 = load i32, ptr %type_nr.i48, align 8
  %inc.i57 = add i32 %34, 1
  store i32 %inc.i57, ptr %type_nr.i48, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  br i1 %cmp.i43107, label %land.lhs.true.i63, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.i63:                                ; preds = %if.else
  %type_nr.i61 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 5
  %35 = ptrtoint ptr %type_nr.i61 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type_nr.i61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %36)
  %cmp1.i62 = icmp eq i32 %36, 16
  br i1 %cmp1.i62, label %do.end.i64, label %if.then21.critedge.i71, !prof !26

do.end.i64:                                       ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.then21.critedge.i71:                           ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i65 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %retval.0.i101
  %37 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i65, align 8
  %39 = or i8 %6, %38
  %or46.i66 = or i8 %39, 32
  %arrayidx28.i67 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %36
  %40 = ptrtoint ptr %arrayidx28.i67 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %or46.i66, ptr %arrayidx28.i67, align 2
  %conv30.i68 = trunc i32 %retval.0.i101 to i8
  %41 = ptrtoint ptr %type_nr.i61 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type_nr.i61, align 8
  %heap34.i69 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %42, i32 1
  %43 = ptrtoint ptr %heap34.i69 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv30.i68, ptr %heap34.i69, align 1
  %44 = load i32, ptr %type_nr.i61, align 8
  %inc.i70 = add i32 %44, 1
  store i32 %inc.i70, ptr %type_nr.i61, align 8
  br label %if.end

if.end:                                           ; preds = %if.then21.critedge.i71, %do.end.i64, %if.else.if.end_crit_edge, %if.then21.critedge.i58, %do.end.i51, %if.then.if.end_crit_edge
  %cmp.i43108 = phi i1 [ false, %if.then.if.end_crit_edge ], [ true, %do.end.i51 ], [ true, %if.then21.critedge.i58 ], [ false, %if.else.if.end_crit_edge ], [ true, %do.end.i64 ], [ true, %if.then21.critedge.i71 ]
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 8
  %cpu_coherent = getelementptr inbounds %struct.nvkm_device_func, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %cpu_coherent to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cpu_coherent, align 4, !range !24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool15.not = icmp eq i8 %48, 0
  br i1 %tobool15.not, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end
  br i1 %cmp.i43108, label %land.lhs.true.i76, label %if.then16.nvkm_mmu_type.exit98_crit_edge

if.then16.nvkm_mmu_type.exit98_crit_edge:         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit98

land.lhs.true.i76:                                ; preds = %if.then16
  %type_nr.i74 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 5
  %49 = ptrtoint ptr %type_nr.i74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type_nr.i74, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %50)
  %cmp1.i75 = icmp eq i32 %50, 16
  br i1 %cmp1.i75, label %do.end.i77, label %if.then21.critedge.i84, !prof !26

do.end.i77:                                       ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %land.lhs.true.i89

if.then21.critedge.i84:                           ; preds = %land.lhs.true.i76
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i78 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %retval.0.i101
  %51 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i78, align 8
  %or46.i79 = or i8 %52, 96
  %arrayidx28.i80 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %50
  %53 = ptrtoint ptr %arrayidx28.i80 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or46.i79, ptr %arrayidx28.i80, align 2
  %conv30.i81 = trunc i32 %retval.0.i101 to i8
  %54 = ptrtoint ptr %type_nr.i74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type_nr.i74, align 8
  %heap34.i82 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %55, i32 1
  %56 = ptrtoint ptr %heap34.i82 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv30.i81, ptr %heap34.i82, align 1
  %57 = load i32, ptr %type_nr.i74, align 8
  %inc.i83 = add i32 %57, 1
  store i32 %inc.i83, ptr %type_nr.i74, align 8
  br label %land.lhs.true.i89

if.end20:                                         ; preds = %if.end
  br i1 %cmp.i43108, label %if.end20.land.lhs.true.i89_crit_edge, label %if.end20.nvkm_mmu_type.exit98_crit_edge

if.end20.nvkm_mmu_type.exit98_crit_edge:          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %nvkm_mmu_type.exit98

if.end20.land.lhs.true.i89_crit_edge:             ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.lhs.true.i89

land.lhs.true.i89:                                ; preds = %if.end20.land.lhs.true.i89_crit_edge, %if.then21.critedge.i84, %do.end.i77
  %type_nr.i87 = getelementptr inbounds %struct.nvkm_mmu, ptr %mmu, i32 0, i32 5
  %58 = ptrtoint ptr %type_nr.i87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type_nr.i87, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %59)
  %cmp1.i88 = icmp eq i32 %59, 16
  br i1 %cmp1.i88, label %do.end.i90, label %if.then21.critedge.i97, !prof !26

do.end.i90:                                       ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 257, i32 noundef 9, ptr noundef null) #4
  br label %nvkm_mmu_type.exit98

if.then21.critedge.i97:                           ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx.i91 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 4, i32 %retval.0.i101
  %60 = ptrtoint ptr %arrayidx.i91 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.i91, align 8
  %62 = or i8 %6, %61
  %or46.i92 = or i8 %62, -32
  %arrayidx28.i93 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %59
  %63 = ptrtoint ptr %arrayidx28.i93 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %or46.i92, ptr %arrayidx28.i93, align 2
  %conv30.i94 = trunc i32 %retval.0.i101 to i8
  %64 = ptrtoint ptr %type_nr.i87 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type_nr.i87, align 8
  %heap34.i95 = getelementptr %struct.nvkm_mmu, ptr %mmu, i32 0, i32 6, i32 %65, i32 1
  %66 = ptrtoint ptr %heap34.i95 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv30.i94, ptr %heap34.i95, align 1
  %67 = load i32, ptr %type_nr.i87, align 8
  %inc.i96 = add i32 %67, 1
  store i32 %inc.i96, ptr %type_nr.i87, align 8
  br label %nvkm_mmu_type.exit98

nvkm_mmu_type.exit98:                             ; preds = %if.then21.critedge.i97, %do.end.i90, %if.end20.nvkm_mmu_type.exit98_crit_edge, %if.then16.nvkm_mmu_type.exit98_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_vmm_new(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @nvkm_mmu_ctor.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 424, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nvkm_mmu, !4, !"nvkm_mmu", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 410, i32 1}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 239, i32 3}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 380, i32 12}
!9 = !{ptr @nvkm_mmu_ptc_init.__key, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 248, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @nvkm_mmu_ptc_init.__key.4, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/mmu/base.c", i32 250, i32 2}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i8 0, i8 2}
!25 = !{i32 0, i32 33}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
