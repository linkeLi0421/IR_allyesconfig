; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_gem.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_gem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.81, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.81 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.87 = type { i32, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.94 }
%struct.anon.94 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.92] }
%struct.anon.92 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.nouveau_vma = type { ptr, i32, %struct.list_head, i64, ptr, ptr }
%struct.nouveau_gem_object_unmap = type { %struct.nouveau_cli_work, ptr }
%struct.nouveau_cli_work = type { ptr, ptr, %struct.list_head, ptr, %struct.dma_fence_cb }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.100, %struct.anon.101, %struct.anon.102, ptr, %struct.anon.103, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.104, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.116 }
%struct.nvif_parent = type { ptr }
%struct.anon.100 = type { ptr, i32, i32, i8 }
%struct.anon.101 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
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
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_nouveau_gem_info = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.drm_nouveau_gem_new = type { %struct.drm_nouveau_gem_info, i32, i32 }
%struct.ttm_resource = type { i32, i32, i32, i32, %struct.ttm_bus_placement }
%struct.ttm_bus_placement = type { ptr, i32, i8, i32 }
%struct.validate_op = type { %struct.list_head, %struct.ww_acquire_ctx }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.nouveau_abi16 = type { %struct.nvif_device, %struct.list_head, i64 }
%struct.nouveau_abi16_chan = type { %struct.list_head, ptr, %struct.list_head, ptr, ptr, %struct.nvkm_mm }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.nouveau_channel = type { %struct.anon.93, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.96, i8, ptr, %struct.anon.99, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.93 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.96 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.99 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_nouveau_gem_pushbuf = type { i32, i32, i64, i32, i32, i64, i64, i32, i32, i64, i64 }
%struct.drm_nouveau_gem_pushbuf_push = type { i32, i32, i64, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_nouveau_gem_pushbuf_bo = type { i64, i32, i32, i32, i32, %struct.drm_nouveau_gem_pushbuf_bo_presumed }
%struct.drm_nouveau_gem_pushbuf_bo_presumed = type { i32, i32, i64 }
%struct.drm_nouveau_gem_pushbuf_reloc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_nouveau_gem_cpu_prep = type { i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%union.anon.14 = type { i32 }
%struct.dma_fence = type { ptr, ptr, %union.anon.88, i64, i64, i32, %struct.kref, i32 }
%union.anon.88 = type { i64 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_gem.c\00", [58 x i8] zeroinitializer }, align 32
@nouveau_ttm_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr @ttm_bo_vm_open, ptr @ttm_bo_vm_close, ptr null, ptr null, ptr null, ptr @nouveau_ttm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ttm_bo_vm_access, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@nouveau_gem_object_funcs = dso_local constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @nouveau_gem_object_del, ptr @nouveau_gem_object_open, ptr @nouveau_gem_object_close, ptr null, ptr null, ptr @nouveau_gem_prime_pin, ptr @nouveau_gem_prime_unpin, ptr @nouveau_gem_prime_get_sg_table, ptr @drm_gem_ttm_vmap, ptr @drm_gem_ttm_vunmap, ptr @drm_gem_ttm_mmap, ptr @nouveau_ttm_vm_ops }, [48 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 760, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: pushbuf push count exceeds limit: %d max %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nouveau_gem_ioctl_pushbuf\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr = internal global ptr @nouveau_gem_ioctl_pushbuf._entry, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 766, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: pushbuf bo count exceeds limit: %d max %d\0A\00", [49 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.7 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.5, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 772, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: pushbuf reloc count exceeds limit: %d max %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.10 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.8, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 789, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: push %d buffer not in list\0A\00", [32 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.13 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.11, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 801, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: validate: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.16 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.14, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str, i32 820, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: reloc apply: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.19 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.17, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str, i32 828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: nv50cal_space: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.22 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.20, section ".printk_index", align 4
@nouveau_gem_ioctl_pushbuf._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str, i32 843, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: cal_space: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.25 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"offset\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s/%08x:%s] %08x: %08x call 0x%08x - %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"[%s/%08x:%s] %08x: %08x data - %s\0A\00", [61 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: jmp_space: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.33 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[%s/%08x:%s] %08x: %08x jump 0x%08x - %s\0A\00", [54 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str, i32 894, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error fencing pushbuf: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nouveau_gem_ioctl_pushbuf._entry_ptr.37 = internal global ptr @nouveau_gem_ioctl_pushbuf._entry.35, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 599, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: validate_init\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nouveau_gem_pushbuf_validate\00", [35 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_validate._entry_ptr = internal global ptr @nouveau_gem_pushbuf_validate._entry, section ".printk_index", align 4
@nouveau_gem_pushbuf_validate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str, i32 606, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: validating bo list\0A\00", [40 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_validate._entry_ptr.46 = internal global ptr @nouveau_gem_pushbuf_validate._entry.44, section ".printk_index", align 4
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@validate_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str, i32 432, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s failed and gave up.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"validate_init\00", [18 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr = internal global ptr @validate_init._entry, section ".printk_index", align 4
@validate_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str, i32 443, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Unknown handle 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr.51 = internal global ptr @validate_init._entry.49, section ".printk_index", align 4
@validate_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str, i32 456, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%s: multiple instances of buffer %d on validation list\0A\00", [40 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr.54 = internal global ptr @validate_init._entry.52, section ".printk_index", align 4
@validate_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str, i32 476, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: fail reserve\0A\00", [46 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr.57 = internal global ptr @validate_init._entry.55, section ".printk_index", align 4
@validate_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: vma not found!\0A\00", [44 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr.60 = internal global ptr @validate_init._entry.58, section ".printk_index", align 4
@validate_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str, i32 508, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: invalid valid domains: 0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@validate_init._entry_ptr.63 = internal global ptr @validate_init._entry.61, section ".printk_index", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ctx->done_acquire\00", [46 x i8] zeroinitializer }, align 32
@validate_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 542, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: fail set_domain\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"validate_list\00", [18 x i8] zeroinitializer }, align 32
@validate_list._entry_ptr = internal global ptr @validate_list._entry, section ".printk_index", align 4
@validate_list._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 549, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: fail ttm_validate\0A\00", [41 x i8] zeroinitializer }, align 32
@validate_list._entry_ptr.72 = internal global ptr @validate_list._entry.70, section ".printk_index", align 4
@validate_list._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str, i32 556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: fail post-validate sync\0A\00", [35 x i8] zeroinitializer }, align 32
@validate_list._entry_ptr.75 = internal global ptr @validate_list._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: reloc bo index invalid\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nouveau_gem_pushbuf_reloc_apply\00", [32 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry_ptr = internal global ptr @nouveau_gem_pushbuf_reloc_apply._entry, section ".printk_index", align 4
@nouveau_gem_pushbuf_reloc_apply._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str, i32 668, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: reloc container bo index invalid\0A\00", [58 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry_ptr.81 = internal global ptr @nouveau_gem_pushbuf_reloc_apply._entry.79, section ".printk_index", align 4
@nouveau_gem_pushbuf_reloc_apply._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.78, ptr @.str, i32 676, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: reloc outside of bo\0A\00", [39 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry_ptr.84 = internal global ptr @nouveau_gem_pushbuf_reloc_apply._entry.82, section ".printk_index", align 4
@nouveau_gem_pushbuf_reloc_apply._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.78, ptr @.str, i32 685, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: failed kmap for reloc\0A\00", [37 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry_ptr.87 = internal global ptr @nouveau_gem_pushbuf_reloc_apply._entry.85, section ".printk_index", align 4
@nouveau_gem_pushbuf_reloc_apply._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.78, ptr @.str, i32 708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: reloc wait_idle failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@nouveau_gem_pushbuf_reloc_apply._entry_ptr.90 = internal global ptr @nouveau_gem_pushbuf_reloc_apply._entry.88, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966784]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 85, i32 6 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"nouveau_ttm_vm_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 69, i32 42 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"nouveau_gem_object_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 208, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 759, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 765, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 771, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 789, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 801, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 820, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 828, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 843, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 851, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 852, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 857, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 885, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 894, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 230, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 214, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 156, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 599, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 606, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 432, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 443, i32 4 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 455, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 476, i32 6 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 485, i32 5 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 507, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 333, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 173, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 542, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 549, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 556, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 191, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 658, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 668, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 676, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 685, i32 5 }
@___asan_gen_.316 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.320 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nouveau_gem.c\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.320, i32 708, i32 4 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @nouveau_gem_ioctl_pushbuf._entry, ptr @nouveau_gem_ioctl_pushbuf._entry.11, ptr @nouveau_gem_ioctl_pushbuf._entry.14, ptr @nouveau_gem_ioctl_pushbuf._entry.17, ptr @nouveau_gem_ioctl_pushbuf._entry.20, ptr @nouveau_gem_ioctl_pushbuf._entry.23, ptr @nouveau_gem_ioctl_pushbuf._entry.31, ptr @nouveau_gem_ioctl_pushbuf._entry.35, ptr @nouveau_gem_ioctl_pushbuf._entry.5, ptr @nouveau_gem_ioctl_pushbuf._entry.8, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.10, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.13, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.16, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.19, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.22, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.25, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.33, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.37, ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.7, ptr @nouveau_gem_pushbuf_reloc_apply._entry, ptr @nouveau_gem_pushbuf_reloc_apply._entry.79, ptr @nouveau_gem_pushbuf_reloc_apply._entry.82, ptr @nouveau_gem_pushbuf_reloc_apply._entry.85, ptr @nouveau_gem_pushbuf_reloc_apply._entry.88, ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr, ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.81, ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.84, ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.87, ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.90, ptr @nouveau_gem_pushbuf_validate._entry, ptr @nouveau_gem_pushbuf_validate._entry.44, ptr @nouveau_gem_pushbuf_validate._entry_ptr, ptr @nouveau_gem_pushbuf_validate._entry_ptr.46, ptr @validate_init._entry, ptr @validate_init._entry.49, ptr @validate_init._entry.52, ptr @validate_init._entry.55, ptr @validate_init._entry.58, ptr @validate_init._entry.61, ptr @validate_init._entry_ptr, ptr @validate_init._entry_ptr.51, ptr @validate_init._entry_ptr.54, ptr @validate_init._entry_ptr.57, ptr @validate_init._entry_ptr.60, ptr @validate_init._entry_ptr.63, ptr @validate_list._entry, ptr @validate_list._entry.70, ptr @validate_list._entry.73, ptr @validate_list._entry_ptr, ptr @validate_list._entry_ptr.72, ptr @validate_list._entry_ptr.75, ptr @.str, ptr @nouveau_ttm_vm_ops, ptr @nouveau_gem_object_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ttm_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_object_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_ioctl_pushbuf._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_validate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_list._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_list._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_reloc_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_reloc_apply._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_reloc_apply._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_reloc_apply._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_gem_pushbuf_reloc_apply._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_gem_object_del(ptr noundef %gem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 1
  %0 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdev, align 8
  %dev2 = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 8
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp5 = icmp ne i32 %call.i, -13
  %spec.select = and i1 %cmp, %cmp5
  br i1 %spec.select, label %do.end, label %if.end27, !prof !153

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 85, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

if.end27:                                         ; preds = %entry
  %import_attach = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 8
  %6 = ptrtoint ptr %import_attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %import_attach, align 4
  %tobool28.not = icmp eq ptr %7, null
  br i1 %tobool28.not, label %if.end27.if.end31_crit_edge, label %if.then29

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %sg = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 14
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sg, align 4
  tail call void @drm_prime_gem_destroy(ptr noundef %gem, ptr noundef %9) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end27.if.end31_crit_edge
  tail call void @ttm_bo_put(ptr noundef %gem) #11
  %call.i47 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i47, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %call.i48 = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 13) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_prime_gem_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_object_open(ptr noundef %gem, ptr noundef readonly %file_priv) #0 align 64 {
entry:
  %vma = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %dev3 = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 6
  %8 = ptrtoint ptr %svm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svm, align 8
  %tobool.not = icmp eq ptr %9, null
  %vmm7 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 5
  %cond = select i1 %tobool.not, ptr %vmm7, ptr %svm
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma) #11
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %vma, align 4, !annotation !154
  %oclass = getelementptr inbounds %struct.nouveau_vmm, ptr %cond, i32 0, i32 1, i32 0, i32 4
  %11 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463155, i32 %12)
  %cmp = icmp ult i32 %12, -2147463155
  br i1 %cmp, label %nouveau_cli.exit.cleanup_crit_edge, label %if.end

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nouveau_cli.exit
  %resv32.i = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 9
  %13 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resv32.i, align 8
  %call.i1.i = tail call i32 @ww_mutex_lock(ptr noundef %14, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i1.i)
  %cmp.i = icmp eq i32 %call.i1.i, -4
  %.ret.0.i = select i1 %cmp.i, i32 -512, i32 %call.i1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.ret.0.i)
  %tobool11.not = icmp eq i32 %.ret.0.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp15 = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp16.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp15, %cmp16.not
  br i1 %or.cond, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call.i42 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #11
  br label %out

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %call20 = call i32 @nouveau_vma_new(ptr noundef %gem, ptr noundef %cond, ptr noundef nonnull %vma) #11
  %call.i43 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i43, ptr %last_busy.i, align 8
  %call.i44 = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #11
  br label %out

out:                                              ; preds = %if.end19, %if.then17
  %ret.0 = phi i32 [ %call.i, %if.then17 ], [ %call20, %if.end19 ]
  %16 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bdev, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %17, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #11
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 6
  %18 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %resource.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %gem, ptr noundef %19, ptr noundef null) #11
  %20 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bdev, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %21, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #11
  %22 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %resv32.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %23) #11
  call void @ww_mutex_unlock(ptr noundef %23) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %nouveau_cli.exit.cleanup_crit_edge ], [ %.ret.0.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vma_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_gem_object_close(ptr noundef %gem, ptr noundef readonly %file_priv) #0 align 64 {
entry:
  %vma.addr.i1.i = alloca ptr, align 4
  %vma.addr.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  %bdev = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 1
  %2 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bdev, align 8
  %dev3 = getelementptr i8, ptr %3, i32 -128
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 6
  %8 = ptrtoint ptr %svm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %svm, align 8
  %tobool.not = icmp eq ptr %9, null
  %vmm7 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 5
  %cond = select i1 %tobool.not, ptr %vmm7, ptr %svm
  %oclass = getelementptr inbounds %struct.nouveau_vmm, ptr %cond, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463155, i32 %11)
  %cmp = icmp ult i32 %11, -2147463155
  br i1 %cmp, label %nouveau_cli.exit.cleanup_crit_edge, label %if.end

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nouveau_cli.exit
  %resv32.i = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 9
  %12 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %resv32.i, align 8
  %call.i1.i = tail call i32 @ww_mutex_lock(ptr noundef %13, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool11.not74 = icmp eq i32 %call.i1.i, 0
  br i1 %tobool11.not74, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call ptr @nouveau_vma_find(ptr noundef %gem, ptr noundef %cond) #11
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.if.end48_crit_edge, label %if.then16

if.end13.if.end48_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then16:                                        ; preds = %if.end13
  %refs = getelementptr inbounds %struct.nouveau_vma, ptr %call14, i32 0, i32 1
  %14 = ptrtoint ptr %refs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refs, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %refs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp17 = icmp eq i32 %dec, 0
  br i1 %cmp17, label %if.then18, label %if.then16.if.end48_crit_edge

if.then16.if.end48_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then18:                                        ; preds = %if.then16
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp21 = icmp ne i32 %call.i, -13
  %spec.select = and i1 %cmp20, %cmp21
  br i1 %spec.select, label %do.end, label %if.then44.critedge, !prof !153

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 198, i32 noundef 9, ptr noundef null) #11
  br label %if.end45

if.then44.critedge:                               ; preds = %if.then18
  %fence1.i = getelementptr inbounds %struct.nouveau_vma, ptr %call14, i32 0, i32 5
  %16 = ptrtoint ptr %fence1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fence1.i, align 4
  %tobool.not.i70 = icmp eq ptr %17, null
  %head.i = getelementptr inbounds %struct.nouveau_vma, ptr %call14, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %head.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then44.critedge.list_del_init.exit.i_crit_edge

if.then44.critedge.list_del_init.exit.i_crit_edge: ; preds = %if.then44.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then44.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %call14, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then44.critedge.list_del_init.exit.i_crit_edge
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %head.i, ptr %head.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.nouveau_vma, ptr %call14, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head.i, ptr %prev.i3.i.i, align 4
  br i1 %tobool.not.i70, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma.addr.i.i) #11
  %26 = ptrtoint ptr %vma.addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call14, ptr %vma.addr.i.i, align 4
  tail call void @nouveau_fence_unref(ptr noundef %fence1.i) #11
  call void @nouveau_vma_del(ptr noundef nonnull %vma.addr.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma.addr.i.i) #11
  br label %nouveau_gem_object_unmap.exit

if.end.i:                                         ; preds = %list_del_init.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3264, i32 noundef 36) #14
  %tobool4.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end28.i

if.then5.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @dma_fence_wait_timeout(ptr noundef nonnull %17, i1 noundef zeroext false, i32 noundef 200) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call6.i)
  %cmp.i71 = icmp slt i32 %call6.i, 1
  br i1 %cmp.i71, label %do.end.i, label %if.then5.i.if.end21.i_crit_edge, !prof !153

if.then5.i.if.end21.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

do.end.i:                                         ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 166, i32 noundef 9, ptr noundef null) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i, %if.then5.i.if.end21.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma.addr.i1.i) #11
  %28 = ptrtoint ptr %vma.addr.i1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call14, ptr %vma.addr.i1.i, align 4
  tail call void @nouveau_fence_unref(ptr noundef %fence1.i) #11
  call void @nouveau_vma_del(ptr noundef nonnull %vma.addr.i1.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma.addr.i1.i) #11
  br label %nouveau_gem_object_unmap.exit

if.end28.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @nouveau_gem_object_delete_work, ptr %call7.i.i, align 8
  %vma30.i = getelementptr inbounds %struct.nouveau_gem_object_unmap, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %vma30.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call14, ptr %vma30.i, align 8
  %31 = ptrtoint ptr %call14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call14, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  tail call void @nouveau_cli_work_queue(ptr noundef %34, ptr noundef nonnull %17, ptr noundef nonnull %call7.i.i) #11
  br label %nouveau_gem_object_unmap.exit

nouveau_gem_object_unmap.exit:                    ; preds = %if.end28.i, %if.end21.i, %if.then.i
  %call.i72 = call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %35 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store volatile i64 %call.i72, ptr %last_busy.i, align 8
  br label %if.end45

if.end45:                                         ; preds = %nouveau_gem_object_unmap.exit, %do.end
  %call.i73 = call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #11
  br label %if.end48

if.end48:                                         ; preds = %if.end45, %if.then16.if.end48_crit_edge, %if.end13.if.end48_crit_edge
  %36 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bdev, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %37, i32 0, i32 6
  call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #11
  %resource.i.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 6
  %38 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %resource.i.i, align 4
  call void @ttm_bo_move_to_lru_tail(ptr noundef %gem, ptr noundef %39, ptr noundef null) #11
  %40 = ptrtoint ptr %bdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bdev, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %41, i32 0, i32 6
  call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #11
  %42 = ptrtoint ptr %resv32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resv32.i, align 8
  call void @dma_resv_reset_shared_max(ptr noundef %43) #11
  call void @ww_mutex_unlock(ptr noundef %43) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %if.end.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_vma_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_prime_pin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_gem_prime_unpin(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_gem_prime_get_sg_table(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_vmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_ttm_vunmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_new(ptr noundef %cli, i64 noundef %size, i32 noundef %align, i32 noundef %domain, i32 noundef %tile_mode, i32 noundef %tile_flags, ptr nocapture noundef writeonly %pnvbo) local_unnamed_addr #0 align 64 {
entry:
  %size.addr = alloca i64, align 8
  %align.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %size.addr to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %size, ptr %size.addr, align 8
  %1 = ptrtoint ptr %align.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %align, ptr %align.addr, align 4
  %drm1 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 1
  %2 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm1, align 8
  %and = and i32 %domain, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = zext i1 %tobool.not to i32
  %spec.select = or i32 %or, %domain
  %call = call ptr @nouveau_bo_alloc(ptr noundef %cli, ptr noundef nonnull %size.addr, ptr noundef nonnull %align.addr, i32 noundef %spec.select, i32 noundef %tile_mode, i32 noundef %tile_flags) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end5:                                          ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 11
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nouveau_gem_object_funcs, ptr %funcs, align 4
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %8 = ptrtoint ptr %size.addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size.addr, align 8
  %conv = trunc i64 %9 to i32
  %call8 = call i32 @drm_gem_object_init(ptr noundef %7, ptr noundef %call, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  call void @drm_gem_object_release(ptr noundef %call) #11
  call void @kfree(ptr noundef %call) #11
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  %10 = ptrtoint ptr %size.addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %size.addr, align 8
  %12 = ptrtoint ptr %align.addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %align.addr, align 4
  %call14 = call i32 @nouveau_bo_init(ptr noundef %call, i64 noundef %11, i32 noundef %13, i32 noundef %spec.select, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  %valid_domains = getelementptr inbounds %struct.nouveau_bo, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %valid_domains to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %valid_domains, align 8
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %16)
  %cmp = icmp ugt i8 %16, 5
  %spec.store.select = select i1 %cmp, i32 %and, i32 6
  %17 = ptrtoint ptr %valid_domains to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %valid_domains, align 8
  %18 = ptrtoint ptr %pnvbo to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %pnvbo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.then10, %if.then3
  %retval.0 = phi i32 [ %4, %if.then3 ], [ %call8, %if.then10 ], [ 0, %if.end17 ], [ %call14, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bo_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_init(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_new(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %nvbo = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nvbo) #11
  %2 = ptrtoint ptr %nvbo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %nvbo, align 4
  %size = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %size, align 8
  %align = getelementptr inbounds %struct.drm_nouveau_gem_new, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %align, align 4
  %domain = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %domain, align 4
  %tile_mode = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %tile_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tile_mode, align 8
  %tile_flags = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %data, i32 0, i32 6
  %11 = ptrtoint ptr %tile_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tile_flags, align 4
  %call4 = call i32 @nouveau_gem_new(ptr noundef %cond.i, i64 noundef %4, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %nvbo)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nouveau_cli.exit
  %13 = ptrtoint ptr %nvbo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nvbo, align 4
  %call6 = tail call i32 @drm_gem_handle_create(ptr noundef %file_priv, ptr noundef %14, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp eq i32 %call6, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %call11 = tail call fastcc i32 @nouveau_gem_info(ptr noundef %file_priv, ptr noundef %14, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then7.if.end18_crit_edge, label %if.then13

if.then7.if.end18_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 8
  %call16 = tail call i32 @drm_gem_handle_delete(ptr noundef %file_priv, i32 noundef %16) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %if.then7.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %ret.0 = phi i32 [ %call11, %if.then13 ], [ 0, %if.then7.if.end18_crit_edge ], [ %call6, %if.end.if.end18_crit_edge ]
  %tobool.not.i38 = icmp eq ptr %14, null
  br i1 %tobool.not.i38, label %if.end18.cleanup_crit_edge, label %if.then.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #11
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %nouveau_cli.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %nouveau_cli.exit.cleanup_crit_edge ], [ %ret.0, %if.end18.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nvbo) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_gem_info(ptr noundef readonly %file_priv, ptr noundef %gem, ptr nocapture noundef writeonly %rep) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %0 = ptrtoint ptr %driver_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_priv.i, align 4
  br label %nouveau_cli.exit

nouveau_cli.exit:                                 ; preds = %cond.true.i, %entry.nouveau_cli.exit_crit_edge
  %cond.i = phi ptr [ %1, %cond.true.i ], [ null, %entry.nouveau_cli.exit_crit_edge ]
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 6
  %2 = ptrtoint ptr %svm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %svm, align 8
  %tobool.not = icmp eq ptr %3, null
  %vmm4 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 5
  %cond = select i1 %tobool.not, ptr %vmm4, ptr %svm
  %valid_domains = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 2
  %4 = ptrtoint ptr %valid_domains to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %valid_domains, align 8
  %6 = tail call i32 @llvm.ctpop.i32(i32 %5) #11, !range !159
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %if.then, label %if.else

if.then:                                          ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #13
  %domain = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 1
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %domain, align 4
  br label %if.end11

if.else:                                          ; preds = %nouveau_cli.exit
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %gem, i32 0, i32 6
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %resource, align 4
  %mem_type = getelementptr inbounds %struct.ttm_resource, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %mem_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mem_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  %domain8 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 1
  br i1 %cmp, label %if.then7, label %if.else9

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %domain8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %domain8, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %domain8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %domain8, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7, %if.then
  %offset = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 13
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %offset, align 8
  %offset12 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 3
  %17 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %16, ptr %offset12, align 8
  %oclass = getelementptr inbounds %struct.nouveau_vmm, ptr %cond, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463156, i32 %19)
  %cmp14 = icmp ugt i32 %19, -2147463156
  br i1 %cmp14, label %if.then15, label %if.end11.if.end21_crit_edge

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then15:                                        ; preds = %if.end11
  %call16 = tail call ptr @nouveau_vma_find(ptr noundef %gem, ptr noundef %cond) #11
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %call16, i32 0, i32 3
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %addr, align 8
  %22 = ptrtoint ptr %offset12 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %offset12, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end11.if.end21_crit_edge
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 5
  %23 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size, align 8
  %conv = zext i32 %24 to i64
  %size23 = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 2
  %25 = ptrtoint ptr %size23 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv, ptr %size23, align 8
  %start.i = getelementptr inbounds %struct.drm_gem_object, ptr %gem, i32 0, i32 4, i32 1, i32 1
  %26 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %start.i, align 8
  %shl.i = shl i64 %27, 12
  %map_handle = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 4
  %28 = ptrtoint ptr %map_handle to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %shl.i, ptr %map_handle, align 8
  %mode = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 16
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  %tile_mode = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 5
  %31 = ptrtoint ptr %tile_mode to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tile_mode, align 8
  %contig = getelementptr inbounds %struct.nouveau_bo, ptr %gem, i32 0, i32 15
  %32 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load = load i32, ptr %contig, align 8
  %33 = lshr i32 %bf.load, 28
  %34 = and i32 %33, 8
  %35 = xor i32 %34, 8
  %tile_flags = getelementptr inbounds %struct.drm_nouveau_gem_info, ptr %rep, i32 0, i32 6
  %36 = ptrtoint ptr %tile_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tile_flags, align 4
  %family = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 3, i32 1, i32 4
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp30 = icmp ugt i8 %38, 6
  br i1 %cmp30, label %if.then32, label %if.else36

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %39)
  %bf.load33 = load i32, ptr %contig, align 8
  %40 = lshr i32 %bf.load33, 10
  %shl = and i32 %40, 65280
  %or = or i32 %shl, %35
  br label %cleanup.sink.split

if.else36:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %38)
  %cmp41 = icmp eq i8 %38, 6
  %41 = ptrtoint ptr %contig to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load45 = load i32, ptr %contig, align 8
  br i1 %cmp41, label %if.then43, label %if.else56

if.then43:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  %42 = lshr i32 %bf.load45, 10
  %shl48 = and i32 %42, 65280
  %43 = shl i32 %bf.load45, 1
  %shl52 = and i32 %43, 458752
  %or53 = or i32 %shl52, %35
  %or55 = or i32 %or53, %shl48
  br label %cleanup.sink.split

if.else56:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #13
  %bf.lshr58 = lshr i32 %bf.load45, 12
  %bf.clear59 = and i32 %bf.lshr58, 7
  %or61 = or i32 %bf.clear59, %35
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else56, %if.then43, %if.then32
  %or.sink = phi i32 [ %or, %if.then32 ], [ %or61, %if.else56 ], [ %or55, %if.then43 ]
  %44 = ptrtoint ptr %tile_flags to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.sink, ptr %tile_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then15.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_delete(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_pushbuf(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %gart_list.i.i = alloca %struct.list_head, align 4
  %vram_list.i.i = alloca %struct.list_head, align 4
  %both_list.i.i = alloca %struct.list_head, align 4
  %op = alloca %struct.validate_op, align 4
  %fence = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nouveau_abi16_get(ptr noundef %file_priv) #11
  %tobool.not.i = icmp eq ptr %file_priv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %op) #11
  %4 = call ptr @memset(ptr %op, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fence) #11
  %5 = ptrtoint ptr %fence to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %fence, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %nouveau_cli.exit.cleanup1119_crit_edge, label %if.end, !prof !153

nouveau_cli.exit.cleanup1119_crit_edge:           ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup1119

if.end:                                           ; preds = %nouveau_cli.exit
  %channels = getelementptr inbounds %struct.nouveau_abi16, ptr %call, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %temp.0.in = phi ptr [ %channels, %if.end ], [ %temp.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %temp.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %temp.0 = load ptr, ptr %temp.0.in, align 4
  %cmp.not = icmp eq ptr %temp.0, %channels
  br i1 %cmp.not, label %for.cond.if.then20_crit_edge, label %for.body

for.cond.if.then20_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

for.body:                                         ; preds = %for.cond
  %chan9 = getelementptr inbounds %struct.nouveau_abi16_chan, ptr %temp.0, i32 0, i32 1
  %7 = ptrtoint ptr %chan9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan9, align 4
  %chid = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %chid to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chid, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 8
  %cmp10 = icmp eq i32 %10, %12
  br i1 %cmp10, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.end:                                          ; preds = %for.body
  %tobool19.not = icmp eq ptr %8, null
  br i1 %tobool19.not, label %for.end.if.then20_crit_edge, label %if.end22

for.end.if.then20_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then20

if.then20:                                        ; preds = %for.end.if.then20_crit_edge, %for.cond.if.then20_crit_edge
  %call21 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef -2) #11
  br label %cleanup1119

if.end22:                                         ; preds = %for.end
  %killed = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %killed, i32 noundef 4) #11
  %13 = ptrtoint ptr %killed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %killed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool24.not = icmp eq i32 %14, 0
  br i1 %tobool24.not, label %if.end33, label %if.then31, !prof !157

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef -19) #11
  br label %cleanup1119

if.end33:                                         ; preds = %if.end22
  %vram_available = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 9
  %15 = ptrtoint ptr %vram_available to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %vram_available, align 8
  %and = and i64 %16, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool34.not = icmp eq i64 %and, 0
  %gem = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %gem to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %gem, align 8
  %19 = ptrtoint ptr %vram_available to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %vram_available, align 8
  %gart_available = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %gart_available to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %gart_available, align 8
  %gart_available38 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 10
  %22 = ptrtoint ptr %gart_available38 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %gart_available38, align 8
  %nr_push = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 4
  %23 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_push, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp39 = icmp eq i32 %24, 0
  br i1 %cmp39, label %if.end33.out_next_crit_edge, label %if.end47, !prof !153

if.end33.out_next_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_next

if.end47:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %24)
  %cmp49 = icmp ugt i32 %24, 512
  br i1 %cmp49, label %do.body, label %if.end65, !prof !153

do.body:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  %drm58 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %25 = ptrtoint ptr %drm58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drm58, align 8
  %dev59 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dev59 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev59, align 8
  %dev60 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev60, align 4
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.1, ptr noundef %name, i32 noundef %24, i32 noundef 512) #15
  %call64 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef -22) #11
  br label %cleanup1119

if.end65:                                         ; preds = %if.end47
  %nr_buffers = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 1
  %31 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %32)
  %cmp66 = icmp ugt i32 %32, 1024
  br i1 %cmp66, label %do.body74, label %if.end88, !prof !153

do.body74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  %drm79 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %33 = ptrtoint ptr %drm79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drm79, align 8
  %dev80 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev80, align 8
  %dev81 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %dev81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev81, align 4
  %name82 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.6, ptr noundef %name82, i32 noundef %32, i32 noundef 1024) #15
  %call87 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef -22) #11
  br label %cleanup1119

if.end88:                                         ; preds = %if.end65
  %nr_relocs = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 3
  %39 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_relocs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %40)
  %cmp89 = icmp ugt i32 %40, 1024
  br i1 %cmp89, label %do.body97, label %if.end111, !prof !153

do.body97:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %drm102 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %41 = ptrtoint ptr %drm102 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %drm102, align 8
  %dev103 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dev103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev103, align 8
  %dev104 = getelementptr inbounds %struct.drm_device, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %dev104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev104, align 4
  %name105 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.9, ptr noundef %name105, i32 noundef %40, i32 noundef 1024) #15
  %call110 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef -22) #11
  br label %cleanup1119

if.end111:                                        ; preds = %if.end88
  %push112 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 6
  %47 = ptrtoint ptr %push112 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %push112, align 8
  %call114 = tail call fastcc ptr @u_memcpya(i64 noundef %48, i32 noundef %24, i32 noundef 24)
  %cmp.i = icmp ugt ptr %call114, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then116, label %if.end119

if.then116:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %call114 to i32
  %call118 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef %49) #11
  br label %cleanup1119

if.end119:                                        ; preds = %if.end111
  %buffers = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 2
  %50 = ptrtoint ptr %buffers to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %buffers, align 8
  %52 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_buffers, align 4
  %call121 = tail call fastcc ptr @u_memcpya(i64 noundef %51, i32 noundef %53, i32 noundef 40)
  %cmp.i1400 = icmp ugt ptr %call121, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1400, label %if.then123, label %for.cond127.preheader

for.cond127.preheader:                            ; preds = %if.end119
  %54 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_push, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp1291512.not = icmp eq i32 %55, 0
  br i1 %cmp1291512.not, label %for.cond127.preheader.revalidate.preheader_crit_edge, label %for.body130.lr.ph

for.cond127.preheader.revalidate.preheader_crit_edge: ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %revalidate.preheader

for.body130.lr.ph:                                ; preds = %for.cond127.preheader
  %56 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr_buffers, align 4
  br label %for.body130

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kvfree(ptr noundef %call114) #11
  %58 = ptrtoint ptr %call121 to i32
  %call125 = tail call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef %58) #11
  br label %cleanup1119

revalidate.preheader:                             ; preds = %for.inc147.revalidate.preheader_crit_edge, %for.cond127.preheader.revalidate.preheader_crit_edge
  %driver_priv.i.i = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 19
  %prev.i76.i = getelementptr inbounds %struct.list_head, ptr %op, i32 0, i32 1
  %59 = getelementptr inbounds %struct.list_head, ptr %gart_list.i.i, i32 0, i32 1
  %60 = getelementptr inbounds %struct.list_head, ptr %vram_list.i.i, i32 0, i32 1
  %61 = getelementptr inbounds %struct.list_head, ptr %both_list.i.i, i32 0, i32 1
  %ticket.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1
  %stamp3.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 1
  %acquired.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 2
  %wounded.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 3
  %is_wait_die4.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 4
  %ww_class5.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 6
  %done_acquire.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 5
  %contending_lock.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 7
  %dep_map.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 8
  %deadlock_inject_interval.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 9
  %deadlock_inject_countdown.i.i.i = getelementptr inbounds %struct.validate_op, ptr %op, i32 0, i32 1, i32 10
  %vmm.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 3
  %drm1.i.i = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 2
  %relocs = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 5
  br label %revalidate

for.body130:                                      ; preds = %for.inc147.for.body130_crit_edge, %for.body130.lr.ph
  %i.01513 = phi i32 [ 0, %for.body130.lr.ph ], [ %inc, %for.inc147.for.body130_crit_edge ]
  %arrayidx = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.01513
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %57)
  %cmp132.not = icmp ult i32 %63, %57
  br i1 %cmp132.not, label %for.inc147, label %out_prevalid.thread

out_prevalid.thread:                              ; preds = %for.body130
  call void @__sanitizer_cov_trace_pc() #13
  %drm139 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %64 = ptrtoint ptr %drm139 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %drm139, align 8
  %dev140 = getelementptr inbounds %struct.nouveau_drm, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev140, align 8
  %dev141 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev141, align 4
  %name142 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.12, ptr noundef %name142, i32 noundef %i.01513) #15
  br label %if.then1085

for.inc147:                                       ; preds = %for.body130
  %inc = add nuw i32 %i.01513, 1
  %exitcond.not = icmp eq i32 %inc, %55
  br i1 %exitcond.not, label %for.inc147.revalidate.preheader_crit_edge, label %for.inc147.for.body130_crit_edge

for.inc147.for.body130_crit_edge:                 ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body130

for.inc147.revalidate.preheader_crit_edge:        ; preds = %for.inc147
  call void @__sanitizer_cov_trace_pc() #13
  br label %revalidate.preheader

revalidate:                                       ; preds = %if.then172.revalidate_crit_edge, %revalidate.preheader
  %do_reloc.0 = phi i8 [ %do_reloc.114401469, %if.then172.revalidate_crit_edge ], [ 0, %revalidate.preheader ]
  %reloc.0 = phi ptr [ %call174, %if.then172.revalidate_crit_edge ], [ null, %revalidate.preheader ]
  %70 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_buffers, align 4
  br i1 %tobool.not.i, label %nouveau_cli.exit.i, label %nouveau_cli.exit.thread.i

nouveau_cli.exit.i:                               ; preds = %revalidate
  %72 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %op, ptr %op, align 4
  %73 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %op, ptr %prev.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp.i1401 = icmp eq i32 %71, 0
  br i1 %cmp.i1401, label %nouveau_cli.exit.i.if.end168_crit_edge, label %nouveau_cli.exit.i.nouveau_cli.exit.i.i_crit_edge

nouveau_cli.exit.i.nouveau_cli.exit.i.i_crit_edge: ; preds = %nouveau_cli.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit.i.i

nouveau_cli.exit.i.if.end168_crit_edge:           ; preds = %nouveau_cli.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

nouveau_cli.exit.thread.i:                        ; preds = %revalidate
  %74 = ptrtoint ptr %driver_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_priv.i.i, align 4
  %76 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %op, ptr %op, align 4
  %77 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %op, ptr %prev.i76.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp77.i = icmp eq i32 %71, 0
  br i1 %cmp77.i, label %nouveau_cli.exit.thread.i.if.end168_crit_edge, label %nouveau_cli.exit.thread.i.nouveau_cli.exit.i.i_crit_edge

nouveau_cli.exit.thread.i.nouveau_cli.exit.i.i_crit_edge: ; preds = %nouveau_cli.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nouveau_cli.exit.i.i

nouveau_cli.exit.thread.i.if.end168_crit_edge:    ; preds = %nouveau_cli.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

nouveau_cli.exit.i.i:                             ; preds = %nouveau_cli.exit.thread.i.nouveau_cli.exit.i.i_crit_edge, %nouveau_cli.exit.i.nouveau_cli.exit.i.i_crit_edge
  %cond.i7886.i = phi ptr [ null, %nouveau_cli.exit.i.nouveau_cli.exit.i.i_crit_edge ], [ %75, %nouveau_cli.exit.thread.i.nouveau_cli.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %gart_list.i.i) #11
  %78 = ptrtoint ptr %gart_list.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %gart_list.i.i, ptr %gart_list.i.i, align 4
  %79 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %gart_list.i.i, ptr %59, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vram_list.i.i) #11
  %80 = ptrtoint ptr %vram_list.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %vram_list.i.i, ptr %vram_list.i.i, align 4
  %81 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %vram_list.i.i, ptr %60, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %both_list.i.i) #11
  %82 = ptrtoint ptr %both_list.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %both_list.i.i, ptr %both_list.i.i, align 4
  %83 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %both_list.i.i, ptr %61, align 4
  %84 = call i32 @llvm.read_register.i32(metadata !143) #11
  %and.i.i.i.i = and i32 %84, -16384
  %85 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %task.i.i.i, align 8
  %88 = ptrtoint ptr %ticket.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %ticket.i.i, align 4
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #11
  %89 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #11, !srcloc !160
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %89, 0
  %90 = ptrtoint ptr %stamp3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %asmresult.i.i.i.i.i.i.i, ptr %stamp3.i.i.i, align 4
  %91 = ptrtoint ptr %acquired.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %acquired.i.i.i, align 4
  %92 = ptrtoint ptr %wounded.i.i.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %wounded.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %93 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv.i.i.i = trunc i32 %93 to i16
  %94 = ptrtoint ptr %is_wait_die4.i.i.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv.i.i.i, ptr %is_wait_die4.i.i.i, align 2
  %95 = ptrtoint ptr %ww_class5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @reservation_ww_class, ptr %ww_class5.i.i.i, align 4
  %96 = ptrtoint ptr %done_acquire.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %done_acquire.i.i.i, align 4
  %97 = ptrtoint ptr %contending_lock.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %contending_lock.i.i.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef %ticket.i.i, i32 noundef 64) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef %98, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %99 = call ptr @llvm.returnaddress(i32 0) #11
  %100 = ptrtoint ptr %99 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %100) #11
  %101 = ptrtoint ptr %deadlock_inject_interval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %deadlock_inject_interval.i.i.i, align 4
  %102 = ptrtoint ptr %stamp3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %stamp3.i.i.i, align 4
  %and.i.i.i = and i32 %103, 15
  %104 = ptrtoint ptr %deadlock_inject_countdown.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %and.i.i.i, ptr %deadlock_inject_countdown.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp9338.i.i = icmp sgt i32 %71, 0
  br i1 %cmp9338.i.i, label %nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge, label %nouveau_cli.exit.i.i.for.end.i.i_crit_edge

nouveau_cli.exit.i.i.for.end.i.i_crit_edge:       ; preds = %nouveau_cli.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %nouveau_cli.exit.i.i
  br label %for.cond.preheader.i.i

retry.loopexit.i.i:                               ; preds = %if.end152.i.i
  %inc.i.i = add nuw nsw i32 %inc347.i.i, 1
  %exitcond371.i.i = icmp eq i32 %inc.i.i, 100001
  br i1 %exitcond371.i.i, label %validate_init.exit.thread.i, label %retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge

retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %retry.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge, %nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge
  %inc347.i.i = phi i32 [ %inc.i.i, %retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge ], [ 1, %nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge ]
  %ret.0346.i.i = phi i32 [ 0, %retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge ], [ -22, %nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge ]
  %res_bo.0345.i.i = phi ptr [ %call10.i.i, %retry.loopexit.i.i.for.cond.preheader.i.i_crit_edge ], [ null, %nouveau_cli.exit.i.i.for.cond.preheader.i.i_crit_edge ]
  br label %for.body.i.i

validate_init.exit.thread.i:                      ; preds = %retry.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %105 = ptrtoint ptr %drm.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %drm.i.i, align 8
  %dev.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev.i.i, align 8
  %dev6.i.i = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 2
  %109 = ptrtoint ptr %dev6.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev6.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %110, ptr noundef nonnull @.str.47, ptr noundef %name.i.i, ptr noundef nonnull @.str.48) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %both_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vram_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gart_list.i.i) #11
  br label %do.body.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %ret.1342.i.i = phi i32 [ %ret.6.ph318.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %ret.0346.i.i, %for.cond.preheader.i.i ]
  %i.0340.i.i = phi i32 [ %inc162.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i ]
  %res_bo.1339.i.i = phi ptr [ %res_bo.4.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %res_bo.0345.i.i, %for.cond.preheader.i.i ]
  %arrayidx.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %i.0340.i.i
  %handle.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %i.0340.i.i, i32 1
  %111 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %handle.i.i, align 8
  %call10.i.i = call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %112) #11
  %tobool.not.i61.i = icmp eq ptr %call10.i.i, null
  br i1 %tobool.not.i61.i, label %do.body12.i.i, label %if.end25.i.i

do.body12.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm17.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %113 = ptrtoint ptr %drm17.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %drm17.i.i, align 8
  %dev18.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %dev18.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev18.i.i, align 8
  %dev19.i.i = getelementptr inbounds %struct.drm_device, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %dev19.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev19.i.i, align 4
  %name20.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  %119 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %handle.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.50, ptr noundef %name20.i.i, i32 noundef %120) #15
  br label %for.end.i.i

if.end25.i.i:                                     ; preds = %for.body.i.i
  %cmp27.i.i = icmp eq ptr %call10.i.i, %res_bo.1339.i.i
  br i1 %cmp27.i.i, label %if.then.i.i.i, label %if.end29.i.i

if.then.i.i.i:                                    ; preds = %if.end25.i.i
  %call.i.i.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %res_bo.1339.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %res_bo.1339.i.i, i32 1, i32 3, i32 1) #11
  %121 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %res_bo.1339.i.i, ptr nonnull %res_bo.1339.i.i, i32 1, ptr nonnull elementtype(i32) %res_bo.1339.i.i) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %121, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i

if.end5.i.i.i.i.i.i.i.i:                          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.i.i.for.inc.i.i_crit_edge, label %if.then10.i.i.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.i.i.for.inc.i.i_crit_edge:    ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then10.i.i.i.i.i.i.i.i:                        ; preds = %if.end5.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %res_bo.1339.i.i, i32 noundef 3) #11
  br label %for.inc.i.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  call void @drm_gem_object_free(ptr noundef nonnull %res_bo.1339.i.i) #11
  br label %for.inc.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  %reserved_by.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 9
  %122 = ptrtoint ptr %reserved_by.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %reserved_by.i.i, align 8
  %tobool30.not.i.i = icmp ne ptr %123, null
  %cmp32.i.i = icmp eq ptr %123, %file_priv
  %or.cond.i.i = and i1 %tobool30.not.i.i, %cmp32.i.i
  br i1 %or.cond.i.i, label %if.then.i251.i.i, label %if.end47.i.i

if.then.i251.i.i:                                 ; preds = %if.end29.i.i
  %drm39.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %124 = ptrtoint ptr %drm39.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %drm39.i.i, align 8
  %dev40.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %dev40.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev40.i.i, align 8
  %dev41.i.i = getelementptr inbounds %struct.drm_device, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %dev41.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev41.i.i, align 4
  %name42.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  %130 = ptrtoint ptr %handle.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %handle.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.53, ptr noundef %name42.i.i, i32 noundef %131) #15
  %call.i.i.i.i.i.i.i.i248.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call10.i.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  call void @llvm.prefetch.p0(ptr nonnull %call10.i.i, i32 1, i32 3, i32 1) #11
  %132 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call10.i.i, ptr nonnull %call10.i.i, i32 1, ptr nonnull elementtype(i32) %call10.i.i) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i249.i.i = extractvalue { i32, i32, i32 } %132, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i249.i.i)
  %cmp.i.i.i.i.i.i250.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i249.i.i, 1
  br i1 %cmp.i.i.i.i.i.i250.i.i, label %if.then.i.i.i255.i.i, label %if.end5.i.i.i.i.i.i253.i.i

if.end5.i.i.i.i.i.i253.i.i:                       ; preds = %if.then.i251.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i249.i.i)
  %.not.i.i.i.i.i.i252.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i249.i.i, 0
  br i1 %.not.i.i.i.i.i.i252.i.i, label %if.end5.i.i.i.i.i.i253.i.i.for.end.i.i_crit_edge, label %if.then10.i.i.i.i.i.i254.i.i, !prof !157

if.end5.i.i.i.i.i.i253.i.i.for.end.i.i_crit_edge: ; preds = %if.end5.i.i.i.i.i.i253.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.then10.i.i.i.i.i.i254.i.i:                     ; preds = %if.end5.i.i.i.i.i.i253.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %call10.i.i, i32 noundef 3) #11
  br label %for.end.i.i

if.then.i.i.i255.i.i:                             ; preds = %if.then.i251.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  call void @drm_gem_object_free(ptr noundef nonnull %call10.i.i) #11
  br label %for.end.i.i

if.end47.i.i:                                     ; preds = %if.end29.i.i
  %resv32.i.i.i = getelementptr inbounds %struct.drm_gem_object, ptr %call10.i.i, i32 0, i32 9
  %133 = ptrtoint ptr %resv32.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %resv32.i.i.i, align 8
  %call.i.i.i.i = call i32 @ww_mutex_lock_interruptible(ptr noundef %134, ptr noundef %ticket.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %call.i.i.i.i, -4
  %.ret.0.i.i.i = select i1 %cmp.i.i.i, i32 -512, i32 %call.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.ret.0.i.i.i)
  %tobool50.not.i.i = icmp eq i32 %.ret.0.i.i.i, 0
  br i1 %tobool50.not.i.i, label %if.end47.i.i.if.end89.i.i_crit_edge, label %if.then51.i.i

if.end47.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i.i

if.then51.i.i:                                    ; preds = %if.end47.i.i
  %135 = ptrtoint ptr %vram_list.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile ptr, ptr %vram_list.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %136, %vram_list.i.i
  br i1 %cmp.i.not.i.i.i, label %if.then51.i.i.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i257.i.i

if.then51.i.i.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i.i

if.then.i257.i.i:                                 ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %137 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %prev.i76.i, align 4
  %139 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %60, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  %141 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %138, ptr %prev3.i.i.i.i, align 4
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %136, ptr %138, align 4
  %143 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %op, ptr %140, align 4
  store ptr %140, ptr %prev.i76.i, align 4
  %144 = ptrtoint ptr %vram_list.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %vram_list.i.i, ptr %vram_list.i.i, align 4
  store ptr %vram_list.i.i, ptr %60, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i257.i.i, %if.then51.i.i.list_splice_tail_init.exit.i.i_crit_edge
  %145 = ptrtoint ptr %gart_list.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile ptr, ptr %gart_list.i.i, align 4
  %cmp.i.not.i258.i.i = icmp eq ptr %146, %gart_list.i.i
  br i1 %cmp.i.not.i258.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit263.i.i_crit_edge, label %if.then.i262.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit263.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit263.i.i

if.then.i262.i.i:                                 ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %147 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %prev.i76.i, align 4
  %149 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %59, align 4
  %prev3.i.i261.i.i = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %151 = ptrtoint ptr %prev3.i.i261.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %148, ptr %prev3.i.i261.i.i, align 4
  %152 = ptrtoint ptr %148 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %146, ptr %148, align 4
  %153 = ptrtoint ptr %150 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %op, ptr %150, align 4
  store ptr %150, ptr %prev.i76.i, align 4
  %154 = ptrtoint ptr %gart_list.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store volatile ptr %gart_list.i.i, ptr %gart_list.i.i, align 4
  store ptr %gart_list.i.i, ptr %59, align 4
  br label %list_splice_tail_init.exit263.i.i

list_splice_tail_init.exit263.i.i:                ; preds = %if.then.i262.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit263.i.i_crit_edge
  %155 = ptrtoint ptr %both_list.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load volatile ptr, ptr %both_list.i.i, align 4
  %cmp.i.not.i264.i.i = icmp eq ptr %156, %both_list.i.i
  br i1 %cmp.i.not.i264.i.i, label %list_splice_tail_init.exit263.i.i.list_splice_tail_init.exit269.i.i_crit_edge, label %if.then.i268.i.i

list_splice_tail_init.exit263.i.i.list_splice_tail_init.exit269.i.i_crit_edge: ; preds = %list_splice_tail_init.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit269.i.i

if.then.i268.i.i:                                 ; preds = %list_splice_tail_init.exit263.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %157 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %prev.i76.i, align 4
  %159 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %61, align 4
  %prev3.i.i267.i.i = getelementptr inbounds %struct.list_head, ptr %156, i32 0, i32 1
  %161 = ptrtoint ptr %prev3.i.i267.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev3.i.i267.i.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %156, ptr %158, align 4
  %163 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %op, ptr %160, align 4
  store ptr %160, ptr %prev.i76.i, align 4
  %164 = ptrtoint ptr %both_list.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %both_list.i.i, ptr %both_list.i.i, align 4
  store ptr %both_list.i.i, ptr %61, align 4
  br label %list_splice_tail_init.exit269.i.i

list_splice_tail_init.exit269.i.i:                ; preds = %if.then.i268.i.i, %list_splice_tail_init.exit263.i.i.list_splice_tail_init.exit269.i.i_crit_edge
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %op, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %.ret.0.i.i.i)
  %cmp54.i.i = icmp eq i32 %.ret.0.i.i.i, -35
  br i1 %cmp54.i.i, label %if.then57.i.i, label %list_splice_tail_init.exit269.i.i.if.end64.i.i_crit_edge, !prof !153

list_splice_tail_init.exit269.i.i.if.end64.i.i_crit_edge: ; preds = %list_splice_tail_init.exit269.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64.i.i

if.then57.i.i:                                    ; preds = %list_splice_tail_init.exit269.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call60.i.i = call fastcc i32 @ttm_bo_reserve_slowpath(ptr noundef nonnull %call10.i.i, ptr noundef %ticket.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  %spec.select.i.i = select i1 %tobool61.not.i.i, ptr %call10.i.i, ptr %res_bo.1339.i.i
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %if.then57.i.i, %list_splice_tail_init.exit269.i.i.if.end64.i.i_crit_edge
  %res_bo.2.i.i = phi ptr [ %res_bo.1339.i.i, %list_splice_tail_init.exit269.i.i.if.end64.i.i_crit_edge ], [ %spec.select.i.i, %if.then57.i.i ]
  %ret.2.i.i = phi i32 [ %.ret.0.i.i.i, %list_splice_tail_init.exit269.i.i.if.end64.i.i_crit_edge ], [ %call60.i.i, %if.then57.i.i ]
  %165 = zext i32 %ret.2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %165, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ret.2.i.i, label %do.body75.i.i [
    i32 0, label %if.end64.i.i.if.end89.i.i_crit_edge
    i32 -512, label %if.end64.i.i.for.end.i.i_crit_edge
  ], !prof !161

if.end64.i.i.for.end.i.i_crit_edge:               ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end64.i.i.if.end89.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89.i.i

do.body75.i.i:                                    ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm80.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %166 = ptrtoint ptr %drm80.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %drm80.i.i, align 8
  %dev81.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 3
  %168 = ptrtoint ptr %dev81.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev81.i.i, align 8
  %dev82.i.i = getelementptr inbounds %struct.drm_device, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %dev82.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev82.i.i, align 4
  %name83.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %171, ptr noundef nonnull @.str.56, ptr noundef %name83.i.i) #15
  br label %for.end.i.i

if.end89.i.i:                                     ; preds = %if.end64.i.i.if.end89.i.i_crit_edge, %if.end47.i.i.if.end89.i.i_crit_edge
  %res_bo.3.i.i = phi ptr [ %res_bo.2.i.i, %if.end64.i.i.if.end89.i.i_crit_edge ], [ %res_bo.1339.i.i, %if.end47.i.i.if.end89.i.i_crit_edge ]
  %172 = ptrtoint ptr %vmm.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %vmm.i.i, align 8
  %oclass.i.i = getelementptr inbounds %struct.nouveau_vmm, ptr %173, i32 0, i32 1, i32 0, i32 4
  %174 = ptrtoint ptr %oclass.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %oclass.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463156, i32 %175)
  %cmp91.i.i = icmp ugt i32 %175, -2147463156
  br i1 %cmp91.i.i, label %if.then92.i.i, label %if.end89.i.i.if.end114.i.i_crit_edge

if.end89.i.i.if.end114.i.i_crit_edge:             ; preds = %if.end89.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i.i

if.then92.i.i:                                    ; preds = %if.end89.i.i
  %call95.i.i = call ptr @nouveau_vma_find(ptr noundef nonnull %call10.i.i, ptr noundef %173) #11
  %tobool96.not.i.i = icmp eq ptr %call95.i.i, null
  br i1 %tobool96.not.i.i, label %cleanup.thread.i.i, label %if.then92.i.i.if.end114.i.i_crit_edge

if.then92.i.i.if.end114.i.i_crit_edge:            ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i.i

cleanup.thread.i.i:                               ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm103.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %176 = ptrtoint ptr %drm103.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %drm103.i.i, align 8
  %dev104.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %dev104.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %dev104.i.i, align 8
  %dev105.i.i = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 2
  %180 = ptrtoint ptr %dev105.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev105.i.i, align 4
  %name106.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.59, ptr noundef %name106.i.i) #15
  br label %for.end.i.i

if.end114.i.i:                                    ; preds = %if.then92.i.i.if.end114.i.i_crit_edge, %if.end89.i.i.if.end114.i.i_crit_edge
  %storemerge.in.in.i.i = phi ptr [ %call95.i.i, %if.then92.i.i.if.end114.i.i_crit_edge ], [ %call10.i.i, %if.end89.i.i.if.end114.i.i_crit_edge ]
  %storemerge.in.i.i = ptrtoint ptr %storemerge.in.in.i.i to i32
  %storemerge.i.i = zext i32 %storemerge.in.i.i to i64
  %182 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %storemerge.i.i, ptr %arrayidx.i.i, align 8
  %183 = ptrtoint ptr %reserved_by.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %file_priv, ptr %reserved_by.i.i, align 8
  %pbbo_index.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 11
  %184 = ptrtoint ptr %pbbo_index.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %i.0340.i.i, ptr %pbbo_index.i.i, align 4
  %valid_domains.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %i.0340.i.i, i32 4
  %185 = ptrtoint ptr %valid_domains.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %valid_domains.i.i, align 4
  %and119.i.i = and i32 %186, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i.i)
  %tobool120.not.i.i = icmp eq i32 %and119.i.i, 0
  %187 = and i32 %186, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %187)
  %.not.i.i = icmp eq i32 %187, 6
  br i1 %.not.i.i, label %if.then121.i.i, label %if.else123.i.i

if.then121.i.i:                                   ; preds = %if.end114.i.i
  %entry122.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10
  %188 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %61, align 4
  %call.i.i271.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry122.i.i, ptr noundef %189, ptr noundef nonnull %both_list.i.i) #11
  br i1 %call.i.i271.i.i, label %if.end.i.i.i.i, label %if.then121.i.i.if.end152.i.i_crit_edge

if.then121.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

if.end.i.i.i.i:                                   ; preds = %if.then121.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %190 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %entry122.i.i, ptr %61, align 4
  %191 = ptrtoint ptr %entry122.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %both_list.i.i, ptr %entry122.i.i, align 4
  %prev3.i.i272.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10, i32 1
  %192 = ptrtoint ptr %prev3.i.i272.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %189, ptr %prev3.i.i272.i.i, align 4
  %193 = ptrtoint ptr %189 to i32
  call void @__asan_store4_noabort(i32 %193)
  store volatile ptr %entry122.i.i, ptr %189, align 4
  br label %if.end152.i.i

if.else123.i.i:                                   ; preds = %if.end114.i.i
  %and.i.i = and i32 %186, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool116.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool116.not.i.i, label %if.else129.i.i, label %if.then127.i.i

if.then127.i.i:                                   ; preds = %if.else123.i.i
  %entry128.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10
  %194 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %60, align 4
  %call.i.i274.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry128.i.i, ptr noundef %195, ptr noundef nonnull %vram_list.i.i) #11
  br i1 %call.i.i274.i.i, label %if.end.i.i276.i.i, label %if.then127.i.i.if.end152.i.i_crit_edge

if.then127.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then127.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

if.end.i.i276.i.i:                                ; preds = %if.then127.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %196 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %entry128.i.i, ptr %60, align 4
  %197 = ptrtoint ptr %entry128.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %vram_list.i.i, ptr %entry128.i.i, align 4
  %prev3.i.i275.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10, i32 1
  %198 = ptrtoint ptr %prev3.i.i275.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %195, ptr %prev3.i.i275.i.i, align 4
  %199 = ptrtoint ptr %195 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %entry128.i.i, ptr %195, align 4
  br label %if.end152.i.i

if.else129.i.i:                                   ; preds = %if.else123.i.i
  br i1 %tobool120.not.i.i, label %do.body136.i.i, label %if.then133.i.i

if.then133.i.i:                                   ; preds = %if.else129.i.i
  %entry134.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10
  %200 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %59, align 4
  %call.i.i279.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry134.i.i, ptr noundef %201, ptr noundef nonnull %gart_list.i.i) #11
  br i1 %call.i.i279.i.i, label %if.end.i.i281.i.i, label %if.then133.i.i.if.end152.i.i_crit_edge

if.then133.i.i.if.end152.i.i_crit_edge:           ; preds = %if.then133.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end152.i.i

if.end.i.i281.i.i:                                ; preds = %if.then133.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %202 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %entry134.i.i, ptr %59, align 4
  %203 = ptrtoint ptr %entry134.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %gart_list.i.i, ptr %entry134.i.i, align 4
  %prev3.i.i280.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10, i32 1
  %204 = ptrtoint ptr %prev3.i.i280.i.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %201, ptr %prev3.i.i280.i.i, align 4
  %205 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %205)
  store volatile ptr %entry134.i.i, ptr %201, align 4
  br label %if.end152.i.i

do.body136.i.i:                                   ; preds = %if.else129.i.i
  %drm141.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %206 = ptrtoint ptr %drm141.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %drm141.i.i, align 8
  %dev142.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %207, i32 0, i32 3
  %208 = ptrtoint ptr %dev142.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev142.i.i, align 8
  %dev143.i.i = getelementptr inbounds %struct.drm_device, ptr %209, i32 0, i32 2
  %210 = ptrtoint ptr %dev143.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dev143.i.i, align 4
  %name144.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.62, ptr noundef %name144.i.i, i32 noundef %186) #15
  %entry149.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10
  %212 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %61, align 4
  %call.i.i284.i.i = call zeroext i1 @__list_add_valid(ptr noundef %entry149.i.i, ptr noundef %213, ptr noundef nonnull %both_list.i.i) #11
  br i1 %call.i.i284.i.i, label %if.end.i.i286.i.i, label %do.body136.i.i.for.end.i.i_crit_edge

do.body136.i.i.for.end.i.i_crit_edge:             ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.end.i.i286.i.i:                                ; preds = %do.body136.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %214 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %entry149.i.i, ptr %61, align 4
  %215 = ptrtoint ptr %entry149.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %both_list.i.i, ptr %entry149.i.i, align 4
  %prev3.i.i285.i.i = getelementptr inbounds %struct.nouveau_bo, ptr %call10.i.i, i32 0, i32 10, i32 1
  %216 = ptrtoint ptr %prev3.i.i285.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store ptr %213, ptr %prev3.i.i285.i.i, align 4
  %217 = ptrtoint ptr %213 to i32
  call void @__asan_store4_noabort(i32 %217)
  store volatile ptr %entry149.i.i, ptr %213, align 4
  br label %for.end.i.i

if.end152.i.i:                                    ; preds = %if.end.i.i281.i.i, %if.then133.i.i.if.end152.i.i_crit_edge, %if.end.i.i276.i.i, %if.then127.i.i.if.end152.i.i_crit_edge, %if.end.i.i.i.i, %if.then121.i.i.if.end152.i.i_crit_edge
  %cmp153.i.i = icmp eq ptr %call10.i.i, %res_bo.3.i.i
  br i1 %cmp153.i.i, label %retry.loopexit.i.i, label %if.end152.i.i.for.inc.i.i_crit_edge

if.end152.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end152.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end152.i.i.for.inc.i.i_crit_edge, %if.then.i.i.i.i.i, %if.then10.i.i.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.i.i.for.inc.i.i_crit_edge
  %res_bo.4.ph.i.i = phi ptr [ null, %if.then.i.i.i.i.i ], [ null, %if.then10.i.i.i.i.i.i.i.i ], [ null, %if.end5.i.i.i.i.i.i.i.i.for.inc.i.i_crit_edge ], [ %res_bo.3.i.i, %if.end152.i.i.for.inc.i.i_crit_edge ]
  %ret.6.ph318.i.i = phi i32 [ %ret.1342.i.i, %if.then.i.i.i.i.i ], [ %ret.1342.i.i, %if.then10.i.i.i.i.i.i.i.i ], [ %ret.1342.i.i, %if.end5.i.i.i.i.i.i.i.i.for.inc.i.i_crit_edge ], [ 0, %if.end152.i.i.for.inc.i.i_crit_edge ]
  %inc162.i.i = add nuw nsw i32 %i.0340.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc162.i.i, %71
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i286.i.i, %do.body136.i.i.for.end.i.i_crit_edge, %cleanup.thread.i.i, %do.body75.i.i, %if.end64.i.i.for.end.i.i_crit_edge, %if.then.i.i.i255.i.i, %if.then10.i.i.i.i.i.i254.i.i, %if.end5.i.i.i.i.i.i253.i.i.for.end.i.i_crit_edge, %do.body12.i.i, %nouveau_cli.exit.i.i.for.end.i.i_crit_edge
  %ret.7.i.i = phi i32 [ -22, %if.end.i.i286.i.i ], [ -22, %do.body136.i.i.for.end.i.i_crit_edge ], [ -22, %cleanup.thread.i.i ], [ -22, %if.then.i.i.i255.i.i ], [ -22, %if.then10.i.i.i.i.i.i254.i.i ], [ -22, %if.end5.i.i.i.i.i.i253.i.i.for.end.i.i_crit_edge ], [ %ret.2.i.i, %do.body75.i.i ], [ -2, %do.body12.i.i ], [ -22, %nouveau_cli.exit.i.i.for.end.i.i_crit_edge ], [ %ret.6.ph318.i.i, %for.inc.i.i.for.end.i.i_crit_edge ], [ %ret.2.i.i, %if.end64.i.i.for.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %218 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %tobool.not.i288.i.i = icmp eq i32 %218, 0
  br i1 %tobool.not.i288.i.i, label %for.end.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i

for.end.i.i.if.end.i.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.end.i.i
  %call.i.i290.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i290.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i290.i.i, 0
  br i1 %cmp.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.if.end.i.i.i_crit_edge, !prof !153

land.rhs.i.i.i.if.end.i.i.i_crit_edge:            ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 171, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %land.rhs.i.i.i.if.end.i.i.i_crit_edge, %for.end.i.i.if.end.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %219 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool24.not.i.i.i = icmp eq i32 %219, 0
  br i1 %tobool24.not.i.i.i, label %land.lhs.true.i.i.i, label %if.end.i.i.i.ww_acquire_done.exit.i.i_crit_edge

if.end.i.i.i.ww_acquire_done.exit.i.i_crit_edge:  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i.i
  %220 = ptrtoint ptr %done_acquire.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %done_acquire.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool25.not.i.i.i = icmp eq i32 %221, 0
  br i1 %tobool25.not.i.i.i, label %land.lhs.true.i.i.i.ww_acquire_done.exit.i.i_crit_edge, label %do.end35.i.i.i, !prof !157

land.lhs.true.i.i.i.ww_acquire_done.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit.i.i

do.end35.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call36.i.i.i = call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  br i1 %tobool37.not.i.i.i, label %do.end35.i.i.i.ww_acquire_done.exit.i.i_crit_edge, label %land.lhs.true38.i.i.i

do.end35.i.i.i.ww_acquire_done.exit.i.i_crit_edge: ; preds = %do.end35.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit.i.i

land.lhs.true38.i.i.i:                            ; preds = %do.end35.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %222 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %222)
  %tobool39.not.i.i.i = icmp eq i32 %222, 0
  br i1 %tobool39.not.i.i.i, label %do.end53.i.i.i, label %land.lhs.true38.i.i.i.ww_acquire_done.exit.i.i_crit_edge

land.lhs.true38.i.i.i.ww_acquire_done.exit.i.i_crit_edge: ; preds = %land.lhs.true38.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ww_acquire_done.exit.i.i

do.end53.i.i.i:                                   ; preds = %land.lhs.true38.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 173, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.67) #11
  br label %ww_acquire_done.exit.i.i

ww_acquire_done.exit.i.i:                         ; preds = %do.end53.i.i.i, %land.lhs.true38.i.i.i.ww_acquire_done.exit.i.i_crit_edge, %do.end35.i.i.i.ww_acquire_done.exit.i.i_crit_edge, %land.lhs.true.i.i.i.ww_acquire_done.exit.i.i_crit_edge, %if.end.i.i.i.ww_acquire_done.exit.i.i_crit_edge
  %223 = ptrtoint ptr %done_acquire.i.i.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %done_acquire.i.i.i, align 4
  %224 = ptrtoint ptr %vram_list.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load volatile ptr, ptr %vram_list.i.i, align 4
  %cmp.i.not.i292.i.i = icmp eq ptr %225, %vram_list.i.i
  br i1 %cmp.i.not.i292.i.i, label %ww_acquire_done.exit.i.i.list_splice_tail.exit.i.i_crit_edge, label %if.then.i296.i.i

ww_acquire_done.exit.i.i.list_splice_tail.exit.i.i_crit_edge: ; preds = %ww_acquire_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit.i.i

if.then.i296.i.i:                                 ; preds = %ww_acquire_done.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %226 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %prev.i76.i, align 4
  %228 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %60, align 4
  %prev3.i.i295.i.i = getelementptr inbounds %struct.list_head, ptr %225, i32 0, i32 1
  %230 = ptrtoint ptr %prev3.i.i295.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %227, ptr %prev3.i.i295.i.i, align 4
  %231 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %225, ptr %227, align 4
  %232 = ptrtoint ptr %229 to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr %op, ptr %229, align 4
  store ptr %229, ptr %prev.i76.i, align 4
  br label %list_splice_tail.exit.i.i

list_splice_tail.exit.i.i:                        ; preds = %if.then.i296.i.i, %ww_acquire_done.exit.i.i.list_splice_tail.exit.i.i_crit_edge
  %233 = ptrtoint ptr %gart_list.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile ptr, ptr %gart_list.i.i, align 4
  %cmp.i.not.i298.i.i = icmp eq ptr %234, %gart_list.i.i
  br i1 %cmp.i.not.i298.i.i, label %list_splice_tail.exit.i.i.list_splice_tail.exit304.i.i_crit_edge, label %if.then.i302.i.i

list_splice_tail.exit.i.i.list_splice_tail.exit304.i.i_crit_edge: ; preds = %list_splice_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit304.i.i

if.then.i302.i.i:                                 ; preds = %list_splice_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %235 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i76.i, align 4
  %237 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %59, align 4
  %prev3.i.i301.i.i = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %239 = ptrtoint ptr %prev3.i.i301.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev3.i.i301.i.i, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %234, ptr %236, align 4
  %241 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr %op, ptr %238, align 4
  store ptr %238, ptr %prev.i76.i, align 4
  br label %list_splice_tail.exit304.i.i

list_splice_tail.exit304.i.i:                     ; preds = %if.then.i302.i.i, %list_splice_tail.exit.i.i.list_splice_tail.exit304.i.i_crit_edge
  %242 = ptrtoint ptr %both_list.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load volatile ptr, ptr %both_list.i.i, align 4
  %cmp.i.not.i305.i.i = icmp eq ptr %243, %both_list.i.i
  br i1 %cmp.i.not.i305.i.i, label %list_splice_tail.exit304.i.i.list_splice_tail.exit311.i.i_crit_edge, label %if.then.i309.i.i

list_splice_tail.exit304.i.i.list_splice_tail.exit311.i.i_crit_edge: ; preds = %list_splice_tail.exit304.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail.exit311.i.i

if.then.i309.i.i:                                 ; preds = %list_splice_tail.exit304.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %244 = ptrtoint ptr %prev.i76.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %prev.i76.i, align 4
  %246 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %61, align 4
  %prev3.i.i308.i.i = getelementptr inbounds %struct.list_head, ptr %243, i32 0, i32 1
  %248 = ptrtoint ptr %prev3.i.i308.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %245, ptr %prev3.i.i308.i.i, align 4
  %249 = ptrtoint ptr %245 to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %243, ptr %245, align 4
  %250 = ptrtoint ptr %247 to i32
  call void @__asan_store4_noabort(i32 %250)
  store ptr %op, ptr %247, align 4
  store ptr %247, ptr %prev.i76.i, align 4
  br label %list_splice_tail.exit311.i.i

list_splice_tail.exit311.i.i:                     ; preds = %if.then.i309.i.i, %list_splice_tail.exit304.i.i.list_splice_tail.exit311.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.7.i.i)
  %tobool167.not.i.i = icmp eq i32 %ret.7.i.i, 0
  br i1 %tobool167.not.i.i, label %validate_init.exit.thread89.i, label %validate_init.exit.i

validate_init.exit.thread89.i:                    ; preds = %list_splice_tail.exit311.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %both_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vram_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gart_list.i.i) #11
  %251 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %251)
  %.pn158.i.i = load ptr, ptr %op, align 4
  %cmp.not160.i.i = icmp eq ptr %.pn158.i.i, %op
  br i1 %cmp.not160.i.i, label %validate_init.exit.thread89.i.if.end168_crit_edge, label %for.body.lr.ph.i.i

validate_init.exit.thread89.i.if.end168_crit_edge: ; preds = %validate_init.exit.thread89.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

validate_init.exit.i:                             ; preds = %list_splice_tail.exit311.i.i
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %op, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #11
  call fastcc void @ww_acquire_fini(ptr noundef %ticket.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %both_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vram_list.i.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %gart_list.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %ret.7.i.i)
  %cond.i1402 = icmp eq i32 %ret.7.i.i, -512
  br i1 %cond.i1402, label %validate_init.exit.i.out_prevalid_crit_edge, label %validate_init.exit.i.do.body.i_crit_edge, !prof !162

validate_init.exit.i.do.body.i_crit_edge:         ; preds = %validate_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

validate_init.exit.i.out_prevalid_crit_edge:      ; preds = %validate_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

do.body.i:                                        ; preds = %validate_init.exit.i.do.body.i_crit_edge, %validate_init.exit.thread.i
  %retval.0.i88.i = phi i32 [ -22, %validate_init.exit.thread.i ], [ %ret.7.i.i, %validate_init.exit.i.do.body.i_crit_edge ]
  %drm.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %252 = ptrtoint ptr %drm.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %drm.i, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %253, i32 0, i32 3
  %254 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dev.i, align 8
  %dev8.i = getelementptr inbounds %struct.drm_device, ptr %255, i32 0, i32 2
  %256 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %dev8.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %257, ptr noundef nonnull @.str.42, ptr noundef %name.i) #15
  br label %nouveau_gem_pushbuf_validate.exit

for.body.lr.ph.i.i:                               ; preds = %validate_init.exit.thread89.i
  %258 = ptrtoint ptr %drm1.i.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %drm1.i.i, align 4
  %family.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %259, i32 0, i32 2, i32 3, i32 1, i32 4
  br label %for.body.i66.i

for.body.i66.i:                                   ; preds = %for.inc.i73.i.for.body.i66.i_crit_edge, %for.body.lr.ph.i.i
  %.pn163.i.i = phi ptr [ %.pn158.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i73.i.for.body.i66.i_crit_edge ]
  %relocs.0161.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %relocs.2.i.i, %for.inc.i73.i.for.body.i66.i_crit_edge ]
  %nvbo.0164.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -572
  %pbbo_index.i62.i = getelementptr i8, ptr %.pn163.i.i, i32 8
  %260 = ptrtoint ptr %pbbo_index.i62.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %pbbo_index.i62.i, align 4
  %read_domains.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 2
  %262 = ptrtoint ptr %read_domains.i.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %read_domains.i.i, align 4
  %write_domains.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 3
  %264 = ptrtoint ptr %write_domains.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %write_domains.i.i, align 8
  %valid_domains.i63.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 4
  %266 = ptrtoint ptr %valid_domains.i63.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %valid_domains.i63.i, align 4
  %valid_domains2.i.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -140
  %268 = ptrtoint ptr %valid_domains2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %valid_domains2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %tobool.not.i.i64.i = icmp eq i32 %265, 0
  %read_domains.write_domains.i.i.i = select i1 %tobool.not.i.i64.i, i32 %263, i32 %265
  %and.i.i65.i = and i32 %read_domains.write_domains.i.i.i, %267
  %and3.i.i.i = and i32 %and.i.i65.i, %269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %for.body.i66.i.cleanup112.sink.split.i.i_crit_edge, label %if.end.i.i67.i

for.body.i66.i.cleanup112.sink.split.i.i_crit_edge: ; preds = %for.body.i66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112.sink.split.i.i

if.end.i.i67.i:                                   ; preds = %for.body.i66.i
  %and5.i.i.i = and i32 %267, -7
  %and6.i.i.i = and i32 %and3.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i)
  %tobool7.not.i.i.i = icmp eq i32 %and6.i.i.i, 0
  br i1 %tobool7.not.i.i.i, label %if.end.i.i67.i.if.else.i.i.i_crit_edge, label %land.lhs.true.i.i69.i

if.end.i.i67.i.if.else.i.i.i_crit_edge:           ; preds = %if.end.i.i67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i.i

land.lhs.true.i.i69.i:                            ; preds = %if.end.i.i67.i
  %resource.i.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -200
  %270 = ptrtoint ptr %resource.i.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %resource.i.i.i, align 4
  %mem_type.i.i.i = getelementptr inbounds %struct.ttm_resource, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %mem_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %mem_type.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %273)
  %cmp.i.i68.i = icmp eq i32 %273, 2
  br i1 %cmp.i.i68.i, label %land.lhs.true.i.i69.i.if.end.i.i1403_crit_edge, label %land.lhs.true.i.i69.i.if.else.i.i.i_crit_edge

land.lhs.true.i.i69.i.if.else.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i.i

land.lhs.true.i.i69.i.if.end.i.i1403_crit_edge:   ; preds = %land.lhs.true.i.i69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1403

if.else.i.i.i:                                    ; preds = %land.lhs.true.i.i69.i.if.else.i.i.i_crit_edge, %if.end.i.i67.i.if.else.i.i.i_crit_edge
  %and9.i.i.i = and i32 %and3.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %and9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %if.else.i.i.i.if.else17.i.i.i_crit_edge, label %land.lhs.true11.i.i.i

if.else.i.i.i.if.else17.i.i.i_crit_edge:          ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else17.i.i.i

land.lhs.true11.i.i.i:                            ; preds = %if.else.i.i.i
  %resource12.i.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -200
  %274 = ptrtoint ptr %resource12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %resource12.i.i.i, align 4
  %mem_type13.i.i.i = getelementptr inbounds %struct.ttm_resource, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %mem_type13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %mem_type13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %277)
  %cmp14.i.i.i = icmp eq i32 %277, 1
  br i1 %cmp14.i.i.i, label %land.lhs.true11.i.i.i.if.end.i.i1403_crit_edge, label %land.lhs.true11.i.i.i.if.else17.i.i.i_crit_edge

land.lhs.true11.i.i.i.if.else17.i.i.i_crit_edge:  ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else17.i.i.i

land.lhs.true11.i.i.i.if.end.i.i1403_crit_edge:   ; preds = %land.lhs.true11.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i1403

if.else17.i.i.i:                                  ; preds = %land.lhs.true11.i.i.i.if.else17.i.i.i_crit_edge, %if.else.i.i.i.if.else17.i.i.i_crit_edge
  %..i.i.i = select i1 %tobool7.not.i.i.i, i32 4, i32 2
  br label %if.end.i.i1403

if.end.i.i1403:                                   ; preds = %if.else17.i.i.i, %land.lhs.true11.i.i.i.if.end.i.i1403_crit_edge, %land.lhs.true.i.i69.i.if.end.i.i1403_crit_edge
  %pref_domains.0.i.i.i = phi i32 [ 2, %land.lhs.true.i.i69.i.if.end.i.i1403_crit_edge ], [ 4, %land.lhs.true11.i.i.i.if.end.i.i1403_crit_edge ], [ %..i.i.i, %if.else17.i.i.i ]
  call void @nouveau_bo_placement_set(ptr noundef %nvbo.0164.i.i, i32 noundef %pref_domains.0.i.i.i, i32 noundef %and5.i.i.i) #11
  %call11.i.i = call i32 @nouveau_bo_validate(ptr noundef %nvbo.0164.i.i, i1 noundef zeroext true, i1 noundef zeroext false) #11
  %278 = zext i32 %call11.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %278, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %call11.i.i, label %if.end.i.i1403.cleanup112.sink.split.i.i_crit_edge [
    i32 0, label %if.end35.i.i
    i32 -512, label %if.end.i.i1403.if.end37.i_crit_edge
  ], !prof !161

if.end.i.i1403.if.end37.i_crit_edge:              ; preds = %if.end.i.i1403
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end.i.i1403.cleanup112.sink.split.i.i_crit_edge: ; preds = %if.end.i.i1403
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112.sink.split.i.i

if.end35.i.i:                                     ; preds = %if.end.i.i1403
  %279 = ptrtoint ptr %write_domains.i.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %write_domains.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool37.i.i = icmp ne i32 %280, 0
  %call42.i.i = call i32 @nouveau_fence_sync(ptr noundef %nvbo.0164.i.i, ptr noundef nonnull %8, i1 noundef zeroext %tobool37.i.i, i1 noundef zeroext true) #11
  %281 = zext i32 %call42.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %call42.i.i, label %if.end35.i.i.cleanup112.sink.split.i.i_crit_edge [
    i32 0, label %if.end66.i.i
    i32 -512, label %if.end35.i.i.if.end37.i_crit_edge
  ], !prof !161

if.end35.i.i.if.end37.i_crit_edge:                ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

if.end35.i.i.cleanup112.sink.split.i.i_crit_edge: ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup112.sink.split.i.i

if.end66.i.i:                                     ; preds = %if.end35.i.i
  %282 = ptrtoint ptr %family.i.i to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %family.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %283)
  %cmp67.i.i = icmp ult i8 %283, 6
  br i1 %cmp67.i.i, label %if.then69.i.i, label %if.end66.i.i.for.inc.i73.i_crit_edge

if.end66.i.i.for.inc.i73.i_crit_edge:             ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i73.i

if.then69.i.i:                                    ; preds = %if.end66.i.i
  %offset.i.i = getelementptr i8, ptr %.pn163.i.i, i32 20
  %284 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %284)
  %285 = load i64, ptr %offset.i.i, align 8
  %presumed.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 5
  %offset70.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 5, i32 2
  %286 = ptrtoint ptr %offset70.i.i to i32
  call void @__asan_load8_noabort(i32 %286)
  %287 = load i64, ptr %offset70.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %285, i64 %287)
  %cmp71.i.i = icmp eq i64 %285, %287
  br i1 %cmp71.i.i, label %land.lhs.true.i.i, label %if.then69.i.i.if.end90.i.i_crit_edge

if.then69.i.i.if.end90.i.i_crit_edge:             ; preds = %if.then69.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i.i

land.lhs.true.i.i:                                ; preds = %if.then69.i.i
  %resource.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -200
  %288 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %resource.i.i, align 4
  %mem_type.i.i = getelementptr inbounds %struct.ttm_resource, ptr %289, i32 0, i32 2
  %290 = ptrtoint ptr %mem_type.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %mem_type.i.i, align 4
  %292 = zext i32 %291 to i64
  call void @__sanitizer_cov_trace_switch(i64 %292, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %291, label %land.lhs.true.i.i.if.end90.i.i_crit_edge [
    i32 2, label %land.lhs.true76.i.i
    i32 1, label %land.lhs.true84.i.i
  ]

land.lhs.true.i.i.if.end90.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i.i

land.lhs.true76.i.i:                              ; preds = %land.lhs.true.i.i
  %domain.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 5, i32 1
  %293 = ptrtoint ptr %domain.i.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %domain.i.i, align 4
  %and.i70.i = and i32 %294, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i)
  %tobool78.not.i.i = icmp eq i32 %and.i70.i, 0
  br i1 %tobool78.not.i.i, label %land.lhs.true76.i.i.if.end90.i.i_crit_edge, label %land.lhs.true76.i.i.for.inc.i73.i_crit_edge

land.lhs.true76.i.i.for.inc.i73.i_crit_edge:      ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i73.i

land.lhs.true76.i.i.if.end90.i.i_crit_edge:       ; preds = %land.lhs.true76.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i.i

land.lhs.true84.i.i:                              ; preds = %land.lhs.true.i.i
  %domain86.i.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 5, i32 1
  %295 = ptrtoint ptr %domain86.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %domain86.i.i, align 4
  %and87.i.i = and i32 %296, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i.i)
  %tobool88.not.i.i = icmp eq i32 %and87.i.i, 0
  br i1 %tobool88.not.i.i, label %land.lhs.true84.i.i.if.end90.i.i_crit_edge, label %land.lhs.true84.i.i.for.inc.i73.i_crit_edge

land.lhs.true84.i.i.for.inc.i73.i_crit_edge:      ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i73.i

land.lhs.true84.i.i.if.end90.i.i_crit_edge:       ; preds = %land.lhs.true84.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i.i

if.end90.i.i:                                     ; preds = %land.lhs.true84.i.i.if.end90.i.i_crit_edge, %land.lhs.true76.i.i.if.end90.i.i_crit_edge, %land.lhs.true.i.i.if.end90.i.i_crit_edge, %if.then69.i.i.if.end90.i.i_crit_edge
  %resource92.i.i = getelementptr i8, ptr %.pn163.i.i, i32 -200
  %297 = ptrtoint ptr %resource92.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %resource92.i.i, align 4
  %mem_type93.i.i = getelementptr inbounds %struct.ttm_resource, ptr %298, i32 0, i32 2
  %299 = ptrtoint ptr %mem_type93.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %mem_type93.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %300)
  %cmp94.i.i = icmp eq i32 %300, 1
  %spec.select.i71.i = select i1 %cmp94.i.i, i32 4, i32 2
  %301 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %261, i32 5, i32 1
  %302 = ptrtoint ptr %301 to i32
  call void @__asan_store4_noabort(i32 %302)
  store i32 %spec.select.i71.i, ptr %301, align 4
  %303 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load8_noabort(i32 %303)
  %304 = load i64, ptr %offset.i.i, align 8
  %305 = ptrtoint ptr %offset70.i.i to i32
  call void @__asan_store8_noabort(i32 %305)
  store i64 %304, ptr %offset70.i.i, align 8
  %306 = ptrtoint ptr %presumed.i.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 0, ptr %presumed.i.i, align 8
  %inc.i72.i = add i32 %relocs.0161.i.i, 1
  br label %for.inc.i73.i

for.inc.i73.i:                                    ; preds = %if.end90.i.i, %land.lhs.true84.i.i.for.inc.i73.i_crit_edge, %land.lhs.true76.i.i.for.inc.i73.i_crit_edge, %if.end66.i.i.for.inc.i73.i_crit_edge
  %relocs.2.i.i = phi i32 [ %relocs.0161.i.i, %land.lhs.true84.i.i.for.inc.i73.i_crit_edge ], [ %relocs.0161.i.i, %land.lhs.true76.i.i.for.inc.i73.i_crit_edge ], [ %inc.i72.i, %if.end90.i.i ], [ %relocs.0161.i.i, %if.end66.i.i.for.inc.i73.i_crit_edge ]
  %307 = ptrtoint ptr %.pn163.i.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %.pn.i.i = load ptr, ptr %.pn163.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %op
  br i1 %cmp.not.i.i, label %for.inc.i73.i.validate_list.exit.i_crit_edge, label %for.inc.i73.i.for.body.i66.i_crit_edge

for.inc.i73.i.for.body.i66.i_crit_edge:           ; preds = %for.inc.i73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i66.i

for.inc.i73.i.validate_list.exit.i_crit_edge:     ; preds = %for.inc.i73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %validate_list.exit.i

cleanup112.sink.split.i.i:                        ; preds = %if.end35.i.i.cleanup112.sink.split.i.i_crit_edge, %if.end.i.i1403.cleanup112.sink.split.i.i_crit_edge, %for.body.i66.i.cleanup112.sink.split.i.i_crit_edge
  %.str.74.sink.i.i = phi ptr [ @.str.68, %for.body.i66.i.cleanup112.sink.split.i.i_crit_edge ], [ @.str.71, %if.end.i.i1403.cleanup112.sink.split.i.i_crit_edge ], [ @.str.74, %if.end35.i.i.cleanup112.sink.split.i.i_crit_edge ]
  %retval.2.ph.i.i = phi i32 [ -22, %for.body.i66.i.cleanup112.sink.split.i.i_crit_edge ], [ %call11.i.i, %if.end.i.i1403.cleanup112.sink.split.i.i_crit_edge ], [ %call42.i.i, %if.end35.i.i.cleanup112.sink.split.i.i_crit_edge ]
  %drm58.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %308 = ptrtoint ptr %drm58.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %drm58.i.i, align 8
  %dev59.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %309, i32 0, i32 3
  %310 = ptrtoint ptr %dev59.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %dev59.i.i, align 8
  %dev60.i.i = getelementptr inbounds %struct.drm_device, ptr %311, i32 0, i32 2
  %312 = ptrtoint ptr %dev60.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %dev60.i.i, align 4
  %name61.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %313, ptr noundef nonnull %.str.74.sink.i.i, ptr noundef %name61.i.i) #15
  br label %validate_list.exit.i

validate_list.exit.i:                             ; preds = %cleanup112.sink.split.i.i, %for.inc.i73.i.validate_list.exit.i_crit_edge
  %retval.2.i.i = phi i32 [ %retval.2.ph.i.i, %cleanup112.sink.split.i.i ], [ %relocs.2.i.i, %for.inc.i73.i.validate_list.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp15.i = icmp slt i32 %retval.2.i.i, 0
  br i1 %cmp15.i, label %if.then22.i, label %if.else.i, !prof !153

if.then22.i:                                      ; preds = %validate_list.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %retval.2.i.i)
  %cmp23.not.i = icmp eq i32 %retval.2.i.i, -512
  br i1 %cmp23.not.i, label %if.then22.i.if.end37.i_crit_edge, label %do.body25.i

if.then22.i.if.end37.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37.i

do.body25.i:                                      ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm30.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 1
  %314 = ptrtoint ptr %drm30.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %drm30.i, align 8
  %dev31.i = getelementptr inbounds %struct.nouveau_drm, ptr %315, i32 0, i32 3
  %316 = ptrtoint ptr %dev31.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %dev31.i, align 8
  %dev32.i = getelementptr inbounds %struct.drm_device, ptr %317, i32 0, i32 2
  %318 = ptrtoint ptr %dev32.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %dev32.i, align 4
  %name33.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i7886.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %319, ptr noundef nonnull @.str.45, ptr noundef %name33.i) #15
  br label %if.end37.i

if.end37.i:                                       ; preds = %do.body25.i, %if.then22.i.if.end37.i_crit_edge, %if.end35.i.i.if.end37.i_crit_edge, %if.end.i.i1403.if.end37.i_crit_edge
  %retval.2.i93100.i = phi i32 [ %retval.2.i.i, %do.body25.i ], [ -512, %if.then22.i.if.end37.i_crit_edge ], [ %call42.i.i, %if.end35.i.i.if.end37.i_crit_edge ], [ %call11.i.i, %if.end.i.i1403.if.end37.i_crit_edge ]
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %op, ptr noundef nonnull %8, ptr noundef null, ptr noundef null) #11
  call fastcc void @ww_acquire_fini(ptr noundef %ticket.i.i) #11
  br label %nouveau_gem_pushbuf_validate.exit

if.else.i:                                        ; preds = %validate_list.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.2.i.i)
  %cmp38.not.i = icmp eq i32 %retval.2.i.i, 0
  br i1 %cmp38.not.i, label %if.else.i.if.end168_crit_edge, label %if.else.i.if.then170_crit_edge

if.else.i.if.then170_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then170

if.else.i.if.end168_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

nouveau_gem_pushbuf_validate.exit:                ; preds = %if.end37.i, %do.body.i
  %retval.0.i = phi i32 [ %retval.2.i93100.i, %if.end37.i ], [ %retval.0.i88.i, %do.body.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %retval.0.i)
  %cond = icmp eq i32 %retval.0.i, -512
  br i1 %cond, label %nouveau_gem_pushbuf_validate.exit.out_prevalid_crit_edge, label %do.body155

nouveau_gem_pushbuf_validate.exit.out_prevalid_crit_edge: ; preds = %nouveau_gem_pushbuf_validate.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

do.body155:                                       ; preds = %nouveau_gem_pushbuf_validate.exit
  call void @__sanitizer_cov_trace_pc() #13
  %drm160 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %320 = ptrtoint ptr %drm160 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %drm160, align 8
  %dev161 = getelementptr inbounds %struct.nouveau_drm, ptr %321, i32 0, i32 3
  %322 = ptrtoint ptr %dev161 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %dev161, align 8
  %dev162 = getelementptr inbounds %struct.drm_device, ptr %323, i32 0, i32 2
  %324 = ptrtoint ptr %dev162 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %dev162, align 4
  %name163 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %325, ptr noundef nonnull @.str.15, ptr noundef %name163, i32 noundef %retval.0.i) #15
  br label %out_prevalid

if.end168:                                        ; preds = %if.else.i.if.end168_crit_edge, %validate_init.exit.thread89.i.if.end168_crit_edge, %nouveau_cli.exit.thread.i.if.end168_crit_edge, %nouveau_cli.exit.i.if.end168_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %do_reloc.0)
  %tobool169.not = icmp eq i8 %do_reloc.0, 0
  br i1 %tobool169.not, label %if.end168.if.end196_crit_edge, label %if.end168.if.then170_crit_edge

if.end168.if.then170_crit_edge:                   ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then170

if.end168.if.end196_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

if.then170:                                       ; preds = %if.end168.if.then170_crit_edge, %if.else.i.if.then170_crit_edge
  %do_reloc.114401469 = phi i8 [ %do_reloc.0, %if.end168.if.then170_crit_edge ], [ 1, %if.else.i.if.then170_crit_edge ]
  %tobool171.not = icmp eq ptr %reloc.0, null
  br i1 %tobool171.not, label %if.then172, label %if.end179

if.then172:                                       ; preds = %if.then170
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %op, ptr noundef nonnull %8, ptr noundef null, ptr noundef %call121) #11
  call fastcc void @ww_acquire_fini(ptr noundef %ticket.i.i) #11
  %326 = ptrtoint ptr %relocs to i32
  call void @__asan_load8_noabort(i32 %326)
  %327 = load i64, ptr %relocs, align 8
  %328 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %nr_relocs, align 8
  %call174 = call fastcc ptr @u_memcpya(i64 noundef %327, i32 noundef %329, i32 noundef 28)
  %cmp.i1404 = icmp ugt ptr %call174, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1404, label %if.then176, label %if.then172.revalidate_crit_edge

if.then172.revalidate_crit_edge:                  ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  br label %revalidate

if.then176:                                       ; preds = %if.then172
  call void @__sanitizer_cov_trace_pc() #13
  %330 = ptrtoint ptr %call174 to i32
  br label %out_prevalid

if.end179:                                        ; preds = %if.then170
  %331 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %nr_relocs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %cmp185.not.i = icmp eq i32 %332, 0
  br i1 %cmp185.not.i, label %if.end179.if.end196_crit_edge, label %if.end179.for.body.i_crit_edge

if.end179.for.body.i_crit_edge:                   ; preds = %if.end179
  br label %for.body.i

if.end179.if.end196_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end179.for.body.i_crit_edge
  %i.0186.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end179.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i
  %bo_index.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 2
  %333 = ptrtoint ptr %bo_index.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %bo_index.i, align 4
  %335 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %334, i32 %336)
  %cmp1.not.i = icmp ult i32 %334, %336
  br i1 %cmp1.not.i, label %if.end.i, label %do.body.i1408, !prof !157

do.body.i1408:                                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm.i1405 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %337 = ptrtoint ptr %drm.i1405 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %drm.i1405, align 8
  %dev.i1406 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 3
  %339 = ptrtoint ptr %dev.i1406 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev.i1406, align 8
  %dev4.i = getelementptr inbounds %struct.drm_device, ptr %340, i32 0, i32 2
  %341 = ptrtoint ptr %dev4.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %dev4.i, align 4
  %name.i1407 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %342, ptr noundef nonnull @.str.77, ptr noundef %name.i1407) #15
  br label %do.body183

if.end.i:                                         ; preds = %for.body.i
  %presumed.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %334, i32 5
  %343 = ptrtoint ptr %presumed.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %presumed.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %344)
  %tobool9.not.i = icmp eq i32 %344, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end11.i:                                       ; preds = %if.end.i
  %345 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %346, i32 %336)
  %cmp13.not.i = icmp ult i32 %346, %336
  br i1 %cmp13.not.i, label %if.end33.i, label %do.body21.i, !prof !157

do.body21.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm26.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %347 = ptrtoint ptr %drm26.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %drm26.i, align 8
  %dev27.i = getelementptr inbounds %struct.nouveau_drm, ptr %348, i32 0, i32 3
  %349 = ptrtoint ptr %dev27.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev27.i, align 8
  %dev28.i = getelementptr inbounds %struct.drm_device, ptr %350, i32 0, i32 2
  %351 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %dev28.i, align 4
  %name29.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %352, ptr noundef nonnull @.str.80, ptr noundef %name29.i) #15
  br label %do.body183

if.end33.i:                                       ; preds = %if.end11.i
  %arrayidx35.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %346
  %353 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load8_noabort(i32 %353)
  %354 = load i64, ptr %arrayidx35.i, align 8
  %conv.i = trunc i64 %354 to i32
  %355 = inttoptr i32 %conv.i to ptr
  %reloc_bo_offset.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 1
  %356 = ptrtoint ptr %reloc_bo_offset.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %reloc_bo_offset.i, align 4
  %add.i = add i32 %357, 4
  %size.i = getelementptr inbounds %struct.drm_gem_object, ptr %355, i32 0, i32 5
  %358 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %359)
  %cmp37.i = icmp ugt i32 %add.i, %359
  br i1 %cmp37.i, label %do.body46.i, label %if.end58.i, !prof !153

do.body46.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm51.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %360 = ptrtoint ptr %drm51.i to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %drm51.i, align 8
  %dev52.i = getelementptr inbounds %struct.nouveau_drm, ptr %361, i32 0, i32 3
  %362 = ptrtoint ptr %dev52.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %dev52.i, align 8
  %dev53.i = getelementptr inbounds %struct.drm_device, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %dev53.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %dev53.i, align 4
  %name54.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %365, ptr noundef nonnull @.str.83, ptr noundef %name54.i) #15
  br label %do.body183

if.end58.i:                                       ; preds = %if.end33.i
  %kmap.i = getelementptr inbounds %struct.nouveau_bo, ptr %355, i32 0, i32 6
  %366 = ptrtoint ptr %kmap.i to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %kmap.i, align 8
  %tobool59.not.i = icmp eq ptr %367, null
  br i1 %tobool59.not.i, label %if.then60.i, label %if.end58.i.if.end79.i_crit_edge

if.end58.i.if.end79.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end79.i

if.then60.i:                                      ; preds = %if.end58.i
  %resource.i = getelementptr inbounds %struct.ttm_buffer_object, ptr %355, i32 0, i32 6
  %368 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %resource.i, align 4
  %num_pages.i = getelementptr inbounds %struct.ttm_resource, ptr %369, i32 0, i32 1
  %370 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %num_pages.i, align 4
  %call.i = call i32 @ttm_bo_kmap(ptr noundef %355, i32 noundef 0, i32 noundef %371, ptr noundef %kmap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool64.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool64.not.i, label %if.end78.i, label %do.body66.i

do.body66.i:                                      ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm71.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %372 = ptrtoint ptr %drm71.i to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %drm71.i, align 8
  %dev72.i = getelementptr inbounds %struct.nouveau_drm, ptr %373, i32 0, i32 3
  %374 = ptrtoint ptr %dev72.i to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %dev72.i, align 8
  %dev73.i = getelementptr inbounds %struct.drm_device, ptr %375, i32 0, i32 2
  %376 = ptrtoint ptr %dev73.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %dev73.i, align 4
  %name74.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %377, ptr noundef nonnull @.str.86, ptr noundef %name74.i) #15
  br label %do.body183

if.end78.i:                                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #13
  %validate_mapped.i = getelementptr inbounds %struct.nouveau_bo, ptr %355, i32 0, i32 12
  %378 = ptrtoint ptr %validate_mapped.i to i32
  call void @__asan_store1_noabort(i32 %378)
  store i8 1, ptr %validate_mapped.i, align 8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.end78.i, %if.end58.i.if.end79.i_crit_edge
  %flags.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 3
  %379 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %380, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool80.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool80.not.i, label %if.else.i1409, label %if.then81.i

if.then81.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #13
  %offset.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %334, i32 5, i32 2
  %381 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %381)
  %382 = load i64, ptr %offset.i, align 8
  %data83.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 4
  %383 = ptrtoint ptr %data83.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %data83.i, align 4
  %385 = trunc i64 %382 to i32
  %conv86.i = add i32 %384, %385
  br label %if.end100.i

if.else.i1409:                                    ; preds = %if.end79.i
  %and88.i = and i32 %380, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.else97.i, label %if.then90.i

if.then90.i:                                      ; preds = %if.else.i1409
  call void @__sanitizer_cov_trace_pc() #13
  %offset92.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %334, i32 5, i32 2
  %386 = ptrtoint ptr %offset92.i to i32
  call void @__asan_load8_noabort(i32 %386)
  %387 = load i64, ptr %offset92.i, align 8
  %data93.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 4
  %388 = ptrtoint ptr %data93.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %data93.i, align 4
  %conv94.i = zext i32 %389 to i64
  %add95.i = add i64 %387, %conv94.i
  %shr.i = lshr i64 %add95.i, 32
  %conv96.i = trunc i64 %shr.i to i32
  br label %if.end100.i

if.else97.i:                                      ; preds = %if.else.i1409
  call void @__sanitizer_cov_trace_pc() #13
  %data98.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 4
  %390 = ptrtoint ptr %data98.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %data98.i, align 4
  br label %if.end100.i

if.end100.i:                                      ; preds = %if.else97.i, %if.then90.i, %if.then81.i
  %data.0.i = phi i32 [ %conv86.i, %if.then81.i ], [ %conv96.i, %if.then90.i ], [ %391, %if.else97.i ]
  %and102.i = and i32 %380, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102.i)
  %tobool103.not.i = icmp eq i32 %and102.i, 0
  br i1 %tobool103.not.i, label %if.end100.i.if.end112.i_crit_edge, label %if.then104.i

if.end100.i.if.end112.i_crit_edge:                ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end112.i

if.then104.i:                                     ; preds = %if.end100.i
  call void @__sanitizer_cov_trace_pc() #13
  %domain.i = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %334, i32 5, i32 1
  %392 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %domain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %393)
  %cmp106.i = icmp eq i32 %393, 4
  %tor.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 6
  %vor.i = getelementptr %struct.drm_nouveau_gem_pushbuf_reloc, ptr %reloc.0, i32 %i.0186.i, i32 5
  %tor.sink.i = select i1 %cmp106.i, ptr %tor.i, ptr %vor.i
  %394 = ptrtoint ptr %tor.sink.i to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load i32, ptr %tor.sink.i, align 4
  %or.i = or i32 %395, %data.0.i
  br label %if.end112.i

if.end112.i:                                      ; preds = %if.then104.i, %if.end100.i.if.end112.i_crit_edge
  %data.1.i = phi i32 [ %data.0.i, %if.end100.i.if.end112.i_crit_edge ], [ %or.i, %if.then104.i ]
  %call114.i = call i32 @ttm_bo_wait(ptr noundef %355, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool115.not.i = icmp eq i32 %call114.i, 0
  br i1 %tobool115.not.i, label %if.end129.i, label %do.body117.i

do.body117.i:                                     ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  %drm122.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %396 = ptrtoint ptr %drm122.i to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %drm122.i, align 8
  %dev123.i = getelementptr inbounds %struct.nouveau_drm, ptr %397, i32 0, i32 3
  %398 = ptrtoint ptr %dev123.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %dev123.i, align 8
  %dev124.i = getelementptr inbounds %struct.drm_device, ptr %399, i32 0, i32 2
  %400 = ptrtoint ptr %dev124.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev124.i, align 4
  %name125.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %401, ptr noundef nonnull @.str.89, ptr noundef %name125.i, i32 noundef %call114.i) #15
  br label %do.body183

if.end129.i:                                      ; preds = %if.end112.i
  call void @__sanitizer_cov_trace_pc() #13
  %402 = ptrtoint ptr %reloc_bo_offset.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %reloc_bo_offset.i, align 4
  %shr131.i = lshr i32 %403, 2
  call void @nouveau_bo_wr32(ptr noundef %355, i32 noundef %shr131.i, i32 noundef %data.1.i) #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end129.i, %if.end.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0186.i, 1
  %404 = ptrtoint ptr %nr_relocs to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %nr_relocs, align 8
  %cmp.i1410 = icmp ult i32 %inc.i, %405
  br i1 %cmp.i1410, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end196_crit_edge

for.inc.i.if.end196_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end196

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body183:                                       ; preds = %do.body117.i, %do.body66.i, %do.body46.i, %do.body21.i, %do.body.i1408
  %ret.2.i.ph = phi i32 [ -22, %do.body.i1408 ], [ -22, %do.body21.i ], [ -22, %do.body46.i ], [ %call114.i, %do.body117.i ], [ %call.i, %do.body66.i ]
  %drm188 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %406 = ptrtoint ptr %drm188 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load ptr, ptr %drm188, align 8
  %dev189 = getelementptr inbounds %struct.nouveau_drm, ptr %407, i32 0, i32 3
  %408 = ptrtoint ptr %dev189 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %dev189, align 8
  %dev190 = getelementptr inbounds %struct.drm_device, ptr %409, i32 0, i32 2
  %410 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load ptr, ptr %dev190, align 4
  %name191 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %411, ptr noundef nonnull @.str.18, ptr noundef %name191, i32 noundef %ret.2.i.ph) #15
  br label %out

if.end196:                                        ; preds = %for.inc.i.if.end196_crit_edge, %if.end179.if.end196_crit_edge, %if.end168.if.end196_crit_edge
  %tobool169.not1472 = phi i1 [ false, %if.end179.if.end196_crit_edge ], [ false, %for.inc.i.if.end196_crit_edge ], [ true, %if.end168.if.end196_crit_edge ]
  %ib_max = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 5
  %412 = ptrtoint ptr %ib_max to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load i32, ptr %ib_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %413)
  %tobool197.not = icmp eq i32 %413, 0
  br i1 %tobool197.not, label %if.else, label %if.then198

if.then198:                                       ; preds = %if.end196
  %414 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %nr_push, align 4
  %add = add i32 %415, 1
  %call200 = call i32 @nouveau_dma_wait(ptr noundef nonnull %8, i32 noundef %add, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200)
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %for.cond216.preheader, label %do.body203

for.cond216.preheader:                            ; preds = %if.then198
  %416 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %nr_push, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %417)
  %cmp2181514.not = icmp eq i32 %417, 0
  br i1 %cmp2181514.not, label %for.cond216.preheader.if.end1026_crit_edge, label %for.cond216.preheader.for.body219_crit_edge

for.cond216.preheader.for.body219_crit_edge:      ; preds = %for.cond216.preheader
  br label %for.body219

for.cond216.preheader.if.end1026_crit_edge:       ; preds = %for.cond216.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

do.body203:                                       ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #13
  %drm208 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %418 = ptrtoint ptr %drm208 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %drm208, align 8
  %dev209 = getelementptr inbounds %struct.nouveau_drm, ptr %419, i32 0, i32 3
  %420 = ptrtoint ptr %dev209 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %dev209, align 8
  %dev210 = getelementptr inbounds %struct.drm_device, ptr %421, i32 0, i32 2
  %422 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev210, align 4
  %name211 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %423, ptr noundef nonnull @.str.21, ptr noundef %name211, i32 noundef %call200) #15
  br label %out

for.body219:                                      ; preds = %for.body219.for.body219_crit_edge, %for.cond216.preheader.for.body219_crit_edge
  %i.11515 = phi i32 [ %inc228, %for.body219.for.body219_crit_edge ], [ 0, %for.cond216.preheader.for.body219_crit_edge ]
  %arrayidx220 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.11515
  %424 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %arrayidx220, align 8
  %arrayidx222 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %425
  %426 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load8_noabort(i32 %426)
  %427 = load i64, ptr %arrayidx222, align 8
  %conv = trunc i64 %427 to i32
  %428 = inttoptr i32 %conv to ptr
  %addr = getelementptr inbounds %struct.nouveau_vma, ptr %428, i32 0, i32 3
  %429 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %addr, align 8
  %offset = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.11515, i32 2
  %431 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %431)
  %432 = load i64, ptr %offset, align 8
  %add224 = add i64 %432, %430
  %length = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.11515, i32 3
  %433 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %433)
  %434 = load i64, ptr %length, align 8
  %conv226 = trunc i64 %434 to i32
  call void @nv50_dma_push(ptr noundef nonnull %8, i64 noundef %add224, i32 noundef %conv226) #11
  %inc228 = add nuw i32 %i.11515, 1
  %435 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load i32, ptr %nr_push, align 4
  %cmp218 = icmp ult i32 %inc228, %436
  br i1 %cmp218, label %for.body219.for.body219_crit_edge, label %for.body219.if.end1026_crit_edge

for.body219.if.end1026_crit_edge:                 ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

for.body219.for.body219_crit_edge:                ; preds = %for.body219
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body219

if.else:                                          ; preds = %if.end196
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %437 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %438)
  %cmp231 = icmp ugt i16 %438, 36
  %push235 = getelementptr inbounds %struct.anon.93, ptr %8, i32 0, i32 1
  %439 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %push235, align 8
  %441 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load i32, ptr %nr_push, align 4
  br i1 %cmp231, label %if.then233, label %if.else535

if.then233:                                       ; preds = %if.else
  %mul = shl i32 %442, 1
  %cur.i = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 4
  %443 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %cur.i, align 4
  %add.ptr.i = getelementptr i32, ptr %444, i32 %mul
  %end.i = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 6
  %445 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %end.i, align 4
  %cmp.not.i = icmp ult ptr %add.ptr.i, %446
  br i1 %cmp.not.i, label %if.then233.PUSH_WAIT.exit_crit_edge, label %if.then.i1413

if.then233.PUSH_WAIT.exit_crit_edge:              ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #13
  br label %PUSH_WAIT.exit

if.then.i1413:                                    ; preds = %if.then233
  %447 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %440, align 8
  %call.i1411 = call i32 %448(ptr noundef %440, i32 noundef %mul) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1411)
  %tobool.not.i1412 = icmp eq i32 %call.i1411, 0
  br i1 %tobool.not.i1412, label %if.then.i1413.PUSH_WAIT.exit_crit_edge, label %do.body240

if.then.i1413.PUSH_WAIT.exit_crit_edge:           ; preds = %if.then.i1413
  call void @__sanitizer_cov_trace_pc() #13
  br label %PUSH_WAIT.exit

PUSH_WAIT.exit:                                   ; preds = %if.then.i1413.PUSH_WAIT.exit_crit_edge, %if.then233.PUSH_WAIT.exit_crit_edge
  %449 = ptrtoint ptr %cur.i to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %cur.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %450, i32 %mul
  %seg.i = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 5
  %451 = ptrtoint ptr %seg.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %add.ptr4.i, ptr %seg.i, align 8
  %452 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load i32, ptr %nr_push, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %453)
  %cmp2551520.not = icmp eq i32 %453, 0
  br i1 %cmp2551520.not, label %PUSH_WAIT.exit.if.end1026_crit_edge, label %PUSH_WAIT.exit.for.body257_crit_edge

PUSH_WAIT.exit.for.body257_crit_edge:             ; preds = %PUSH_WAIT.exit
  br label %for.body257

PUSH_WAIT.exit.if.end1026_crit_edge:              ; preds = %PUSH_WAIT.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

do.body240:                                       ; preds = %if.then.i1413
  call void @__sanitizer_cov_trace_pc() #13
  %drm245 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %454 = ptrtoint ptr %drm245 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %drm245, align 8
  %dev246 = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 3
  %456 = ptrtoint ptr %dev246 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %dev246, align 8
  %dev247 = getelementptr inbounds %struct.drm_device, ptr %457, i32 0, i32 2
  %458 = ptrtoint ptr %dev247 to i32
  call void @__asan_load4_noabort(i32 %458)
  %459 = load ptr, ptr %dev247, align 4
  %name248 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %459, ptr noundef nonnull @.str.24, ptr noundef %name248, i32 noundef %call.i1411) #15
  br label %out

for.body257:                                      ; preds = %if.end488.for.body257_crit_edge, %PUSH_WAIT.exit.for.body257_crit_edge
  %i.21521 = phi i32 [ %inc533, %if.end488.for.body257_crit_edge ], [ 0, %PUSH_WAIT.exit.for.body257_crit_edge ]
  %arrayidx258 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.21521
  %460 = ptrtoint ptr %arrayidx258 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load i32, ptr %arrayidx258, align 8
  %arrayidx260 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %461
  %462 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load8_noabort(i32 %462)
  %463 = load i64, ptr %arrayidx260, align 8
  %conv262 = trunc i64 %463 to i32
  %464 = inttoptr i32 %conv262 to ptr
  %offset265 = getelementptr inbounds %struct.nouveau_bo, ptr %464, i32 0, i32 13
  %465 = ptrtoint ptr %offset265 to i32
  call void @__asan_load8_noabort(i32 %465)
  %466 = load i64, ptr %offset265, align 8
  %offset267 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.21521, i32 2
  %467 = ptrtoint ptr %offset267 to i32
  call void @__asan_load8_noabort(i32 %467)
  %468 = load i64, ptr %offset267, align 8
  %add268 = add i64 %468, %466
  %and269 = and i64 %add268, -68719476733
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and269)
  %tobool270.not = icmp eq i64 %and269, 0
  br i1 %tobool270.not, label %for.body257.if.end296_crit_edge, label %do.end290, !prof !157

for.body257.if.end296_crit_edge:                  ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end296

do.end290:                                        ; preds = %for.body257
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.26) #11
  br label %if.end296

if.end296:                                        ; preds = %do.end290, %for.body257.if.end296_crit_edge
  %469 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %push235, align 8
  %471 = ptrtoint ptr %offset265 to i32
  call void @__asan_load8_noabort(i32 %471)
  %472 = load i64, ptr %offset265, align 8
  %473 = ptrtoint ptr %offset267 to i32
  call void @__asan_load8_noabort(i32 %473)
  %474 = load i64, ptr %offset267, align 8
  %add312 = add i64 %474, %472
  %475 = trunc i64 %add312 to i32
  %476 = and i32 %475, -4
  %conv314 = or i32 %476, 2
  %cur = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 4
  %477 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %cur, align 4
  %seg = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 5
  %479 = ptrtoint ptr %seg to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %seg, align 8
  %cmp317.not = icmp ult ptr %478, %480
  br i1 %cmp317.not, label %if.end296.if.end342_crit_edge, label %do.end336, !prof !157

if.end296.if.end342_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end342

do.end336:                                        ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.27) #11
  br label %if.end342

if.end342:                                        ; preds = %do.end336, %if.end296.if.end342_crit_edge
  %481 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %cur, align 4
  %end = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 6
  %483 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %483)
  %484 = load ptr, ptr %end, align 4
  %cmp355.not = icmp ult ptr %482, %484
  br i1 %cmp355.not, label %if.end342.if.end380_crit_edge, label %do.end374, !prof !157

if.end342.if.end380_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end380

do.end374:                                        ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 851, i32 noundef 9, ptr noundef nonnull @.str.28) #11
  br label %if.end380

if.end380:                                        ; preds = %do.end374, %if.end342.if.end380_crit_edge
  %485 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %485)
  %486 = load ptr, ptr %cur, align 4
  %mem = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 2
  %map = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 2, i32 0, i32 6
  %487 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %map, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %486 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %488 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %489 = ptrtoint ptr %mem to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %mem, align 8
  %491 = ptrtoint ptr %490 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %490, align 4
  %493 = ptrtoint ptr %492 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %492, align 4
  %client396 = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 2, i32 0, i32 1
  %495 = ptrtoint ptr %client396 to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load ptr, ptr %client396, align 4
  %name398 = getelementptr inbounds %struct.nvif_object, ptr %496, i32 0, i32 2
  %497 = ptrtoint ptr %name398 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %name398, align 8
  %handle = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 2, i32 0, i32 3
  %499 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %handle, align 4
  %name399 = getelementptr inbounds %struct.nvif_push, ptr %470, i32 0, i32 2, i32 0, i32 2
  %501 = ptrtoint ptr %name399 to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load ptr, ptr %name399, align 8
  %503 = ptrtoint ptr %offset265 to i32
  call void @__asan_load8_noabort(i32 %503)
  %504 = load i64, ptr %offset265, align 8
  %505 = ptrtoint ptr %offset267 to i32
  call void @__asan_load8_noabort(i32 %505)
  %506 = load i64, ptr %offset267, align 8
  %add404 = add i64 %506, %504
  %conv405 = trunc i64 %add404 to i32
  call void (ptr, ptr, ...) %494(ptr noundef %mem, ptr noundef nonnull @.str.29, ptr noundef %498, i32 noundef %500, ptr noundef %502, i32 noundef %sub.ptr.sub, i32 noundef %conv314, i32 noundef %conv405, ptr noundef nonnull @.str.2) #11
  %507 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %cur, align 4
  %incdec.ptr = getelementptr i32, ptr %508, i32 1
  store ptr %incdec.ptr, ptr %cur, align 4
  %509 = ptrtoint ptr %508 to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 %conv314, ptr %508, align 4
  %510 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %push235, align 8
  %cur422 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 4
  %512 = ptrtoint ptr %cur422 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %cur422, align 4
  %seg423 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 5
  %514 = ptrtoint ptr %seg423 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %seg423, align 8
  %cmp424.not = icmp ult ptr %513, %515
  br i1 %cmp424.not, label %if.end380.if.end449_crit_edge, label %do.end443, !prof !157

if.end380.if.end449_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end449

do.end443:                                        ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.27) #11
  br label %if.end449

if.end449:                                        ; preds = %do.end443, %if.end380.if.end449_crit_edge
  %516 = ptrtoint ptr %cur422 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %cur422, align 4
  %end462 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 6
  %518 = ptrtoint ptr %end462 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %end462, align 4
  %cmp463.not = icmp ult ptr %517, %519
  br i1 %cmp463.not, label %if.end449.if.end488_crit_edge, label %do.end482, !prof !157

if.end449.if.end488_crit_edge:                    ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end488

do.end482:                                        ; preds = %if.end449
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 852, i32 noundef 9, ptr noundef nonnull @.str.28) #11
  br label %if.end488

if.end488:                                        ; preds = %do.end482, %if.end449.if.end488_crit_edge
  %520 = ptrtoint ptr %cur422 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %cur422, align 4
  %mem502 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 2
  %map504 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 2, i32 0, i32 6
  %522 = ptrtoint ptr %map504 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %map504, align 8
  %sub.ptr.lhs.cast506 = ptrtoint ptr %521 to i32
  %sub.ptr.rhs.cast507 = ptrtoint ptr %523 to i32
  %sub.ptr.sub508 = sub i32 %sub.ptr.lhs.cast506, %sub.ptr.rhs.cast507
  %524 = ptrtoint ptr %mem502 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %mem502, align 8
  %526 = ptrtoint ptr %525 to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %525, align 4
  %528 = ptrtoint ptr %527 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %527, align 4
  %client518 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 2, i32 0, i32 1
  %530 = ptrtoint ptr %client518 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %client518, align 4
  %name520 = getelementptr inbounds %struct.nvif_object, ptr %531, i32 0, i32 2
  %532 = ptrtoint ptr %name520 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %name520, align 8
  %handle521 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 2, i32 0, i32 3
  %534 = ptrtoint ptr %handle521 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load i32, ptr %handle521, align 4
  %name522 = getelementptr inbounds %struct.nvif_push, ptr %511, i32 0, i32 2, i32 0, i32 2
  %536 = ptrtoint ptr %name522 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %name522, align 8
  call void (ptr, ptr, ...) %529(ptr noundef %mem502, ptr noundef nonnull @.str.30, ptr noundef %533, i32 noundef %535, ptr noundef %537, i32 noundef %sub.ptr.sub508, i32 noundef 0, ptr noundef nonnull @.str.2) #11
  %538 = ptrtoint ptr %cur422 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %cur422, align 4
  %incdec.ptr529 = getelementptr i32, ptr %539, i32 1
  store ptr %incdec.ptr529, ptr %cur422, align 4
  %540 = ptrtoint ptr %539 to i32
  call void @__asan_store4_noabort(i32 %540)
  store i32 0, ptr %539, align 4
  %inc533 = add nuw i32 %i.21521, 1
  %541 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %nr_push, align 4
  %cmp255 = icmp ult i32 %inc533, %542
  br i1 %cmp255, label %if.end488.for.body257_crit_edge, label %if.end488.if.end1026_crit_edge

if.end488.if.end1026_crit_edge:                   ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

if.end488.for.body257_crit_edge:                  ; preds = %if.end488
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body257

if.else535:                                       ; preds = %if.else
  %mul539 = mul i32 %442, 34
  %cur.i1414 = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 4
  %543 = ptrtoint ptr %cur.i1414 to i32
  call void @__asan_load4_noabort(i32 %543)
  %544 = load ptr, ptr %cur.i1414, align 4
  %add.ptr.i1415 = getelementptr i32, ptr %544, i32 %mul539
  %end.i1416 = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 6
  %545 = ptrtoint ptr %end.i1416 to i32
  call void @__asan_load4_noabort(i32 %545)
  %546 = load ptr, ptr %end.i1416, align 4
  %cmp.not.i1417 = icmp ult ptr %add.ptr.i1415, %546
  br i1 %cmp.not.i1417, label %if.else535.PUSH_WAIT.exit1425_crit_edge, label %if.then.i1420

if.else535.PUSH_WAIT.exit1425_crit_edge:          ; preds = %if.else535
  call void @__sanitizer_cov_trace_pc() #13
  br label %PUSH_WAIT.exit1425

if.then.i1420:                                    ; preds = %if.else535
  %547 = ptrtoint ptr %440 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %440, align 8
  %call.i1418 = call i32 %548(ptr noundef %440, i32 noundef %mul539) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1418)
  %tobool.not.i1419 = icmp eq i32 %call.i1418, 0
  br i1 %tobool.not.i1419, label %if.then.i1420.PUSH_WAIT.exit1425_crit_edge, label %do.body543

if.then.i1420.PUSH_WAIT.exit1425_crit_edge:       ; preds = %if.then.i1420
  call void @__sanitizer_cov_trace_pc() #13
  br label %PUSH_WAIT.exit1425

PUSH_WAIT.exit1425:                               ; preds = %if.then.i1420.PUSH_WAIT.exit1425_crit_edge, %if.else535.PUSH_WAIT.exit1425_crit_edge
  %549 = ptrtoint ptr %cur.i1414 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %cur.i1414, align 4
  %add.ptr4.i1421 = getelementptr i32, ptr %550, i32 %mul539
  %seg.i1422 = getelementptr inbounds %struct.nvif_push, ptr %440, i32 0, i32 5
  %551 = ptrtoint ptr %seg.i1422 to i32
  call void @__asan_store4_noabort(i32 %551)
  store ptr %add.ptr4.i1421, ptr %seg.i1422, align 8
  %552 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %nr_push, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %553)
  %cmp5581517.not = icmp eq i32 %553, 0
  br i1 %cmp5581517.not, label %PUSH_WAIT.exit1425.if.end1026_crit_edge, label %for.body560.lr.ph

PUSH_WAIT.exit1425.if.end1026_crit_edge:          ; preds = %PUSH_WAIT.exit1425
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

for.body560.lr.ph:                                ; preds = %PUSH_WAIT.exit1425
  %addr568 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 10, i32 3
  %cur570 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 2
  %suffix0 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 7
  br label %for.body560

do.body543:                                       ; preds = %if.then.i1420
  call void @__sanitizer_cov_trace_pc() #13
  %drm548 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %554 = ptrtoint ptr %drm548 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %drm548, align 8
  %dev549 = getelementptr inbounds %struct.nouveau_drm, ptr %555, i32 0, i32 3
  %556 = ptrtoint ptr %dev549 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load ptr, ptr %dev549, align 8
  %dev550 = getelementptr inbounds %struct.drm_device, ptr %557, i32 0, i32 2
  %558 = ptrtoint ptr %dev550 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %dev550, align 4
  %name551 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %559, ptr noundef nonnull @.str.32, ptr noundef %name551, i32 noundef %call.i1418) #15
  br label %out

for.body560:                                      ; preds = %for.inc1022.for.body560_crit_edge, %for.body560.lr.ph
  %i.31518 = phi i32 [ 0, %for.body560.lr.ph ], [ %inc1023, %for.inc1022.for.body560_crit_edge ]
  %arrayidx562 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.31518
  %560 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx562, align 8
  %arrayidx564 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %561
  %562 = ptrtoint ptr %arrayidx564 to i32
  call void @__asan_load8_noabort(i32 %562)
  %563 = load i64, ptr %arrayidx564, align 8
  %conv566 = trunc i64 %563 to i32
  %564 = inttoptr i32 %conv566 to ptr
  %565 = ptrtoint ptr %addr568 to i32
  call void @__asan_load8_noabort(i32 %565)
  %566 = load i64, ptr %addr568, align 8
  %567 = ptrtoint ptr %cur570 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load i32, ptr %cur570, align 8
  %add571 = shl i32 %568, 2
  %569 = trunc i64 %566 to i32
  %shl572 = add i32 %569, 8
  %conv575 = add i32 %shl572, %add571
  %or576 = or i32 %conv575, 536870912
  %570 = ptrtoint ptr %suffix0 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %suffix0, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %or576, i32 %571)
  %cmp577.not = icmp eq i32 %or576, %571
  br i1 %cmp577.not, label %for.body560.do.body604_crit_edge, label %if.then585, !prof !157

for.body560.do.body604_crit_edge:                 ; preds = %for.body560
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body604

if.then585:                                       ; preds = %for.body560
  %kmap = getelementptr inbounds %struct.nouveau_bo, ptr %564, i32 0, i32 6
  %572 = ptrtoint ptr %kmap to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load ptr, ptr %kmap, align 8
  %tobool586.not = icmp eq ptr %573, null
  br i1 %tobool586.not, label %if.then587, label %if.then585.if.end595_crit_edge

if.then585.if.end595_crit_edge:                   ; preds = %if.then585
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end595

if.then587:                                       ; preds = %if.then585
  %resource = getelementptr inbounds %struct.ttm_buffer_object, ptr %564, i32 0, i32 6
  %574 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %574)
  %575 = load ptr, ptr %resource, align 4
  %num_pages = getelementptr inbounds %struct.ttm_resource, ptr %575, i32 0, i32 1
  %576 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load i32, ptr %num_pages, align 4
  %call591 = call i32 @ttm_bo_kmap(ptr noundef %564, i32 noundef 0, i32 noundef %577, ptr noundef %kmap) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call591)
  %tobool592.not = icmp eq i32 %call591, 0
  br i1 %tobool592.not, label %if.end594, label %cleanup

if.end594:                                        ; preds = %if.then587
  call void @__sanitizer_cov_trace_pc() #13
  %validate_mapped = getelementptr inbounds %struct.nouveau_bo, ptr %564, i32 0, i32 12
  %578 = ptrtoint ptr %validate_mapped to i32
  call void @__asan_store1_noabort(i32 %578)
  store i8 1, ptr %validate_mapped, align 8
  br label %if.end595

if.end595:                                        ; preds = %if.end594, %if.then585.if.end595_crit_edge
  %offset597 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.31518, i32 2
  %579 = ptrtoint ptr %offset597 to i32
  call void @__asan_load8_noabort(i32 %579)
  %580 = load i64, ptr %offset597, align 8
  %length599 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.31518, i32 3
  %581 = ptrtoint ptr %length599 to i32
  call void @__asan_load8_noabort(i32 %581)
  %582 = load i64, ptr %length599, align 8
  %add600 = add i64 %580, 17179869176
  %sub = add i64 %add600, %582
  %div1398 = lshr i64 %sub, 2
  %conv601 = trunc i64 %div1398 to i32
  call void @nouveau_bo_wr32(ptr noundef %564, i32 noundef %conv601, i32 noundef %or576) #11
  br label %do.body604

do.body604:                                       ; preds = %if.end595, %for.body560.do.body604_crit_edge
  %offset606 = getelementptr inbounds %struct.nouveau_bo, ptr %564, i32 0, i32 13
  %583 = ptrtoint ptr %offset606 to i32
  call void @__asan_load8_noabort(i32 %583)
  %584 = load i64, ptr %offset606, align 8
  %offset608 = getelementptr %struct.drm_nouveau_gem_pushbuf_push, ptr %call114, i32 %i.31518, i32 2
  %585 = ptrtoint ptr %offset608 to i32
  call void @__asan_load8_noabort(i32 %585)
  %586 = load i64, ptr %offset608, align 8
  %add609 = add i64 %586, %584
  %and610 = and i64 %add609, -8589934589
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and610)
  %tobool611.not = icmp eq i64 %and610, 0
  br i1 %tobool611.not, label %do.body604.if.end637_crit_edge, label %do.end631, !prof !157

do.body604.if.end637_crit_edge:                   ; preds = %do.body604
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end637

do.end631:                                        ; preds = %do.body604
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef nonnull @.str.26) #11
  br label %if.end637

if.end637:                                        ; preds = %do.end631, %do.body604.if.end637_crit_edge
  %587 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %587)
  %588 = load ptr, ptr %push235, align 8
  %589 = ptrtoint ptr %offset606 to i32
  call void @__asan_load8_noabort(i32 %589)
  %590 = load i64, ptr %offset606, align 8
  %591 = ptrtoint ptr %offset608 to i32
  call void @__asan_load8_noabort(i32 %591)
  %592 = load i64, ptr %offset608, align 8
  %add655 = add i64 %592, %590
  %593 = trunc i64 %add655 to i32
  %594 = and i32 %593, 536870908
  %conv660 = or i32 %594, 536870912
  %cur663 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 4
  %595 = ptrtoint ptr %cur663 to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load ptr, ptr %cur663, align 4
  %seg664 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 5
  %597 = ptrtoint ptr %seg664 to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %seg664, align 8
  %cmp665.not = icmp ult ptr %596, %598
  br i1 %cmp665.not, label %if.end637.if.end690_crit_edge, label %do.end684, !prof !157

if.end637.if.end690_crit_edge:                    ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end690

do.end684:                                        ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef nonnull @.str.27) #11
  br label %if.end690

if.end690:                                        ; preds = %do.end684, %if.end637.if.end690_crit_edge
  %599 = ptrtoint ptr %cur663 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %cur663, align 4
  %end703 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 6
  %601 = ptrtoint ptr %end703 to i32
  call void @__asan_load4_noabort(i32 %601)
  %602 = load ptr, ptr %end703, align 4
  %cmp704.not = icmp ult ptr %600, %602
  br i1 %cmp704.not, label %if.end690.if.end729_crit_edge, label %do.end723, !prof !157

if.end690.if.end729_crit_edge:                    ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end729

do.end723:                                        ; preds = %if.end690
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 885, i32 noundef 9, ptr noundef nonnull @.str.28) #11
  br label %if.end729

if.end729:                                        ; preds = %do.end723, %if.end690.if.end729_crit_edge
  %603 = ptrtoint ptr %cur663 to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load ptr, ptr %cur663, align 4
  %mem743 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 2
  %map745 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 2, i32 0, i32 6
  %605 = ptrtoint ptr %map745 to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load ptr, ptr %map745, align 8
  %sub.ptr.lhs.cast747 = ptrtoint ptr %604 to i32
  %sub.ptr.rhs.cast748 = ptrtoint ptr %606 to i32
  %sub.ptr.sub749 = sub i32 %sub.ptr.lhs.cast747, %sub.ptr.rhs.cast748
  %607 = ptrtoint ptr %mem743 to i32
  call void @__asan_load4_noabort(i32 %607)
  %608 = load ptr, ptr %mem743, align 8
  %609 = ptrtoint ptr %608 to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %608, align 4
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_load4_noabort(i32 %611)
  %612 = load ptr, ptr %610, align 4
  %client759 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 2, i32 0, i32 1
  %613 = ptrtoint ptr %client759 to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load ptr, ptr %client759, align 4
  %name761 = getelementptr inbounds %struct.nvif_object, ptr %614, i32 0, i32 2
  %615 = ptrtoint ptr %name761 to i32
  call void @__asan_load4_noabort(i32 %615)
  %616 = load ptr, ptr %name761, align 8
  %handle762 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 2, i32 0, i32 3
  %617 = ptrtoint ptr %handle762 to i32
  call void @__asan_load4_noabort(i32 %617)
  %618 = load i32, ptr %handle762, align 4
  %name763 = getelementptr inbounds %struct.nvif_push, ptr %588, i32 0, i32 2, i32 0, i32 2
  %619 = ptrtoint ptr %name763 to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load ptr, ptr %name763, align 8
  %621 = ptrtoint ptr %offset606 to i32
  call void @__asan_load8_noabort(i32 %621)
  %622 = load i64, ptr %offset606, align 8
  %623 = ptrtoint ptr %offset608 to i32
  call void @__asan_load8_noabort(i32 %623)
  %624 = load i64, ptr %offset608, align 8
  %add768 = add i64 %624, %622
  %conv769 = trunc i64 %add768 to i32
  call void (ptr, ptr, ...) %612(ptr noundef %mem743, ptr noundef nonnull @.str.34, ptr noundef %616, i32 noundef %618, ptr noundef %620, i32 noundef %sub.ptr.sub749, i32 noundef %conv660, i32 noundef %conv769, ptr noundef nonnull @.str.2) #11
  %625 = ptrtoint ptr %cur663 to i32
  call void @__asan_load4_noabort(i32 %625)
  %626 = load ptr, ptr %cur663, align 4
  %incdec.ptr775 = getelementptr i32, ptr %626, i32 1
  store ptr %incdec.ptr775, ptr %cur663, align 4
  %627 = ptrtoint ptr %626 to i32
  call void @__asan_store4_noabort(i32 %627)
  store i32 %conv660, ptr %626, align 4
  %628 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load ptr, ptr %push235, align 8
  %cur787 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 4
  %630 = ptrtoint ptr %cur787 to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %cur787, align 4
  %seg788 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 5
  %632 = ptrtoint ptr %seg788 to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load ptr, ptr %seg788, align 8
  %cmp789.not = icmp ult ptr %631, %633
  br i1 %cmp789.not, label %if.end729.if.end814_crit_edge, label %do.end808, !prof !157

if.end729.if.end814_crit_edge:                    ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end814

do.end808:                                        ; preds = %if.end729
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 886, i32 noundef 9, ptr noundef nonnull @.str.27) #11
  br label %if.end814

if.end814:                                        ; preds = %do.end808, %if.end729.if.end814_crit_edge
  %634 = ptrtoint ptr %cur787 to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load ptr, ptr %cur787, align 4
  %end827 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 6
  %636 = ptrtoint ptr %end827 to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load ptr, ptr %end827, align 4
  %cmp828.not = icmp ult ptr %635, %637
  br i1 %cmp828.not, label %if.end814.if.end853_crit_edge, label %do.end847, !prof !157

if.end814.if.end853_crit_edge:                    ; preds = %if.end814
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end853

do.end847:                                        ; preds = %if.end814
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 886, i32 noundef 9, ptr noundef nonnull @.str.28) #11
  br label %if.end853

if.end853:                                        ; preds = %do.end847, %if.end814.if.end853_crit_edge
  %638 = ptrtoint ptr %cur787 to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load ptr, ptr %cur787, align 4
  %mem867 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 2
  %map869 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 2, i32 0, i32 6
  %640 = ptrtoint ptr %map869 to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load ptr, ptr %map869, align 8
  %sub.ptr.lhs.cast871 = ptrtoint ptr %639 to i32
  %sub.ptr.rhs.cast872 = ptrtoint ptr %641 to i32
  %sub.ptr.sub873 = sub i32 %sub.ptr.lhs.cast871, %sub.ptr.rhs.cast872
  %642 = ptrtoint ptr %mem867 to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load ptr, ptr %mem867, align 8
  %644 = ptrtoint ptr %643 to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load ptr, ptr %643, align 4
  %646 = ptrtoint ptr %645 to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load ptr, ptr %645, align 4
  %client883 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 2, i32 0, i32 1
  %648 = ptrtoint ptr %client883 to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load ptr, ptr %client883, align 4
  %name885 = getelementptr inbounds %struct.nvif_object, ptr %649, i32 0, i32 2
  %650 = ptrtoint ptr %name885 to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load ptr, ptr %name885, align 8
  %handle886 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 2, i32 0, i32 3
  %652 = ptrtoint ptr %handle886 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load i32, ptr %handle886, align 4
  %name887 = getelementptr inbounds %struct.nvif_push, ptr %629, i32 0, i32 2, i32 0, i32 2
  %654 = ptrtoint ptr %name887 to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load ptr, ptr %name887, align 8
  call void (ptr, ptr, ...) %647(ptr noundef %mem867, ptr noundef nonnull @.str.30, ptr noundef %651, i32 noundef %653, ptr noundef %655, i32 noundef %sub.ptr.sub873, i32 noundef 0, ptr noundef nonnull @.str.2) #11
  %656 = ptrtoint ptr %cur787 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load ptr, ptr %cur787, align 4
  %incdec.ptr894 = getelementptr i32, ptr %657, i32 1
  store ptr %incdec.ptr894, ptr %cur787, align 4
  %658 = ptrtoint ptr %657 to i32
  call void @__asan_store4_noabort(i32 %658)
  store i32 0, ptr %657, align 4
  br label %do.body901

do.body901:                                       ; preds = %if.end974.do.body901_crit_edge, %if.end853
  %j.01516 = phi i32 [ 0, %if.end853 ], [ %inc1019, %if.end974.do.body901_crit_edge ]
  %659 = ptrtoint ptr %push235 to i32
  call void @__asan_load4_noabort(i32 %659)
  %660 = load ptr, ptr %push235, align 8
  %cur908 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 4
  %661 = ptrtoint ptr %cur908 to i32
  call void @__asan_load4_noabort(i32 %661)
  %662 = load ptr, ptr %cur908, align 4
  %seg909 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 5
  %663 = ptrtoint ptr %seg909 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load ptr, ptr %seg909, align 8
  %cmp910.not = icmp ult ptr %662, %664
  br i1 %cmp910.not, label %do.body901.if.end935_crit_edge, label %do.end929, !prof !157

do.body901.if.end935_crit_edge:                   ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end935

do.end929:                                        ; preds = %do.body901
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 888, i32 noundef 9, ptr noundef nonnull @.str.27) #11
  br label %if.end935

if.end935:                                        ; preds = %do.end929, %do.body901.if.end935_crit_edge
  %665 = ptrtoint ptr %cur908 to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load ptr, ptr %cur908, align 4
  %end948 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 6
  %667 = ptrtoint ptr %end948 to i32
  call void @__asan_load4_noabort(i32 %667)
  %668 = load ptr, ptr %end948, align 4
  %cmp949.not = icmp ult ptr %666, %668
  br i1 %cmp949.not, label %if.end935.if.end974_crit_edge, label %do.end968, !prof !157

if.end935.if.end974_crit_edge:                    ; preds = %if.end935
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end974

do.end968:                                        ; preds = %if.end935
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 888, i32 noundef 9, ptr noundef nonnull @.str.28) #11
  br label %if.end974

if.end974:                                        ; preds = %do.end968, %if.end935.if.end974_crit_edge
  %669 = ptrtoint ptr %cur908 to i32
  call void @__asan_load4_noabort(i32 %669)
  %670 = load ptr, ptr %cur908, align 4
  %mem988 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 2
  %map990 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 2, i32 0, i32 6
  %671 = ptrtoint ptr %map990 to i32
  call void @__asan_load4_noabort(i32 %671)
  %672 = load ptr, ptr %map990, align 8
  %sub.ptr.lhs.cast992 = ptrtoint ptr %670 to i32
  %sub.ptr.rhs.cast993 = ptrtoint ptr %672 to i32
  %sub.ptr.sub994 = sub i32 %sub.ptr.lhs.cast992, %sub.ptr.rhs.cast993
  %673 = ptrtoint ptr %mem988 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load ptr, ptr %mem988, align 8
  %675 = ptrtoint ptr %674 to i32
  call void @__asan_load4_noabort(i32 %675)
  %676 = load ptr, ptr %674, align 4
  %677 = ptrtoint ptr %676 to i32
  call void @__asan_load4_noabort(i32 %677)
  %678 = load ptr, ptr %676, align 4
  %client1004 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 2, i32 0, i32 1
  %679 = ptrtoint ptr %client1004 to i32
  call void @__asan_load4_noabort(i32 %679)
  %680 = load ptr, ptr %client1004, align 4
  %name1006 = getelementptr inbounds %struct.nvif_object, ptr %680, i32 0, i32 2
  %681 = ptrtoint ptr %name1006 to i32
  call void @__asan_load4_noabort(i32 %681)
  %682 = load ptr, ptr %name1006, align 8
  %handle1007 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 2, i32 0, i32 3
  %683 = ptrtoint ptr %handle1007 to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %handle1007, align 4
  %name1008 = getelementptr inbounds %struct.nvif_push, ptr %660, i32 0, i32 2, i32 0, i32 2
  %685 = ptrtoint ptr %name1008 to i32
  call void @__asan_load4_noabort(i32 %685)
  %686 = load ptr, ptr %name1008, align 8
  call void (ptr, ptr, ...) %678(ptr noundef %mem988, ptr noundef nonnull @.str.30, ptr noundef %682, i32 noundef %684, ptr noundef %686, i32 noundef %sub.ptr.sub994, i32 noundef 0, ptr noundef nonnull @.str.2) #11
  %687 = ptrtoint ptr %cur908 to i32
  call void @__asan_load4_noabort(i32 %687)
  %688 = load ptr, ptr %cur908, align 4
  %incdec.ptr1015 = getelementptr i32, ptr %688, i32 1
  store ptr %incdec.ptr1015, ptr %cur908, align 4
  %689 = ptrtoint ptr %688 to i32
  call void @__asan_store4_noabort(i32 %689)
  store i32 0, ptr %688, align 4
  %inc1019 = add nuw nsw i32 %j.01516, 1
  %exitcond1563.not = icmp eq i32 %inc1019, 32
  br i1 %exitcond1563.not, label %for.inc1022, label %if.end974.do.body901_crit_edge

if.end974.do.body901_crit_edge:                   ; preds = %if.end974
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body901

cleanup:                                          ; preds = %if.then587
  call void @__sanitizer_cov_trace_pc() #13
  %put.i = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 3
  %690 = ptrtoint ptr %put.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %put.i, align 4
  %692 = ptrtoint ptr %cur570 to i32
  call void @__asan_store4_noabort(i32 %692)
  store i32 %691, ptr %cur570, align 8
  br label %out

for.inc1022:                                      ; preds = %if.end974
  %inc1023 = add nuw i32 %i.31518, 1
  %693 = ptrtoint ptr %nr_push to i32
  call void @__asan_load4_noabort(i32 %693)
  %694 = load i32, ptr %nr_push, align 4
  %cmp558 = icmp ult i32 %inc1023, %694
  br i1 %cmp558, label %for.inc1022.for.body560_crit_edge, label %for.inc1022.if.end1026_crit_edge

for.inc1022.if.end1026_crit_edge:                 ; preds = %for.inc1022
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1026

for.inc1022.for.body560_crit_edge:                ; preds = %for.inc1022
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body560

if.end1026:                                       ; preds = %for.inc1022.if.end1026_crit_edge, %PUSH_WAIT.exit1425.if.end1026_crit_edge, %if.end488.if.end1026_crit_edge, %PUSH_WAIT.exit.if.end1026_crit_edge, %for.body219.if.end1026_crit_edge, %for.cond216.preheader.if.end1026_crit_edge
  %call1027 = call i32 @nouveau_fence_new(ptr noundef nonnull %8, i1 noundef zeroext false, ptr noundef nonnull %fence) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1027)
  %tobool1028.not = icmp eq i32 %call1027, 0
  br i1 %tobool1028.not, label %if.end1042, label %do.body1030

do.body1030:                                      ; preds = %if.end1026
  call void @__sanitizer_cov_trace_pc() #13
  %drm1035 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 1
  %695 = ptrtoint ptr %drm1035 to i32
  call void @__asan_load4_noabort(i32 %695)
  %696 = load ptr, ptr %drm1035, align 8
  %dev1036 = getelementptr inbounds %struct.nouveau_drm, ptr %696, i32 0, i32 3
  %697 = ptrtoint ptr %dev1036 to i32
  call void @__asan_load4_noabort(i32 %697)
  %698 = load ptr, ptr %dev1036, align 8
  %dev1037 = getelementptr inbounds %struct.drm_device, ptr %698, i32 0, i32 2
  %699 = ptrtoint ptr %dev1037 to i32
  call void @__asan_load4_noabort(i32 %699)
  %700 = load ptr, ptr %dev1037, align 4
  %name1038 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %700, ptr noundef nonnull @.str.36, ptr noundef %name1038, i32 noundef %call1027) #15
  %put.i1427 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 3
  %701 = ptrtoint ptr %put.i1427 to i32
  call void @__asan_load4_noabort(i32 %701)
  %702 = load i32, ptr %put.i1427, align 4
  %cur.i1428 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 2
  %703 = ptrtoint ptr %cur.i1428 to i32
  call void @__asan_store4_noabort(i32 %703)
  store i32 %702, ptr %cur.i1428, align 8
  br label %out

if.end1042:                                       ; preds = %if.end1026
  br i1 %tobool34.not, label %if.end1042.out_crit_edge, label %if.then1044

if.end1042.out_crit_edge:                         ; preds = %if.end1042
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then1044:                                      ; preds = %if.end1042
  %704 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %704)
  %705 = load ptr, ptr %fence, align 4
  %call1045 = call i32 @nouveau_fence_wait(ptr noundef %705, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1045)
  %tobool1046.not = icmp eq i32 %call1045, 0
  br i1 %tobool1046.not, label %if.then1047, label %if.then1044.out_crit_edge

if.then1044.out_crit_edge:                        ; preds = %if.then1044
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then1047:                                      ; preds = %if.then1044
  call void @__sanitizer_cov_trace_pc() #13
  %706 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %706)
  %707 = load ptr, ptr %fence, align 4
  %call1048 = call i32 @dma_fence_get_status(ptr noundef %707) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1048)
  %cmp1049 = icmp eq i32 %call1048, 1
  %spec.store.select = select i1 %cmp1049, i32 0, i32 %call1048
  br label %out

out:                                              ; preds = %if.then1047, %if.then1044.out_crit_edge, %if.end1042.out_crit_edge, %do.body1030, %cleanup, %do.body543, %do.body240, %do.body203, %do.body183
  %tobool169.not1470 = phi i1 [ false, %do.body183 ], [ %tobool169.not1472, %do.body203 ], [ %tobool169.not1472, %do.body1030 ], [ %tobool169.not1472, %if.then1044.out_crit_edge ], [ %tobool169.not1472, %if.then1047 ], [ %tobool169.not1472, %if.end1042.out_crit_edge ], [ %tobool169.not1472, %do.body240 ], [ %tobool169.not1472, %do.body543 ], [ %tobool169.not1472, %cleanup ]
  %ret.4 = phi i32 [ %ret.2.i.ph, %do.body183 ], [ %call200, %do.body203 ], [ %call1027, %do.body1030 ], [ %call1045, %if.then1044.out_crit_edge ], [ %spec.store.select, %if.then1047 ], [ 0, %if.end1042.out_crit_edge ], [ %call.i1411, %do.body240 ], [ %call.i1418, %do.body543 ], [ %call591, %cleanup ]
  %708 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %708)
  %709 = load ptr, ptr %fence, align 4
  call fastcc void @validate_fini_no_ticket(ptr noundef nonnull %op, ptr noundef nonnull %8, ptr noundef %709, ptr noundef %call121) #11
  call fastcc void @ww_acquire_fini(ptr noundef %ticket.i.i) #11
  call void @nouveau_fence_unref(ptr noundef nonnull %fence) #11
  br i1 %tobool169.not1470, label %out.out_prevalid_crit_edge, label %if.then1056

out.out_prevalid_crit_edge:                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

if.then1056:                                      ; preds = %out
  %710 = ptrtoint ptr %buffers to i32
  call void @__asan_load8_noabort(i32 %710)
  %711 = load i64, ptr %buffers, align 8
  %conv1062 = trunc i64 %711 to i32
  %712 = inttoptr i32 %conv1062 to ptr
  %713 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %713)
  %714 = load i32, ptr %nr_buffers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %714)
  %cmp10651522.not = icmp eq i32 %714, 0
  br i1 %cmp10651522.not, label %if.then1056.out_prevalid_crit_edge, label %if.then1056.for.body1067_crit_edge

if.then1056.for.body1067_crit_edge:               ; preds = %if.then1056
  br label %for.body1067

if.then1056.out_prevalid_crit_edge:               ; preds = %if.then1056
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

for.body1067:                                     ; preds = %for.inc1080.for.body1067_crit_edge, %if.then1056.for.body1067_crit_edge
  %i.41523 = phi i32 [ %inc1081, %for.inc1080.for.body1067_crit_edge ], [ 0, %if.then1056.for.body1067_crit_edge ]
  %presumed = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %call121, i32 %i.41523, i32 5
  %715 = ptrtoint ptr %presumed to i32
  call void @__asan_load4_noabort(i32 %715)
  %716 = load i32, ptr %presumed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %716)
  %tobool1069.not = icmp eq i32 %716, 0
  br i1 %tobool1069.not, label %if.end1071, label %for.body1067.for.inc1080_crit_edge

for.body1067.for.inc1080_crit_edge:               ; preds = %for.body1067
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc1080

if.end1071:                                       ; preds = %for.body1067
  %presumed1073 = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %712, i32 %i.41523, i32 5
  call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 174) #11
  %call.i.i1399 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i1399, label %if.end1071.out_prevalid_crit_edge, label %if.end.i.i

if.end1071.out_prevalid_crit_edge:                ; preds = %if.end1071
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

if.end.i.i:                                       ; preds = %if.end1071
  %717 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %presumed1073, i32 16, i32 -1226833920) #16, !srcloc !163
  %asmresult.i.i = extractvalue { i32, i32 } %717, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %copy_to_user.exit, label %if.end.i.i.out_prevalid_crit_edge

if.end.i.i.out_prevalid_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %presumed, i32 noundef 16) #11
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %presumed1073, ptr noundef %presumed, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool1077.not = icmp eq i32 %call.i1.i.i, 0
  br i1 %tobool1077.not, label %copy_to_user.exit.for.inc1080_crit_edge, label %copy_to_user.exit.out_prevalid_crit_edge

copy_to_user.exit.out_prevalid_crit_edge:         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

copy_to_user.exit.for.inc1080_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc1080

for.inc1080:                                      ; preds = %copy_to_user.exit.for.inc1080_crit_edge, %for.body1067.for.inc1080_crit_edge
  %inc1081 = add nuw i32 %i.41523, 1
  %718 = ptrtoint ptr %nr_buffers to i32
  call void @__asan_load4_noabort(i32 %718)
  %719 = load i32, ptr %nr_buffers, align 4
  %cmp1065 = icmp ult i32 %inc1081, %719
  br i1 %cmp1065, label %for.inc1080.for.body1067_crit_edge, label %for.inc1080.out_prevalid_crit_edge

for.inc1080.out_prevalid_crit_edge:               ; preds = %for.inc1080
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_prevalid

for.inc1080.for.body1067_crit_edge:               ; preds = %for.inc1080
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body1067

out_prevalid:                                     ; preds = %for.inc1080.out_prevalid_crit_edge, %copy_to_user.exit.out_prevalid_crit_edge, %if.end.i.i.out_prevalid_crit_edge, %if.end1071.out_prevalid_crit_edge, %if.then1056.out_prevalid_crit_edge, %out.out_prevalid_crit_edge, %if.then176, %do.body155, %nouveau_gem_pushbuf_validate.exit.out_prevalid_crit_edge, %validate_init.exit.i.out_prevalid_crit_edge
  %ret.6 = phi i32 [ %retval.0.i, %do.body155 ], [ %ret.4, %out.out_prevalid_crit_edge ], [ %330, %if.then176 ], [ -512, %nouveau_gem_pushbuf_validate.exit.out_prevalid_crit_edge ], [ -512, %validate_init.exit.i.out_prevalid_crit_edge ], [ %ret.4, %if.then1056.out_prevalid_crit_edge ], [ -14, %copy_to_user.exit.out_prevalid_crit_edge ], [ %ret.4, %for.inc1080.out_prevalid_crit_edge ], [ -14, %if.end1071.out_prevalid_crit_edge ], [ -14, %if.end.i.i.out_prevalid_crit_edge ]
  %reloc.1 = phi ptr [ %reloc.0, %do.body155 ], [ %reloc.0, %out.out_prevalid_crit_edge ], [ %call174, %if.then176 ], [ %reloc.0, %nouveau_gem_pushbuf_validate.exit.out_prevalid_crit_edge ], [ %reloc.0, %validate_init.exit.i.out_prevalid_crit_edge ], [ %reloc.0, %if.then1056.out_prevalid_crit_edge ], [ %reloc.0, %if.end.i.i.out_prevalid_crit_edge ], [ %reloc.0, %if.end1071.out_prevalid_crit_edge ], [ %reloc.0, %for.inc1080.out_prevalid_crit_edge ], [ %reloc.0, %copy_to_user.exit.out_prevalid_crit_edge ]
  %cmp.i1430 = icmp ugt ptr %reloc.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1430, label %out_prevalid.if.end1086_crit_edge, label %out_prevalid.if.then1085_crit_edge

out_prevalid.if.then1085_crit_edge:               ; preds = %out_prevalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then1085

out_prevalid.if.end1086_crit_edge:                ; preds = %out_prevalid
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1086

if.then1085:                                      ; preds = %out_prevalid.if.then1085_crit_edge, %out_prevalid.thread
  %reloc.11466 = phi ptr [ null, %out_prevalid.thread ], [ %reloc.1, %out_prevalid.if.then1085_crit_edge ]
  %ret.61464 = phi i32 [ -22, %out_prevalid.thread ], [ %ret.6, %out_prevalid.if.then1085_crit_edge ]
  call void @kvfree(ptr noundef %reloc.11466) #11
  br label %if.end1086

if.end1086:                                       ; preds = %if.then1085, %out_prevalid.if.end1086_crit_edge
  %ret.61465 = phi i32 [ %ret.61464, %if.then1085 ], [ %ret.6, %out_prevalid.if.end1086_crit_edge ]
  call void @kvfree(ptr noundef %call121) #11
  call void @kvfree(ptr noundef %call114) #11
  br label %out_next

out_next:                                         ; preds = %if.end1086, %if.end33.out_next_crit_edge
  %ret.7 = phi i32 [ 0, %if.end33.out_next_crit_edge ], [ %ret.61465, %if.end1086 ]
  %ib_max1088 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 5
  %720 = ptrtoint ptr %ib_max1088 to i32
  call void @__asan_load4_noabort(i32 %720)
  %721 = load i32, ptr %ib_max1088, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %721)
  %tobool1089.not = icmp eq i32 %721, 0
  br i1 %tobool1089.not, label %if.else1092, label %out_next.if.end1117_crit_edge

out_next.if.end1117_crit_edge:                    ; preds = %out_next
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1117

if.else1092:                                      ; preds = %out_next
  %chipset1096 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %722 = ptrtoint ptr %chipset1096 to i32
  call void @__asan_load2_noabort(i32 %722)
  %723 = load i16, ptr %chipset1096, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 36, i16 %723)
  %cmp1098 = icmp ugt i16 %723, 36
  br i1 %cmp1098, label %if.else1092.if.end1117_crit_edge, label %if.else1103

if.else1092.if.end1117_crit_edge:                 ; preds = %if.else1092
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end1117

if.else1103:                                      ; preds = %if.else1092
  call void @__sanitizer_cov_trace_pc() #13
  %addr1105 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 10, i32 3
  %724 = ptrtoint ptr %addr1105 to i32
  call void @__asan_load8_noabort(i32 %724)
  %725 = load i64, ptr %addr1105, align 8
  %cur1107 = getelementptr inbounds %struct.nouveau_channel, ptr %8, i32 0, i32 13, i32 2
  %726 = ptrtoint ptr %cur1107 to i32
  call void @__asan_load4_noabort(i32 %726)
  %727 = load i32, ptr %cur1107, align 8
  %add1108 = shl i32 %727, 2
  %728 = trunc i64 %725 to i32
  %shl1109 = add i32 %728, 8
  %729 = add i32 %shl1109, %add1108
  %conv1113 = or i32 %729, 536870912
  br label %if.end1117

if.end1117:                                       ; preds = %if.else1103, %if.else1092.if.end1117_crit_edge, %out_next.if.end1117_crit_edge
  %.sink = phi i32 [ %conv1113, %if.else1103 ], [ 0, %out_next.if.end1117_crit_edge ], [ 131072, %if.else1092.if.end1117_crit_edge ]
  %suffix01101 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 7
  %730 = ptrtoint ptr %suffix01101 to i32
  call void @__asan_store4_noabort(i32 %730)
  store i32 %.sink, ptr %suffix01101, align 8
  %suffix11102 = getelementptr inbounds %struct.drm_nouveau_gem_pushbuf, ptr %data, i32 0, i32 8
  %731 = ptrtoint ptr %suffix11102 to i32
  call void @__asan_store4_noabort(i32 %731)
  store i32 0, ptr %suffix11102, align 4
  %call1118 = call i32 @nouveau_abi16_put(ptr noundef nonnull %call, i32 noundef %ret.7) #11
  br label %cleanup1119

cleanup1119:                                      ; preds = %if.end1117, %if.then123, %if.then116, %do.body97, %do.body74, %do.body, %if.then31, %if.then20, %nouveau_cli.exit.cleanup1119_crit_edge
  %retval.0 = phi i32 [ %call32, %if.then31 ], [ %call1118, %if.end1117 ], [ %call64, %do.body ], [ %call87, %do.body74 ], [ %call110, %do.body97 ], [ %call118, %if.then116 ], [ %call125, %if.then123 ], [ %call21, %if.then20 ], [ -12, %nouveau_cli.exit.cleanup1119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fence) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %op) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_abi16_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @u_memcpya(i64 noundef %user, i32 noundef %nmemb, i32 noundef %size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %size, %nmemb
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul, i32 noundef 3264, i32 noundef -1) #17
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i64 %user to i32
  %0 = inttoptr i32 %conv to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then4_crit_edge, label %if.then27.i.i, !prof !157

land.rhs16.i.i.if.then4_crit_edge:                ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 230, i32 noundef 9, ptr noundef null) #11
  br label %if.then4

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef nonnull %call.i, i32 noundef %mul, i1 noundef zeroext false) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.41, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %mul, i32 -1226833920) #16, !srcloc !164
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !157

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef %mul) #11
  %2 = tail call i32 @llvm.read_register.i32(metadata !143) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !165
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef nonnull %call.i, ptr noundef %0, i32 noundef %mul) #11
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !166
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !167
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.then11.i.i, !prof !157

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %call.i, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then4

if.then4:                                         ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then4_crit_edge
  tail call void @kvfree(ptr noundef nonnull %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -14 to ptr), %if.then4 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call.i, %if.end.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dma_wait(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_dma_push(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_kmap(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_new(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fence_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_cpu_prep(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_nouveau_gem_cpu_prep, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %3) #11
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %and3 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4 = icmp ne i32 %and3, 0
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %resv, align 8
  %cond = select i1 %tobool.not, i32 3000, i32 0
  %call12 = tail call i32 @dma_resv_wait_timeout(ptr noundef %5, i1 noundef zeroext %tobool4, i1 noundef zeroext true, i32 noundef %cond) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  %6 = tail call i32 @llvm.smin.i32(i32 %call12, i32 0)
  %ret.0 = select i1 %tobool13.not, i32 -16, i32 %6
  tail call void @nouveau_bo_sync_for_cpu(ptr noundef nonnull %call) #11
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i.i.i ], [ %ret.0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_resv_wait_timeout(ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_sync_for_cpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_cpu_fini(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @nouveau_bo_sync_for_device(ptr noundef nonnull %call) #11
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i.i ], [ 0, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_sync_for_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_gem_ioctl_info(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %call1 = tail call fastcc i32 @nouveau_gem_info(ptr noundef %file_priv, ptr noundef nonnull %call, ptr noundef %data)
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #11
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ %call1, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call1, %if.then10.i.i.i.i.i.i ], [ %call1, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock_interruptible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_move_to_lru_tail(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_wait_timeout(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_gem_object_delete_work(ptr noundef %w) #0 align 64 {
entry:
  %vma.addr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vma = getelementptr inbounds %struct.nouveau_gem_object_unmap, ptr %w, i32 0, i32 1
  %0 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vma, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vma.addr.i)
  %2 = ptrtoint ptr %vma.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %vma.addr.i, align 4
  %fence.i = getelementptr inbounds %struct.nouveau_vma, ptr %1, i32 0, i32 5
  tail call void @nouveau_fence_unref(ptr noundef %fence.i) #11
  call void @nouveau_vma_del(ptr noundef nonnull %vma.addr.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vma.addr.i)
  call void @kfree(ptr noundef %w) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_cli_work_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vma_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_vm_close(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_ttm_fault(ptr noundef %vmf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %call = tail call i32 @ttm_bo_vm_reserve(ptr noundef %3, ptr noundef %vmf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @nouveau_ttm_fault_reserve_notify(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_unlock_crit_edge

if.end.error_unlock_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unlock

if.end5:                                          ; preds = %if.end
  tail call void @nouveau_bo_del_io_reserve_lru(ptr noundef %3) #11
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_flags, align 4
  %call6 = tail call i32 @vm_get_page_prot(i32 noundef %5) #11
  %call7 = tail call i32 @ttm_bo_vm_fault_reserved(ptr noundef %vmf, i32 noundef %call6, i32 noundef 16) #11
  tail call void @nouveau_bo_add_io_reserve_lru(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call7)
  %cmp = icmp eq i32 %call7, 1024
  br i1 %cmp, label %land.lhs.true, label %if.end5.error_unlock_crit_edge

if.end5.error_unlock_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unlock

land.lhs.true:                                    ; preds = %if.end5
  %flags = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.error_unlock_crit_edge

land.lhs.true.error_unlock_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %error_unlock

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

error_unlock:                                     ; preds = %land.lhs.true.error_unlock_crit_edge, %if.end5.error_unlock_crit_edge, %if.end.error_unlock_crit_edge
  %ret.0 = phi i32 [ %call2, %if.end.error_unlock_crit_edge ], [ 1024, %land.lhs.true.error_unlock_crit_edge ], [ %call7, %if.end5.error_unlock_crit_edge ]
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %resv, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %9) #11
  tail call void @ww_mutex_unlock(ptr noundef %9) #11
  br label %cleanup

cleanup:                                          ; preds = %error_unlock, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error_unlock ], [ %call, %entry.cleanup_crit_edge ], [ 1024, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_access(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_reserve(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_ttm_fault_reserve_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_del_io_reserve_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_get_page_prot(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_vm_fault_reserved(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_add_io_reserve_lru(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @validate_fini_no_ticket(ptr noundef %op, ptr nocapture noundef readonly %chan, ptr noundef %fence, ptr nocapture noundef readonly %pbbo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %op, align 4
  %cmp.i.not46 = icmp eq ptr %1, %op
  br i1 %cmp.i.not46, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %tobool2.not = icmp eq ptr %fence, null
  %vmm = getelementptr inbounds %struct.nouveau_channel, ptr %chan, i32 0, i32 3
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %drm_gem_object_put.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %39, %drm_gem_object_put.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -572
  %pbbo_index = getelementptr i8, ptr %2, i32 8
  %3 = ptrtoint ptr %pbbo_index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pbbo_index, align 4
  %arrayidx = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %pbbo, i32 %4
  br i1 %tobool2.not, label %while.body.if.end16_crit_edge, label %if.then, !prof !153

while.body.if.end16_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then:                                          ; preds = %while.body
  %write_domains = getelementptr %struct.drm_nouveau_gem_pushbuf_bo, ptr %pbbo, i32 %4, i32 3
  %5 = ptrtoint ptr %write_domains to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %write_domains, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6 = icmp ne i32 %6, 0
  tail call void @nouveau_bo_fence(ptr noundef %add.ptr, ptr noundef nonnull %fence, i1 noundef zeroext %tobool6) #11
  %7 = ptrtoint ptr %vmm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vmm, align 8
  %oclass = getelementptr inbounds %struct.nouveau_vmm, ptr %8, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %oclass to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %oclass, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463156, i32 %10)
  %cmp = icmp ugt i32 %10, -2147463156
  br i1 %cmp, label %if.then.i, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then.i:                                        ; preds = %if.then
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %12 to i32
  %13 = inttoptr i32 %conv to ptr
  %fence13 = getelementptr inbounds %struct.nouveau_vma, ptr %13, i32 0, i32 5
  tail call void @nouveau_fence_unref(ptr noundef %fence13) #11
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #11, !srcloc !168
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !153

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %15 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !157

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #11
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge
  %16 = ptrtoint ptr %fence13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fence, ptr %fence13, align 4
  br label %if.end16

if.end16:                                         ; preds = %dma_fence_get.exit, %if.then.if.end16_crit_edge, %while.body.if.end16_crit_edge
  %validate_mapped = getelementptr i8, ptr %2, i32 12
  %17 = ptrtoint ptr %validate_mapped to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %validate_mapped, align 8, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool17.not = icmp eq i8 %18, 0
  br i1 %tobool17.not, label %if.end16.if.end26_crit_edge, label %if.then24, !prof !157

if.end16.if.end26_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %kmap = getelementptr i8, ptr %2, i32 -36
  tail call void @ttm_bo_kunmap(ptr noundef %kmap) #11
  %19 = ptrtoint ptr %validate_mapped to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %validate_mapped, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end16.if.end26_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end26.list_del.exit_crit_edge

if.end26.list_del.exit_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end26.list_del.exit_crit_edge
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %reserved_by = getelementptr i8, ptr %2, i32 -4
  %28 = ptrtoint ptr %reserved_by to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %reserved_by, align 8
  %bdev.i.i = getelementptr i8, ptr %2, i32 -220
  %29 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock.i.i = getelementptr inbounds %struct.ttm_device, ptr %30, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lru_lock.i.i) #11
  %resource.i.i = getelementptr i8, ptr %2, i32 -200
  %31 = ptrtoint ptr %resource.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %resource.i.i, align 4
  tail call void @ttm_bo_move_to_lru_tail(ptr noundef %add.ptr, ptr noundef %32, ptr noundef null) #11
  %33 = ptrtoint ptr %bdev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bdev.i.i, align 8
  %lru_lock2.i.i = getelementptr inbounds %struct.ttm_device, ptr %34, i32 0, i32 6
  tail call void @_raw_spin_unlock(ptr noundef %lru_lock2.i.i) #11
  %resv.i = getelementptr i8, ptr %2, i32 -372
  %35 = ptrtoint ptr %resv.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %resv.i, align 8
  tail call void @dma_resv_reset_shared_max(ptr noundef %36) #11
  tail call void @ww_mutex_unlock(ptr noundef %36) #11
  %tobool.not.i44 = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i44, label %list_del.exit.drm_gem_object_put.exit_crit_edge, label %if.then.i45

list_del.exit.drm_gem_object_put.exit_crit_edge:  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then.i45:                                      ; preds = %list_del.exit
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !155
  tail call void @llvm.prefetch.p0(ptr nonnull %add.ptr, i32 1, i32 3, i32 1) #11
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr, ptr nonnull %add.ptr, i32 1, ptr nonnull elementtype(i32) %add.ptr) #11, !srcloc !156
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !157

if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %drm_gem_object_put.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr, i32 noundef 3) #11
  br label %drm_gem_object_put.exit

if.then.i.i.i:                                    ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  tail call void @drm_gem_object_free(ptr noundef nonnull %add.ptr) #11
  br label %drm_gem_object_put.exit

drm_gem_object_put.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.drm_gem_object_put.exit_crit_edge, %list_del.exit.drm_gem_object_put.exit_crit_edge
  %38 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %op, align 4
  %cmp.i.not = icmp eq ptr %39, %op
  br i1 %cmp.i.not, label %drm_gem_object_put.exit.while.end_crit_edge, label %drm_gem_object_put.exit.while.body_crit_edge

drm_gem_object_put.exit.while.body_crit_edge:     ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

drm_gem_object_put.exit.while.end_crit_edge:      ; preds = %drm_gem_object_put.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %drm_gem_object_put.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ttm_bo_reserve_slowpath(ptr nocapture noundef readonly %bo, ptr noundef %ticket) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %resv = getelementptr inbounds %struct.drm_gem_object, ptr %bo, i32 0, i32 9
  %0 = ptrtoint ptr %resv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %2 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.dma_resv_lock_slow_interruptible.exit_crit_edge

entry.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true.i.i:                                ; preds = %entry
  %contending_lock.i.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ticket, i32 0, i32 7
  %3 = ptrtoint ptr %contending_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %contending_lock.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, !prof !153

land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, label %land.lhs.true6.i.i

do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %5 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge

land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_resv_lock_slow_interruptible.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 333, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #11
  br label %dma_resv_lock_slow_interruptible.exit

dma_resv_lock_slow_interruptible.exit:            ; preds = %do.end20.i.i, %land.lhs.true6.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %do.end.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %land.lhs.true.i.i.dma_resv_lock_slow_interruptible.exit_crit_edge, %entry.dma_resv_lock_slow_interruptible.exit_crit_edge
  %call38.i.i = tail call i32 @ww_mutex_lock_interruptible(ptr noundef %1, ptr noundef %ticket) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %call38.i.i)
  %cmp = icmp eq i32 %call38.i.i, -4
  %spec.store.select = select i1 %cmp, i32 -512, i32 %call38.i.i
  ret i32 %spec.store.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_fence(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_kunmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_validate(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fence_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_placement_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !157

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.64, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.76) #11
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_bo_wait(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !62, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142}
!llvm.named.register.sp = !{!143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 85, i32 6}
!2 = !{ptr @nouveau_gem_object_funcs, !3, !"nouveau_gem_object_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 208, i32 35}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 759, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nouveau_gem_ioctl_pushbuf._entry, !5, !"_entry", i1 false, i1 false}
!10 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 765, i32 3}
!13 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 771, i32 3}
!17 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 789, i32 4}
!21 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 801, i32 4}
!25 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 820, i32 4}
!29 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 828, i32 4}
!33 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 843, i32 4}
!37 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.23, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.25, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.26, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 851, i32 4}
!41 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.28, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.29, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.30, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 852, i32 4}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 857, i32 4}
!48 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 885, i32 4}
!52 = !{ptr @.str.36, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 894, i32 3}
!54 = !{ptr @nouveau_gem_ioctl_pushbuf._entry.35, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nouveau_gem_ioctl_pushbuf._entry_ptr.37, !53, !"_entry_ptr", i1 false, i1 false}
!56 = distinct !{null, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../include/drm/ttm/ttm_bo_driver.h", i32 140, i32 7}
!58 = !{ptr @nouveau_ttm_vm_ops, !59, !"nouveau_ttm_vm_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 69, i32 42}
!60 = distinct !{null, !61, !"__already_done", i1 false, i1 false}
!61 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!62 = !{ptr @.str.39, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.40, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!65 = !{ptr @.str.41, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 599, i32 4}
!69 = !{ptr @.str.43, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @nouveau_gem_pushbuf_validate._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @nouveau_gem_pushbuf_validate._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 606, i32 4}
!74 = !{ptr @nouveau_gem_pushbuf_validate._entry.44, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @nouveau_gem_pushbuf_validate._entry_ptr.46, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.47, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 432, i32 3}
!78 = !{ptr @.str.48, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @validate_init._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @validate_init._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 443, i32 4}
!83 = !{ptr @validate_init._entry.49, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @validate_init._entry_ptr.51, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 455, i32 4}
!87 = !{ptr @validate_init._entry.52, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @validate_init._entry_ptr.54, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.56, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 476, i32 6}
!91 = !{ptr @validate_init._entry.55, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @validate_init._entry_ptr.57, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.59, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 485, i32 5}
!95 = !{ptr @validate_init._entry.58, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @validate_init._entry_ptr.60, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.62, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 507, i32 4}
!99 = !{ptr @validate_init._entry.61, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @validate_init._entry_ptr.63, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.64, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../include/linux/ww_mutex.h", i32 333, i32 2}
!103 = !{ptr @.str.65, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.66, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.67, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/ww_mutex.h", i32 173, i32 2}
!107 = !{ptr @.str.68, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 542, i32 4}
!109 = !{ptr @.str.69, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @validate_list._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @validate_list._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.71, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 549, i32 5}
!114 = !{ptr @validate_list._entry.70, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @validate_list._entry_ptr.72, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.74, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 556, i32 5}
!118 = !{ptr @validate_list._entry.73, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @validate_list._entry_ptr.75, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.76, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!122 = !{ptr @.str.77, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 658, i32 4}
!124 = !{ptr @.str.78, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.80, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 668, i32 4}
!129 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry.79, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.81, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.83, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 676, i32 4}
!133 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry.82, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.84, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 685, i32 5}
!137 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry.85, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.87, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.89, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/nouveau/nouveau_gem.c", i32 708, i32 4}
!141 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry.88, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @nouveau_gem_pushbuf_reloc_apply._entry_ptr.90, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{!"sp"}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{!"branch_weights", i32 1, i32 2000}
!154 = !{!"auto-init"}
!155 = !{i64 2148603805}
!156 = !{i64 2148518245, i64 2148518277, i64 2148518306, i64 2148518340, i64 2148518371, i64 2148518394}
!157 = !{!"branch_weights", i32 2000, i32 1}
!158 = !{i64 2149238529}
!159 = !{i32 0, i32 33}
!160 = !{i64 2148514970, i64 2148515002, i64 2148515031, i64 2148515065, i64 2148515096, i64 2148515119}
!161 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!162 = !{!"branch_weights", i32 1, i32 1}
!163 = !{i64 2152943096, i64 2152943121}
!164 = !{i64 2152942415, i64 2152942440}
!165 = !{i64 5437970}
!166 = !{i64 5438167}
!167 = !{i64 2152923400}
!168 = !{i64 2148515780, i64 2148515812, i64 2148515841, i64 2148515875, i64 2148515906, i64 2148515929}
!169 = !{i8 0, i8 2}
