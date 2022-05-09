; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_device_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvkm_control = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.135, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
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
%struct.anon.135 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvif_control_pstate_info_v0 = type { i8, i8, i8, i8, i8, i8, [2 x i8] }
%struct.nvif_control_pstate_attr_v0 = type { i8, i8, i8, [5 x i8], i32, i32, [32 x i8], [16 x i8] }
%struct.nvkm_domain = type { i32, i8, i8, ptr, i32 }
%struct.nvif_control_pstate_user_v0 = type { i8, i8, i8, [5 x i8] }

@nvkm_control_oclass = dso_local constant { %struct.nvkm_device_oclass, [40 x i8] } { %struct.nvkm_device_oclass { ptr @nvkm_control_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 -1, ptr null, ptr null } }, [40 x i8] zeroinitializer }, align 32
@nvkm_control = internal constant { %struct.nvkm_object_func, [36 x i8] } { %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @nvkm_control_mthd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvkm_control_mthd_pstate_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate info size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvkm_control_mthd_pstate_info\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c\00", [46 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_info._entry_ptr = internal global ptr @nvkm_control_mthd_pstate_info._entry, section ".printk_index", align 4
@nvkm_control_mthd_pstate_info._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate info vers %d\0A\00", [35 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_info._entry_ptr.5 = internal global ptr @nvkm_control_mthd_pstate_info._entry.3, section ".printk_index", align 4
@nvkm_control_mthd_pstate_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate attr size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvkm_control_mthd_pstate_attr\00", [34 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_attr._entry_ptr = internal global ptr @nvkm_control_mthd_pstate_attr._entry, section ".printk_index", align 4
@nvkm_control_mthd_pstate_attr._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate attr vers %d state %d index %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_attr._entry_ptr.10 = internal global ptr @nvkm_control_mthd_pstate_attr._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_user._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate user size %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"nvkm_control_mthd_pstate_user\00", [34 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_user._entry_ptr = internal global ptr @nvkm_control_mthd_pstate_user._entry, section ".printk_index", align 4
@nvkm_control_mthd_pstate_user._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: control pstate user vers %d ustate %d pwrsrc %d\0A\00", [47 x i8] zeroinitializer }, align 32
@nvkm_control_mthd_pstate_user._entry_ptr.17 = internal global ptr @nvkm_control_mthd_pstate_user._entry.15, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"nvkm_control_oclass\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 207, i32 1 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"nvkm_control\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 187, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 43, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 45, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 81, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 83, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 124, i32 49 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 149, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [53 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 151, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @nvkm_control_mthd_pstate_attr._entry, ptr @nvkm_control_mthd_pstate_attr._entry.8, ptr @nvkm_control_mthd_pstate_attr._entry_ptr, ptr @nvkm_control_mthd_pstate_attr._entry_ptr.10, ptr @nvkm_control_mthd_pstate_info._entry, ptr @nvkm_control_mthd_pstate_info._entry.3, ptr @nvkm_control_mthd_pstate_info._entry_ptr, ptr @nvkm_control_mthd_pstate_info._entry_ptr.5, ptr @nvkm_control_mthd_pstate_user._entry, ptr @nvkm_control_mthd_pstate_user._entry.15, ptr @nvkm_control_mthd_pstate_user._entry_ptr, ptr @nvkm_control_mthd_pstate_user._entry_ptr.17, ptr @nvkm_control_oclass, ptr @nvkm_control, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_oclass to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_info._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_attr._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_user._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvkm_control_mthd_pstate_user._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_control_new(ptr noundef %device, ptr noundef %oclass, ptr nocapture noundef readnone %data, i32 noundef %size, ptr nocapture noundef writeonly %pobject) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %pobject to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pobject, align 4
  %device1 = getelementptr inbounds %struct.nvkm_control, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %device1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device, ptr %device1, align 8
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nvkm_control, ptr noundef %oclass, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nvkm_control_mthd(ptr nocapture noundef readonly %object, i32 noundef %mthd, ptr noundef %data, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mthd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mthd, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %device.i = getelementptr inbounds %struct.nvkm_control, ptr %object, i32 0, i32 1
  %1 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %device.i, align 8
  %clk1.i = getelementptr inbounds %struct.nvkm_device, ptr %2, i32 0, i32 43
  %3 = ptrtoint ptr %clk1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk1.i, align 8
  %client.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  %debug.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %debug.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %debug.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i = icmp ugt i32 %8, 4
  br i1 %cmp.i, label %do.end.i, label %sw.bb.land.lhs.true.i_crit_edge

sw.bb.land.lhs.true.i_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %name.i = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %handle.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %9 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle.i, align 8
  %oclass.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %11 = ptrtoint ptr %oclass.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name.i, i32 noundef %10, i32 noundef %12, i32 noundef %size) #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %do.end.i, %sw.bb.land.lhs.true.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6.i = icmp ugt i32 %size, 7
  br i1 %cmp6.i, label %land.lhs.true10.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10.i:                                ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp13.i = icmp eq i8 %14, 0
  br i1 %cmp13.i, label %if.then15.i, label %land.lhs.true10.i.cleanup_crit_edge

land.lhs.true10.i.cleanup_crit_edge:              ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 8
  br i1 %tobool.not.i, label %do.body22.i, label %if.then15.i.cleanup_crit_edge

if.then15.i.cleanup_crit_edge:                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body22.i:                                      ; preds = %if.then15.i
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %debug27.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %debug27.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %debug27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp28.i = icmp ugt i32 %18, 4
  br i1 %cmp28.i, label %do.end33.i, label %do.body22.i.if.end42.i_crit_edge

do.body22.i.if.end42.i_crit_edge:                 ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

do.end33.i:                                       ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  %name35.i = getelementptr inbounds %struct.nvkm_client, ptr %16, i32 0, i32 1
  %handle37.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %19 = ptrtoint ptr %handle37.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle37.i, align 8
  %oclass38.i = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %21 = ptrtoint ptr %oclass38.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %oclass38.i, align 4
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name35.i, i32 noundef %20, i32 noundef %22, i32 noundef 0) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end33.i, %do.body22.i.if.end42.i_crit_edge
  %tobool46.not.i = icmp eq ptr %4, null
  br i1 %tobool46.not.i, label %if.else57.i, label %if.then47.i

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %state_nr.i = getelementptr inbounds %struct.nvkm_clk, ptr %4, i32 0, i32 5
  %23 = ptrtoint ptr %state_nr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state_nr.i, align 4
  %conv48.i = trunc i32 %24 to i8
  %count.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 1
  %25 = ptrtoint ptr %count.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv48.i, ptr %count.i, align 1
  %ustate_ac.i = getelementptr inbounds %struct.nvkm_clk, ptr %4, i32 0, i32 12
  %26 = ptrtoint ptr %ustate_ac.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ustate_ac.i, align 4
  %conv49.i = trunc i32 %27 to i8
  %ustate_ac50.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 2
  %28 = ptrtoint ptr %ustate_ac50.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv49.i, ptr %ustate_ac50.i, align 1
  %ustate_dc.i = getelementptr inbounds %struct.nvkm_clk, ptr %4, i32 0, i32 13
  %29 = ptrtoint ptr %ustate_dc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ustate_dc.i, align 4
  %conv51.i = trunc i32 %30 to i8
  %ustate_dc52.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 3
  %31 = ptrtoint ptr %ustate_dc52.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv51.i, ptr %ustate_dc52.i, align 1
  %pwrsrc.i = getelementptr inbounds %struct.nvkm_clk, ptr %4, i32 0, i32 10
  %32 = ptrtoint ptr %pwrsrc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pwrsrc.i, align 4
  %conv53.i = trunc i32 %33 to i8
  %pwrsrc54.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %pwrsrc54.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv53.i, ptr %pwrsrc54.i, align 1
  %pstate.i = getelementptr inbounds %struct.nvkm_clk, ptr %4, i32 0, i32 11
  %35 = ptrtoint ptr %pstate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pstate.i, align 4
  %conv55.i = trunc i32 %36 to i8
  br label %cleanup.sink.split.i

if.else57.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %count58.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 1
  %37 = ptrtoint ptr %count58.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %count58.i, align 1
  %ustate_ac59.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %ustate_ac59.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %ustate_ac59.i, align 1
  %ustate_dc60.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %ustate_dc60.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -1, ptr %ustate_dc60.i, align 1
  %pwrsrc61.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 4
  %40 = ptrtoint ptr %pwrsrc61.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -19, ptr %pwrsrc61.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else57.i, %if.then47.i
  %conv55.sink.i = phi i8 [ %conv55.i, %if.then47.i ], [ -1, %if.else57.i ]
  %pstate56.i = getelementptr inbounds %struct.nvif_control_pstate_info_v0, ptr %data, i32 0, i32 5
  %41 = ptrtoint ptr %pstate56.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv55.sink.i, ptr %pstate56.i, align 1
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %device.i11 = getelementptr inbounds %struct.nvkm_control, ptr %object, i32 0, i32 1
  %42 = ptrtoint ptr %device.i11 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i11, align 8
  %clk1.i12 = getelementptr inbounds %struct.nvkm_device, ptr %43, i32 0, i32 43
  %44 = ptrtoint ptr %clk1.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk1.i12, align 8
  %client.i13 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %46 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %client.i13, align 4
  %debug.i14 = getelementptr inbounds %struct.nvkm_client, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %debug.i14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %debug.i14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %49)
  %cmp.i15 = icmp ugt i32 %49, 4
  br i1 %cmp.i15, label %do.end.i20, label %sw.bb1.land.lhs.true.i22_crit_edge

sw.bb1.land.lhs.true.i22_crit_edge:               ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i22

do.end.i20:                                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %name.i16 = getelementptr inbounds %struct.nvkm_client, ptr %47, i32 0, i32 1
  %handle.i17 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %50 = ptrtoint ptr %handle.i17 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %handle.i17, align 8
  %oclass.i18 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %52 = ptrtoint ptr %oclass.i18 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %oclass.i18, align 4
  %call.i19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name.i16, i32 noundef %51, i32 noundef %53, i32 noundef %size) #10
  br label %land.lhs.true.i22

land.lhs.true.i22:                                ; preds = %do.end.i20, %sw.bb1.land.lhs.true.i22_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %size)
  %cmp6.i21 = icmp ugt i32 %size, 63
  br i1 %cmp6.i21, label %land.lhs.true10.i24, label %land.lhs.true.i22.cleanup_crit_edge

land.lhs.true.i22.cleanup_crit_edge:              ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10.i24:                              ; preds = %land.lhs.true.i22
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %cmp13.i23 = icmp eq i8 %55, 0
  br i1 %cmp13.i23, label %if.then15.i26, label %land.lhs.true10.i24.cleanup_crit_edge

land.lhs.true10.i24.cleanup_crit_edge:            ; preds = %land.lhs.true10.i24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15.i26:                                    ; preds = %land.lhs.true10.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %size)
  %tobool.not.i25 = icmp eq i32 %size, 64
  br i1 %tobool.not.i25, label %do.body22.i29, label %if.then15.i26.cleanup_crit_edge

if.then15.i26.cleanup_crit_edge:                  ; preds = %if.then15.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body22.i29:                                    ; preds = %if.then15.i26
  %56 = ptrtoint ptr %client.i13 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %client.i13, align 4
  %debug27.i27 = getelementptr inbounds %struct.nvkm_client, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %debug27.i27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %debug27.i27, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %59)
  %cmp28.i28 = icmp ugt i32 %59, 4
  br i1 %cmp28.i28, label %do.end33.i34, label %do.body22.i29.if.end44.i_crit_edge

do.body22.i29.if.end44.i_crit_edge:               ; preds = %do.body22.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end33.i34:                                     ; preds = %do.body22.i29
  call void @__sanitizer_cov_trace_pc() #8
  %name35.i30 = getelementptr inbounds %struct.nvkm_client, ptr %57, i32 0, i32 1
  %handle37.i31 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %60 = ptrtoint ptr %handle37.i31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle37.i31, align 8
  %oclass38.i32 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %62 = ptrtoint ptr %oclass38.i32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oclass38.i32, align 4
  %state.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 1
  %64 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %state.i, align 1
  %conv41.i = sext i8 %65 to i32
  %index.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 2
  %66 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %index.i, align 2
  %conv42.i = zext i8 %67 to i32
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name35.i30, i32 noundef %61, i32 noundef %63, i32 noundef 0, i32 noundef %conv41.i, i32 noundef %conv42.i) #10
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end33.i34, %do.body22.i29.if.end44.i_crit_edge
  %tobool47.not.i = icmp eq ptr %45, null
  br i1 %tobool47.not.i, label %if.end44.i.cleanup_crit_edge, label %if.end49.i

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49.i:                                       ; preds = %if.end44.i
  %state50.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 1
  %68 = ptrtoint ptr %state50.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %state50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp52.i = icmp slt i8 %69, -1
  br i1 %cmp52.i, label %if.end49.i.cleanup_crit_edge, label %if.end55.i

if.end49.i.cleanup_crit_edge:                     ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55.i:                                       ; preds = %if.end49.i
  %conv51.i35 = sext i8 %69 to i32
  %state_nr.i36 = getelementptr inbounds %struct.nvkm_clk, ptr %45, i32 0, i32 5
  %70 = ptrtoint ptr %state_nr.i36 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %state_nr.i36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %conv51.i35)
  %cmp58.not.i = icmp sgt i32 %71, %conv51.i35
  br i1 %cmp58.not.i, label %if.end62.i, label %if.end55.i.cleanup_crit_edge

if.end55.i.cleanup_crit_edge:                     ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end62.i:                                       ; preds = %if.end55.i
  %domains.i = getelementptr inbounds %struct.nvkm_clk, ptr %45, i32 0, i32 2
  %72 = ptrtoint ptr %domains.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %domains.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %75)
  %cmp64.not264.i = icmp eq i32 %75, 29
  br i1 %cmp64.not264.i, label %if.end62.i.cleanup_crit_edge, label %while.body.lr.ph.i

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end62.i
  %index68.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %if.end73.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %76 = phi i32 [ %75, %while.body.lr.ph.i ], [ %82, %if.end73.i.while.body.i_crit_edge ]
  %domain.0266.i = phi ptr [ %73, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end73.i.while.body.i_crit_edge ]
  %j.0265.i = phi i32 [ -1, %while.body.lr.ph.i ], [ %j.1.i, %if.end73.i.while.body.i_crit_edge ]
  %mname.i = getelementptr inbounds %struct.nvkm_domain, ptr %domain.0266.i, i32 0, i32 3
  %77 = ptrtoint ptr %mname.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mname.i, align 4
  %tobool66.not.i = icmp eq ptr %78, null
  br i1 %tobool66.not.i, label %while.body.i.if.end73.i_crit_edge, label %land.lhs.true67.i

while.body.i.if.end73.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

land.lhs.true67.i:                                ; preds = %while.body.i
  %inc.i = add i32 %j.0265.i, 1
  %79 = ptrtoint ptr %index68.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %index68.i, align 2
  %conv69.i = zext i8 %80 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %conv69.i)
  %cmp70.i = icmp eq i32 %inc.i, %conv69.i
  br i1 %cmp70.i, label %if.end78.i, label %land.lhs.true67.i.if.end73.i_crit_edge

land.lhs.true67.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.end73.i:                                       ; preds = %land.lhs.true67.i.if.end73.i_crit_edge, %while.body.i.if.end73.i_crit_edge
  %j.1.i = phi i32 [ %inc.i, %land.lhs.true67.i.if.end73.i_crit_edge ], [ %j.0265.i, %while.body.i.if.end73.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.nvkm_domain, ptr %domain.0266.i, i32 1
  %81 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr.i, align 4
  %cmp64.not.i = icmp eq i32 %82, 29
  br i1 %cmp64.not.i, label %if.end73.i.cleanup_crit_edge, label %if.end73.i.while.body.i_crit_edge

if.end73.i.while.body.i_crit_edge:                ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end73.i.cleanup_crit_edge:                     ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end78.i:                                       ; preds = %land.lhs.true67.i
  %mname.i.le = getelementptr inbounds %struct.nvkm_domain, ptr %domain.0266.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %69)
  %cmp81.not.i = icmp eq i8 %69, -1
  br i1 %cmp81.not.i, label %if.else140.i, label %if.then83.i

if.then83.i:                                      ; preds = %if.end78.i
  %states.i = getelementptr inbounds %struct.nvkm_clk, ptr %45, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.then83.i
  %i.0.i = phi i32 [ 0, %if.then83.i ], [ %inc89.i, %for.cond.i.for.cond.i_crit_edge ]
  %pstate.0.in.i = phi ptr [ %states.i, %if.then83.i ], [ %pstate.0.i, %for.cond.i.for.cond.i_crit_edge ]
  %83 = ptrtoint ptr %pstate.0.in.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %pstate.0.i = load ptr, ptr %pstate.0.in.i, align 4
  %cmp87.not.i = icmp eq ptr %pstate.0.i, %states.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv51.i35)
  %cmp92.i = icmp eq i32 %i.0.i, %conv51.i35
  %or.cond.i = select i1 %cmp87.not.i, i1 true, i1 %cmp92.i
  %inc89.i = add i32 %i.0.i, 1
  br i1 %or.cond.i, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  %arrayidx.i = getelementptr %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 2, i32 2, i32 %76
  %84 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i, align 4
  %list.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 1
  %86 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %cstate.0268.i = load ptr, ptr %list.i, align 4
  %cmp110.not269.i = icmp eq ptr %cstate.0268.i, %list.i
  br i1 %cmp110.not269.i, label %for.end.i.for.end137.i_crit_edge, label %for.end.i.for.body113.i_crit_edge

for.end.i.for.body113.i_crit_edge:                ; preds = %for.end.i
  br label %for.body113.i

for.end.i.for.end137.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end137.i

for.body113.i:                                    ; preds = %for.body113.i.for.body113.i_crit_edge, %for.end.i.for.body113.i_crit_edge
  %cstate.0272.i = phi ptr [ %cstate.0.i, %for.body113.i.for.body113.i_crit_edge ], [ %cstate.0268.i, %for.end.i.for.body113.i_crit_edge ]
  %lo.0271.i = phi i32 [ %89, %for.body113.i.for.body113.i_crit_edge ], [ %85, %for.end.i.for.body113.i_crit_edge ]
  %hi.0270.i = phi i32 [ %90, %for.body113.i.for.body113.i_crit_edge ], [ %85, %for.end.i.for.body113.i_crit_edge ]
  %arrayidx116.i = getelementptr %struct.nvkm_cstate, ptr %cstate.0272.i, i32 0, i32 2, i32 %76
  %87 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx116.i, align 4
  %89 = tail call i32 @llvm.umin.i32(i32 %lo.0271.i, i32 %88) #6
  %90 = tail call i32 @llvm.umax.i32(i32 %hi.0270.i, i32 %88) #6
  %91 = ptrtoint ptr %cstate.0272.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %cstate.0.i = load ptr, ptr %cstate.0272.i, align 4
  %cmp110.not.i = icmp eq ptr %cstate.0.i, %list.i
  br i1 %cmp110.not.i, label %for.body113.i.for.end137.i_crit_edge, label %for.body113.i.for.body113.i_crit_edge

for.body113.i.for.body113.i_crit_edge:            ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body113.i

for.body113.i.for.end137.i_crit_edge:             ; preds = %for.body113.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end137.i

for.end137.i:                                     ; preds = %for.body113.i.for.end137.i_crit_edge, %for.end.i.for.end137.i_crit_edge
  %hi.0.lcssa.i = phi i32 [ %85, %for.end.i.for.end137.i_crit_edge ], [ %90, %for.body113.i.for.end137.i_crit_edge ]
  %lo.0.lcssa.i = phi i32 [ %85, %for.end.i.for.end137.i_crit_edge ], [ %89, %for.body113.i.for.end137.i_crit_edge ]
  %pstate138.i = getelementptr inbounds %struct.nvkm_pstate, ptr %pstate.0.i, i32 0, i32 3
  %92 = ptrtoint ptr %pstate138.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %pstate138.i, align 4
  %94 = ptrtoint ptr %state50.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %state50.i, align 1
  br label %if.end150.i

if.else140.i:                                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  %call142.i = tail call i32 @nvkm_clk_read(ptr noundef nonnull %45, i32 noundef %76) #6
  %95 = tail call i32 @llvm.smax.i32(i32 %call142.i, i32 0) #6
  br label %if.end150.i

if.end150.i:                                      ; preds = %if.else140.i, %for.end137.i
  %hi.1.i = phi i32 [ %hi.0.lcssa.i, %for.end137.i ], [ %95, %if.else140.i ]
  %lo.1.i = phi i32 [ %lo.0.lcssa.i, %for.end137.i ], [ %95, %if.else140.i ]
  %name151.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 6
  %96 = ptrtoint ptr %mname.i.le to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mname.i.le, align 4
  %call154.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name151.i, i32 noundef 32, ptr noundef nonnull @.str.11, ptr noundef %97) #6
  %unit.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 7
  %98 = ptrtoint ptr %unit.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 4)
  store i32 1296595456, ptr %unit.i, align 1
  %mdiv.i = getelementptr inbounds %struct.nvkm_domain, ptr %domain.0266.i, i32 0, i32 4
  %99 = ptrtoint ptr %mdiv.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mdiv.i, align 4
  %div.i = udiv i32 %lo.1.i, %100
  %min.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 4
  %101 = ptrtoint ptr %min.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div.i, ptr %min.i, align 4
  %102 = load i32, ptr %mdiv.i, align 4
  %div158.i = udiv i32 %hi.1.i, %102
  %max.i = getelementptr inbounds %struct.nvif_control_pstate_attr_v0, ptr %data, i32 0, i32 5
  %103 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div158.i, ptr %max.i, align 4
  %104 = ptrtoint ptr %index68.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %index68.i, align 2
  br label %while.cond160.i

while.cond160.i:                                  ; preds = %while.body165.i.while.cond160.i_crit_edge, %if.end150.i
  %domain.1.i = phi ptr [ %domain.0266.i, %if.end150.i ], [ %incdec.ptr161.i, %while.body165.i.while.cond160.i_crit_edge ]
  %incdec.ptr161.i = getelementptr %struct.nvkm_domain, ptr %domain.1.i, i32 1
  %105 = ptrtoint ptr %incdec.ptr161.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %incdec.ptr161.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %106)
  %cmp163.not.i = icmp eq i32 %106, 29
  br i1 %cmp163.not.i, label %while.cond160.i.cleanup_crit_edge, label %while.body165.i

while.cond160.i.cleanup_crit_edge:                ; preds = %while.cond160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.body165.i:                                  ; preds = %while.cond160.i
  %mname166.i = getelementptr %struct.nvkm_domain, ptr %domain.1.i, i32 1, i32 3
  %107 = ptrtoint ptr %mname166.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mname166.i, align 4
  %tobool167.not.i = icmp eq ptr %108, null
  br i1 %tobool167.not.i, label %while.body165.i.while.cond160.i_crit_edge, label %if.then168.i

while.body165.i.while.cond160.i_crit_edge:        ; preds = %while.body165.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond160.i

if.then168.i:                                     ; preds = %while.body165.i
  call void @__sanitizer_cov_trace_pc() #8
  %109 = trunc i32 %inc.i to i8
  %conv170.i = add i8 %109, 1
  %110 = ptrtoint ptr %index68.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv170.i, ptr %index68.i, align 2
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %device.i38 = getelementptr inbounds %struct.nvkm_control, ptr %object, i32 0, i32 1
  %111 = ptrtoint ptr %device.i38 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %device.i38, align 8
  %clk1.i39 = getelementptr inbounds %struct.nvkm_device, ptr %112, i32 0, i32 43
  %113 = ptrtoint ptr %clk1.i39 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %clk1.i39, align 8
  %client.i40 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 1
  %115 = ptrtoint ptr %client.i40 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client.i40, align 4
  %debug.i41 = getelementptr inbounds %struct.nvkm_client, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %debug.i41 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %debug.i41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %118)
  %cmp.i42 = icmp ugt i32 %118, 4
  br i1 %cmp.i42, label %do.end.i47, label %sw.bb3.land.lhs.true.i49_crit_edge

sw.bb3.land.lhs.true.i49_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i49

do.end.i47:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %name.i43 = getelementptr inbounds %struct.nvkm_client, ptr %116, i32 0, i32 1
  %handle.i44 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %119 = ptrtoint ptr %handle.i44 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle.i44, align 8
  %oclass.i45 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %121 = ptrtoint ptr %oclass.i45 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %oclass.i45, align 4
  %call.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name.i43, i32 noundef %120, i32 noundef %122, i32 noundef %size) #10
  br label %land.lhs.true.i49

land.lhs.true.i49:                                ; preds = %do.end.i47, %sw.bb3.land.lhs.true.i49_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %size)
  %cmp6.i48 = icmp ugt i32 %size, 7
  br i1 %cmp6.i48, label %land.lhs.true10.i51, label %land.lhs.true.i49.cleanup_crit_edge

land.lhs.true.i49.cleanup_crit_edge:              ; preds = %land.lhs.true.i49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10.i51:                              ; preds = %land.lhs.true.i49
  %123 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp13.i50 = icmp eq i8 %124, 0
  br i1 %cmp13.i50, label %if.then15.i53, label %land.lhs.true10.i51.cleanup_crit_edge

land.lhs.true10.i51.cleanup_crit_edge:            ; preds = %land.lhs.true10.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then15.i53:                                    ; preds = %land.lhs.true10.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %tobool.not.i52 = icmp eq i32 %size, 8
  br i1 %tobool.not.i52, label %do.body22.i56, label %if.then15.i53.cleanup_crit_edge

if.then15.i53.cleanup_crit_edge:                  ; preds = %if.then15.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body22.i56:                                    ; preds = %if.then15.i53
  %125 = ptrtoint ptr %client.i40 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %client.i40, align 4
  %debug27.i54 = getelementptr inbounds %struct.nvkm_client, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %debug27.i54 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %debug27.i54, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %128)
  %cmp28.i55 = icmp ugt i32 %128, 4
  br i1 %cmp28.i55, label %do.end33.i65, label %do.body22.i56.if.end44.i67_crit_edge

do.body22.i56.if.end44.i67_crit_edge:             ; preds = %do.body22.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i67

do.end33.i65:                                     ; preds = %do.body22.i56
  call void @__sanitizer_cov_trace_pc() #8
  %name35.i57 = getelementptr inbounds %struct.nvkm_client, ptr %126, i32 0, i32 1
  %handle37.i58 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 4
  %129 = ptrtoint ptr %handle37.i58 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %handle37.i58, align 8
  %oclass38.i59 = getelementptr inbounds %struct.nvkm_object, ptr %object, i32 0, i32 3
  %131 = ptrtoint ptr %oclass38.i59 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %oclass38.i59, align 4
  %ustate.i = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %data, i32 0, i32 1
  %133 = ptrtoint ptr %ustate.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %ustate.i, align 1
  %conv41.i61 = sext i8 %134 to i32
  %pwrsrc.i62 = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %data, i32 0, i32 2
  %135 = ptrtoint ptr %pwrsrc.i62 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %pwrsrc.i62, align 1
  %conv42.i63 = sext i8 %136 to i32
  %call43.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name35.i57, i32 noundef %130, i32 noundef %132, i32 noundef 0, i32 noundef %conv41.i61, i32 noundef %conv42.i63) #10
  br label %if.end44.i67

if.end44.i67:                                     ; preds = %do.end33.i65, %do.body22.i56.if.end44.i67_crit_edge
  %tobool47.not.i66 = icmp eq ptr %114, null
  br i1 %tobool47.not.i66, label %if.end44.i67.cleanup_crit_edge, label %if.end50.i

if.end44.i67.cleanup_crit_edge:                   ; preds = %if.end44.i67
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50.i:                                       ; preds = %if.end44.i67
  %pwrsrc51.i = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %data, i32 0, i32 2
  %137 = ptrtoint ptr %pwrsrc51.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %pwrsrc51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %138)
  %cmp53.i = icmp sgt i8 %138, -1
  br i1 %cmp53.i, label %if.then55.i, label %if.else61.i

if.then55.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv52111.i = zext i8 %138 to i32
  %ustate56.i = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %data, i32 0, i32 1
  %139 = ptrtoint ptr %ustate56.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %ustate56.i, align 1
  %conv57.i = sext i8 %140 to i32
  %call60.i = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %114, i32 noundef %conv57.i, i32 noundef %conv52111.i) #6
  br label %cleanup

if.else61.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %ustate62.i = getelementptr inbounds %struct.nvif_control_pstate_user_v0, ptr %data, i32 0, i32 1
  %141 = ptrtoint ptr %ustate62.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %ustate62.i, align 1
  %conv63.i = sext i8 %142 to i32
  %call64.i = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %114, i32 noundef %conv63.i, i32 noundef 0) #6
  %143 = ptrtoint ptr %ustate62.i to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %ustate62.i, align 1
  %conv67.i = sext i8 %144 to i32
  %call68.i = tail call i32 @nvkm_clk_ustate(ptr noundef nonnull %114, i32 noundef %conv67.i, i32 noundef 1) #6
  %or69.i = or i32 %call68.i, %call64.i
  br label %cleanup

cleanup:                                          ; preds = %if.else61.i, %if.then55.i, %if.end44.i67.cleanup_crit_edge, %if.then15.i53.cleanup_crit_edge, %land.lhs.true10.i51.cleanup_crit_edge, %land.lhs.true.i49.cleanup_crit_edge, %if.then168.i, %while.cond160.i.cleanup_crit_edge, %if.end73.i.cleanup_crit_edge, %if.end62.i.cleanup_crit_edge, %if.end55.i.cleanup_crit_edge, %if.end49.i.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %if.then15.i26.cleanup_crit_edge, %land.lhs.true10.i24.cleanup_crit_edge, %land.lhs.true.i22.cleanup_crit_edge, %cleanup.sink.split.i, %if.then15.i.cleanup_crit_edge, %land.lhs.true10.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -38, %land.lhs.true.i.cleanup_crit_edge ], [ -38, %land.lhs.true10.i.cleanup_crit_edge ], [ -7, %if.then15.i.cleanup_crit_edge ], [ 0, %cleanup.sink.split.i ], [ -19, %if.end44.i.cleanup_crit_edge ], [ -22, %if.end49.i.cleanup_crit_edge ], [ -22, %if.end55.i.cleanup_crit_edge ], [ 0, %if.then168.i ], [ -38, %land.lhs.true.i22.cleanup_crit_edge ], [ -38, %land.lhs.true10.i24.cleanup_crit_edge ], [ -7, %if.then15.i26.cleanup_crit_edge ], [ -22, %if.end62.i.cleanup_crit_edge ], [ -19, %if.end44.i67.cleanup_crit_edge ], [ %call60.i, %if.then55.i ], [ %or69.i, %if.else61.i ], [ -38, %land.lhs.true.i49.cleanup_crit_edge ], [ -38, %land.lhs.true10.i51.cleanup_crit_edge ], [ -7, %if.then15.i53.cleanup_crit_edge ], [ 0, %while.cond160.i.cleanup_crit_edge ], [ -22, %if.end73.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_clk_ustate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @nvkm_control_oclass, !1, !"nvkm_control_oclass", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 207, i32 1}
!2 = !{ptr @nvkm_control, !3, !"nvkm_control", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 187, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 43, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nvkm_control_mthd_pstate_info._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @nvkm_control_mthd_pstate_info._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 45, i32 3}
!12 = !{ptr @nvkm_control_mthd_pstate_info._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nvkm_control_mthd_pstate_info._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 81, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nvkm_control_mthd_pstate_attr._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nvkm_control_mthd_pstate_attr._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 83, i32 3}
!21 = !{ptr @nvkm_control_mthd_pstate_attr._entry.8, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nvkm_control_mthd_pstate_attr._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 124, i32 49}
!25 = distinct !{null, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 125, i32 49}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 149, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nvkm_control_mthd_pstate_user._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @nvkm_control_mthd_pstate_user._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/device/ctrl.c", i32 151, i32 3}
!34 = !{ptr @nvkm_control_mthd_pstate_user._entry.15, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @nvkm_control_mthd_pstate_user._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
