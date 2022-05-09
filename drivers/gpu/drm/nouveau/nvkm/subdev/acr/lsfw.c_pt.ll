; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_acr_lsfw = type { ptr, ptr, i32, %struct.list_head, %struct.nvkm_blob, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.143, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_blob = type { ptr, i32 }
%struct.anon.143 = type { i32, i32, i32 }
%struct.nvkm_acr = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, ptr, i64, i64, i64, ptr, ptr, i8, ptr, i8, i64 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.137, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.anon.137 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.nvfw_ls_desc_head = type { i32, i32, i32, i32, [64 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bin_hdr = type { i32, i32, i32, i32, i32, i32 }
%struct.nvfw_bl_desc = type { i32, i32, i32, i32, i32, i32 }

@nvkm_acr_lsfw_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: LSFW %d redefined\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvkm_acr_lsfw_add\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvkm_acr_lsfw_add._entry_ptr = internal global ptr @nvkm_acr_lsfw_add._entry, section ".printk_index", align 4
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"bl\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"inst\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sig\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"image\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"desc\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 68, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 197, i32 46 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 205, i32 46 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 209, i32 46 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 213, i32 46 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 104, i32 46 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 108, i32 46 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @nvkm_acr_lsfw_add._entry, ptr @nvkm_acr_lsfw_add._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_acr_lsfw_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_acr_lsfw_del(ptr noundef %lsfw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 4
  %0 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %img, align 4
  tail call void @kfree(ptr noundef %1) #6
  %2 = ptrtoint ptr %img to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %img, align 4
  %size.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 4, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %size.i, align 4
  %sig = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 5
  %4 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sig, align 4
  tail call void @nvkm_firmware_put(ptr noundef %5) #6
  %head = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %lsfw) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_firmware_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nvkm_acr_lsfw_del_all(ptr noundef readonly %acr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lsfw1 = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  %0 = ptrtoint ptr %lsfw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lsfw1, align 8
  %cmp.not18 = icmp eq ptr %1, %lsfw1
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %nvkm_acr_lsfw_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %nvkm_acr_lsfw_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %lsfw.0 = getelementptr i8, ptr %.pn.in19, i32 -12
  %2 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %img.i = getelementptr i8, ptr %.pn.in19, i32 8
  %3 = ptrtoint ptr %img.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %img.i, align 4
  tail call void @kfree(ptr noundef %4) #6
  %5 = ptrtoint ptr %img.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %img.i, align 4
  %size.i.i = getelementptr i8, ptr %.pn.in19, i32 12
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %size.i.i, align 4
  %sig.i = getelementptr i8, ptr %.pn.in19, i32 16
  %7 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sig.i, align 4
  tail call void @nvkm_firmware_put(ptr noundef %8) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.nvkm_acr_lsfw_del.exit_crit_edge

for.body.nvkm_acr_lsfw_del.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_acr_lsfw_del.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in19, i32 4
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %nvkm_acr_lsfw_del.exit

nvkm_acr_lsfw_del.exit:                           ; preds = %if.end.i.i.i, %for.body.nvkm_acr_lsfw_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in19, i32 4
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %lsfw.0) #6
  %cmp.not = icmp eq ptr %.pn, %lsfw1
  br i1 %cmp.not, label %nvkm_acr_lsfw_del.exit.for.end_crit_edge, label %nvkm_acr_lsfw_del.exit.for.body_crit_edge

nvkm_acr_lsfw_del.exit.for.body_crit_edge:        ; preds = %nvkm_acr_lsfw_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

nvkm_acr_lsfw_del.exit.for.end_crit_edge:         ; preds = %nvkm_acr_lsfw_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %nvkm_acr_lsfw_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nvkm_acr_lsfw_add(ptr noundef %func, ptr noundef %acr, ptr noundef %falcon, i32 noundef %id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %acr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hsfw = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 2
  %0 = ptrtoint ptr %hsfw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %hsfw, align 4
  %cmp.i.not = icmp eq ptr %1, %hsfw
  br i1 %cmp.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lsfw1.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %lsfw1.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %lsfw1.i
  br i1 %cmp.not.i, label %for.cond.i.if.then16.critedge_crit_edge, label %for.body.i

for.cond.i.if.then16.critedge_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.critedge

for.body.i:                                       ; preds = %for.cond.i
  %id3.i = getelementptr i8, ptr %.pn.i, i32 -4
  %3 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id3.i, align 4
  %cmp4.i = icmp eq i32 %4, %id
  br i1 %cmp4.i, label %nvkm_acr_lsfw_get.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nvkm_acr_lsfw_get.exit:                           ; preds = %for.body.i
  %lsfw.0.le.i = getelementptr i8, ptr %.pn.i, i32 -12
  %tobool4.not = icmp eq ptr %lsfw.0.le.i, null
  br i1 %tobool4.not, label %nvkm_acr_lsfw_get.exit.if.then16.critedge_crit_edge, label %land.lhs.true

nvkm_acr_lsfw_get.exit.if.then16.critedge_crit_edge: ; preds = %nvkm_acr_lsfw_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16.critedge

land.lhs.true:                                    ; preds = %nvkm_acr_lsfw_get.exit
  %5 = ptrtoint ptr %lsfw.0.le.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lsfw.0.le.i, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.if.end24_crit_edge, label %do.body

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

do.body:                                          ; preds = %land.lhs.true
  %debug = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 1, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %id) #9
  br label %cleanup

if.then16.critedge:                               ; preds = %nvkm_acr_lsfw_get.exit.if.then16.critedge_crit_edge, %for.cond.i.if.then16.critedge_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 92) #10
  %tobool18.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool18.not, label %if.then16.critedge.cleanup_crit_edge, label %if.end21

if.then16.critedge.cleanup_crit_edge:             ; preds = %if.then16.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.then16.critedge
  %id22 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %id, ptr %id22, align 8
  %head = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call7.i.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.nvkm_acr, ptr %acr, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %16, ptr noundef %lsfw1.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.if.end24_crit_edge

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %head, ptr %prev.i, align 4
  %18 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %lsfw1.i, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call7.i.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %head, ptr %16, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end.i.i, %if.end21.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %lsfw.0 = phi ptr [ %lsfw.0.le.i, %land.lhs.true.if.end24_crit_edge ], [ %call7.i.i, %if.end21.if.end24_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  %21 = ptrtoint ptr %lsfw.0 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %func, ptr %lsfw.0, align 4
  %falcon26 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %lsfw.0, i32 0, i32 1
  %22 = ptrtoint ptr %falcon26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %falcon, ptr %falcon26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.then16.critedge.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %lsfw.0, %if.end24 ], [ inttoptr (i32 -38 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -38 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -17 to ptr), %do.end ], [ inttoptr (i32 -17 to ptr), %do.body.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then16.critedge.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !29
  %call = call fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func, ptr noundef nonnull %fw)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call3 = call ptr @nvfw_ls_desc(ptr noundef %subdev, ptr noundef %5) #6
  %bootloader_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 6
  %6 = ptrtoint ptr %bootloader_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bootloader_size.i, align 4
  %add.i = add i32 %7, 255
  %and.i = and i32 %add.i, -256
  %bootloader_size1.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %bootloader_size1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %bootloader_size1.i, align 4
  %bootloader_imem_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %bootloader_imem_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bootloader_imem_offset.i, align 4
  %bootloader_imem_offset2.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %bootloader_imem_offset2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bootloader_imem_offset2.i, align 4
  %app_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 10
  %12 = ptrtoint ptr %app_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %app_size.i, align 4
  %add3.i = add i32 %13, 255
  %and4.i = and i32 %add3.i, -256
  %app_size5.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %app_size5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and4.i, ptr %app_size5.i, align 4
  %app_start_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 9
  %15 = ptrtoint ptr %app_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %app_start_offset.i, align 4
  %app_start_offset6.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 9
  %17 = ptrtoint ptr %app_start_offset6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %app_start_offset6.i, align 4
  %app_imem_entry.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 12
  %18 = ptrtoint ptr %app_imem_entry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %app_imem_entry.i, align 4
  %app_imem_entry7.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 10
  %20 = ptrtoint ptr %app_imem_entry7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %app_imem_entry7.i, align 4
  %app_resident_code_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 14
  %21 = ptrtoint ptr %app_resident_code_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_resident_code_offset.i, align 4
  %app_resident_code_offset8.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 11
  %23 = ptrtoint ptr %app_resident_code_offset8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %app_resident_code_offset8.i, align 4
  %app_resident_code_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 15
  %24 = ptrtoint ptr %app_resident_code_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %app_resident_code_size.i, align 4
  %app_resident_code_size9.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 12
  %26 = ptrtoint ptr %app_resident_code_size9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %app_resident_code_size9.i, align 4
  %app_resident_data_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 16
  %27 = ptrtoint ptr %app_resident_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %app_resident_data_offset.i, align 4
  %app_resident_data_offset10.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 13
  %29 = ptrtoint ptr %app_resident_data_offset10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %app_resident_data_offset10.i, align 4
  %app_resident_data_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 17
  %30 = ptrtoint ptr %app_resident_data_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %app_resident_data_size.i, align 4
  %app_resident_data_size11.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 14
  %32 = ptrtoint ptr %app_resident_data_size11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %app_resident_data_size11.i, align 4
  %add13.i = add i32 %28, 255
  %and14.i = and i32 %add13.i, -256
  %add16.i = add i32 %and14.i, %and.i
  %ucode_size.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 15
  %33 = ptrtoint ptr %ucode_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add16.i, ptr %ucode_size.i, align 4
  %add19.i = add i32 %and4.i, %and.i
  %sub.i = sub i32 %add19.i, %add16.i
  %data_size.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 16
  %34 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %data_size.i, align 4
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 4
  call void @nvkm_firmware_put(ptr noundef %36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func, ptr noundef %pdesc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %acr1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %acr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acr1, align 4
  %call = tail call ptr @nvkm_acr_lsfw_add(ptr noundef %func, ptr noundef %3, ptr noundef %falcon, i32 noundef %id)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sig = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 5
  %call3 = tail call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.8, i32 noundef %ver, ptr noundef %sig) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.end5:                                          ; preds = %if.end
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4
  %call6 = tail call i32 @nvkm_firmware_load_blob(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.9, i32 noundef %ver, ptr noundef %img) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %done, label %if.end5.if.then12_crit_edge

if.end5.if.then12_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

done:                                             ; preds = %if.end5
  %call10 = tail call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.10, i32 noundef %ver, ptr noundef %pdesc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %done.cleanup_crit_edge, label %done.if.then12_crit_edge

done.if.then12_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %done.if.then12_crit_edge, %if.end5.if.then12_crit_edge, %if.end.if.then12_crit_edge
  %ret.033 = phi i32 [ %call10, %done.if.then12_crit_edge ], [ %call6, %if.end5.if.then12_crit_edge ], [ %call3, %if.end.if.then12_crit_edge ]
  %img.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %img.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %img.i, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %img.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %img.i, align 4
  %size.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %size.i.i, align 4
  %8 = ptrtoint ptr %sig to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sig, align 4
  tail call void @nvkm_firmware_put(ptr noundef %9) #6
  %head.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then12.nvkm_acr_lsfw_del.exit_crit_edge

if.then12.nvkm_acr_lsfw_del.exit_crit_edge:       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_acr_lsfw_del.exit

if.end.i.i.i:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %nvkm_acr_lsfw_del.exit

nvkm_acr_lsfw_del.exit:                           ; preds = %if.end.i.i.i, %if.then12.nvkm_acr_lsfw_del.exit_crit_edge
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %call) #6
  %18 = inttoptr i32 %ret.033 to ptr
  br label %cleanup

cleanup:                                          ; preds = %nvkm_acr_lsfw_del.exit, %done.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %nvkm_acr_lsfw_del.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call, %done.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_ls_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_sig_image_desc_v1(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !29
  %call = call fastcc ptr @nvkm_acr_lsfw_load_sig_image_desc_(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func, ptr noundef nonnull %fw)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call3 = call ptr @nvfw_ls_desc_v1(ptr noundef %subdev, ptr noundef %5) #6
  %bootloader_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 6
  %6 = ptrtoint ptr %bootloader_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bootloader_size.i, align 4
  %add.i = add i32 %7, 255
  %and.i = and i32 %add.i, -256
  %bootloader_size1.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 6
  %8 = ptrtoint ptr %bootloader_size1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and.i, ptr %bootloader_size1.i, align 4
  %bootloader_imem_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 7
  %9 = ptrtoint ptr %bootloader_imem_offset.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bootloader_imem_offset.i, align 4
  %bootloader_imem_offset2.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %bootloader_imem_offset2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bootloader_imem_offset2.i, align 4
  %app_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 10
  %12 = ptrtoint ptr %app_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %app_size.i, align 4
  %add3.i = add i32 %13, 255
  %and4.i = and i32 %add3.i, -256
  %app_size5.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 8
  %14 = ptrtoint ptr %app_size5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and4.i, ptr %app_size5.i, align 4
  %app_start_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 9
  %15 = ptrtoint ptr %app_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %app_start_offset.i, align 4
  %app_start_offset6.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 9
  %17 = ptrtoint ptr %app_start_offset6.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %app_start_offset6.i, align 4
  %app_imem_entry.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 12
  %18 = ptrtoint ptr %app_imem_entry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %app_imem_entry.i, align 4
  %app_imem_entry7.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 10
  %20 = ptrtoint ptr %app_imem_entry7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %app_imem_entry7.i, align 4
  %app_resident_code_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 14
  %21 = ptrtoint ptr %app_resident_code_offset.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %app_resident_code_offset.i, align 4
  %app_resident_code_offset8.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 11
  %23 = ptrtoint ptr %app_resident_code_offset8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %app_resident_code_offset8.i, align 4
  %app_resident_code_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 15
  %24 = ptrtoint ptr %app_resident_code_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %app_resident_code_size.i, align 4
  %app_resident_code_size9.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 12
  %26 = ptrtoint ptr %app_resident_code_size9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %app_resident_code_size9.i, align 4
  %app_resident_data_offset.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 16
  %27 = ptrtoint ptr %app_resident_data_offset.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %app_resident_data_offset.i, align 4
  %app_resident_data_offset10.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 13
  %29 = ptrtoint ptr %app_resident_data_offset10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %app_resident_data_offset10.i, align 4
  %app_resident_data_size.i = getelementptr inbounds %struct.nvfw_ls_desc_head, ptr %call3, i32 0, i32 17
  %30 = ptrtoint ptr %app_resident_data_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %app_resident_data_size.i, align 4
  %app_resident_data_size11.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 14
  %32 = ptrtoint ptr %app_resident_data_size11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %app_resident_data_size11.i, align 4
  %add13.i = add i32 %28, 255
  %and14.i = and i32 %add13.i, -256
  %add16.i = add i32 %and14.i, %and.i
  %ucode_size.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 15
  %33 = ptrtoint ptr %ucode_size.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %add16.i, ptr %ucode_size.i, align 4
  %add19.i = add i32 %and4.i, %and.i
  %sub.i = sub i32 %add19.i, %add16.i
  %data_size.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 16
  %34 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.i, ptr %data_size.i, align 4
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 4
  call void @nvkm_firmware_put(ptr noundef %36) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_ls_desc_v1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvkm_acr_lsfw_load_bl_inst_data_sig(ptr noundef %subdev, ptr noundef %falcon, i32 noundef %id, ptr noundef %path, i32 noundef %ver, ptr noundef %func) local_unnamed_addr #0 align 64 {
entry:
  %bl = alloca ptr, align 4
  %inst = alloca ptr, align 4
  %data = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.nvkm_subdev, ptr %subdev, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %acr1 = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 38
  %2 = ptrtoint ptr %acr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %acr1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bl) #6
  %4 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inst) #6
  %5 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %inst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #6
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data, align 4
  %call = tail call ptr @nvkm_acr_lsfw_add(ptr noundef %func, ptr noundef %3, ptr noundef %falcon, i32 noundef %id)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.5, i32 noundef %ver, ptr noundef nonnull %bl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.if.then76_crit_edge

if.end.if.then76_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.end6:                                          ; preds = %if.end
  %8 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bl, align 4
  %data7 = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data7, align 4
  %call8 = call ptr @nvfw_bin_hdr(ptr noundef %subdev, ptr noundef %11) #6
  %12 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bl, align 4
  %data9 = getelementptr inbounds %struct.firmware, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %data9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data9, align 4
  %header_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call8, i32 0, i32 3
  %16 = ptrtoint ptr %header_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %header_offset, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %call10 = call ptr @nvfw_bl_desc(ptr noundef %subdev, ptr noundef %add.ptr) #6
  %18 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bl, align 4
  %data11 = getelementptr inbounds %struct.firmware, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data11, align 4
  %data_offset = getelementptr inbounds %struct.nvfw_bin_hdr, ptr %call8, i32 0, i32 4
  %22 = ptrtoint ptr %data_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data_offset, align 4
  %add.ptr12 = getelementptr i8, ptr %21, i32 %23
  %call13 = call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.6, i32 noundef %ver, ptr noundef nonnull %inst) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end6.if.then76_crit_edge

if.end6.if.then76_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.end16:                                         ; preds = %if.end6
  %call17 = call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.7, i32 noundef %ver, ptr noundef nonnull %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.if.then76_crit_edge

if.end16.if.then76_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.end20:                                         ; preds = %if.end16
  %sig = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 5
  %call21 = call i32 @nvkm_firmware_load_name(ptr noundef %subdev, ptr noundef %path, ptr noundef nonnull @.str.8, i32 noundef %ver, ptr noundef %sig) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end20.if.then76_crit_edge

if.end20.if.then76_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

if.end24:                                         ; preds = %if.end20
  %code_size = getelementptr inbounds %struct.nvfw_bl_desc, ptr %call10, i32 0, i32 3
  %24 = ptrtoint ptr %code_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %code_size, align 4
  %add = add i32 %25, 255
  %and = and i32 %add, -256
  %bootloader_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %bootloader_size to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %bootloader_size, align 4
  %27 = ptrtoint ptr %call10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %call10, align 4
  %shl = shl i32 %28, 8
  %bootloader_imem_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 7
  %29 = ptrtoint ptr %bootloader_imem_offset to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shl, ptr %bootloader_imem_offset, align 4
  %app_start_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 9
  %30 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %app_start_offset, align 4
  %app_imem_entry = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 10
  %31 = ptrtoint ptr %app_imem_entry to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %app_imem_entry, align 4
  %app_resident_code_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %app_resident_code_offset, align 4
  %33 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %inst, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add26 = add i32 %36, 255
  %and27 = and i32 %add26, -256
  %app_resident_code_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 12
  %37 = ptrtoint ptr %app_resident_code_size to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and27, ptr %app_resident_code_size, align 4
  %app_resident_data_offset = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 13
  %38 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and27, ptr %app_resident_data_offset, align 4
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add30 = add i32 %42, 255
  %and31 = and i32 %add30, -256
  %app_resident_data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 14
  %43 = ptrtoint ptr %app_resident_data_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and31, ptr %app_resident_data_size, align 4
  %add34 = add i32 %and31, %and27
  %app_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 8
  %44 = ptrtoint ptr %app_size to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %add34, ptr %app_size, align 4
  %add37 = add i32 %add34, %and
  %img = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4
  %size38 = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %size38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add37, ptr %size38, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add37, i32 noundef 3520) #11
  %46 = ptrtoint ptr %img to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %img, align 4
  %tobool44.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool44.not, label %if.end24.if.then76_crit_edge, label %done

if.end24.if.then76_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then76

done:                                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %bootloader_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bootloader_size, align 4
  %49 = call ptr @memcpy(ptr %call9.i.i, ptr %add.ptr12, i32 %48)
  %50 = ptrtoint ptr %img to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %img, align 4
  %52 = ptrtoint ptr %app_start_offset to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %app_start_offset, align 4
  %add.ptr53 = getelementptr i8, ptr %51, i32 %53
  %54 = ptrtoint ptr %app_resident_code_offset to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %app_resident_code_offset, align 4
  %add.ptr55 = getelementptr i8, ptr %add.ptr53, i32 %55
  %56 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %inst, align 4
  %data56 = getelementptr inbounds %struct.firmware, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %data56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data56, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %57, align 4
  %62 = call ptr @memcpy(ptr %add.ptr55, ptr %59, i32 %61)
  %63 = load ptr, ptr %img, align 4
  %64 = load i32, ptr %app_start_offset, align 4
  %add.ptr61 = getelementptr i8, ptr %63, i32 %64
  %65 = ptrtoint ptr %app_resident_data_offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %app_resident_data_offset, align 4
  %add.ptr63 = getelementptr i8, ptr %add.ptr61, i32 %66
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %data64 = getelementptr inbounds %struct.firmware, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %data64 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data64, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %68, align 4
  %73 = call ptr @memcpy(ptr %add.ptr63, ptr %70, i32 %72)
  %74 = load i32, ptr %app_resident_data_offset, align 4
  %add67 = add i32 %74, 255
  %and68 = and i32 %add67, -256
  %75 = load i32, ptr %bootloader_size, align 4
  %add70 = add i32 %and68, %75
  %ucode_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 15
  %76 = ptrtoint ptr %ucode_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add70, ptr %ucode_size, align 4
  %77 = ptrtoint ptr %app_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %app_size, align 4
  %add73 = add i32 %78, %75
  %sub = sub i32 %add73, %add70
  %data_size = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 16
  %79 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %sub, ptr %data_size, align 4
  br label %if.end77

if.then76:                                        ; preds = %if.end24.if.then76_crit_edge, %if.end20.if.then76_crit_edge, %if.end16.if.then76_crit_edge, %if.end6.if.then76_crit_edge, %if.end.if.then76_crit_edge
  %ret.0.ph = phi i32 [ -12, %if.end24.if.then76_crit_edge ], [ %call21, %if.end20.if.then76_crit_edge ], [ %call17, %if.end16.if.then76_crit_edge ], [ %call13, %if.end6.if.then76_crit_edge ], [ %call4, %if.end.if.then76_crit_edge ]
  %img.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4
  %80 = ptrtoint ptr %img.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %img.i, align 4
  call void @kfree(ptr noundef %81) #6
  %82 = ptrtoint ptr %img.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %img.i, align 4
  %size.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 4, i32 1
  %83 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %size.i.i, align 4
  %sig.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 5
  %84 = ptrtoint ptr %sig.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sig.i, align 4
  call void @nvkm_firmware_put(ptr noundef %85) #6
  %head.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i140, label %if.then76.nvkm_acr_lsfw_del.exit_crit_edge

if.then76.nvkm_acr_lsfw_del.exit_crit_edge:       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %nvkm_acr_lsfw_del.exit

if.end.i.i.i140:                                  ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %prev.i.i.i, align 4
  %88 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %87, ptr %prev1.i.i.i.i, align 4
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %89, ptr %87, align 4
  br label %nvkm_acr_lsfw_del.exit

nvkm_acr_lsfw_del.exit:                           ; preds = %if.end.i.i.i140, %if.then76.nvkm_acr_lsfw_del.exit_crit_edge
  %92 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 256 to ptr), ptr %head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.nvkm_acr_lsfw, ptr %call, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %call) #6
  br label %if.end77

if.end77:                                         ; preds = %nvkm_acr_lsfw_del.exit, %done
  %ret.0147 = phi i32 [ %ret.0.ph, %nvkm_acr_lsfw_del.exit ], [ 0, %done ]
  %94 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data, align 4
  call void @nvkm_firmware_put(ptr noundef %95) #6
  %96 = ptrtoint ptr %inst to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %inst, align 4
  call void @nvkm_firmware_put(ptr noundef %97) #6
  %98 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %bl, align 4
  call void @nvkm_firmware_put(ptr noundef %99) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %ret.0147, %if.end77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bl) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_name(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bin_hdr(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvfw_bl_desc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_firmware_load_blob(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 68, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvkm_acr_lsfw_add._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvkm_acr_lsfw_add._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 197, i32 46}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 205, i32 46}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 209, i32 46}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 213, i32 46}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 104, i32 46}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/acr/lsfw.c", i32 108, i32 46}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
