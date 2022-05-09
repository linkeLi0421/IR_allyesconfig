; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_pmu_fwif = type { i32, ptr, ptr, ptr }
%struct.gk20a_pmu_dvfs_data = type { i32, i32, i32, i32 }
%struct.nvkm_pmu_func = type { ptr, %struct.anon.145, %struct.anon.146, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.145 = type { ptr, i32 }
%struct.anon.146 = type { ptr, i32 }
%struct.nvkm_falcon_func = type { %struct.anon.140, %struct.anon.141, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.144, %struct.anon.144, [0 x %struct.nvkm_sclass] }
%struct.anon.140 = type { ptr, i32 }
%struct.anon.141 = type { ptr, i32 }
%struct.anon.144 = type { i32, i32, i32 }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gk20a_pmu = type { %struct.nvkm_pmu, %struct.nvkm_alarm, ptr }
%struct.nvkm_pmu = type { ptr, %struct.nvkm_subdev, %struct.nvkm_falcon, ptr, ptr, ptr, ptr, i8, %struct.completion, %struct.anon.147, %struct.anon.148 }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_falcon = type { ptr, ptr, ptr, i32, %struct.mutex, %struct.mutex, i8, ptr, i8, i8, i8, ptr, i8, %struct.anon.142, %struct.anon.143, %struct.nvkm_engine }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.142 = type { i32, ptr, i32, i8 }
%struct.anon.143 = type { i32, ptr, i32, i8 }
%struct.nvkm_engine = type { ptr, %struct.nvkm_subdev, %struct.spinlock, %struct.anon.115 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.115 = type { %struct.refcount_struct, %struct.mutex, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.anon.147 = type { %struct.mutex, i32, i32 }
%struct.anon.148 = type { i32, i32, %struct.work_struct, %struct.wait_queue_head, i32, i32, [2 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_alarm = type { %struct.list_head, %struct.list_head, i64, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.139, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.139 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }

@gk20a_pmu_fwif = internal constant { [2 x %struct.nvkm_pmu_fwif], [32 x i8] } { [2 x %struct.nvkm_pmu_fwif] [%struct.nvkm_pmu_fwif { i32 -1, ptr @gf100_pmu_nofw, ptr @gk20a_pmu, ptr null }, %struct.nvkm_pmu_fwif zeroinitializer], [32 x i8] zeroinitializer }, align 32
@gk20a_dvfs_data = internal global { %struct.gk20a_pmu_dvfs_data, [16 x i8] } { %struct.gk20a_pmu_dvfs_data { i32 70, i32 90, i32 1, i32 0 }, [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gk20a_pmu = internal constant { %struct.nvkm_pmu_func, [40 x i8] } { %struct.nvkm_pmu_func { ptr @gt215_pmu_flcn, %struct.anon.145 zeroinitializer, %struct.anon.146 zeroinitializer, ptr @gf100_pmu_enabled, ptr @gf100_pmu_reset, ptr @gk20a_pmu_init, ptr @gk20a_pmu_fini, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gt215_pmu_flcn = external dso_local constant %struct.nvkm_falcon_func, align 4
@gk20a_pmu_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: cannot acquire %s falcon!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gk20a_pmu_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gk20a_pmu_init._entry_ptr = internal global ptr @gk20a_pmu_init._entry, section ".printk_index", align 4
@gk20a_pmu_dvfs_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 143, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: utilization = %d %%, avg_load = %d %%\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gk20a_pmu_dvfs_work\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gk20a_pmu_dvfs_work._entry_ptr = internal global ptr @gk20a_pmu_dvfs_work._entry, section ".printk_index", align 4
@gk20a_pmu_dvfs_work._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 148, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: set new state to %d\0A\00", [39 x i8] zeroinitializer }, align 32
@gk20a_pmu_dvfs_work._entry_ptr.10 = internal global ptr @gk20a_pmu_dvfs_work._entry.8, section ".printk_index", align 4
@gk20a_pmu_dvfs_get_target_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 87, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: cur level = %d, new level = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gk20a_pmu_dvfs_get_target_state\00", [32 x i8] zeroinitializer }, align 32
@gk20a_pmu_dvfs_get_target_state._entry_ptr = internal global ptr @gk20a_pmu_dvfs_get_target_state._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"gk20a_pmu_fwif\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 207, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"gk20a_dvfs_data\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 191, i32 1 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"gk20a_pmu\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 198, i32 1 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 177, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 142, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 148, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 86, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @gk20a_pmu_dvfs_get_target_state._entry, ptr @gk20a_pmu_dvfs_get_target_state._entry_ptr, ptr @gk20a_pmu_dvfs_work._entry, ptr @gk20a_pmu_dvfs_work._entry.8, ptr @gk20a_pmu_dvfs_work._entry_ptr, ptr @gk20a_pmu_dvfs_work._entry_ptr.10, ptr @gk20a_pmu_init._entry, ptr @gk20a_pmu_init._entry_ptr, ptr @gk20a_pmu_fwif, ptr @gk20a_dvfs_data, ptr @gk20a_pmu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu_fwif to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_dvfs_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu_dvfs_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu_dvfs_work._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk20a_pmu_dvfs_get_target_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk20a_pmu_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr nocapture noundef writeonly %ppmu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 848) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %ppmu to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ppmu, align 4
  %call2 = tail call i32 @nvkm_pmu_ctor(ptr noundef nonnull @gk20a_pmu_fwif, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data = getelementptr inbounds %struct.gk20a_pmu, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gk20a_dvfs_data, ptr %data, align 8
  %alarm = getelementptr inbounds %struct.gk20a_pmu, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %alarm to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %alarm, ptr %alarm, align 8
  %prev.i.i = getelementptr inbounds %struct.gk20a_pmu, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %alarm, ptr %prev.i.i, align 4
  %func1.i = getelementptr inbounds %struct.gk20a_pmu, ptr %call7.i.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @gk20a_pmu_dvfs_work, ptr %func1.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_pmu_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_pmu_dvfs_work(ptr noundef %alarm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr i8, ptr %alarm, i32 32
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 8
  %device3 = getelementptr i8, ptr %alarm, i32 -800
  %2 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device3, align 4
  %clk4 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 43
  %4 = ptrtoint ptr %clk4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk4, align 8
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 31
  %6 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %timer, align 8
  %volt5 = getelementptr inbounds %struct.nvkm_device, ptr %3, i32 0, i32 40
  %8 = ptrtoint ptr %volt5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %volt5, align 4
  %tobool.not = icmp eq ptr %5, null
  %tobool6.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.resched_crit_edge, label %if.end

entry.resched_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %resched

if.end:                                           ; preds = %entry
  %owner.i.i = getelementptr i8, ptr %alarm, i32 -748
  %10 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i.i, align 4
  %pri.i.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i.i, align 4
  %addr1.i.i = getelementptr i8, ptr %alarm, i32 -740
  %16 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr1.i.i, align 4
  %add.i.i = add i32 %17, 1288
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %add.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %19 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner.i.i, align 4
  %device.i6.i = getelementptr inbounds %struct.nvkm_subdev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %device.i6.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device.i6.i, align 4
  %pri.i7.i = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %pri.i7.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pri.i7.i, align 4
  %25 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %addr1.i.i, align 4
  %add.i9.i = add i32 %26, 1400
  %add.ptr.i10.i = getelementptr i8, ptr %24, i32 %add.i9.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool7.not = icmp eq i32 %27, 0
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %if.end
  %conv = zext i32 %18 to i64
  %mul = mul nuw nsw i64 %conv, 100
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !40

if.then168.i.i:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i = trunc i64 %mul to i32
  %div172.i.i = udiv i32 %conv169.i.i, %27
  br label %if.end11

if.else174.i.i:                                   ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %27, i64 %mul) #9, !srcloc !41
  %asmresult1.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t83 = trunc i64 %asmresult1.i.i.i to i32
  br label %if.end11

if.end11:                                         ; preds = %if.else174.i.i, %if.then168.i.i, %if.end.if.end11_crit_edge
  %utilization.0 = phi i32 [ 0, %if.end.if.end11_crit_edge ], [ %div172.i.i, %if.then168.i.i ], [ %extract.t83, %if.else174.i.i ]
  %p_smooth = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %p_smooth to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %p_smooth, align 4
  %avg_load = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %avg_load to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %avg_load, align 4
  %mul12 = mul i32 %32, %30
  %add = add i32 %mul12, %utilization.0
  %add15 = add i32 %30, 1
  %div = udiv i32 %add, %add15
  store i32 %div, ptr %avg_load, align 4
  %debug = getelementptr i8, ptr %alarm, i32 -772
  %33 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp = icmp ugt i32 %34, 4
  br i1 %cmp, label %do.end, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %name = getelementptr i8, ptr %alarm, i32 -788
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.5, ptr noundef %name, i32 noundef %utilization.0, i32 noundef %div) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end11.if.end22_crit_edge
  %39 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %device3, align 4
  %clk1.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 43
  %41 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk1.i, align 8
  %pstate.i = getelementptr inbounds %struct.nvkm_clk, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %avg_load to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %avg_load, align 4
  %45 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data1, align 8
  %47 = ptrtoint ptr %pstate.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pstate.i, align 4
  %p_load_max.i = getelementptr inbounds %struct.gk20a_pmu_dvfs_data, ptr %46, i32 0, i32 1
  %49 = ptrtoint ptr %p_load_max.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p_load_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %44)
  %cmp.i = icmp slt i32 %50, %44
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %state_nr.i = getelementptr inbounds %struct.nvkm_clk, ptr %42, i32 0, i32 5
  %51 = ptrtoint ptr %state_nr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state_nr.i, align 4
  %sub.i = add i32 %52, -1
  %div.i = sdiv i32 %52, 3
  %add.i = add i32 %div.i, %48
  %53 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %add.i) #5
  br label %do.body.i

if.else.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %46, align 4
  %sub5.i = sub i32 %44, %55
  %mul.i = mul i32 %sub5.i, 10
  %div7.i = sdiv i32 %mul.i, %55
  %div8.i = sdiv i32 %div7.i, 2
  %add9.i = add i32 %div8.i, %48
  %56 = tail call i32 @llvm.smax.i32(i32 %add9.i, i32 0) #5
  %state_nr16.i = getelementptr inbounds %struct.nvkm_clk, ptr %42, i32 0, i32 5
  %57 = ptrtoint ptr %state_nr16.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state_nr16.i, align 4
  %sub17.i = add i32 %58, -1
  %59 = tail call i32 @llvm.smin.i32(i32 %sub17.i, i32 %56) #5
  br label %do.body.i

do.body.i:                                        ; preds = %if.else.i, %if.then.i
  %level.0.i = phi i32 [ %53, %if.then.i ], [ %59, %if.else.i ]
  %60 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp26.i = icmp ugt i32 %61, 4
  br i1 %cmp26.i, label %do.end.i, label %do.body.i.gk20a_pmu_dvfs_get_target_state.exit_crit_edge

do.body.i.gk20a_pmu_dvfs_get_target_state.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gk20a_pmu_dvfs_get_target_state.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.nvkm_device, ptr %40, i32 0, i32 2
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 8
  %name.i = getelementptr i8, ptr %alarm, i32 -788
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %63, ptr noundef nonnull @.str.11, ptr noundef %name.i, i32 noundef %48, i32 noundef %level.0.i) #10
  br label %gk20a_pmu_dvfs_get_target_state.exit

gk20a_pmu_dvfs_get_target_state.exit:             ; preds = %do.end.i, %do.body.i.gk20a_pmu_dvfs_get_target_state.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %level.0.i, i32 %48)
  %cmp33.i.not = icmp eq i32 %level.0.i, %48
  br i1 %cmp33.i.not, label %gk20a_pmu_dvfs_get_target_state.exit.resched_crit_edge, label %do.body29

gk20a_pmu_dvfs_get_target_state.exit.resched_crit_edge: ; preds = %gk20a_pmu_dvfs_get_target_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %resched

do.body29:                                        ; preds = %gk20a_pmu_dvfs_get_target_state.exit
  %64 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %65)
  %cmp32 = icmp ugt i32 %65, 4
  br i1 %cmp32, label %do.end37, label %do.body29.if.end42_crit_edge

do.body29.if.end42_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

do.end37:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %device3, align 4
  %dev39 = getelementptr inbounds %struct.nvkm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev39, align 8
  %name40 = getelementptr i8, ptr %alarm, i32 -788
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.9, ptr noundef %name40, i32 noundef %level.0.i) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end37, %do.body29.if.end42_crit_edge
  %70 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %device3, align 4
  %clk1.i73 = getelementptr inbounds %struct.nvkm_device, ptr %71, i32 0, i32 43
  %72 = ptrtoint ptr %clk1.i73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk1.i73, align 8
  %call.i = tail call i32 @nvkm_clk_astate(ptr noundef %73, i32 noundef %level.0.i, i32 noundef 0, i1 noundef zeroext false) #5
  br label %resched

resched:                                          ; preds = %if.end42, %gk20a_pmu_dvfs_get_target_state.exit.resched_crit_edge, %entry.resched_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %owner.i.i74 = getelementptr i8, ptr %alarm, i32 -748
  %74 = ptrtoint ptr %owner.i.i74 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %owner.i.i74, align 4
  %device.i.i75 = getelementptr inbounds %struct.nvkm_subdev, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %device.i.i75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %device.i.i75, align 4
  %pri.i.i76 = getelementptr inbounds %struct.nvkm_device, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %pri.i.i76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pri.i.i76, align 4
  %addr1.i.i77 = getelementptr i8, ptr %alarm, i32 -740
  %80 = ptrtoint ptr %addr1.i.i77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %addr1.i.i77, align 4
  %add.i.i78 = add i32 %81, 1288
  %add.ptr.i.i79 = getelementptr i8, ptr %79, i32 %add.i.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i79, i32 -2147483648) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %82 = ptrtoint ptr %owner.i.i74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %owner.i.i74, align 4
  %device.i4.i = getelementptr inbounds %struct.nvkm_subdev, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %device.i4.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %device.i4.i, align 4
  %pri.i5.i = getelementptr inbounds %struct.nvkm_device, ptr %85, i32 0, i32 11
  %86 = ptrtoint ptr %pri.i5.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pri.i5.i, align 4
  %88 = ptrtoint ptr %addr1.i.i77 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %addr1.i.i77, align 4
  %add.i7.i = add i32 %89, 1400
  %add.ptr.i8.i = getelementptr i8, ptr %87, i32 %add.i7.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 -2147483648) #5, !srcloc !43
  tail call void @nvkm_timer_alarm(ptr noundef %7, i32 noundef 100000000, ptr noundef %alarm) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf100_pmu_nofw(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gf100_pmu_enabled(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gf100_pmu_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gk20a_pmu_init(ptr noundef %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev1 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1
  %device3 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device3, align 4
  %falcon4 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2
  %call = tail call i32 @nvkm_falcon_get(ptr noundef %falcon4, ptr noundef %subdev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end11, label %do.body

do.body:                                          ; preds = %entry
  %debug = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 5
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device3, align 4
  %dev = getelementptr inbounds %struct.nvkm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %name = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 4
  %name8 = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %name8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %9) #10
  br label %cleanup

if.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %owner.i = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner.i, align 4
  %device.i = getelementptr inbounds %struct.nvkm_subdev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device.i, align 4
  %pri.i = getelementptr inbounds %struct.nvkm_device, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %pri.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pri.i, align 4
  %addr1.i = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr1.i, align 4
  %add.i = add i32 %17, 1284
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 2097153) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %owner.i, align 4
  %device.i28 = getelementptr inbounds %struct.nvkm_subdev, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %device.i28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device.i28, align 4
  %pri.i29 = getelementptr inbounds %struct.nvkm_device, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %pri.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pri.i29, align 4
  %24 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %addr1.i, align 4
  %add.i31 = add i32 %25, 1292
  %add.ptr.i32 = getelementptr i8, ptr %23, i32 %add.i31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 2) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner.i, align 4
  %device.i34 = getelementptr inbounds %struct.nvkm_subdev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %device.i34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device.i34, align 4
  %pri.i35 = getelementptr inbounds %struct.nvkm_device, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %pri.i35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pri.i35, align 4
  %32 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr1.i, align 4
  %add.i37 = add i32 %33, 1404
  %add.ptr.i38 = getelementptr i8, ptr %31, i32 %add.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 3) #5, !srcloc !43
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %34 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timer, align 8
  %alarm = getelementptr inbounds %struct.gk20a_pmu, ptr %pmu, i32 0, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %35, i32 noundef 2000000000, ptr noundef %alarm) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %do.body.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gk20a_pmu_fini(ptr noundef %pmu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %subdev = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1
  %device = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %timer = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %timer, align 8
  %alarm = getelementptr inbounds %struct.gk20a_pmu, ptr %pmu, i32 0, i32 1
  tail call void @nvkm_timer_alarm(ptr noundef %3, i32 noundef 0, ptr noundef %alarm) #5
  %falcon = getelementptr inbounds %struct.nvkm_pmu, ptr %pmu, i32 0, i32 2
  tail call void @nvkm_falcon_put(ptr noundef %falcon, ptr noundef %subdev) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_falcon_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_timer_alarm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_falcon_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_astate(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind readnone }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @gk20a_pmu_fwif, !1, !"gk20a_pmu_fwif", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 207, i32 1}
!2 = !{ptr @gk20a_pmu, !3, !"gk20a_pmu", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 198, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 177, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @gk20a_pmu_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @gk20a_pmu_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @gk20a_dvfs_data, !13, !"gk20a_dvfs_data", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 191, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 142, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @gk20a_pmu_dvfs_work._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @gk20a_pmu_dvfs_work._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 148, i32 3}
!22 = !{ptr @gk20a_pmu_dvfs_work._entry.8, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @gk20a_pmu_dvfs_work._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/pmu/gk20a.c", i32 86, i32 2}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @gk20a_pmu_dvfs_get_target_state._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @gk20a_pmu_dvfs_get_target_state._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 5391033}
!39 = !{i64 2156235497}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2148448865, i64 2148449145, i64 2148449479, i64 2148449813}
!42 = !{i64 2156236048}
!43 = !{i64 5390615}
