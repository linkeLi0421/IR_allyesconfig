; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_abi16.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_abi16.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nouveau_abi16 = type { %struct.nvif_device, %struct.list_head, i64 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.96, %struct.anon.97, %struct.anon.102, ptr, %struct.anon.103, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.104, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.116 }
%struct.nvif_parent = type { ptr }
%struct.anon.96 = type { ptr, i32, i32, i8 }
%struct.anon.97 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.98] }
%struct.anon.98 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.102 = type { i64, i64 }
%struct.anon.103 = type { i32, i64 }
%struct.anon.104 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.105, i8 }
%union.anon.105 = type { %struct.anon.109 }
%struct.anon.109 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.111 = type { i32 }
%struct.anon.112 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.113 = type { i16, i16 }
%struct.anon.114 = type { i16, i16, i16, %struct.anon.115, i16 }
%struct.anon.115 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_abi16_chan = type { %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.82, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.82 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.90 = type { i32, ptr }
%struct.drm_nouveau_getparam = type { i64, i64 }
%struct.anon.191 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.187, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.187 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_nouveau_channel_alloc = type { i32, i32, i32, i32, i32, [8 x %struct.anon.193], i32 }
%struct.anon.193 = type { i32, i32 }
%struct.nouveau_channel = type { %struct.anon.99, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.100, i8, ptr, %struct.anon.101, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.99 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.100 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.101 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.nvif_ioctl_v0 = type { i8, i8, [4 x i8], i8, i8, i64, i64, [0 x i8] }
%struct.drm_nouveau_grobj_alloc = type { i32, i32, i32 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nouveau_abi16_ntfy = type { %struct.nvif_object, %struct.list_head, ptr }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.drm_nouveau_notifierobj_alloc = type { i32, i32, i32, i32 }
%struct.nvkm_mm_node = type { %struct.list_head, %struct.list_head, ptr, i8, i8, i32, i32 }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_nouveau_gpuobj_free = type { i32, i32 }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/nouveau/nouveau_abi16.c\00", [56 x i8] zeroinitializer }, align 32
@nouveau_abi16_ioctl_getparam.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nouveau_abi16_ioctl_getparam\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: unknown parameter %lld\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abi16EngObj\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abi16Ntfy\00", [22 x i8] zeroinitializer }, align 32
@__const.nouveau_abi16.args = private unnamed_addr constant %struct.nv_device_v0 { i8 0, i8 0, [6 x i8] zeroinitializer, i64 -1 }, align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"abi16Device\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.nouveau_abi16_swclass = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 -4, i32 -5, i32 -5, i32 -5, i32 -5, i32 -6, i32 -7, i32 -7, i32 -7, i32 -7, i32 -7], [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 64, i64 3, i64 4, i64 5, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 48]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.10 = internal global [6 x i64] [i64 4, i64 8, i64 110, i64 177, i64 178, i64 179]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 215, i32 4 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 241, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 507, i32 44 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 573, i32 44 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [43 x i8] c"../drivers/gpu/drm/nouveau/nouveau_abi16.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 58, i32 44 }
@___asan_gen_.32 = private unnamed_addr constant [35 x i8] c"switch.table.nouveau_abi16_swclass\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @switch.table.nouveau_abi16_swclass], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nouveau_abi16_swclass to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_abi16_get(ptr noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.nv_device_v0, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %nouveau_cli.exit.thread, label %cond.true.i.i

nouveau_cli.exit.thread:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_lock_nested(ptr noundef nonnull inttoptr (i32 68 to ptr), i32 noundef 0) #6
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %2 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %nouveau_cli.exit.thread
  %mutex10 = phi ptr [ %mutex, %cond.true.i.i ], [ inttoptr (i32 68 to ptr), %nouveau_cli.exit.thread ]
  %cond.i9 = phi ptr [ %1, %cond.true.i.i ], [ null, %nouveau_cli.exit.thread ]
  %cond.i.i = phi ptr [ %3, %cond.true.i.i ], [ null, %nouveau_cli.exit.thread ]
  %abi16.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %abi16.i, align 4
  %tobool.not.i6 = icmp eq ptr %5, null
  br i1 %tobool.not.i6, label %if.then.i, label %nouveau_cli.exit.i.if.end16.i_crit_edge

nouveau_cli.exit.i.if.end16.i_crit_edge:          ; preds = %nouveau_cli.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then.i:                                        ; preds = %nouveau_cli.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 216) #9
  %7 = ptrtoint ptr %abi16.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i.i, ptr %abi16.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then.i.if.end16.i_crit_edge, label %if.then6.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #6
  %8 = call ptr @memcpy(ptr %args.i, ptr @__const.nouveau_abi16.args, i32 16)
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %channels.i, ptr %channels.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %call7.i = call i32 @nvif_device_ctor(ptr noundef %cond.i.i, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %args.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, 0
  %11 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %abi16.i, align 4
  br i1 %cmp.i, label %cleanup13.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %12) #6
  %13 = ptrtoint ptr %abi16.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %abi16.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #6
  br label %if.end16.i

cleanup13.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #6
  br label %nouveau_abi16.exit

if.end16.i:                                       ; preds = %cleanup.i, %if.then.i.if.end16.i_crit_edge, %nouveau_cli.exit.i.if.end16.i_crit_edge
  %14 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %abi16.i, align 4
  br label %nouveau_abi16.exit

nouveau_abi16.exit:                               ; preds = %if.end16.i, %cleanup13.i
  %retval.3.i = phi ptr [ %15, %if.end16.i ], [ %12, %cleanup13.i ]
  %tobool.not = icmp eq ptr %retval.3.i, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %nouveau_abi16.exit
  call void @__sanitizer_cov_trace_pc() #8
  %abi16 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i9, i32 0, i32 9
  %16 = ptrtoint ptr %abi16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %abi16, align 4
  br label %cleanup

if.end:                                           ; preds = %nouveau_abi16.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %mutex10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %17, %if.then ], [ null, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_put(ptr nocapture noundef readonly %abi16, i32 noundef returned %ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %abi16, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  ret i32 %ret
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_abi16_swclass(ptr nocapture noundef readonly %drm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 1
  %switch.tableidx = add i8 %1, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx)
  %2 = icmp ult i8 %switch.tableidx, 11
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [11 x i32], ptr @switch.table.nouveau_abi16_swclass, i32 0, i32 %3
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_abi16_fini(ptr noundef %abi16) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.nvif_object, ptr %abi16, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %channels = getelementptr inbounds %struct.nouveau_abi16, ptr %abi16, i32 0, i32 1
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 8
  %cmp.not23 = icmp eq ptr %3, %channels
  br i1 %cmp.not23, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %chan.024 = phi ptr [ %temp.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %chan.024 to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp.0 = load ptr, ptr %chan.024, align 4
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef %chan.024)
  %cmp.not = icmp eq ptr %temp.0, %channels
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @nvif_device_dtor(ptr noundef %abi16) #6
  %abi1613 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %abi1613 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %abi1613, align 4
  tail call void @kfree(ptr noundef %6) #6
  %7 = ptrtoint ptr %abi1613 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %abi1613, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_abi16_chan_fini(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %ntfy2 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %ntfy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ntfy2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %notifiers = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifiers, align 4
  %cmp.not3 = icmp eq ptr %5, %notifiers
  br i1 %cmp.not3, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %heap.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %nouveau_abi16_ntfy_fini.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in4 = phi ptr [ %5, %for.body.lr.ph ], [ %.pn, %nouveau_abi16_ntfy_fini.exit.for.body_crit_edge ]
  %ntfy.0 = getelementptr i8, ptr %.pn.in4, i32 -40
  %6 = ptrtoint ptr %.pn.in4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in4, align 8
  tail call void @nvif_object_dtor(ptr noundef %ntfy.0) #6
  %node.i = getelementptr i8, ptr %.pn.in4, i32 8
  tail call void @nvkm_mm_free(ptr noundef %heap.i, ptr noundef %node.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in4) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.nouveau_abi16_ntfy_fini.exit_crit_edge

for.body.nouveau_abi16_ntfy_fini.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_abi16_ntfy_fini.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn.in4, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in4, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %nouveau_abi16_ntfy_fini.exit

nouveau_abi16_ntfy_fini.exit:                     ; preds = %if.end.i.i.i, %for.body.nouveau_abi16_ntfy_fini.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in4, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in4, i32 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %ntfy.0) #6
  %cmp.not = icmp eq ptr %.pn, %notifiers
  br i1 %cmp.not, label %nouveau_abi16_ntfy_fini.exit.for.end_crit_edge, label %nouveau_abi16_ntfy_fini.exit.for.body_crit_edge

nouveau_abi16_ntfy_fini.exit.for.body_crit_edge:  ; preds = %nouveau_abi16_ntfy_fini.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

nouveau_abi16_ntfy_fini.exit.for.end_crit_edge:   ; preds = %nouveau_abi16_ntfy_fini.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %nouveau_abi16_ntfy_fini.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %ntfy16 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %ntfy16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ntfy16, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %for.end.if.end22_crit_edge, label %if.then18

for.end.if.end22_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then18:                                        ; preds = %for.end
  %ntfy_vma = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 4
  tail call void @nouveau_vma_del(ptr noundef %ntfy_vma) #6
  %17 = ptrtoint ptr %ntfy16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ntfy16, align 4
  %call20 = tail call i32 @nouveau_bo_unpin(ptr noundef %18) #6
  %19 = ptrtoint ptr %ntfy16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ntfy16, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then18.if.end22_crit_edge, label %if.then.i

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then.i:                                        ; preds = %if.then18
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %20, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !22
  tail call void @llvm.prefetch.p0(ptr nonnull %20, i32 1, i32 3, i32 1) #6
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %20, ptr nonnull %20, i32 1, ptr nonnull elementtype(i32) %20) #6, !srcloc !23
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end22_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !24

if.end5.i.i.i.i.i.i.if.end22_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef nonnull %20, i32 noundef 3) #6
  br label %if.end22

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !25
  tail call void @drm_gem_object_free(ptr noundef nonnull %20) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end22_crit_edge, %if.then18.if.end22_crit_edge, %for.end.if.end22_crit_edge
  %block_size = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 5, i32 2
  %22 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %block_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool23.not = icmp eq i32 %23, 0
  br i1 %tobool23.not, label %if.end22.if.end27_crit_edge, label %if.then24

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %heap = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan, i32 0, i32 5
  %call26 = tail call i32 @nvkm_mm_fini(ptr noundef %heap) #6
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end22.if.end27_crit_edge
  %24 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan1, align 4
  %tobool29.not = icmp eq ptr %25, null
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %25) #6
  tail call void @nouveau_channel_del(ptr noundef %chan1) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end34.list_del.exit_crit_edge

if.end34.list_del.exit_crit_edge:                 ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i2 = getelementptr inbounds %struct.list_head, ptr %chan, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i2, align 4
  %28 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end34.list_del.exit_crit_edge
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %chan, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %chan, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %chan) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_device_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_getparam(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef readonly %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev5, align 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i64 %7, label %do.body81 [
    i64 11, label %sw.bb
    i64 3, label %sw.bb7
    i64 4, label %sw.bb14
    i64 5, label %sw.bb27
    i64 8, label %sw.bb63
    i64 9, label %sw.bb65
    i64 12, label %sw.bb68
    i64 14, label %sw.bb70
    i64 15, label %sw.bb73
    i64 16, label %sw.bb75
    i64 13, label %sw.bb77
  ]

sw.bb:                                            ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %8 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %chipset, align 2
  %conv = zext i16 %9 to i64
  %value = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %value, align 8
  br label %cleanup

sw.bb7:                                           ; preds = %nouveau_cli.exit
  %platform = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %platform to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %platform, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp.not = icmp eq i8 %12, 4
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %vendor = getelementptr i8, ptr %5, i32 -104
  %13 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vendor, align 8
  %conv11 = zext i16 %14 to i64
  %value12 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %15 = ptrtoint ptr %value12 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %conv11, ptr %value12, align 8
  br label %cleanup

if.else:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %value13 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %value13 to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %value13, align 8
  br label %cleanup

sw.bb14:                                          ; preds = %nouveau_cli.exit
  %platform16 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 1
  %17 = ptrtoint ptr %platform16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %platform16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp18.not = icmp eq i8 %18, 4
  br i1 %cmp18.not, label %if.else24, label %if.then20

if.then20:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %device21 = getelementptr i8, ptr %5, i32 -102
  %19 = ptrtoint ptr %device21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %device21, align 2
  %conv22 = zext i16 %20 to i64
  %value23 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %21 = ptrtoint ptr %value23 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv22, ptr %value23, align 8
  br label %cleanup

if.else24:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  %value25 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %value25 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 0, ptr %value25, align 8
  br label %cleanup

sw.bb27:                                          ; preds = %nouveau_cli.exit
  %platform29 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 1
  %23 = ptrtoint ptr %platform29 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %platform29, align 1
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %24, label %do.end [
    i8 2, label %sw.bb31
    i8 1, label %sw.bb33
    i8 3, label %sw.bb35
    i8 4, label %sw.bb37
    i8 0, label %sw.bb39
  ]

sw.bb31:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %value32 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %26 = ptrtoint ptr %value32 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 0, ptr %value32, align 8
  br label %cleanup

sw.bb33:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %value34 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %27 = ptrtoint ptr %value34 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 1, ptr %value34, align 8
  br label %cleanup

sw.bb35:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %value36 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %28 = ptrtoint ptr %value36 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 2, ptr %value36, align 8
  br label %cleanup

sw.bb37:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  %value38 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %value38 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 3, ptr %value38, align 8
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb27
  %pcie_cap.i.i = getelementptr i8, ptr %5, i32 -72
  %30 = ptrtoint ptr %pcie_cap.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pcie_cap.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not = icmp eq i8 %31, 0
  %value42 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  br i1 %tobool.i.not, label %if.then41, label %if.else43

if.then41:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %value42 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 1, ptr %value42, align 8
  br label %cleanup

if.else43:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %value42 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 2, ptr %value42, align 8
  br label %cleanup

do.end:                                           ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 215, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

sw.bb63:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %gem = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 9
  %34 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %gem, align 8
  %value64 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %36 = ptrtoint ptr %value64 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %value64, align 8
  br label %cleanup

sw.bb65:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %gart_available = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %gart_available to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %gart_available, align 8
  %value67 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %39 = ptrtoint ptr %value67 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %value67, align 8
  br label %cleanup

sw.bb68:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %value69 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %40 = ptrtoint ptr %value69 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %value69, align 8
  br label %cleanup

sw.bb70:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %device2 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %call71 = tail call i64 @nvif_device_time(ptr noundef %device2) #6
  %value72 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %41 = ptrtoint ptr %value72 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call71, ptr %value72, align 8
  br label %cleanup

sw.bb73:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %value74 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %42 = ptrtoint ptr %value74 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 1, ptr %value74, align 8
  br label %cleanup

sw.bb75:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %value76 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %43 = ptrtoint ptr %value76 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 1, ptr %value76, align 8
  br label %cleanup

sw.bb77:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %44 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %priv, align 4
  %device3 = getelementptr inbounds %struct.anon.191, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %device3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device3, align 8
  %gr4 = getelementptr inbounds %struct.nvkm_device, ptr %47, i32 0, i32 53
  %48 = ptrtoint ptr %gr4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %gr4, align 4
  %call78 = tail call i64 @nvkm_gr_units(ptr noundef %49) #6
  %value79 = getelementptr inbounds %struct.drm_nouveau_getparam, ptr %data, i32 0, i32 1
  %50 = ptrtoint ptr %value79 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %call78, ptr %value79, align 8
  br label %cleanup

do.body81:                                        ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nouveau_abi16_ioctl_getparam.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nouveau_abi16_ioctl_getparam, %if.then92)) #6
          to label %cleanup [label %if.then92], !srcloc !26

if.then92:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %drm93 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %51 = ptrtoint ptr %drm93 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %drm93, align 8
  %dev94 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev94, align 8
  %dev95 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dev95 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev95, align 4
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %data, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nouveau_abi16_ioctl_getparam.__UNIQUE_ID_ddebug319, ptr noundef %56, ptr noundef nonnull @.str.3, ptr noundef %name, i64 noundef %58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then92, %do.body81, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb70, %sw.bb68, %sw.bb65, %sw.bb63, %do.end, %if.else43, %if.then41, %sw.bb37, %sw.bb35, %sw.bb33, %sw.bb31, %if.else24, %if.then20, %if.else, %if.then, %sw.bb
  %retval.0 = phi i32 [ -22, %if.then92 ], [ 0, %sw.bb31 ], [ 0, %sw.bb33 ], [ 0, %sw.bb35 ], [ 0, %sw.bb37 ], [ 0, %do.end ], [ 0, %if.else43 ], [ 0, %if.then41 ], [ 0, %if.then20 ], [ 0, %if.else24 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb77 ], [ 0, %sw.bb75 ], [ 0, %sw.bb73 ], [ 0, %sw.bb70 ], [ 0, %sw.bb68 ], [ 0, %sw.bb65 ], [ 0, %sw.bb63 ], [ 0, %sw.bb ], [ -22, %do.body81 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_device_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvkm_gr_units(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_channel_alloc(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %call2 = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %nouveau_cli.exit.cleanup_crit_edge, label %if.end, !prof !27

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nouveau_cli.exit
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.cleanup.sink.split_crit_edge, label %if.end9

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end9:                                          ; preds = %if.end
  %family = getelementptr inbounds %struct.nvif_device, ptr %call2, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %7)
  %cmp = icmp ugt i8 %7, 7
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data, align 4
  br i1 %cmp, label %if.then12, label %if.end9.if.end32_crit_edge

if.end9.if.end32_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp13 = icmp eq i32 %9, -1
  br i1 %cmp13, label %if.then15, label %if.then12.if.then24_crit_edge

if.then12.if.then24_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then15:                                        ; preds = %if.then12
  %tt_ctxdma_handle = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 1
  %10 = ptrtoint ptr %tt_ctxdma_handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tt_ctxdma_handle, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %11, label %if.then15.cleanup.sink.split_crit_edge [
    i32 1, label %if.then15.if.then24_crit_edge
    i32 2, label %sw.bb16
    i32 4, label %sw.bb17
    i32 8, label %sw.bb18
    i32 48, label %if.else26
  ]

if.then15.if.then24_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then15.cleanup.sink.split_crit_edge:           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

sw.bb16:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

sw.bb17:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

sw.bb18:                                          ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then24

if.then24:                                        ; preds = %sw.bb18, %sw.bb17, %sw.bb16, %if.then15.if.then24_crit_edge, %if.then12.if.then24_crit_edge
  %engine.0.ph = phi i64 [ 2, %if.then12.if.then24_crit_edge ], [ 2, %if.then15.if.then24_crit_edge ], [ 512, %sw.bb18 ], [ 2048, %sw.bb17 ], [ 1024, %sw.bb16 ]
  %call25 = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %call2, i64 noundef %engine.0.ph) #6
  %extract.t = trunc i64 %call25 to i32
  br label %if.end28

if.else26:                                        ; preds = %if.then15
  %call.i = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %call2, i64 noundef 2) #6
  %call1.i = tail call i64 @nvif_fifo_runlist(ptr noundef nonnull %call2, i64 noundef 128) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i)
  %tobool.not.i189 = icmp eq i64 %call1.i, 0
  br i1 %tobool.not.i189, label %if.else26.if.end28_crit_edge, label %land.lhs.true.i

if.else26.if.end28_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

land.lhs.true.i:                                  ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i = xor i64 %call.i, -1
  %and.i = and i64 %call1.i, %neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool2.not.i = icmp eq i64 %and.i, 0
  %spec.select.i = select i1 %tobool2.not.i, i64 %call.i, i64 %and.i
  %extract.t205 = trunc i64 %spec.select.i to i32
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true.i, %if.else26.if.end28_crit_edge, %if.then24
  %engine.1.off0 = phi i32 [ %extract.t, %if.then24 ], [ 0, %if.else26.if.end28_crit_edge ], [ %extract.t205, %land.lhs.true.i ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %engine.1.off0, ptr %data, align 4
  %tt_ctxdma_handle31 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %tt_ctxdma_handle31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tt_ctxdma_handle31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end28, %if.end9.if.end32_crit_edge
  %15 = phi i32 [ %engine.1.off0, %if.end28 ], [ %9, %if.end9.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp34 = icmp eq i32 %15, -1
  br i1 %cmp34, label %if.end32.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end32.cleanup.sink.split_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end32
  %tt_ctxdma_handle36 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 1
  %16 = ptrtoint ptr %tt_ctxdma_handle36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tt_ctxdma_handle36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp37 = icmp eq i32 %17, -1
  br i1 %cmp37, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %if.end41

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end41:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 52) #9
  %tobool43.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool43.not, label %if.end41.cleanup.sink.split_crit_edge, label %if.end46

if.end41.cleanup.sink.split_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end46:                                         ; preds = %if.end41
  %notifiers = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %notifiers to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %notifiers, ptr %notifiers, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %notifiers, ptr %prev.i, align 8
  %channels = getelementptr inbounds %struct.nouveau_abi16, ptr %call2, i32 0, i32 1
  %21 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %channels, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %channels, ptr noundef %22) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end46.list_add.exit_crit_edge

if.end46.list_add.exit_crit_edge:                 ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %channels, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call7.i.i, ptr %channels, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end46.list_add.exit_crit_edge
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data, align 4
  %29 = ptrtoint ptr %tt_ctxdma_handle36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tt_ctxdma_handle36, align 4
  %chan49 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 1
  %call50 = tail call i32 @nouveau_channel_new(ptr noundef %3, ptr noundef nonnull %call2, i32 noundef %28, i32 noundef %30, i1 noundef zeroext false, ptr noundef %chan49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %list_add.exit.if.then120_crit_edge

list_add.exit.if.then120_crit_edge:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end53:                                         ; preds = %list_add.exit
  %31 = ptrtoint ptr %chan49 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chan49, align 8
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chid, align 4
  %channel55 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 2
  %35 = ptrtoint ptr %channel55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %channel55, align 4
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %37)
  %cmp59 = icmp ugt i8 %37, 5
  br i1 %cmp59, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %pushbuf_domains = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 3
  %38 = ptrtoint ptr %pushbuf_domains to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 6, ptr %pushbuf_domains, align 4
  br label %if.end71

if.else62:                                        ; preds = %if.end53
  %push = getelementptr inbounds %struct.nouveau_channel, ptr %32, i32 0, i32 10
  %39 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %push, align 8
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp64 = icmp eq i32 %44, 2
  %pushbuf_domains67 = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 3
  br i1 %cmp64, label %if.then66, label %if.else68

if.then66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %pushbuf_domains67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %pushbuf_domains67, align 4
  br label %if.end71

if.else68:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %pushbuf_domains67 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %pushbuf_domains67, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.else68, %if.then66, %if.then61
  %47 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp75 = icmp ult i8 %48, 2
  br i1 %cmp75, label %if.then77, label %if.end71.if.end88_crit_edge

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end88

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %subchan = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 5
  %49 = ptrtoint ptr %subchan to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %subchan, align 4
  %grclass = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 5, i32 0, i32 1
  %50 = ptrtoint ptr %grclass to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %grclass, align 4
  %handle81 = getelementptr inbounds %struct.nouveau_channel, ptr %32, i32 0, i32 9, i32 3
  %51 = ptrtoint ptr %handle81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle81, align 4
  %arrayidx83 = getelementptr %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx83, align 4
  %grclass87 = getelementptr %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 5, i32 1, i32 1
  %54 = ptrtoint ptr %grclass87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 20590, ptr %grclass87, align 4
  %nr_subchan = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 6
  %55 = ptrtoint ptr %nr_subchan to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %nr_subchan, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then77, %if.end71.if.end88_crit_edge
  %ntfy = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 3
  %call89 = tail call i32 @nouveau_gem_new(ptr noundef %cond.i, i64 noundef 4096, i32 noundef 0, i32 noundef 4, i32 noundef 0, i32 noundef 0, ptr noundef %ntfy) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.end95, label %if.end88.if.then120_crit_edge

if.end88.if.then120_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end95:                                         ; preds = %if.end88
  %56 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ntfy, align 4
  %call94 = tail call i32 @nouveau_bo_pin(ptr noundef %57, i32 noundef 4, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool96.not = icmp eq i32 %call94, 0
  br i1 %tobool96.not, label %if.end98, label %if.end95.if.then120_crit_edge

if.end95.if.then120_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.end98:                                         ; preds = %if.end95
  %58 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %59)
  %cmp102 = icmp ugt i8 %59, 5
  br i1 %cmp102, label %if.then104, label %if.end98.if.end111_crit_edge

if.end98.if.end111_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.then104:                                       ; preds = %if.end98
  %60 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ntfy, align 4
  %62 = ptrtoint ptr %chan49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %chan49, align 8
  %vmm = getelementptr inbounds %struct.nouveau_channel, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vmm, align 8
  %ntfy_vma = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 4
  %call107 = tail call i32 @nouveau_vma_new(ptr noundef %61, ptr noundef %65, ptr noundef %ntfy_vma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %if.then104.if.end111_crit_edge, label %if.then104.if.then120_crit_edge

if.then104.if.then120_crit_edge:                  ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

if.then104.if.end111_crit_edge:                   ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111

if.end111:                                        ; preds = %if.then104.if.end111_crit_edge, %if.end98.if.end111_crit_edge
  %66 = ptrtoint ptr %ntfy to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ntfy, align 4
  %notifier_handle = getelementptr inbounds %struct.drm_nouveau_channel_alloc, ptr %data, i32 0, i32 4
  %call114 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %67, ptr noundef %notifier_handle) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %done, label %if.end111.if.then120_crit_edge

if.end111.if.then120_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

done:                                             ; preds = %if.end111
  %heap = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %call7.i.i, i32 0, i32 5
  %call118 = tail call i32 @nvkm_mm_init(ptr noundef %heap, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 4096, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %done.cleanup.sink.split_crit_edge, label %done.if.then120_crit_edge

done.if.then120_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then120

done.cleanup.sink.split_crit_edge:                ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then120:                                       ; preds = %done.if.then120_crit_edge, %if.end111.if.then120_crit_edge, %if.then104.if.then120_crit_edge, %if.end95.if.then120_crit_edge, %if.end88.if.then120_crit_edge, %list_add.exit.if.then120_crit_edge
  %ret.1203 = phi i32 [ %call118, %done.if.then120_crit_edge ], [ %call114, %if.end111.if.then120_crit_edge ], [ %call107, %if.then104.if.then120_crit_edge ], [ %call94, %if.end95.if.then120_crit_edge ], [ %call50, %list_add.exit.if.then120_crit_edge ], [ %call89, %if.end88.if.then120_crit_edge ]
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef nonnull %call7.i.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then120, %done.cleanup.sink.split_crit_edge, %if.end41.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end32.cleanup.sink.split_crit_edge, %if.then15.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end.cleanup.sink.split_crit_edge ], [ -38, %if.then15.cleanup.sink.split_crit_edge ], [ -22, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -22, %if.end32.cleanup.sink.split_crit_edge ], [ -12, %if.end41.cleanup.sink.split_crit_edge ], [ %ret.1203, %if.then120 ], [ 0, %done.cleanup.sink.split_crit_edge ]
  %client.i194 = getelementptr inbounds %struct.nvif_object, ptr %call2, i32 0, i32 1
  %68 = ptrtoint ptr %client.i194 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %client.i194, align 4
  %mutex.i195 = getelementptr inbounds %struct.nouveau_cli, ptr %69, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i195) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %nouveau_cli.exit.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_fifo_runlist(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_init(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_usif(ptr noundef readonly %file_priv, ptr nocapture noundef %data, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %args.i = alloca %struct.nv_device_v0, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %size)
  %cmp1 = icmp ugt i32 %size, 23
  br i1 %cmp1, label %if.end11, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8 = icmp eq i8 %1, 0
  br i1 %cmp8, label %if.then13, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %if.end11
  %type = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %3, label %if.then13.cleanup_crit_edge [
    i8 2, label %if.then13.if.end15_crit_edge
    i8 4, label %if.then13.if.end15_crit_edge67
    i8 1, label %if.then13.if.end15_crit_edge68
  ]

if.then13.if.end15_crit_edge68:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13.if.end15_crit_edge67:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13.if.end15_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.then13.if.end15_crit_edge, %if.then13.if.end15_crit_edge67, %if.then13.if.end15_crit_edge68
  %tobool.not.i.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i.i, label %if.end15.nouveau_cli.exit.i_crit_edge, label %cond.true.i.i

if.end15.nouveau_cli.exit.i_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_cli.exit.i

cond.true.i.i:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %5 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_priv.i.i, align 4
  br label %nouveau_cli.exit.i

nouveau_cli.exit.i:                               ; preds = %cond.true.i.i, %if.end15.nouveau_cli.exit.i_crit_edge
  %cond.i.i = phi ptr [ %6, %cond.true.i.i ], [ null, %if.end15.nouveau_cli.exit.i_crit_edge ]
  %abi16.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %abi16.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.then.i, label %nouveau_cli.exit.i.if.end16.i_crit_edge

nouveau_cli.exit.i.if.end16.i_crit_edge:          ; preds = %nouveau_cli.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then.i:                                        ; preds = %nouveau_cli.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 216) #9
  %10 = ptrtoint ptr %abi16.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %abi16.i, align 4
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.then.i.if.end16.i_crit_edge, label %if.then6.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i

if.then6.i:                                       ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %args.i) #6
  %11 = call ptr @memcpy(ptr %args.i, ptr @__const.nouveau_abi16.args, i32 16)
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %channels.i, ptr %channels.i, align 8
  %prev.i.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %channels.i, ptr %prev.i.i, align 4
  %call7.i = call i32 @nvif_device_ctor(ptr noundef %cond.i.i, ptr noundef nonnull @.str.6, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %args.i, i32 noundef 16, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp eq i32 %call7.i, 0
  %14 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %abi16.i, align 4
  br i1 %cmp.i, label %cleanup13.i, label %cleanup.i

cleanup.i:                                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef %15) #6
  %16 = ptrtoint ptr %abi16.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %abi16.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #6
  br label %if.end16.i

cleanup13.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %args.i) #6
  br label %nouveau_abi16.exit

if.end16.i:                                       ; preds = %cleanup.i, %if.then.i.if.end16.i_crit_edge, %nouveau_cli.exit.i.if.end16.i_crit_edge
  %17 = ptrtoint ptr %abi16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %abi16.i, align 4
  br label %nouveau_abi16.exit

nouveau_abi16.exit:                               ; preds = %if.end16.i, %cleanup13.i
  %retval.3.i = phi ptr [ %18, %if.end16.i ], [ %15, %cleanup13.i ]
  %tobool16.not = icmp eq ptr %retval.3.i, null
  br i1 %tobool16.not, label %nouveau_abi16.exit.cleanup_crit_edge, label %if.end18

nouveau_abi16.exit.cleanup_crit_edge:             ; preds = %nouveau_abi16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %nouveau_abi16.exit
  %token = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %token to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %token, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %20)
  %cmp19.not = icmp eq i64 %20, -1
  br i1 %cmp19.not, label %if.end18.cleanup.sink.split_crit_edge, label %if.then21

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then21:                                        ; preds = %if.end18
  %conv23 = trunc i64 %20 to i32
  %channels.i55 = getelementptr inbounds %struct.nouveau_abi16, ptr %retval.3.i, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then21
  %chan.0.in.i = phi ptr [ %channels.i55, %if.then21 ], [ %chan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %channels.i55
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %chan2.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %chan2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan2.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %chid.i, align 4
  %cmp3.i = icmp eq i32 %25, %conv23
  br i1 %cmp3.i, label %nouveau_abi16_chan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nouveau_abi16_chan.exit:                          ; preds = %for.body.i
  %tobool25.not = icmp eq ptr %chan.0.i, null
  br i1 %tobool25.not, label %nouveau_abi16_chan.exit.cleanup_crit_edge, label %if.end27

nouveau_abi16_chan.exit.cleanup_crit_edge:        ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  %chan2.i.le = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %chan2.i.le to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan2.i.le, align 4
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %27, i32 0, i32 17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end27, %if.end18.cleanup.sink.split_crit_edge
  %retval.3.i.sink = phi ptr [ %user, %if.end27 ], [ %retval.3.i, %if.end18.cleanup.sink.split_crit_edge ]
  %28 = ptrtoint ptr %retval.3.i.sink to i32
  %conv32 = zext i32 %28 to i64
  %object33 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 6
  %29 = ptrtoint ptr %object33 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv32, ptr %object33, align 8
  %owner34 = getelementptr inbounds %struct.nvif_ioctl_v0, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %owner34 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %owner34, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %nouveau_abi16_chan.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %nouveau_abi16.exit.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -13, %if.then13.cleanup_crit_edge ], [ -38, %if.end11.cleanup_crit_edge ], [ -12, %nouveau_abi16.exit.cleanup_crit_edge ], [ -22, %nouveau_abi16_chan.exit.cleanup_crit_edge ], [ -38, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_channel_free(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %chan.0.in.i = phi ptr [ %channels.i, %if.end ], [ %chan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %chan2.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %chan2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan2.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chid.i, align 4
  %cmp3.i = icmp eq i32 %6, %1
  br i1 %cmp3.i, label %nouveau_abi16_chan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nouveau_abi16_chan.exit:                          ; preds = %for.body.i
  %tobool5.not = icmp eq ptr %chan.0.i, null
  br i1 %tobool5.not, label %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge, label %if.end8

nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge: ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end8:                                          ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @nouveau_abi16_chan_fini(ptr noundef nonnull %chan.0.i)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 0, %if.end8 ], [ -2, %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge ], [ -2, %for.cond.i.cleanup.sink.split_crit_edge ]
  %client.i17 = getelementptr inbounds %struct.nvif_object, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %client.i17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i17, align 4
  %mutex.i18 = getelementptr inbounds %struct.nouveau_cli, ptr %8, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i18) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_grobj_alloc(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #6
  %0 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !28
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.drm_nouveau_grobj_alloc, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp = icmp eq i32 %2, -1
  %client.i = getelementptr inbounds %struct.nvif_object, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i, align 4
  br i1 %cmp, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i = getelementptr inbounds %struct.nouveau_cli, ptr %4, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end6
  %chan.0.in.i = phi ptr [ %channels.i, %if.end6 ], [ %chan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %7 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.if.then10_crit_edge, label %for.body.i

for.cond.i.if.then10_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

for.body.i:                                       ; preds = %for.cond.i
  %chan2.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %8 = ptrtoint ptr %chan2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan2.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chid.i, align 4
  %cmp3.i = icmp eq i32 %11, %6
  br i1 %cmp3.i, label %nouveau_abi16_chan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nouveau_abi16_chan.exit:                          ; preds = %for.body.i
  %chan2.i.le = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %tobool9.not = icmp eq ptr %chan.0.i, null
  br i1 %tobool9.not, label %nouveau_abi16_chan.exit.if.then10_crit_edge, label %if.end12

nouveau_abi16_chan.exit.if.then10_crit_edge:      ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

if.then10:                                        ; preds = %nouveau_abi16_chan.exit.if.then10_crit_edge, %for.cond.i.if.then10_crit_edge
  %mutex.i163 = getelementptr inbounds %struct.nouveau_cli, ptr %4, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i163) #6
  br label %cleanup

if.end12:                                         ; preds = %nouveau_abi16_chan.exit
  %12 = ptrtoint ptr %chan2.i.le to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan2.i.le, align 4
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %13, i32 0, i32 17
  %call14 = call i32 @nvif_object_sclass_get(ptr noundef %user, ptr noundef nonnull %sclass) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %mutex.i165 = getelementptr inbounds %struct.nouveau_cli, ptr %15, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex.i165) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %class = getelementptr inbounds %struct.drm_nouveau_grobj_alloc, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %class to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %class, align 4
  %trunc = trunc i32 %17 to i8
  %18 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %trunc, label %if.end87 [
    i8 110, label %if.end18.land.rhs_crit_edge
    i8 -79, label %for.cond30.preheader
    i8 -78, label %for.cond49.preheader
    i8 -77, label %for.cond68.preheader
  ]

if.end18.land.rhs_crit_edge:                      ; preds = %if.end18
  br label %land.rhs

for.cond68.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp69191.not = icmp eq i32 %call14, 0
  br i1 %cmp69191.not, label %for.cond68.preheader.if.end87.thread_crit_edge, label %for.body70.lr.ph

for.cond68.preheader.if.end87.thread_crit_edge:   ; preds = %for.cond68.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body70.lr.ph:                                 ; preds = %for.cond68.preheader
  %19 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sclass, align 4
  br label %for.body70

for.cond49.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp50193.not = icmp eq i32 %call14, 0
  br i1 %cmp50193.not, label %for.cond49.preheader.if.end87.thread_crit_edge, label %for.body51.lr.ph

for.cond49.preheader.if.end87.thread_crit_edge:   ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body51.lr.ph:                                 ; preds = %for.cond49.preheader
  %21 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sclass, align 4
  br label %for.body51

for.cond30.preheader:                             ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp31195.not = icmp eq i32 %call14, 0
  br i1 %cmp31195.not, label %for.cond30.preheader.if.end87.thread_crit_edge, label %for.body32.lr.ph

for.cond30.preheader.if.end87.thread_crit_edge:   ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body32.lr.ph:                                 ; preds = %for.cond30.preheader
  %23 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sclass, align 4
  br label %for.body32

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %if.end18.land.rhs_crit_edge
  %i.0197 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %if.end18.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0197, i32 %call14)
  %exitcond212.not = icmp eq i32 %i.0197, %call14
  br i1 %exitcond212.not, label %land.rhs.if.end87.thread_crit_edge, label %for.body

land.rhs.if.end87.thread_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body:                                         ; preds = %land.rhs
  %25 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sclass, align 4
  %arrayidx = getelementptr %struct.nvif_sclass, ptr %26, i32 %i.0197
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0197, 1
  %29 = add i32 %28, 3
  %30 = icmp ult i32 %29, -4
  br i1 %30, label %for.body.land.rhs_crit_edge, label %for.body.if.end87.thread177_crit_edge

for.body.if.end87.thread177_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread177

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

for.cond30:                                       ; preds = %for.body32
  %inc42 = add nuw nsw i32 %i.1196, 1
  %exitcond211.not = icmp eq i32 %inc42, %call14
  br i1 %exitcond211.not, label %for.cond30.if.end87.thread_crit_edge, label %for.cond30.for.body32_crit_edge

for.cond30.for.body32_crit_edge:                  ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32

for.cond30.if.end87.thread_crit_edge:             ; preds = %for.cond30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body32:                                       ; preds = %for.cond30.for.body32_crit_edge, %for.body32.lr.ph
  %i.1196 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc42, %for.cond30.for.body32_crit_edge ]
  %arrayidx33 = getelementptr %struct.nvif_sclass, ptr %24, i32 %i.1196
  %31 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx33, align 4
  %and35 = and i32 %32, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 177, i32 %and35)
  %cmp36 = icmp eq i32 %and35, 177
  br i1 %cmp36, label %for.body32.if.end87.thread177_crit_edge, label %for.cond30

for.body32.if.end87.thread177_crit_edge:          ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread177

for.cond49:                                       ; preds = %for.body51
  %inc61 = add nuw nsw i32 %i.2194, 1
  %exitcond210.not = icmp eq i32 %inc61, %call14
  br i1 %exitcond210.not, label %for.cond49.if.end87.thread_crit_edge, label %for.cond49.for.body51_crit_edge

for.cond49.for.body51_crit_edge:                  ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body51

for.cond49.if.end87.thread_crit_edge:             ; preds = %for.cond49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body51:                                       ; preds = %for.cond49.for.body51_crit_edge, %for.body51.lr.ph
  %i.2194 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc61, %for.cond49.for.body51_crit_edge ]
  %arrayidx52 = getelementptr %struct.nvif_sclass, ptr %22, i32 %i.2194
  %33 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx52, align 4
  %and54 = and i32 %34, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %and54)
  %cmp55 = icmp eq i32 %and54, 178
  br i1 %cmp55, label %for.body51.if.end87.thread177_crit_edge, label %for.cond49

for.body51.if.end87.thread177_crit_edge:          ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread177

for.cond68:                                       ; preds = %for.body70
  %inc80 = add nuw nsw i32 %i.3192, 1
  %exitcond.not = icmp eq i32 %inc80, %call14
  br i1 %exitcond.not, label %for.cond68.if.end87.thread_crit_edge, label %for.cond68.for.body70_crit_edge

for.cond68.for.body70_crit_edge:                  ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body70

for.cond68.if.end87.thread_crit_edge:             ; preds = %for.cond68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread

for.body70:                                       ; preds = %for.cond68.for.body70_crit_edge, %for.body70.lr.ph
  %i.3192 = phi i32 [ 0, %for.body70.lr.ph ], [ %inc80, %for.cond68.for.body70_crit_edge ]
  %arrayidx71 = getelementptr %struct.nvif_sclass, ptr %20, i32 %i.3192
  %35 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx71, align 4
  %and73 = and i32 %36, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 179, i32 %and73)
  %cmp74 = icmp eq i32 %and73, 179
  br i1 %cmp74, label %for.body70.if.end87.thread177_crit_edge, label %for.cond68

for.body70.if.end87.thread177_crit_edge:          ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end87.thread177

if.end87.thread:                                  ; preds = %for.cond68.if.end87.thread_crit_edge, %for.cond49.if.end87.thread_crit_edge, %for.cond30.if.end87.thread_crit_edge, %land.rhs.if.end87.thread_crit_edge, %for.cond30.preheader.if.end87.thread_crit_edge, %for.cond49.preheader.if.end87.thread_crit_edge, %for.cond68.preheader.if.end87.thread_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #6
  br label %if.then89

if.end87.thread177:                               ; preds = %for.body70.if.end87.thread177_crit_edge, %for.body51.if.end87.thread177_crit_edge, %for.body32.if.end87.thread177_crit_edge, %for.body.if.end87.thread177_crit_edge
  %oclass.2.ph = phi i32 [ %28, %for.body.if.end87.thread177_crit_edge ], [ %32, %for.body32.if.end87.thread177_crit_edge ], [ %34, %for.body51.if.end87.thread177_crit_edge ], [ %36, %for.body70.if.end87.thread177_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #6
  br label %if.end91

if.end87:                                         ; preds = %if.end18
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool88.not = icmp eq i32 %17, 0
  br i1 %tobool88.not, label %if.end87.if.then89_crit_edge, label %if.end87.if.end91_crit_edge

if.end87.if.end91_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end91

if.end87.if.then89_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then89

if.then89:                                        ; preds = %if.end87.if.then89_crit_edge, %if.end87.thread
  %37 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i, align 4
  %mutex.i167 = getelementptr inbounds %struct.nouveau_cli, ptr %38, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex.i167) #6
  br label %cleanup

if.end91:                                         ; preds = %if.end87.if.end91_crit_edge, %if.end87.thread177
  %oclass.2180 = phi i32 [ %oclass.2.ph, %if.end87.thread177 ], [ %17, %if.end87.if.end91_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 56) #9
  %tobool93.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool93.not, label %if.then94, label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client.i, align 4
  %mutex.i169 = getelementptr inbounds %struct.nouveau_cli, ptr %41, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex.i169) #6
  br label %cleanup

if.end96:                                         ; preds = %if.end91
  %head = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1
  %notifiers = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 2
  %42 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %notifiers, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %notifiers, ptr noundef %43) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end96.list_add.exit_crit_edge

if.end96.list_add.exit_crit_edge:                 ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %notifiers, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %notifiers to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %head, ptr %notifiers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end96.list_add.exit_crit_edge
  %route = getelementptr inbounds %struct.nvif_client, ptr %4, i32 0, i32 3
  %48 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %route, align 8
  %49 = ptrtoint ptr %chan2.i.le to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan2.i.le, align 4
  %user98 = getelementptr inbounds %struct.nouveau_channel, ptr %50, i32 0, i32 17
  %51 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %handle, align 4
  %call101 = call i32 @nvif_object_ctor(ptr noundef %user98, ptr noundef nonnull @.str.4, i32 noundef %52, i32 noundef %oclass.2180, ptr noundef null, i32 noundef 0, ptr noundef nonnull %call7.i.i) #6
  %53 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %route, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool103.not = icmp eq i32 %call101, 0
  br i1 %tobool103.not, label %list_add.exit.if.end105_crit_edge, label %if.then104

list_add.exit.if.end105_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then104:                                       ; preds = %list_add.exit
  call void @nvif_object_dtor(ptr noundef nonnull %call7.i.i) #6
  %heap.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 5
  %node.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 2
  call void @nvkm_mm_free(ptr noundef %heap.i, ptr noundef %node.i) #6
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then104.nouveau_abi16_ntfy_fini.exit_crit_edge

if.then104.nouveau_abi16_ntfy_fini.exit_crit_edge: ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_abi16_ntfy_fini.exit

if.end.i.i.i:                                     ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i.i, align 4
  %56 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev1.i.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %57, ptr %55, align 4
  br label %nouveau_abi16_ntfy_fini.exit

nouveau_abi16_ntfy_fini.exit:                     ; preds = %if.end.i.i.i, %if.then104.nouveau_abi16_ntfy_fini.exit_crit_edge
  %60 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 8
  %prev.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %if.end105

if.end105:                                        ; preds = %nouveau_abi16_ntfy_fini.exit, %list_add.exit.if.end105_crit_edge
  %62 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i, align 4
  %mutex.i171 = getelementptr inbounds %struct.nouveau_cli, ptr %63, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex.i171) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then94, %if.then89, %if.then16, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call14, %if.then16 ], [ %call101, %if.end105 ], [ -12, %if.then94 ], [ -22, %if.then89 ], [ -2, %if.then10 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_notifierobj_alloc(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.nv_dma_v0, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %call1 = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %args) #6
  %2 = call ptr @memset(ptr %args, i32 0, i32 24)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %family = getelementptr inbounds %struct.nvif_device, ptr %call1, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ugt i8 %4, 6
  %client.i = getelementptr inbounds %struct.nvif_object, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i, align 4
  br i1 %cmp, label %if.then14, label %if.end16, !prof !27

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mutex.i = getelementptr inbounds %struct.nouveau_cli, ptr %6, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i) #6
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call1, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end16
  %chan.0.in.i = phi ptr [ %channels.i, %if.end16 ], [ %chan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %9 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.if.then21_crit_edge, label %for.body.i

for.cond.i.if.then21_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

for.body.i:                                       ; preds = %for.cond.i
  %chan2.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %chan2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan2.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chid.i, align 4
  %cmp3.i = icmp eq i32 %13, %8
  br i1 %cmp3.i, label %nouveau_abi16_chan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nouveau_abi16_chan.exit:                          ; preds = %for.body.i
  %chan2.i.le = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %tobool20.not = icmp eq ptr %chan.0.i, null
  br i1 %tobool20.not, label %nouveau_abi16_chan.exit.if.then21_crit_edge, label %if.end23

nouveau_abi16_chan.exit.if.then21_crit_edge:      ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.then21:                                        ; preds = %nouveau_abi16_chan.exit.if.then21_crit_edge, %for.cond.i.if.then21_crit_edge
  %mutex.i143 = getelementptr inbounds %struct.nouveau_cli, ptr %6, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i143) #6
  br label %cleanup

if.end23:                                         ; preds = %nouveau_abi16_chan.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 56) #9
  %tobool25.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %mutex.i145 = getelementptr inbounds %struct.nouveau_cli, ptr %16, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i145) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %head = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1
  %notifiers = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %notifiers to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %notifiers, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %notifiers, ptr noundef %18) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end28.list_add.exit_crit_edge

if.end28.list_add.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %head, ptr %prev1.i.i, align 4
  %20 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %head, align 8
  %prev3.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %notifiers, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %notifiers to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %head, ptr %notifiers, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end28.list_add.exit_crit_edge
  %heap = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 5
  %size = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %data, i32 0, i32 2
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 4
  %node = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 2
  %call30 = tail call i32 @nvkm_mm_head(ptr noundef %heap, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %24, i32 noundef %24, i32 noundef 1, ptr noundef %node) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %list_add.exit.if.then95_crit_edge

list_add.exit.if.then95_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95

if.end33:                                         ; preds = %list_add.exit
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %node, align 8
  %offset = getelementptr inbounds %struct.nvkm_mm_node, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset, align 4
  %conv35 = zext i32 %28 to i64
  %start = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 4
  %length = getelementptr inbounds %struct.nvkm_mm_node, ptr %26, i32 0, i32 6
  %29 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length, align 4
  %add = add i32 %28, -1
  %sub = add i32 %add, %30
  %conv39 = zext i32 %sub to i64
  %limit = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 5
  %31 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %32)
  %cmp43 = icmp ugt i8 %32, 5
  br i1 %cmp43, label %if.then45, label %if.else

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %target = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 1
  %33 = ptrtoint ptr %target to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %target, align 1
  %access = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %34 = ptrtoint ptr %access to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %access, align 2
  %ntfy_vma = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 4
  %35 = ptrtoint ptr %ntfy_vma to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ntfy_vma, align 4
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %addr, align 8
  br label %if.end83

if.else:                                          ; preds = %if.end33
  %agp = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %agp to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %agp, align 4
  %tobool52.not = icmp eq ptr %40, null
  %target72 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 1
  br i1 %tobool52.not, label %if.else71, label %if.then53

if.then53:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %target72 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 4, ptr %target72, align 1
  %access55 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %42 = ptrtoint ptr %access55 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %access55, align 2
  %base = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base, align 4
  %conv57 = zext i32 %44 to i64
  %ntfy58 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 3
  %45 = ptrtoint ptr %ntfy58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ntfy58, align 4
  %offset59 = getelementptr inbounds %struct.nouveau_bo, ptr %46, i32 0, i32 13
  %47 = ptrtoint ptr %offset59 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %offset59, align 8
  %add60 = add i64 %48, %conv57
  br label %if.end83

if.else71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %target72 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %target72, align 1
  %access73 = getelementptr inbounds %struct.nv_dma_v0, ptr %args, i32 0, i32 2
  %50 = ptrtoint ptr %access73 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 3, ptr %access73, align 2
  %ntfy74 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 3
  %51 = ptrtoint ptr %ntfy74 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ntfy74, align 4
  %offset75 = getelementptr inbounds %struct.nouveau_bo, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %offset75 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %offset75, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else71, %if.then53, %if.then45
  %add60.sink158 = phi i64 [ %add60, %if.then53 ], [ %54, %if.else71 ], [ %38, %if.then45 ]
  %add62 = add i64 %add60.sink158, %conv35
  %55 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %add62, ptr %start, align 8
  %add70 = add i64 %add60.sink158, %conv39
  %56 = ptrtoint ptr %limit to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %add70, ptr %limit, align 8
  %route = getelementptr inbounds %struct.nvif_client, ptr %6, i32 0, i32 3
  %57 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 2, ptr %route, align 8
  %58 = ptrtoint ptr %chan2.i.le to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %chan2.i.le, align 4
  %user = getelementptr inbounds %struct.nouveau_channel, ptr %59, i32 0, i32 17
  %handle = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %data, i32 0, i32 1
  %60 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %handle, align 4
  %call86 = call i32 @nvif_object_ctor(ptr noundef %user, ptr noundef nonnull @.str.5, i32 noundef %61, i32 noundef 61, ptr noundef nonnull %args, i32 noundef 24, ptr noundef nonnull %call7.i.i) #6
  %62 = ptrtoint ptr %route to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %route, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool88.not = icmp eq i32 %call86, 0
  br i1 %tobool88.not, label %done, label %if.end83.if.then95_crit_edge

if.end83.if.then95_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95

done:                                             ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %node, align 8
  %offset92 = getelementptr inbounds %struct.nvkm_mm_node, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %offset92 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset92, align 4
  %offset93 = getelementptr inbounds %struct.drm_nouveau_notifierobj_alloc, ptr %data, i32 0, i32 3
  %67 = ptrtoint ptr %offset93 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %offset93, align 4
  br label %if.end96

if.then95:                                        ; preds = %if.end83.if.then95_crit_edge, %list_add.exit.if.then95_crit_edge
  %ret.0.ph = phi i32 [ %call86, %if.end83.if.then95_crit_edge ], [ %call30, %list_add.exit.if.then95_crit_edge ]
  call void @nvif_object_dtor(ptr noundef nonnull %call7.i.i) #6
  call void @nvkm_mm_free(ptr noundef %heap, ptr noundef %node) #6
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then95.nouveau_abi16_ntfy_fini.exit_crit_edge

if.then95.nouveau_abi16_ntfy_fini.exit_crit_edge: ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_abi16_ntfy_fini.exit

if.end.i.i.i:                                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i.i.i, align 4
  %70 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %head, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %71, ptr %69, align 4
  br label %nouveau_abi16_ntfy_fini.exit

nouveau_abi16_ntfy_fini.exit:                     ; preds = %if.end.i.i.i, %if.then95.nouveau_abi16_ntfy_fini.exit_crit_edge
  %74 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 8
  %prev.i.i = getelementptr inbounds %struct.nouveau_abi16_ntfy, ptr %call7.i.i, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %if.end96

if.end96:                                         ; preds = %nouveau_abi16_ntfy_fini.exit, %done
  %ret.0154 = phi i32 [ %ret.0.ph, %nouveau_abi16_ntfy_fini.exit ], [ 0, %done ]
  %76 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %client.i, align 4
  %mutex.i147 = getelementptr inbounds %struct.nouveau_cli, ptr %77, i32 0, i32 2
  call void @mutex_unlock(ptr noundef %mutex.i147) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end96, %if.then26, %if.then21, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then14 ], [ %ret.0154, %if.end96 ], [ -12, %if.then26 ], [ -2, %if.then21 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %args) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_head(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_abi16_ioctl_gpuobj_free(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !27

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %channels.i = getelementptr inbounds %struct.nouveau_abi16, ptr %call, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %chan.0.in.i = phi ptr [ %channels.i, %if.end ], [ %chan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %chan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %chan.0.i = load ptr, ptr %chan.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %chan.0.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup.sink.split_crit_edge, label %for.body.i

for.cond.i.cleanup.sink.split_crit_edge:          ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body.i:                                       ; preds = %for.cond.i
  %chan2.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %3 = ptrtoint ptr %chan2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan2.i, align 4
  %chid.i = getelementptr inbounds %struct.nouveau_channel, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %chid.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chid.i, align 4
  %cmp3.i = icmp eq i32 %6, %1
  br i1 %cmp3.i, label %nouveau_abi16_chan.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nouveau_abi16_chan.exit:                          ; preds = %for.body.i
  %tobool5.not = icmp eq ptr %chan.0.i, null
  br i1 %tobool5.not, label %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge, label %if.end8

nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge: ; preds = %nouveau_abi16_chan.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end8:                                          ; preds = %nouveau_abi16_chan.exit
  %chan2.i.le = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 1
  %7 = ptrtoint ptr %chan2.i.le to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan2.i.le, align 4
  %call10 = tail call i32 @nouveau_channel_idle(ptr noundef %8) #6
  %notifiers = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 2
  %handle14 = getelementptr inbounds %struct.drm_nouveau_gpuobj_free, ptr %data, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end8
  %.pn.in = phi ptr [ %notifiers, %if.end8 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %notifiers
  br i1 %cmp.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %handle = getelementptr i8, ptr %.pn, i32 -28
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %handle, align 4
  %12 = ptrtoint ptr %handle14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle14, align 4
  %cmp15 = icmp eq i32 %11, %13
  br i1 %cmp15, label %if.then16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

if.then16:                                        ; preds = %for.body
  %ntfy.0.le = getelementptr i8, ptr %.pn, i32 -40
  tail call void @nvif_object_dtor(ptr noundef %ntfy.0.le) #6
  %heap.i = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %chan.0.i, i32 0, i32 5
  %node.i = getelementptr i8, ptr %.pn, i32 8
  tail call void @nvkm_mm_free(ptr noundef %heap.i, ptr noundef %node.i) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then16.nouveau_abi16_ntfy_fini.exit_crit_edge

if.then16.nouveau_abi16_ntfy_fini.exit_crit_edge: ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %nouveau_abi16_ntfy_fini.exit

if.end.i.i.i:                                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr i8, ptr %.pn, i32 4
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %nouveau_abi16_ntfy_fini.exit

nouveau_abi16_ntfy_fini.exit:                     ; preds = %if.end.i.i.i, %if.then16.nouveau_abi16_ntfy_fini.exit_crit_edge
  %20 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i.i = getelementptr i8, ptr %.pn, i32 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %ntfy.0.le) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %nouveau_abi16_ntfy_fini.exit, %for.cond.cleanup.sink.split_crit_edge, %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge, %for.cond.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -22, %nouveau_abi16_chan.exit.cleanup.sink.split_crit_edge ], [ 0, %nouveau_abi16_ntfy_fini.exit ], [ -2, %for.cond.cleanup.sink.split_crit_edge ], [ -22, %for.cond.i.cleanup.sink.split_crit_edge ]
  %client.i39 = getelementptr inbounds %struct.nvif_object, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %client.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i39, align 4
  %mutex.i40 = getelementptr inbounds %struct.nouveau_cli, ptr %23, i32 0, i32 2
  tail call void @mutex_unlock(ptr noundef %mutex.i40) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_device_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_mm_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_channel_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_mm_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_abi16.c", i32 215, i32 4}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_abi16.c", i32 241, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nouveau_abi16_ioctl_getparam.__UNIQUE_ID_ddebug319, !3, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nouveau_abi16.c", i32 507, i32 44}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/nouveau/nouveau_abi16.c", i32 573, i32 44}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nouveau_abi16.c", i32 58, i32 44}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 2148693128}
!23 = !{i64 2148607568, i64 2148607600, i64 2148607629, i64 2148607663, i64 2148607694, i64 2148607717}
!24 = !{!"branch_weights", i32 2000, i32 1}
!25 = !{i64 2149890901}
!26 = !{i64 2148224299, i64 2148224304, i64 2148224317, i64 2148224361, i64 2148224395, i64 2148224416}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"auto-init"}
