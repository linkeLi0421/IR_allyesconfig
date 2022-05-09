; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nouveau_drm.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_drm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvif_parent_func = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nvif_mclass = type { i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_fence = type { ptr, ptr, %union.anon.93, i64, i64, i32, %struct.kref, i32 }
%union.anon.93 = type { i64 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nouveau_cli_work = type { ptr, ptr, %struct.list_head, ptr, %struct.dma_fence_cb }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.87 }
%struct.anon.87 = type { ptr, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.92, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.100, ptr, i32, ptr, i8, i32 }
%struct.anon.92 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.100 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.101, %struct.anon.102, %struct.anon.107, ptr, %struct.anon.108, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.110, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.122 }
%struct.nvif_parent = type { ptr }
%struct.anon.101 = type { ptr, i32, i32, i8 }
%struct.anon.102 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.103] }
%struct.anon.103 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.107 = type { i64, i64 }
%struct.anon.108 = type { i32, i64 }
%struct.anon.110 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.117, %struct.anon.118, %struct.anon.119, %struct.anon.120 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.111, i8 }
%union.anon.111 = type { %struct.anon.115 }
%struct.anon.115 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.117 = type { i32 }
%struct.anon.118 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.119 = type { i16, i16 }
%struct.anon.120 = type { i16, i16, i16, %struct.anon.121, i16 }
%struct.anon.121 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, %struct.mutex, i8 }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.nouveau_fence_priv = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.nv_device_v0 = type { i8, i8, [6 x i8], i64 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nouveau_channel = type { %struct.anon.104, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.105, i8, ptr, %struct.anon.106, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.104 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.105 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.106 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.201 = type { %struct.nvkm_object, ptr }
%struct.nvkm_gpuobj = type { %union.anon.109, ptr, ptr, ptr, i64, i32, %struct.nvkm_mm, ptr }
%union.anon.109 = type { ptr }
%struct.nvkm_mm = type { %struct.list_head, %struct.list_head, i32, i32 }
%struct.va_format = type { ptr, ptr }
%struct.__va_list = type { ptr }
%struct.dma_fence_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.99 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, ptr }

@__UNIQUE_ID_config325 = internal constant [57 x i8] c"nouveau.parm=config:option string to pass to driver core\00", section ".modinfo", align 1
@__param_str_config = internal constant [15 x i8] c"nouveau.config\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_config = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_config = internal constant %struct.kernel_param { ptr @__param_str_config, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_config } }, section "__param", align 4
@__UNIQUE_ID_configtype326 = internal constant [30 x i8] c"nouveau.parmtype=config:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_debug327 = internal constant [55 x i8] c"nouveau.parm=debug:debug string to pass to driver core\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"nouveau.debug\00", align 1
@nouveau_debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_charp, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype328 = internal constant [29 x i8] c"nouveau.parmtype=debug:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_noaccel329 = internal constant [55 x i8] c"nouveau.parm=noaccel:disable kernel/abi16 acceleration\00", section ".modinfo", align 1
@__param_str_noaccel = internal constant [16 x i8] c"nouveau.noaccel\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_noaccel = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_noaccel = internal constant %struct.kernel_param { ptr @__param_str_noaccel, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_noaccel } }, section "__param", align 4
@__UNIQUE_ID_noacceltype330 = internal constant [29 x i8] c"nouveau.parmtype=noaccel:int\00", section ".modinfo", align 1
@__UNIQUE_ID_modeset331 = internal constant [92 x i8] c"nouveau.parm=modeset:enable driver (default: auto, 0 = disabled, 1 = enabled, 2 = headless)\00", section ".modinfo", align 1
@nouveau_modeset = dso_local global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_str_modeset = internal constant [16 x i8] c"nouveau.modeset\00", align 1
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype332 = internal constant [29 x i8] c"nouveau.parmtype=modeset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_atomic333 = internal constant [60 x i8] c"nouveau.parm=atomic:Expose atomic ioctl (default: disabled)\00", section ".modinfo", align 1
@__param_str_atomic = internal constant [15 x i8] c"nouveau.atomic\00", align 1
@nouveau_atomic = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_atomic = internal constant %struct.kernel_param { ptr @__param_str_atomic, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_atomic } }, section "__param", align 4
@__UNIQUE_ID_atomictype334 = internal constant [28 x i8] c"nouveau.parmtype=atomic:int\00", section ".modinfo", align 1
@__UNIQUE_ID_runpm335 = internal constant [76 x i8] c"nouveau.parm=runpm:disable (0), force enable (1), optimus only default (-1)\00", section ".modinfo", align 1
@__param_str_runpm = internal constant [14 x i8] c"nouveau.runpm\00", align 1
@nouveau_runtime_pm = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_runpm = internal constant %struct.kernel_param { ptr @__param_str_runpm, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @nouveau_runtime_pm } }, section "__param", align 4
@__UNIQUE_ID_runpmtype336 = internal constant [27 x i8] c"nouveau.parmtype=runpm:int\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@driver_platform = internal global { %struct.drm_driver, [60 x i8] } zeroinitializer, align 32
@nouveau_drm_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.95, ptr @nouveau_drm_pci_table, ptr @nouveau_drm_probe, ptr @nouveau_drm_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@nouveau_platform_driver = external dso_local global %struct.platform_driver, align 4
@__initcall__kmod_nouveau__338_1401_nouveau_drm_init6 = internal global ptr @nouveau_drm_init, section ".initcall6.init", align 4
@__exitcall_nouveau_drm_exit = internal global ptr @nouveau_drm_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author339 = internal constant [31 x i8] c"nouveau.author=Nouveau Project\00", section ".modinfo", align 1
@__UNIQUE_ID_description340 = internal constant [67 x i8] c"nouveau.description=nVidia Riva/TNT/GeForce/Quadro/Tesla/Tegra K1+\00", section ".modinfo", align 1
@__UNIQUE_ID_file341 = internal constant [45 x i8] c"nouveau.file=drivers/gpu/drm/nouveau/nouveau\00", section ".modinfo", align 1
@__UNIQUE_ID_license342 = internal constant [42 x i8] c"nouveau.license=GPL and additional rights\00", section ".modinfo", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/nouveau/nouveau_drm.c\00", [58 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 855, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: suspending console...\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nouveau_do_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr = internal global ptr @nouveau_do_suspend._entry, section ".printk_index", align 4
@nouveau_do_suspend._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str, i32 857, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: suspending display...\0A\00", [37 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.7 = internal global ptr @nouveau_do_suspend._entry.5, section ".printk_index", align 4
@nouveau_do_suspend._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str, i32 863, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: evicting buffers...\0A\00", [39 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.10 = internal global ptr @nouveau_do_suspend._entry.8, section ".printk_index", align 4
@nouveau_do_suspend._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str, i32 868, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: waiting for kernel channels to go idle...\0A\00", [49 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.13 = internal global ptr @nouveau_do_suspend._entry.11, section ".printk_index", align 4
@nouveau_do_suspend._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str, i32 881, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: suspending fence...\0A\00", [39 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.16 = internal global ptr @nouveau_do_suspend._entry.14, section ".printk_index", align 4
@nouveau_do_suspend._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str, i32 889, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: suspending object tree...\0A\00", [33 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.19 = internal global ptr @nouveau_do_suspend._entry.17, section ".printk_index", align 4
@nouveau_do_suspend._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str, i32 902, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: resuming display...\0A\00", [39 x i8] zeroinitializer }, align 32
@nouveau_do_suspend._entry_ptr.22 = internal global ptr @nouveau_do_suspend._entry.20, section ".printk_index", align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@nouveau_do_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str, i32 914, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: resuming object tree...\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nouveau_do_resume\00", [46 x i8] zeroinitializer }, align 32
@nouveau_do_resume._entry_ptr = internal global ptr @nouveau_do_resume._entry, section ".printk_index", align 4
@nouveau_do_resume._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str, i32 917, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: Client resume failed with error: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nouveau_do_resume._entry_ptr.28 = internal global ptr @nouveau_do_resume._entry.25, section ".printk_index", align 4
@nouveau_do_resume._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str, i32 921, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: resuming fence...\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_do_resume._entry_ptr.31 = internal global ptr @nouveau_do_resume._entry.29, section ".printk_index", align 4
@nouveau_do_resume._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.24, ptr @.str, i32 928, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@nouveau_do_resume._entry_ptr.33 = internal global ptr @nouveau_do_resume._entry.32, section ".printk_index", align 4
@nouveau_do_resume._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.24, ptr @.str, i32 930, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: resuming console...\0A\00", [39 x i8] zeroinitializer }, align 32
@nouveau_do_resume._entry_ptr.36 = internal global ptr @nouveau_do_resume._entry.34, section ".printk_index", align 4
@nouveau_parent = internal constant { %struct.nvif_parent_func, [24 x i8] } { %struct.nvif_parent_func { ptr @nouveau_drm_debugf, ptr @nouveau_drm_errorf }, [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRM-master\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DRM\00", [28 x i8] zeroinitializer }, align 32
@nouveau_drm_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drm->clients_lock\00", [45 x i8] zeroinitializer }, align 32
@nouveau_drm_device_init.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&drm->tile.lock\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nouveau_drm_debugf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str, i32 529, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %pV\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nouveau_drm_debugf\00", [45 x i8] zeroinitializer }, align 32
@nouveau_drm_debugf._entry_ptr = internal global ptr @nouveau_drm_debugf._entry, section ".printk_index", align 4
@nouveau_drm_errorf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.44, ptr @.str, i32 515, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nouveau_drm_errorf\00", [45 x i8] zeroinitializer }, align 32
@nouveau_drm_errorf._entry_ptr = internal global ptr @nouveau_drm_errorf._entry, section ".printk_index", align 4
@nouveau_cli_init.mems = internal constant { [4 x %struct.nvif_mclass], [32 x i8] } { [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446773, i32 -1 }, %struct.nvif_mclass { i32 -2147463157, i32 -1 }, %struct.nvif_mclass { i32 -2147483637, i32 -1 }, %struct.nvif_mclass zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nouveau_cli_init.mmus = internal constant { [4 x %struct.nvif_mclass], [32 x i8] } { [4 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147446775, i32 -1 }, %struct.nvif_mclass { i32 -2147463159, i32 -1 }, %struct.nvif_mclass { i32 -2147483639, i32 -1 }, %struct.nvif_mclass zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nouveau_cli_init.vmms = internal constant { [6 x %struct.nvif_mclass], [48 x i8] } { [6 x %struct.nvif_mclass] [%struct.nvif_mclass { i32 -2147434483, i32 -1 }, %struct.nvif_mclass { i32 -2147438579, i32 -1 }, %struct.nvif_mclass { i32 -2147446771, i32 -1 }, %struct.nvif_mclass { i32 -2147463155, i32 -1 }, %struct.nvif_mclass { i32 -2147483635, i32 -1 }, %struct.nvif_mclass zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@nouveau_cli_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cli->mutex\00", [20 x i8] zeroinitializer }, align 32
@nouveau_cli_init.__key.47 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&cli->work)\00", [34 x i8] zeroinitializer }, align 32
@nouveau_cli_init.__key.49 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cli->lock\00", [21 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str, i32 240, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Client allocation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nouveau_cli_init\00", [47 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr = internal global ptr @nouveau_cli_init._entry, section ".printk_index", align 4
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"drmDevice\00", [22 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str, i32 251, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Device allocation failed: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.56 = internal global ptr @nouveau_cli_init._entry.54, section ".printk_index", align 4
@nouveau_cli_init._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.52, ptr @.str, i32 257, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No supported MMU class\0A\00", [36 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.59 = internal global ptr @nouveau_cli_init._entry.57, section ".printk_index", align 4
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drmMmu\00", [25 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.52, ptr @.str, i32 264, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: MMU allocation failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.63 = internal global ptr @nouveau_cli_init._entry.61, section ".printk_index", align 4
@nouveau_cli_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.52, ptr @.str, i32 270, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No supported VMM class\0A\00", [36 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.66 = internal global ptr @nouveau_cli_init._entry.64, section ".printk_index", align 4
@nouveau_cli_init._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.52, ptr @.str, i32 276, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: VMM allocation failed: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.69 = internal global ptr @nouveau_cli_init._entry.67, section ".printk_index", align 4
@nouveau_cli_init._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.52, ptr @.str, i32 282, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: No supported MEM class\0A\00", [36 x i8] zeroinitializer }, align 32
@nouveau_cli_init._entry_ptr.72 = internal global ptr @nouveau_cli_init._entry.70, section ".printk_index", align 4
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@nouveau_accel_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str, i32 485, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: failed to initialise sync subsystem, %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nouveau_accel_init\00", [45 x i8] zeroinitializer }, align 32
@nouveau_accel_init._entry_ptr = internal global ptr @nouveau_accel_init._entry, section ".printk_index", align 4
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drmUsermode\00", [20 x i8] zeroinitializer }, align 32
@nouveau_accel_gr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str, i32 363, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: failed to create kernel channel, %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nouveau_accel_gr_init\00", [42 x i8] zeroinitializer }, align 32
@nouveau_accel_gr_init._entry_ptr = internal global ptr @nouveau_accel_gr_init._entry, section ".printk_index", align 4
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"drmNvsw\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"segment overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pushbuf overrun\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"[%s/%08x:%s] %08x: %08x incr subc %d mthd 0x%04x size %d - %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[%s/%08x:%s] %08x: %08x-> 0x0000\0A\00", [62 x i8] zeroinitializer }, align 32
@nouveau_accel_gr_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.77, ptr @.str, i32 384, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to allocate sw class, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nouveau_accel_gr_init._entry_ptr.88 = internal global ptr @nouveau_accel_gr_init._entry.86, section ".printk_index", align 4
@nouveau_accel_gr_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.77, ptr @.str, i32 398, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to allocate notifier, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@nouveau_accel_gr_init._entry_ptr.91 = internal global ptr @nouveau_accel_gr_init._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drmM2mfNtfy\00", [20 x i8] zeroinitializer }, align 32
@nouveau_accel_ce_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str, i32 329, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: failed to create ce channel, %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nouveau_accel_ce_init\00", [42 x i8] zeroinitializer }, align 32
@nouveau_accel_ce_init._entry_ptr = internal global ptr @nouveau_accel_ce_init._entry, section ".printk_index", align 4
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nouveau\00", [24 x i8] zeroinitializer }, align 32
@nouveau_drm_pci_table = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 4318, i32 -1, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id { i32 4818, i32 -1, i32 -1, i32 -1, i32 196608, i32 16711680, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nouveau_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @nouveau_pmops_suspend, ptr @nouveau_pmops_resume, ptr @nouveau_pmops_freeze, ptr @nouveau_pmops_thaw, ptr @nouveau_pmops_freeze, ptr @nouveau_pmops_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_pmops_runtime_suspend, ptr @nouveau_pmops_runtime_resume, ptr @nouveau_pmops_runtime_idle }, [36 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@driver_pci = internal global { %struct.drm_driver, [60 x i8] } zeroinitializer, align 32
@quirk_broken_nv_runpm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str, i32 739, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Disabling PCI power management to avoid bug\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"quirk_broken_nv_runpm\00", [42 x i8] zeroinitializer }, align 32
@quirk_broken_nv_runpm._entry_ptr = internal global ptr @quirk_broken_nv_runpm._entry, section ".printk_index", align 4
@nouveau_pmops_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str, i32 1057, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: resume failed with: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nouveau_pmops_runtime_resume\00", [35 x i8] zeroinitializer }, align 32
@nouveau_pmops_runtime_resume._entry_ptr = internal global ptr @nouveau_pmops_runtime_resume._entry, section ".printk_index", align 4
@driver_stub = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @nouveau_drm_open, ptr @nouveau_drm_postclose, ptr @nouveau_vga_lastclose, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_drm_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @nouveau_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @nouveau_display_dumb_create, ptr @drm_gem_ttm_dumb_map_offset, ptr null, i32 1, i32 3, i32 1, ptr @.str.95, ptr @.str.101, ptr @.str.102, i32 -2147483637, ptr @nouveau_ioctls, i32 69, ptr @nouveau_driver_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"nVidia Riva/TNT/GeForce/Quadro/Tesla/Tegra K1+\00", [49 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20120801\00", [23 x i8] zeroinitializer }, align 32
@nouveau_ioctls = internal constant { [69 x %struct.drm_ioctl_desc], [272 x i8] } { [69 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @nouveau_abi16_ioctl_getparam, ptr @.str.104 }, %struct.drm_ioctl_desc { i32 -1072667583, i32 7, ptr @drm_invalid_op, ptr @.str.105 }, %struct.drm_ioctl_desc { i32 -1067948990, i32 32, ptr @nouveau_abi16_ioctl_channel_alloc, ptr @.str.106 }, %struct.drm_ioctl_desc { i32 1074029635, i32 32, ptr @nouveau_abi16_ioctl_channel_free, ptr @.str.107 }, %struct.drm_ioctl_desc { i32 1074553924, i32 32, ptr @nouveau_abi16_ioctl_grobj_alloc, ptr @.str.108 }, %struct.drm_ioctl_desc { i32 -1072667579, i32 32, ptr @nouveau_abi16_ioctl_notifierobj_alloc, ptr @.str.109 }, %struct.drm_ioctl_desc { i32 1074291782, i32 32, ptr @nouveau_abi16_ioctl_gpuobj_free, ptr @.str.110 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667576, i32 32, ptr @nouveau_svmm_init, ptr @.str.111 }, %struct.drm_ioctl_desc { i32 -1069521847, i32 32, ptr @nouveau_svmm_bind, ptr @.str.112 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1070570368, i32 32, ptr @nouveau_gem_ioctl_new, ptr @.str.113 }, %struct.drm_ioctl_desc { i32 -1069521791, i32 32, ptr @nouveau_gem_ioctl_pushbuf, ptr @.str.114 }, %struct.drm_ioctl_desc { i32 1074291842, i32 32, ptr @nouveau_gem_ioctl_cpu_prep, ptr @.str.115 }, %struct.drm_ioctl_desc { i32 1074029699, i32 32, ptr @nouveau_gem_ioctl_cpu_fini, ptr @.str.116 }, %struct.drm_ioctl_desc { i32 -1071094652, i32 32, ptr @nouveau_gem_ioctl_info, ptr @.str.117 }], [272 x i8] zeroinitializer }, align 32
@nouveau_driver_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @nouveau_drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%d]\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOUVEAU_GETPARAM\00", [47 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOUVEAU_SETPARAM\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NOUVEAU_CHANNEL_ALLOC\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NOUVEAU_CHANNEL_FREE\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NOUVEAU_GROBJ_ALLOC\00", [44 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"NOUVEAU_NOTIFIEROBJ_ALLOC\00", [38 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NOUVEAU_GPUOBJ_FREE\00", [44 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOUVEAU_SVM_INIT\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOUVEAU_SVM_BIND\00", [47 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"NOUVEAU_GEM_NEW\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"NOUVEAU_GEM_PUSHBUF\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NOUVEAU_GEM_CPU_PREP\00", [43 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"NOUVEAU_GEM_CPU_FINI\00", [43 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NOUVEAU_GEM_INFO\00", [47 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Loading Nouveau with parameters:\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... tv_disable   : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_tv_disable = external dso_local local_unnamed_addr global i32, align 4
@.str.120 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... ignorelid    : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_ignorelid = external dso_local local_unnamed_addr global i32, align 4
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... duallink     : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_duallink = external dso_local local_unnamed_addr global i32, align 4
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... nofbaccel    : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_nofbaccel = external dso_local local_unnamed_addr global i32, align 4
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... config       : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... debug        : %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... noaccel      : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... modeset      : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... runpm        : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... vram_pushbuf : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_vram_pushbuf = external dso_local local_unnamed_addr global i32, align 4
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"... hdmimhz      : %d\0A\00", [41 x i8] zeroinitializer }, align 32
@nouveau_hdmimhz = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [16 x i64] [i64 14, i64 32, i64 107, i64 110, i64 5998, i64 16494, i64 20591, i64 33391, i64 36975, i64 41071, i64 41327, i64 45167, i64 49263, i64 50031, i64 50287, i64 51055]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 170, i64 172]
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"nouveau_config\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 74, i32 14 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"nouveau_debug\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 78, i32 14 }
@___asan_gen_.139 = private unnamed_addr constant [16 x i8] c"nouveau_noaccel\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 82, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"nouveau_modeset\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 87, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"nouveau_atomic\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 91, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [19 x i8] c"nouveau_runtime_pm\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 95, i32 12 }
@___asan_gen_.151 = private unnamed_addr constant [16 x i8] c"driver_platform\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 100, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant [23 x i8] c"nouveau_drm_pci_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1309, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 179, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 855, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 857, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 863, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 868, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 881, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 889, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 902, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 914, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 917, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 921, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 928, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 930, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"nouveau_parent\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 534, i32 1 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 553, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 557, i32 30 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 565, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 566, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 529, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 515, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [5 x i8] c"mems\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 196, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [5 x i8] c"mmus\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 203, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [5 x i8] c"vmms\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 210, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 221, i32 41 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 223, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 226, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 228, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 240, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 244, i32 44 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 251, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 257, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 261, i32 43 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 264, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 270, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 276, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 282, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 485, i32 3 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 492, i32 32 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 363, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 373, i32 47 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 380, i32 5 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 384, i32 4 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 398, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 403, i32 47 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 329, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1310, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"nouveau_drm_pci_table\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1265, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant [15 x i8] c"nouveau_pm_ops\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1296, i32 32 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 757, i32 50 }
@___asan_gen_.433 = private unnamed_addr constant [11 x i8] c"driver_pci\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 99, i32 26 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 739, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1057, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant [12 x i8] c"driver_stub\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1224, i32 1 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1253, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1257, i32 10 }
@___asan_gen_.463 = private unnamed_addr constant [15 x i8] c"nouveau_ioctls\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1164, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c"nouveau_driver_fops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1209, i32 1 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1101, i32 31 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1165, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1166, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1167, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1168, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1169, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1170, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1171, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1172, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1173, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1174, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1175, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1176, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1177, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1178, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1281, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1283, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1284, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1285, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1286, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1287, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1288, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1289, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1290, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1291, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1292, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.548 = private constant [41 x i8] c"../drivers/gpu/drm/nouveau/nouveau_drm.c\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 1293, i32 2 }
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_atomic333, ptr @__UNIQUE_ID_atomictype334, ptr @__UNIQUE_ID_author339, ptr @__UNIQUE_ID_config325, ptr @__UNIQUE_ID_configtype326, ptr @__UNIQUE_ID_debug327, ptr @__UNIQUE_ID_debugtype328, ptr @__UNIQUE_ID_description340, ptr @__UNIQUE_ID_file341, ptr @__UNIQUE_ID_license342, ptr @__UNIQUE_ID_modeset331, ptr @__UNIQUE_ID_modesettype332, ptr @__UNIQUE_ID_noaccel329, ptr @__UNIQUE_ID_noacceltype330, ptr @__UNIQUE_ID_runpm335, ptr @__UNIQUE_ID_runpmtype336, ptr @__exitcall_nouveau_drm_exit, ptr @__initcall__kmod_nouveau__338_1401_nouveau_drm_init6, ptr @__param_atomic, ptr @__param_config, ptr @__param_debug, ptr @__param_modeset, ptr @__param_noaccel, ptr @__param_runpm, ptr @nouveau_accel_ce_init._entry, ptr @nouveau_accel_ce_init._entry_ptr, ptr @nouveau_accel_gr_init._entry, ptr @nouveau_accel_gr_init._entry.86, ptr @nouveau_accel_gr_init._entry.89, ptr @nouveau_accel_gr_init._entry_ptr, ptr @nouveau_accel_gr_init._entry_ptr.88, ptr @nouveau_accel_gr_init._entry_ptr.91, ptr @nouveau_accel_init._entry, ptr @nouveau_accel_init._entry_ptr, ptr @nouveau_cli_init._entry, ptr @nouveau_cli_init._entry.54, ptr @nouveau_cli_init._entry.57, ptr @nouveau_cli_init._entry.61, ptr @nouveau_cli_init._entry.64, ptr @nouveau_cli_init._entry.67, ptr @nouveau_cli_init._entry.70, ptr @nouveau_cli_init._entry_ptr, ptr @nouveau_cli_init._entry_ptr.56, ptr @nouveau_cli_init._entry_ptr.59, ptr @nouveau_cli_init._entry_ptr.63, ptr @nouveau_cli_init._entry_ptr.66, ptr @nouveau_cli_init._entry_ptr.69, ptr @nouveau_cli_init._entry_ptr.72, ptr @nouveau_do_resume._entry, ptr @nouveau_do_resume._entry.25, ptr @nouveau_do_resume._entry.29, ptr @nouveau_do_resume._entry.32, ptr @nouveau_do_resume._entry.34, ptr @nouveau_do_resume._entry_ptr, ptr @nouveau_do_resume._entry_ptr.28, ptr @nouveau_do_resume._entry_ptr.31, ptr @nouveau_do_resume._entry_ptr.33, ptr @nouveau_do_resume._entry_ptr.36, ptr @nouveau_do_suspend._entry, ptr @nouveau_do_suspend._entry.11, ptr @nouveau_do_suspend._entry.14, ptr @nouveau_do_suspend._entry.17, ptr @nouveau_do_suspend._entry.20, ptr @nouveau_do_suspend._entry.5, ptr @nouveau_do_suspend._entry.8, ptr @nouveau_do_suspend._entry_ptr, ptr @nouveau_do_suspend._entry_ptr.10, ptr @nouveau_do_suspend._entry_ptr.13, ptr @nouveau_do_suspend._entry_ptr.16, ptr @nouveau_do_suspend._entry_ptr.19, ptr @nouveau_do_suspend._entry_ptr.22, ptr @nouveau_do_suspend._entry_ptr.7, ptr @nouveau_drm_debugf._entry, ptr @nouveau_drm_debugf._entry_ptr, ptr @nouveau_drm_errorf._entry, ptr @nouveau_drm_errorf._entry_ptr, ptr @nouveau_drm_exit, ptr @nouveau_pmops_runtime_resume._entry, ptr @nouveau_pmops_runtime_resume._entry_ptr, ptr @quirk_broken_nv_runpm._entry, ptr @quirk_broken_nv_runpm._entry_ptr, ptr @nouveau_config, ptr @nouveau_debug, ptr @nouveau_noaccel, ptr @nouveau_modeset, ptr @nouveau_atomic, ptr @nouveau_runtime_pm, ptr @driver_platform, ptr @nouveau_drm_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.35, ptr @nouveau_parent, ptr @.str.37, ptr @.str.38, ptr @nouveau_drm_device_init.__key, ptr @.str.39, ptr @nouveau_drm_device_init.__key.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @nouveau_cli_init.mems, ptr @nouveau_cli_init.mmus, ptr @nouveau_cli_init.vmms, ptr @.str.45, ptr @nouveau_cli_init.__key, ptr @.str.46, ptr @nouveau_cli_init.__key.47, ptr @.str.48, ptr @nouveau_cli_init.__key.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @nouveau_drm_pci_table, ptr @nouveau_pm_ops, ptr @.str.96, ptr @driver_pci, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @driver_stub, ptr @.str.101, ptr @.str.102, ptr @nouveau_ioctls, ptr @nouveau_driver_fops, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], section "llvm.metadata"
@0 = internal global [139 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_noaccel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_atomic to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_runtime_pm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_platform to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_suspend._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_resume._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_resume._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_resume._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_do_resume._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_parent to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_device_init.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_debugf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_errorf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.mems to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.mmus to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.vmms to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.__key.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init.__key.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_cli_init._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_accel_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_accel_gr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_accel_gr_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_accel_gr_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_accel_ce_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_drm_pci_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_pci to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @quirk_broken_nv_runpm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_pmops_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_stub to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_ioctls to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nouveau_driver_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_cli_work_queue(ptr noundef %cli, ptr noundef %fence, ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fence, null
  br i1 %tobool.not.i, label %entry.dma_fence_get.exit_crit_edge, label %if.then.i

entry.dma_fence_get.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_get.exit

if.then.i:                                        ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.dma_fence, ptr %fence, i32 0, i32 6
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #12, !srcloc !319
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !320

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !321

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge:   ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dma_fence_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %dma_fence_get.exit

dma_fence_get.exit:                               ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.dma_fence_get.exit_crit_edge, %entry.dma_fence_get.exit_crit_edge
  %fence1 = getelementptr inbounds %struct.nouveau_cli_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %fence1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fence, ptr %fence1, align 4
  %cli2 = getelementptr %struct.nouveau_cli_work, ptr %work, i32 0, i32 1
  %3 = ptrtoint ptr %cli2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cli, ptr %cli2, align 4
  %lock = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %head = getelementptr inbounds %struct.nouveau_cli_work, ptr %work, i32 0, i32 2
  %worker = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 14
  %prev.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 14, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %5, ptr noundef %worker) #12
  br i1 %call.i.i, label %if.end.i.i, label %dma_fence_get.exit.list_add_tail.exit_crit_edge

dma_fence_get.exit.list_add_tail.exit_crit_edge:  ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %dma_fence_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %prev.i, align 4
  %7 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %worker, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nouveau_cli_work, ptr %work, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %head, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %dma_fence_get.exit.list_add_tail.exit_crit_edge
  %cb = getelementptr inbounds %struct.nouveau_cli_work, ptr %work, i32 0, i32 4
  %call3 = tail call i32 @dma_fence_add_callback(ptr noundef %fence, ptr noundef %cb, ptr noundef nonnull @nouveau_cli_work_fence) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %list_add_tail.exit.if.end_crit_edge, label %if.then

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %cli2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cli2, align 4
  %work1.i = getelementptr inbounds %struct.nouveau_cli, ptr %11, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %work1.i) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_add_callback(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_cli_work_fence(ptr nocapture noundef readnone %fence, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cli = getelementptr i8, ptr %cb, i32 -16
  %0 = ptrtoint ptr %cli to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cli, align 4
  %work1 = getelementptr inbounds %struct.nouveau_cli, ptr %1, i32 0, i32 13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nouveau_drm_device_remove(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %device = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #12
  tail call void @drm_dev_unplug(ptr noundef %dev) #12
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %device2 = getelementptr inbounds %struct.nvkm_client, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %device2 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %device2, align 8
  %call3 = tail call ptr @nvkm_device_find(i64 noundef %5) #12
  %6 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %device, align 4
  tail call fastcc void @nouveau_drm_device_fini(ptr noundef %dev)
  tail call void @drm_dev_put(ptr noundef %dev) #12
  call void @nvkm_device_del(ptr noundef nonnull %device) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_device_find(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_drm_device_fini(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  %2 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2.i = icmp eq i32 %2, 1
  br i1 %cmp2.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #12
  %5 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev2, align 4
  tail call void @pm_runtime_forbid(ptr noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @nouveau_led_fini(ptr noundef %dev) #12
  tail call void @nouveau_fbcon_fini(ptr noundef %dev) #12
  tail call void @nouveau_hwmon_fini(ptr noundef %dev) #12
  tail call void @nouveau_debugfs_fini(ptr noundef %1) #12
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %7 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nouveau_display_fini(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @nouveau_display_destroy(ptr noundef %dev) #12
  tail call fastcc void @nouveau_accel_fini(ptr noundef %1)
  tail call void @nouveau_bios_takedown(ptr noundef %dev) #12
  tail call void @nouveau_ttm_fini(ptr noundef %1) #12
  tail call void @nouveau_vga_fini(ptr noundef %1) #12
  %clients_lock = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %clients_lock, i32 noundef 0) #12
  %clients = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %clients to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clients, align 4
  %cmp.not61 = icmp eq ptr %10, %clients
  br i1 %cmp.not61, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %if.end17.for.body_crit_edge, %if.end6.for.body_crit_edge
  %.pn.in62 = phi ptr [ %.pn65, %if.end17.for.body_crit_edge ], [ %10, %if.end6.for.body_crit_edge ]
  %cli.064 = getelementptr i8, ptr %.pn.in62, i32 -588
  %11 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn65 = load ptr, ptr %.pn.in62, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in62) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in62, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in62 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in62, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in62, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %mutex = getelementptr i8, ptr %.pn.in62, i32 -520
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %abi16 = getelementptr i8, ptr %.pn.in62, i32 8
  %20 = ptrtoint ptr %abi16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %abi16, align 4
  %tobool14.not = icmp eq ptr %21, null
  br i1 %tobool14.not, label %list_del.exit.if.end17_crit_edge, label %if.then15

list_del.exit.if.end17_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nouveau_abi16_fini(ptr noundef nonnull %21) #12
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %list_del.exit.if.end17_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #12
  tail call fastcc void @nouveau_cli_fini(ptr noundef %cli.064)
  tail call void @kfree(ptr noundef %cli.064) #12
  %cmp.not = icmp eq ptr %.pn65, %clients
  br i1 %cmp.not, label %if.end17.for.end_crit_edge, label %if.end17.for.body_crit_edge

if.end17.for.body_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end17.for.end_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end17.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %clients_lock) #12
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2
  tail call fastcc void @nouveau_cli_fini(ptr noundef %client)
  %master = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 1
  tail call fastcc void @nouveau_cli_fini(ptr noundef %master)
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %1, align 4
  tail call void @mutex_destroy(ptr noundef %clients_lock) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_pmops_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %switch_power_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.end [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge16
  ]

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  tail call void @pci_disable_device(ptr noundef %add.ptr) #12
  %call7 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 42949600) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge16
  %retval.0 = phi i32 [ 0, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge16 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_do_suspend(ptr noundef %dev, i1 noundef zeroext %runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  tail call void @nouveau_led_suspend(ptr noundef %dev) #12
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.do.body37_crit_edge, label %do.body

entry.do.body37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %4 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body.do.end11_crit_edge, label %do.body3

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end11

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %drm5 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm5, align 8
  %dev6 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 8
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev7, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef %name) #15
  br label %do.end11

do.end11:                                         ; preds = %do.body3, %do.body.do.end11_crit_edge
  tail call void @nouveau_fbcon_set_suspend(ptr noundef %dev, i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %11 = load i32, ptr @__drm_debug, align 4
  %and.i230 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i230)
  %tobool.i231.not = icmp eq i32 %and.i230, 0
  br i1 %tobool.i231.not, label %do.end11.do.end30_crit_edge, label %do.body15

do.end11.do.end30_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

do.body15:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  %drm21 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %drm21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %drm21, align 8
  %dev22 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 8
  %dev23 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev23, align 4
  %name24 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.6, ptr noundef %name24) #15
  br label %do.end30

do.end30:                                         ; preds = %do.body15, %do.end11.do.end30_crit_edge
  %call32 = tail call i32 @nouveau_display_suspend(ptr noundef %dev, i1 noundef zeroext %runtime) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end30.do.body37_crit_edge, label %do.end30.cleanup_crit_edge

do.end30.cleanup_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end30.do.body37_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body37

do.body37:                                        ; preds = %do.end30.do.body37_crit_edge, %entry.do.body37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %18 = load i32, ptr @__drm_debug, align 4
  %and.i232 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.i233.not = icmp eq i32 %and.i232, 0
  br i1 %tobool.i233.not, label %do.body37.do.end55_crit_edge, label %do.body40

do.body37.do.end55_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

do.body40:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %drm46 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %drm46 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drm46, align 8
  %dev47 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev47, align 8
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev48, align 4
  %name49 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.9, ptr noundef %name49) #15
  br label %do.end55

do.end55:                                         ; preds = %do.body40, %do.body37.do.end55_crit_edge
  %ttm = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 8
  %arrayidx.i = getelementptr %struct.nouveau_drm, ptr %1, i32 0, i32 8, i32 0, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %call59 = tail call i32 @ttm_resource_manager_evict_all(ptr noundef %ttm, ptr noundef %26) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %27 = load i32, ptr @__drm_debug, align 4
  %and.i234 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i234)
  %tobool.i235.not = icmp eq i32 %and.i234, 0
  br i1 %tobool.i235.not, label %do.end55.do.end78_crit_edge, label %do.body63

do.end55.do.end78_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

do.body63:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  %drm69 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %drm69 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drm69, align 8
  %dev70 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev70, align 8
  %dev71 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev71, align 4
  %name72 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.12, ptr noundef %name72) #15
  br label %do.end78

do.end78:                                         ; preds = %do.body63, %do.end55.do.end78_crit_edge
  %cechan = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 12
  %34 = ptrtoint ptr %cechan to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cechan, align 8
  %tobool79.not = icmp eq ptr %35, null
  br i1 %tobool79.not, label %do.end78.if.end86_crit_edge, label %if.then80

do.end78.if.end86_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.then80:                                        ; preds = %do.end78
  %call82 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then80.if.end86_crit_edge, label %if.then80.fail_display_crit_edge

if.then80.fail_display_crit_edge:                 ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_display

if.then80.if.end86_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end86

if.end86:                                         ; preds = %if.then80.if.end86_crit_edge, %do.end78.if.end86_crit_edge
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 13
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channel, align 4
  %tobool87.not = icmp eq ptr %37, null
  br i1 %tobool87.not, label %if.end86.do.body95_crit_edge, label %if.then88

if.end86.do.body95_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95

if.then88:                                        ; preds = %if.end86
  %call90 = tail call i32 @nouveau_channel_idle(ptr noundef nonnull %37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.then88.do.body95_crit_edge, label %if.then88.fail_display_crit_edge

if.then88.fail_display_crit_edge:                 ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_display

if.then88.do.body95_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body95

do.body95:                                        ; preds = %if.then88.do.body95_crit_edge, %if.end86.do.body95_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %38 = load i32, ptr @__drm_debug, align 4
  %and.i236 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i236)
  %tobool.i237.not = icmp eq i32 %and.i236, 0
  br i1 %tobool.i237.not, label %do.body95.do.end113_crit_edge, label %do.body98

do.body95.do.end113_crit_edge:                    ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end113

do.body98:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #14
  %drm104 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %drm104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drm104, align 8
  %dev105 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %dev105 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev105, align 8
  %dev106 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev106, align 4
  %name107 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %44, ptr noundef nonnull @.str.15, ptr noundef %name107) #15
  br label %do.end113

do.end113:                                        ; preds = %do.body98, %do.body95.do.end113_crit_edge
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fence, align 8
  %tobool114.not = icmp eq ptr %46, null
  br i1 %tobool114.not, label %do.end113.do.body124_crit_edge, label %land.lhs.true

do.end113.do.body124_crit_edge:                   ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

land.lhs.true:                                    ; preds = %do.end113
  %suspend = getelementptr inbounds %struct.nouveau_fence_priv, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %suspend, align 4
  %tobool116.not = icmp eq ptr %48, null
  br i1 %tobool116.not, label %land.lhs.true.do.body124_crit_edge, label %if.then117

land.lhs.true.do.body124_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

if.then117:                                       ; preds = %land.lhs.true
  %call120 = tail call zeroext i1 %48(ptr noundef %1) #12
  br i1 %call120, label %if.then117.do.body124_crit_edge, label %if.then117.fail_display_crit_edge

if.then117.fail_display_crit_edge:                ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_display

if.then117.do.body124_crit_edge:                  ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body124

do.body124:                                       ; preds = %if.then117.do.body124_crit_edge, %land.lhs.true.do.body124_crit_edge, %do.end113.do.body124_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %49 = load i32, ptr @__drm_debug, align 4
  %and.i238 = and i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.i239.not = icmp eq i32 %and.i238, 0
  br i1 %tobool.i239.not, label %do.body124.do.end142_crit_edge, label %do.body127

do.body124.do.end142_crit_edge:                   ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end142

do.body127:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #14
  %drm133 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %drm133 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %drm133, align 8
  %dev134 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev134, align 8
  %dev135 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %dev135 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev135, align 4
  %name136 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.18, ptr noundef %name136) #15
  br label %do.end142

do.end142:                                        ; preds = %do.body127, %do.body124.do.end142_crit_edge
  %master = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 1
  %call143 = tail call i32 @nvif_client_suspend(ptr noundef %master) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.end142.cleanup_crit_edge, label %fail_client

do.end142.cleanup_crit_edge:                      ; preds = %do.end142
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

fail_client:                                      ; preds = %do.end142
  %56 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fence, align 8
  %tobool148.not = icmp eq ptr %57, null
  br i1 %tobool148.not, label %fail_client.fail_display_crit_edge, label %land.lhs.true149

fail_client.fail_display_crit_edge:               ; preds = %fail_client
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_display

land.lhs.true149:                                 ; preds = %fail_client
  %resume = getelementptr inbounds %struct.nouveau_fence_priv, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %resume, align 4
  %tobool151.not = icmp eq ptr %59, null
  br i1 %tobool151.not, label %land.lhs.true149.fail_display_crit_edge, label %if.then152

land.lhs.true149.fail_display_crit_edge:          ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_display

if.then152:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %59(ptr noundef %1) #12
  br label %fail_display

fail_display:                                     ; preds = %if.then152, %land.lhs.true149.fail_display_crit_edge, %fail_client.fail_display_crit_edge, %if.then117.fail_display_crit_edge, %if.then88.fail_display_crit_edge, %if.then80.fail_display_crit_edge
  %ret.0 = phi i32 [ %call82, %if.then80.fail_display_crit_edge ], [ %call90, %if.then88.fail_display_crit_edge ], [ %call143, %if.then152 ], [ %call143, %land.lhs.true149.fail_display_crit_edge ], [ %call143, %fail_client.fail_display_crit_edge ], [ -12, %if.then117.fail_display_crit_edge ]
  %60 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool158.not = icmp eq i32 %61, 0
  br i1 %tobool158.not, label %fail_display.cleanup_crit_edge, label %do.body160

fail_display.cleanup_crit_edge:                   ; preds = %fail_display
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body160:                                       ; preds = %fail_display
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %62 = load i32, ptr @__drm_debug, align 4
  %and.i240 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i240)
  %tobool.i241.not = icmp eq i32 %and.i240, 0
  br i1 %tobool.i241.not, label %do.body160.do.end178_crit_edge, label %do.body163

do.body160.do.end178_crit_edge:                   ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end178

do.body163:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #14
  %drm169 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %63 = ptrtoint ptr %drm169 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %drm169, align 8
  %dev170 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev170, align 8
  %dev171 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %dev171 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev171, align 4
  %name172 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %68, ptr noundef nonnull @.str.21, ptr noundef %name172) #15
  br label %do.end178

do.end178:                                        ; preds = %do.body163, %do.body160.do.end178_crit_edge
  tail call void @nouveau_display_resume(ptr noundef %dev, i1 noundef zeroext %runtime) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end178, %fail_display.cleanup_crit_edge, %do.end142.cleanup_crit_edge, %do.end30.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %do.end30.cleanup_crit_edge ], [ 0, %do.end142.cleanup_crit_edge ], [ %ret.0, %do.end178 ], [ %ret.0, %fail_display.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_pmops_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %2 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %switch_power_state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %if.end [
    i32 1, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge19
  ]

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  %call4 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  %call7 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %1, i1 noundef zeroext false)
  tail call void @nouveau_display_hpd_resume(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge19
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge19 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_do_resume(ptr noundef %dev, i1 noundef zeroext %runtime) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %2 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end10_crit_edge, label %do.body2

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drm4 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %drm4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm4, align 8
  %dev5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 8
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.23, ptr noundef %name) #15
  br label %do.end10

do.end10:                                         ; preds = %do.body2, %entry.do.end10_crit_edge
  %master = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 1
  %call11 = tail call i32 @nvif_client_resume(ptr noundef %master) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %do.body27, label %do.body13

do.body13:                                        ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  %drm19 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %drm19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drm19, align 8
  %dev20 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev20, align 8
  %dev21 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev21, align 4
  %name22 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.26, ptr noundef %name22, i32 noundef %call11) #15
  br label %cleanup

do.body27:                                        ; preds = %do.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %15 = load i32, ptr @__drm_debug, align 4
  %and.i121 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i121)
  %tobool.i122.not = icmp eq i32 %and.i121, 0
  br i1 %tobool.i122.not, label %do.body27.do.end45_crit_edge, label %do.body30

do.body27.do.end45_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end45

do.body30:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %drm36 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %drm36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drm36, align 8
  %dev37 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev37, align 8
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev38, align 4
  %name39 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.30, ptr noundef %name39) #15
  br label %do.end45

do.end45:                                         ; preds = %do.body30, %do.body27.do.end45_crit_edge
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fence, align 8
  %tobool46.not = icmp eq ptr %23, null
  br i1 %tobool46.not, label %do.end45.if.end52_crit_edge, label %land.lhs.true

do.end45.if.end52_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

land.lhs.true:                                    ; preds = %do.end45
  %resume = getelementptr inbounds %struct.nouveau_fence_priv, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resume, align 4
  %tobool48.not = icmp eq ptr %25, null
  br i1 %tobool48.not, label %land.lhs.true.if.end52_crit_edge, label %if.then49

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then49:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %25(ptr noundef %1) #12
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %land.lhs.true.if.end52_crit_edge, %do.end45.if.end52_crit_edge
  %call53 = tail call i32 @nouveau_run_vbios_init(ptr noundef %dev) #12
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %26 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool54.not = icmp eq i32 %27, 0
  br i1 %tobool54.not, label %if.end52.if.end95_crit_edge, label %do.body56

if.end52.if.end95_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

do.body56:                                        ; preds = %if.end52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %28 = load i32, ptr @__drm_debug, align 4
  %and.i123 = and i32 %28, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i123)
  %tobool.i124.not = icmp eq i32 %and.i123, 0
  br i1 %tobool.i124.not, label %do.body56.do.end74_crit_edge, label %do.body59

do.body56.do.end74_crit_edge:                     ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end74

do.body59:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #14
  %drm65 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %drm65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %drm65, align 8
  %dev66 = getelementptr inbounds %struct.nouveau_drm, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev66, align 8
  %dev67 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev67, align 4
  %name68 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %34, ptr noundef nonnull @.str.21, ptr noundef %name68) #15
  br label %do.end74

do.end74:                                         ; preds = %do.body59, %do.body56.do.end74_crit_edge
  tail call void @nouveau_display_resume(ptr noundef %dev, i1 noundef zeroext %runtime) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %35 = load i32, ptr @__drm_debug, align 4
  %and.i125 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool.i126.not = icmp eq i32 %and.i125, 0
  br i1 %tobool.i126.not, label %do.end74.do.end94_crit_edge, label %do.body79

do.end74.do.end94_crit_edge:                      ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end94

do.body79:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #14
  %drm85 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %drm85 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %drm85, align 8
  %dev86 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev86, align 8
  %dev87 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %dev87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev87, align 4
  %name88 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.35, ptr noundef %name88) #15
  br label %do.end94

do.end94:                                         ; preds = %do.body79, %do.end74.do.end94_crit_edge
  tail call void @nouveau_fbcon_set_suspend(ptr noundef %dev, i32 noundef 0) #12
  br label %if.end95

if.end95:                                         ; preds = %do.end94, %if.end52.if.end95_crit_edge
  tail call void @nouveau_led_resume(ptr noundef %dev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end95, %do.body13
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_hpd_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nouveau_pmops_runtime() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp2 = icmp eq i32 %0, 1
  ret i1 %cmp2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nouveau_drm_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %minor = getelementptr inbounds %struct.drm_file, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %minor, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %and)
  %cond = icmp eq i32 %and, 71
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %arg to ptr
  %shr6 = lshr i32 %cmd, 16
  %and7 = and i32 %shr6, 16383
  %call8 = tail call i32 @usif_ioctl(ptr noundef %1, ptr noundef %8, i32 noundef %and7) #12
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 @drm_ioctl(ptr noundef %file, i32 noundef %cmd, i32 noundef %arg) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %ret.0 = phi i32 [ %call8, %sw.bb ], [ %call9, %sw.default ]
  %9 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev2, align 4
  %call.i27 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i27, ptr %last_busy.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  %call.i28 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usif_ioctl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nouveau_platform_device_create(ptr noundef %func, ptr noundef %pdev, ptr noundef %pdevice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @nouveau_config, align 4
  %1 = load ptr, ptr @nouveau_debug, align 4
  %call = tail call i32 @nvkm_device_tegra_new(ptr noundef %func, ptr noundef %pdev, ptr noundef %0, ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef -1, ptr noundef %pdevice) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.err_free_crit_edge

entry.err_free_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @drm_dev_alloc(ptr noundef nonnull @driver_platform, ptr noundef %dev) #12
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %call1 to i32
  br label %err_free

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @nouveau_drm_device_init(ptr noundef %call1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %err_put

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %driver_data.i.i, align 4
  br label %cleanup

err_put:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @drm_dev_put(ptr noundef %call1) #12
  br label %err_free

err_free:                                         ; preds = %err_put, %if.then3, %entry.err_free_crit_edge
  %err.0 = phi i32 [ %call, %entry.err_free_crit_edge ], [ %2, %if.then3 ], [ %call6, %err_put ]
  tail call void @nvkm_device_del(ptr noundef %pdevice) #12
  %4 = inttoptr i32 %err.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end9
  %retval.0 = phi ptr [ %4, %err_free ], [ %call1, %if.end9 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_tegra_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_drm_device_init(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 6328) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %1 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev1, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nouveau_parent, ptr %call7.i.i, align 8
  %master = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %master, align 8
  %call5 = tail call fastcc i32 @nouveau_cli_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.37, ptr noundef %master)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.fail_alloc_crit_edge

if.end.fail_alloc_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_alloc

if.end8:                                          ; preds = %if.end
  %client = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 2
  %call9 = tail call fastcc i32 @nouveau_cli_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.38, ptr noundef %client)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.fail_master_crit_edge

if.end8.fail_master_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_master

if.end12:                                         ; preds = %if.end8
  %5 = load ptr, ptr @nouveau_debug, align 4
  %call13 = tail call i32 @nvkm_dbgopt(ptr noundef %5, ptr noundef nonnull @.str.38) #12
  %priv = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %debug = getelementptr inbounds %struct.nvkm_client, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call13, ptr %debug, align 8
  %clients = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %clients to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %clients, ptr %clients, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %clients, ptr %prev.i, align 8
  %clients_lock = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %clients_lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @nouveau_drm_device_init.__key) #12
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 17, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.41, ptr noundef nonnull @nouveau_drm_device_init.__key.40, i16 noundef signext 3) #12
  %device = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 2, i32 3
  %chipset = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 1, i32 2
  %11 = ptrtoint ptr %chipset to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %chipset, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 193, i16 %12)
  %cmp = icmp eq i16 %12, 193
  br i1 %cmp, label %if.then23, label %if.end12.if.end64_crit_edge

if.end12.if.end64_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then23:                                        ; preds = %if.end12
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %call7.i.i, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map, align 8
  %tobool29.not = icmp eq ptr %14, null
  br i1 %tobool29.not, label %if.else, label %if.then32, !prof !320

if.then32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %14, i32 557184
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !323
  br label %if.end39

if.else:                                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %call38 = tail call i32 @nvif_object_rd(ptr noundef %device, i32 noundef 4, i64 noundef 557184) #12
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then32
  %_data28.0 = phi i32 [ %15, %if.then32 ], [ %call38, %if.else ]
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %tobool44.not = icmp eq ptr %17, null
  br i1 %tobool44.not, label %if.else58, label %do.body52, !prof !320

do.body52:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !324
  tail call void @arm_heavy_mb() #12
  %and = and i32 %_data28.0, -2049
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 8
  %add.ptr57 = getelementptr i8, ptr %19, i32 557184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %and) #12, !srcloc !325
  br label %if.end64

if.else58:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %and60 = and i32 %_data28.0, -2049
  tail call void @nvif_object_wr(ptr noundef %device, i32 noundef 4, i64 noundef 557184, i32 noundef %and60) #12
  br label %if.end64

if.end64:                                         ; preds = %if.else58, %do.body52, %if.end12.if.end64_crit_edge
  tail call void @nouveau_vga_init(ptr noundef nonnull %call7.i.i) #12
  %call65 = tail call i32 @nouveau_ttm_init(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.fail_ttm_crit_edge

if.end64.fail_ttm_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_ttm

if.end68:                                         ; preds = %if.end64
  %call69 = tail call i32 @nouveau_bios_init(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.fail_bios_crit_edge

if.end68.fail_bios_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_bios

if.end72:                                         ; preds = %if.end68
  tail call fastcc void @nouveau_accel_init(ptr noundef nonnull %call7.i.i)
  %call73 = tail call i32 @nouveau_display_create(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.end72.fail_dispctor_crit_edge

if.end72.fail_dispctor_crit_edge:                 ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_dispctor

if.end76:                                         ; preds = %if.end72
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %20 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool77.not = icmp eq i32 %21, 0
  br i1 %tobool77.not, label %if.end76.if.end83_crit_edge, label %if.then78

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.then78:                                        ; preds = %if.end76
  %call79 = tail call i32 @nouveau_display_init(ptr noundef %dev, i1 noundef zeroext false, i1 noundef zeroext false) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.then78.if.end83_crit_edge, label %fail_dispinit

if.then78.if.end83_crit_edge:                     ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end83

if.end83:                                         ; preds = %if.then78.if.end83_crit_edge, %if.end76.if.end83_crit_edge
  %call84 = tail call i32 @nouveau_debugfs_init(ptr noundef nonnull %call7.i.i) #12
  %call85 = tail call i32 @nouveau_hwmon_init(ptr noundef %dev) #12
  %call86 = tail call i32 @nouveau_fbcon_init(ptr noundef %dev) #12
  %call87 = tail call i32 @nouveau_led_init(ptr noundef %dev) #12
  %22 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp2.i = icmp eq i32 %22, 1
  br i1 %cmp2.i, label %if.then89, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then89:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #14
  %dev90 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %23 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev90, align 4
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %24, i1 noundef zeroext true) #12
  %25 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev90, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %26, i32 noundef 5000) #12
  %27 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev90, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %28, i32 noundef 0) #12
  %29 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev90, align 4
  tail call void @pm_runtime_allow(ptr noundef %30) #12
  %31 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev90, align 4
  %call.i162 = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 22
  %33 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store volatile i64 %call.i162, ptr %last_busy.i, align 8
  %34 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev90, align 4
  %call.i163 = tail call i32 @__pm_runtime_idle(ptr noundef %35, i32 noundef 5) #12
  br label %cleanup

fail_dispinit:                                    ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @nouveau_display_destroy(ptr noundef %dev) #12
  br label %fail_dispctor

fail_dispctor:                                    ; preds = %fail_dispinit, %if.end72.fail_dispctor_crit_edge
  %ret.0 = phi i32 [ %call73, %if.end72.fail_dispctor_crit_edge ], [ %call79, %fail_dispinit ]
  tail call fastcc void @nouveau_accel_fini(ptr noundef nonnull %call7.i.i)
  tail call void @nouveau_bios_takedown(ptr noundef %dev) #12
  br label %fail_bios

fail_bios:                                        ; preds = %fail_dispctor, %if.end68.fail_bios_crit_edge
  %ret.1 = phi i32 [ %call69, %if.end68.fail_bios_crit_edge ], [ %ret.0, %fail_dispctor ]
  tail call void @nouveau_ttm_fini(ptr noundef nonnull %call7.i.i) #12
  br label %fail_ttm

fail_ttm:                                         ; preds = %fail_bios, %if.end64.fail_ttm_crit_edge
  %ret.2 = phi i32 [ %call65, %if.end64.fail_ttm_crit_edge ], [ %ret.1, %fail_bios ]
  tail call void @nouveau_vga_fini(ptr noundef nonnull %call7.i.i) #12
  tail call fastcc void @nouveau_cli_fini(ptr noundef %client)
  br label %fail_master

fail_master:                                      ; preds = %fail_ttm, %if.end8.fail_master_crit_edge
  %ret.3 = phi i32 [ %call9, %if.end8.fail_master_crit_edge ], [ %ret.2, %fail_ttm ]
  tail call fastcc void @nouveau_cli_fini(ptr noundef %master)
  br label %fail_alloc

fail_alloc:                                       ; preds = %fail_master, %if.end.fail_alloc_crit_edge
  %ret.4 = phi i32 [ %call5, %if.end.fail_alloc_crit_edge ], [ %ret.3, %fail_master ]
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %call7.i.i, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_alloc, %if.then89, %if.end83.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %fail_alloc ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then89 ], [ 0, %if.end83.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_drm_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = load i32, ptr @nouveau_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pci_unregister_driver(ptr noundef nonnull @nouveau_drm_pci_driver) #12
  tail call void @nouveau_backlight_dtor() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @nouveau_platform_driver) #12
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_dtor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_drm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr @driver_pci, ptr @driver_stub, i32 164)
  %1 = call ptr @memcpy(ptr @driver_platform, ptr @driver_stub, i32 164)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.118) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_tv_disable to i32))
  %2 = load i32, ptr @nouveau_tv_disable, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.119, i32 noundef %2) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_ignorelid to i32))
  %3 = load i32, ptr @nouveau_ignorelid, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.120, i32 noundef %3) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_duallink to i32))
  %4 = load i32, ptr @nouveau_duallink, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.121, i32 noundef %4) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_nofbaccel to i32))
  %5 = load i32, ptr @nouveau_nofbaccel, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.122, i32 noundef %5) #12
  %6 = load ptr, ptr @nouveau_config, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.123, ptr noundef %6) #12
  %7 = load ptr, ptr @nouveau_debug, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.124, ptr noundef %7) #12
  %8 = load i32, ptr @nouveau_noaccel, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.125, i32 noundef %8) #12
  %9 = load i32, ptr @nouveau_modeset, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.126, i32 noundef %9) #12
  %10 = load i32, ptr @nouveau_runtime_pm, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.127, i32 noundef %10) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_vram_pushbuf to i32))
  %11 = load i32, ptr @nouveau_vram_pushbuf, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.128, i32 noundef %11) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nouveau_hdmimhz to i32))
  %12 = load i32, ptr @nouveau_hdmimhz, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.129, i32 noundef %12) #12
  %13 = load i32, ptr @nouveau_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp = icmp eq i32 %13, -1
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #12
  br i1 %call, label %if.end2.thread, label %if.end2thread-pre-split

if.end2.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  store i32 0, ptr @nouveau_modeset, align 4
  br label %return

if.end2thread-pre-split:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %.pr = load i32, ptr @nouveau_modeset, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.end2thread-pre-split, %entry.if.end2_crit_edge
  %14 = phi i32 [ %.pr, %if.end2thread-pre-split ], [ %13, %entry.if.end2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end2.return_crit_edge, label %if.end4

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end4:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call i32 @__platform_driver_register(ptr noundef nonnull @nouveau_platform_driver, ptr noundef null) #12
  tail call void @nouveau_backlight_ctor() #12
  %call6 = tail call i32 @__pci_register_driver(ptr noundef nonnull @nouveau_drm_pci_driver, ptr noundef null, ptr noundef nonnull @.str.95) #12
  br label %return

return:                                           ; preds = %if.end4, %if.end2.return_crit_edge, %if.end2.thread
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ 0, %if.end2.return_crit_edge ], [ 0, %if.end2.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hwmon_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_debugfs_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_fini(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_fini(ptr noundef %drm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cechan.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 12
  %0 = ptrtoint ptr %cechan.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cechan.i, align 8
  %call.i = tail call i32 @nouveau_channel_idle(ptr noundef %1) #12
  %copy.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 8, i32 4
  tail call void @nvif_object_dtor(ptr noundef %copy.i) #12
  tail call void @nouveau_channel_del(ptr noundef %cechan.i) #12
  %channel.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 13
  %2 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel.i, align 4
  %call.i6 = tail call i32 @nouveau_channel_idle(ptr noundef %3) #12
  %ntfy.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 16
  tail call void @nvif_object_dtor(ptr noundef %ntfy.i) #12
  %notify.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 14
  tail call void @nvkm_gpuobj_del(ptr noundef %notify.i) #12
  tail call void @nouveau_channel_del(ptr noundef %channel.i) #12
  %fence = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 10
  %4 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fence, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void %7(ptr noundef %drm) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bios_takedown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_ttm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_abi16_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_cli_fini(ptr noundef %cli) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13
  %call = tail call zeroext i1 @flush_work(ptr noundef %work) #12
  %worker = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 14
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %worker, align 4
  %cmp.i.not = icmp eq ptr %1, %worker
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !321

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 179, i32 noundef 9, ptr noundef null) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @usif_client_fini(ptr noundef %cli) #12
  %svm = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 6
  tail call void @nouveau_vmm_fini(ptr noundef %svm) #12
  %vmm = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 5
  tail call void @nouveau_vmm_fini(ptr noundef %vmm) #12
  %mmu = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4
  tail call void @nvif_mmu_dtor(ptr noundef %mmu) #12
  %device = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 3
  tail call void @nvif_device_dtor(ptr noundef %device) #12
  %drm = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 1
  %2 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm, align 8
  %lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  tail call void @nvif_client_dtor(ptr noundef %cli) #12
  %4 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm, align 8
  %lock24 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 1, i32 15
  tail call void @mutex_unlock(ptr noundef %lock24) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_gr_fini(ptr noundef %drm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 13
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel, align 4
  %call = tail call i32 @nouveau_channel_idle(ptr noundef %1) #12
  %ntfy = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 16
  tail call void @nvif_object_dtor(ptr noundef %ntfy) #12
  %notify = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 14
  tail call void @nvkm_gpuobj_del(ptr noundef %notify) #12
  tail call void @nouveau_channel_del(ptr noundef %channel) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_channel_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_gpuobj_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usif_client_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vmm_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mmu_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_device_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_client_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_set_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_run_vbios_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_led_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nouveau_cli_init(ptr noundef %drm, ptr noundef %sname, ptr noundef %cli) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral41 = alloca %struct.nv_device_v0, align 8
  %sclass = alloca ptr, align 4
  %sclass130 = alloca ptr, align 4
  %sclass213 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1.i, align 4
  %bus.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp eq ptr %5, @pci_bus_type
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %bus.i.i = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bus.i.i, align 8
  %domain_nr.i.i.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %domain_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %domain_nr.i.i.i, align 8
  %conv17.i.i = zext i32 %9 to i64
  %shl.i.i = shl nuw i64 %conv17.i.i, 32
  %number.i.i = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 12
  %10 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %number.i.i, align 4
  %conv2.i.i = zext i8 %11 to i32
  %shl3.i.i = shl nuw nsw i32 %conv2.i.i, 16
  %12 = zext i32 %shl3.i.i to i64
  %or.i.i = or i64 %shl.i.i, %12
  %devfn.i.i = getelementptr i8, ptr %3, i32 -108
  %13 = ptrtoint ptr %devfn.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %devfn.i.i, align 4
  %15 = shl i32 %14, 5
  %shl5.i.i = and i32 %15, 7936
  %conv6.i.i = zext i32 %shl5.i.i to i64
  %and9.i.i = and i32 %14, 7
  %conv10.i.i = zext i32 %and9.i.i to i64
  %or7.i.i = or i64 %or.i.i, %conv10.i.i
  %or11.i.i = or i64 %or7.i.i, %conv6.i.i
  br label %nouveau_name.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id.i.i = getelementptr i8, ptr %3, i32 -12
  %16 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i.i, align 4
  %conv.i.i = sext i32 %17 to i64
  br label %nouveau_name.exit

nouveau_name.exit:                                ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i64 [ %or11.i.i, %if.then.i ], [ %conv.i.i, %if.else.i ]
  %name = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 12
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.45, ptr noundef %sname)
  %drm2 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 1
  %18 = ptrtoint ptr %drm2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %drm, ptr %drm2, align 8
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.46, ptr noundef nonnull @nouveau_cli_init.__key) #12
  tail call void @usif_client_init(ptr noundef %cli) #12
  %work = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %19 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.48, ptr noundef nonnull @nouveau_cli_init.__key.47, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry7 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13, i32 1
  %20 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry7, ptr %entry7, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 13, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @nouveau_cli_work, ptr %func, align 4
  %worker = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 14
  %23 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %worker, ptr %worker, align 4
  %prev.i385 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 14, i32 1
  %24 = ptrtoint ptr %prev.i385 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %worker, ptr %prev.i385, align 4
  %lock = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.50, ptr noundef nonnull @nouveau_cli_init.__key.49) #12
  %master = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 1
  %cmp = icmp eq ptr %master, %cli
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %nouveau_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = load ptr, ptr @nouveau_config, align 4
  %26 = load ptr, ptr @nouveau_debug, align 4
  %call16 = tail call i32 @nvif_driver_init(ptr noundef null, ptr noundef %25, ptr noundef %26, ptr noundef %name, i64 noundef %retval.0.i, ptr noundef %cli) #12
  br label %if.end

if.else:                                          ; preds = %nouveau_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %lock18 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 1, i32 15
  tail call void @mutex_lock_nested(ptr noundef %lock18, i32 noundef 0) #12
  %call24 = tail call i32 @nvif_client_ctor(ptr noundef %master, ptr noundef %name, i64 noundef %retval.0.i, ptr noundef %cli) #12
  tail call void @mutex_unlock(ptr noundef %lock18) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call16, %if.then ], [ %call24, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.end39, label %do.body28

do.body28:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drm2, align 8
  %dev33 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev33, align 8
  %dev34 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.51, ptr noundef %name, i32 noundef %ret.0) #15
  br label %if.then277

if.end39:                                         ; preds = %if.end
  %33 = ptrtoint ptr %.compoundliteral41 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %.compoundliteral41, align 8
  %priv = getelementptr inbounds %struct.nv_device_v0, ptr %.compoundliteral41, i32 0, i32 1
  %34 = ptrtoint ptr %priv to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %priv, align 1
  %pad02 = getelementptr inbounds %struct.nv_device_v0, ptr %.compoundliteral41, i32 0, i32 2
  %35 = call ptr @memset(ptr %pad02, i32 0, i32 6)
  %device42 = getelementptr inbounds %struct.nv_device_v0, ptr %.compoundliteral41, i32 0, i32 3
  %36 = ptrtoint ptr %device42 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 -1, ptr %device42, align 8
  %device43 = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 3
  %call44 = call i32 @nvif_device_ctor(ptr noundef %cli, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef 128, ptr noundef nonnull %.compoundliteral41, i32 noundef 16, ptr noundef %device43) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end59, label %do.body47

do.body47:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %drm2, align 8
  %dev53 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev53, align 8
  %dev54 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev54, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %call44) #15
  br label %if.then277

if.end59:                                         ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #12
  %43 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !326
  %call64 = call i32 @nvif_object_sclass_get(ptr noundef %device43, ptr noundef nonnull %sclass) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call64)
  %cmp65 = icmp sgt i32 %call64, -1
  br i1 %cmp65, label %for.cond.preheader, label %if.end91.thread

for.cond.preheader:                               ; preds = %if.end59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp70404.not = icmp eq i32 %call64, 0
  br i1 %cmp70404.not, label %for.cond.preheader.if.end91.thread389_crit_edge, label %for.body71.lr.ph

for.cond.preheader.if.end91.thread389_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.thread389

if.end91.thread:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #12
  br label %do.body94

for.body71.lr.ph:                                 ; preds = %for.cond.preheader
  %44 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sclass, align 4
  br label %for.body71

if.end91.thread389:                               ; preds = %for.inc.2.if.end91.thread389_crit_edge, %land.rhs.2.if.end91.thread389_crit_edge, %land.rhs.1.if.end91.thread389_crit_edge, %for.cond.preheader.if.end91.thread389_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #12
  br label %do.body94

for.body71:                                       ; preds = %for.inc.for.body71_crit_edge, %for.body71.lr.ph
  %j.0405 = phi i32 [ 0, %for.body71.lr.ph ], [ %inc, %for.inc.for.body71_crit_edge ]
  %arrayidx74 = getelementptr %struct.nvif_sclass, ptr %45, i32 %j.0405
  %46 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446775, i32 %47)
  %cmp76 = icmp eq i32 %47, -2147446775
  br i1 %cmp76, label %land.lhs.true, label %for.body71.for.inc_crit_edge

for.body71.for.inc_crit_edge:                     ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body71
  %minver = getelementptr %struct.nvif_sclass, ptr %45, i32 %j.0405, i32 1
  %48 = ptrtoint ptr %minver to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %minver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp80.not = icmp sgt i32 %49, -1
  br i1 %cmp80.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true81

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true81:                                  ; preds = %land.lhs.true
  %maxver = getelementptr %struct.nvif_sclass, ptr %45, i32 %j.0405, i32 2
  %50 = ptrtoint ptr %maxver to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %maxver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %51)
  %cmp85.not = icmp slt i32 %51, -1
  br i1 %cmp85.not, label %land.lhs.true81.for.inc_crit_edge, label %land.lhs.true81.if.end106_crit_edge

land.lhs.true81.if.end106_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true81.for.inc_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true81.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body71.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0405, 1
  %exitcond.not = icmp eq i32 %inc, %call64
  br i1 %exitcond.not, label %land.rhs.1, label %for.inc.for.body71_crit_edge

for.inc.for.body71_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

land.rhs.1:                                       ; preds = %for.inc
  br i1 %cmp70404.not, label %land.rhs.1.if.end91.thread389_crit_edge, label %for.body71.lr.ph.1

land.rhs.1.if.end91.thread389_crit_edge:          ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.thread389

for.body71.lr.ph.1:                               ; preds = %land.rhs.1
  %52 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sclass, align 4
  br label %for.body71.1

for.body71.1:                                     ; preds = %for.inc.1.for.body71.1_crit_edge, %for.body71.lr.ph.1
  %j.0405.1 = phi i32 [ 0, %for.body71.lr.ph.1 ], [ %inc.1, %for.inc.1.for.body71.1_crit_edge ]
  %arrayidx74.1 = getelementptr %struct.nvif_sclass, ptr %53, i32 %j.0405.1
  %54 = ptrtoint ptr %arrayidx74.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx74.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463159, i32 %55)
  %cmp76.1 = icmp eq i32 %55, -2147463159
  br i1 %cmp76.1, label %land.lhs.true.1, label %for.body71.1.for.inc.1_crit_edge

for.body71.1.for.inc.1_crit_edge:                 ; preds = %for.body71.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.body71.1
  %minver.1 = getelementptr %struct.nvif_sclass, ptr %53, i32 %j.0405.1, i32 1
  %56 = ptrtoint ptr %minver.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %minver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %57)
  %cmp80.not.1 = icmp sgt i32 %57, -1
  br i1 %cmp80.not.1, label %land.lhs.true.1.for.inc.1_crit_edge, label %land.lhs.true81.1

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

land.lhs.true81.1:                                ; preds = %land.lhs.true.1
  %maxver.1 = getelementptr %struct.nvif_sclass, ptr %53, i32 %j.0405.1, i32 2
  %58 = ptrtoint ptr %maxver.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %maxver.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp85.not.1 = icmp slt i32 %59, -1
  br i1 %cmp85.not.1, label %land.lhs.true81.1.for.inc.1_crit_edge, label %land.lhs.true81.1.if.end106_crit_edge

land.lhs.true81.1.if.end106_crit_edge:            ; preds = %land.lhs.true81.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true81.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true81.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

for.inc.1:                                        ; preds = %land.lhs.true81.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.body71.1.for.inc.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.0405.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %call64
  br i1 %exitcond.1.not, label %land.rhs.2, label %for.inc.1.for.body71.1_crit_edge

for.inc.1.for.body71.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71.1

land.rhs.2:                                       ; preds = %for.inc.1
  br i1 %cmp70404.not, label %land.rhs.2.if.end91.thread389_crit_edge, label %for.body71.lr.ph.2

land.rhs.2.if.end91.thread389_crit_edge:          ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.thread389

for.body71.lr.ph.2:                               ; preds = %land.rhs.2
  %60 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sclass, align 4
  br label %for.body71.2

for.body71.2:                                     ; preds = %for.inc.2.for.body71.2_crit_edge, %for.body71.lr.ph.2
  %j.0405.2 = phi i32 [ 0, %for.body71.lr.ph.2 ], [ %inc.2, %for.inc.2.for.body71.2_crit_edge ]
  %arrayidx74.2 = getelementptr %struct.nvif_sclass, ptr %61, i32 %j.0405.2
  %62 = ptrtoint ptr %arrayidx74.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx74.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483639, i32 %63)
  %cmp76.2 = icmp eq i32 %63, -2147483639
  br i1 %cmp76.2, label %land.lhs.true.2, label %for.body71.2.for.inc.2_crit_edge

for.body71.2.for.inc.2_crit_edge:                 ; preds = %for.body71.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.body71.2
  %minver.2 = getelementptr %struct.nvif_sclass, ptr %61, i32 %j.0405.2, i32 1
  %64 = ptrtoint ptr %minver.2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %minver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %cmp80.not.2 = icmp sgt i32 %65, -1
  br i1 %cmp80.not.2, label %land.lhs.true.2.for.inc.2_crit_edge, label %land.lhs.true81.2

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

land.lhs.true81.2:                                ; preds = %land.lhs.true.2
  %maxver.2 = getelementptr %struct.nvif_sclass, ptr %61, i32 %j.0405.2, i32 2
  %66 = ptrtoint ptr %maxver.2 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %maxver.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp85.not.2 = icmp slt i32 %67, -1
  br i1 %cmp85.not.2, label %land.lhs.true81.2.for.inc.2_crit_edge, label %land.lhs.true81.2.if.end106_crit_edge

land.lhs.true81.2.if.end106_crit_edge:            ; preds = %land.lhs.true81.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

land.lhs.true81.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true81.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

for.inc.2:                                        ; preds = %land.lhs.true81.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.body71.2.for.inc.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.0405.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %call64
  br i1 %exitcond.2.not, label %for.inc.2.if.end91.thread389_crit_edge, label %for.inc.2.for.body71.2_crit_edge

for.inc.2.for.body71.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71.2

for.inc.2.if.end91.thread389_crit_edge:           ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91.thread389

do.body94:                                        ; preds = %if.end91.thread389, %if.end91.thread
  %68 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %drm2, align 8
  %dev100 = getelementptr inbounds %struct.nouveau_drm, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev100, align 8
  %dev101 = getelementptr inbounds %struct.drm_device, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dev101 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev101, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.58, ptr noundef %name) #15
  br label %if.then277

if.end106:                                        ; preds = %land.lhs.true81.2.if.end106_crit_edge, %land.lhs.true81.1.if.end106_crit_edge, %land.lhs.true81.if.end106_crit_edge
  %ret63.1.lcssa = phi i32 [ 2, %land.lhs.true81.2.if.end106_crit_edge ], [ 1, %land.lhs.true81.1.if.end106_crit_edge ], [ 0, %land.lhs.true81.if.end106_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #12
  %arrayidx109 = getelementptr [4 x %struct.nvif_mclass], ptr @nouveau_cli_init.mmus, i32 0, i32 %ret63.1.lcssa
  %74 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx109, align 4
  %mmu = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 4
  %call111 = call i32 @nvif_mmu_ctor(ptr noundef %device43, ptr noundef nonnull @.str.60, i32 noundef %75, ptr noundef %mmu) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end126, label %do.body114

do.body114:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %drm2, align 8
  %dev120 = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %dev120 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev120, align 8
  %dev121 = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev121, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.62, ptr noundef %name, i32 noundef %call111) #15
  br label %if.then277

if.end126:                                        ; preds = %if.end106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass130) #12
  %82 = ptrtoint ptr %sclass130 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass130, align 4, !annotation !326
  %call136 = call i32 @nvif_object_sclass_get(ptr noundef %mmu, ptr noundef nonnull %sclass130) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call136)
  %cmp137 = icmp sgt i32 %call136, -1
  br i1 %cmp137, label %for.cond139.preheader, label %if.end175.thread

for.cond139.preheader:                            ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %cmp148411.not = icmp eq i32 %call136, 0
  br i1 %cmp148411.not, label %for.cond139.preheader.for.inc172.4_crit_edge, label %for.body149.lr.ph

for.cond139.preheader.for.inc172.4_crit_edge:     ; preds = %for.cond139.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

if.end175.thread:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass130) #12
  br label %do.body179

for.body149.lr.ph:                                ; preds = %for.cond139.preheader
  %83 = ptrtoint ptr %sclass130 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sclass130, align 4
  br label %for.body149

for.body149:                                      ; preds = %for.inc169.for.body149_crit_edge, %for.body149.lr.ph
  %j135.0412 = phi i32 [ 0, %for.body149.lr.ph ], [ %inc170, %for.inc169.for.body149_crit_edge ]
  %arrayidx152 = getelementptr %struct.nvif_sclass, ptr %84, i32 %j135.0412
  %85 = ptrtoint ptr %arrayidx152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147434483, i32 %86)
  %cmp154 = icmp eq i32 %86, -2147434483
  br i1 %cmp154, label %land.lhs.true155, label %for.body149.for.inc169_crit_edge

for.body149.for.inc169_crit_edge:                 ; preds = %for.body149
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169

land.lhs.true155:                                 ; preds = %for.body149
  %minver159 = getelementptr %struct.nvif_sclass, ptr %84, i32 %j135.0412, i32 1
  %87 = ptrtoint ptr %minver159 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %minver159, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp160.not = icmp sgt i32 %88, -1
  br i1 %cmp160.not, label %land.lhs.true155.for.inc169_crit_edge, label %land.lhs.true161

land.lhs.true155.for.inc169_crit_edge:            ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169

land.lhs.true161:                                 ; preds = %land.lhs.true155
  %maxver165 = getelementptr %struct.nvif_sclass, ptr %84, i32 %j135.0412, i32 2
  %89 = ptrtoint ptr %maxver165 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %maxver165, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %90)
  %cmp166.not = icmp slt i32 %90, -1
  br i1 %cmp166.not, label %land.lhs.true161.for.inc169_crit_edge, label %land.lhs.true161.if.end191_crit_edge

land.lhs.true161.if.end191_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true161.for.inc169_crit_edge:            ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169

for.inc169:                                       ; preds = %land.lhs.true161.for.inc169_crit_edge, %land.lhs.true155.for.inc169_crit_edge, %for.body149.for.inc169_crit_edge
  %inc170 = add nuw nsw i32 %j135.0412, 1
  %exitcond429.not = icmp eq i32 %inc170, %call136
  br i1 %exitcond429.not, label %for.inc172, label %for.inc169.for.body149_crit_edge

for.inc169.for.body149_crit_edge:                 ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149

for.inc172:                                       ; preds = %for.inc169
  br i1 %cmp148411.not, label %for.inc172.for.inc172.4_crit_edge, label %for.body149.lr.ph.1

for.inc172.for.inc172.4_crit_edge:                ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

for.body149.lr.ph.1:                              ; preds = %for.inc172
  %91 = ptrtoint ptr %sclass130 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %sclass130, align 4
  br label %for.body149.1

for.body149.1:                                    ; preds = %for.inc169.1.for.body149.1_crit_edge, %for.body149.lr.ph.1
  %j135.0412.1 = phi i32 [ 0, %for.body149.lr.ph.1 ], [ %inc170.1, %for.inc169.1.for.body149.1_crit_edge ]
  %arrayidx152.1 = getelementptr %struct.nvif_sclass, ptr %92, i32 %j135.0412.1
  %93 = ptrtoint ptr %arrayidx152.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx152.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147438579, i32 %94)
  %cmp154.1 = icmp eq i32 %94, -2147438579
  br i1 %cmp154.1, label %land.lhs.true155.1, label %for.body149.1.for.inc169.1_crit_edge

for.body149.1.for.inc169.1_crit_edge:             ; preds = %for.body149.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.1

land.lhs.true155.1:                               ; preds = %for.body149.1
  %minver159.1 = getelementptr %struct.nvif_sclass, ptr %92, i32 %j135.0412.1, i32 1
  %95 = ptrtoint ptr %minver159.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %minver159.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp160.not.1 = icmp sgt i32 %96, -1
  br i1 %cmp160.not.1, label %land.lhs.true155.1.for.inc169.1_crit_edge, label %land.lhs.true161.1

land.lhs.true155.1.for.inc169.1_crit_edge:        ; preds = %land.lhs.true155.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.1

land.lhs.true161.1:                               ; preds = %land.lhs.true155.1
  %maxver165.1 = getelementptr %struct.nvif_sclass, ptr %92, i32 %j135.0412.1, i32 2
  %97 = ptrtoint ptr %maxver165.1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %maxver165.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %98)
  %cmp166.not.1 = icmp slt i32 %98, -1
  br i1 %cmp166.not.1, label %land.lhs.true161.1.for.inc169.1_crit_edge, label %land.lhs.true161.1.if.end191_crit_edge

land.lhs.true161.1.if.end191_crit_edge:           ; preds = %land.lhs.true161.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true161.1.for.inc169.1_crit_edge:        ; preds = %land.lhs.true161.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.1

for.inc169.1:                                     ; preds = %land.lhs.true161.1.for.inc169.1_crit_edge, %land.lhs.true155.1.for.inc169.1_crit_edge, %for.body149.1.for.inc169.1_crit_edge
  %inc170.1 = add nuw nsw i32 %j135.0412.1, 1
  %exitcond429.not.1 = icmp eq i32 %inc170.1, %call136
  br i1 %exitcond429.not.1, label %for.inc172.1, label %for.inc169.1.for.body149.1_crit_edge

for.inc169.1.for.body149.1_crit_edge:             ; preds = %for.inc169.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149.1

for.inc172.1:                                     ; preds = %for.inc169.1
  br i1 %cmp148411.not, label %for.inc172.1.for.inc172.4_crit_edge, label %for.body149.lr.ph.2

for.inc172.1.for.inc172.4_crit_edge:              ; preds = %for.inc172.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

for.body149.lr.ph.2:                              ; preds = %for.inc172.1
  %99 = ptrtoint ptr %sclass130 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sclass130, align 4
  br label %for.body149.2

for.body149.2:                                    ; preds = %for.inc169.2.for.body149.2_crit_edge, %for.body149.lr.ph.2
  %j135.0412.2 = phi i32 [ 0, %for.body149.lr.ph.2 ], [ %inc170.2, %for.inc169.2.for.body149.2_crit_edge ]
  %arrayidx152.2 = getelementptr %struct.nvif_sclass, ptr %100, i32 %j135.0412.2
  %101 = ptrtoint ptr %arrayidx152.2 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx152.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446771, i32 %102)
  %cmp154.2 = icmp eq i32 %102, -2147446771
  br i1 %cmp154.2, label %land.lhs.true155.2, label %for.body149.2.for.inc169.2_crit_edge

for.body149.2.for.inc169.2_crit_edge:             ; preds = %for.body149.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.2

land.lhs.true155.2:                               ; preds = %for.body149.2
  %minver159.2 = getelementptr %struct.nvif_sclass, ptr %100, i32 %j135.0412.2, i32 1
  %103 = ptrtoint ptr %minver159.2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %minver159.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %104)
  %cmp160.not.2 = icmp sgt i32 %104, -1
  br i1 %cmp160.not.2, label %land.lhs.true155.2.for.inc169.2_crit_edge, label %land.lhs.true161.2

land.lhs.true155.2.for.inc169.2_crit_edge:        ; preds = %land.lhs.true155.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.2

land.lhs.true161.2:                               ; preds = %land.lhs.true155.2
  %maxver165.2 = getelementptr %struct.nvif_sclass, ptr %100, i32 %j135.0412.2, i32 2
  %105 = ptrtoint ptr %maxver165.2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %maxver165.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %106)
  %cmp166.not.2 = icmp slt i32 %106, -1
  br i1 %cmp166.not.2, label %land.lhs.true161.2.for.inc169.2_crit_edge, label %land.lhs.true161.2.if.end191_crit_edge

land.lhs.true161.2.if.end191_crit_edge:           ; preds = %land.lhs.true161.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true161.2.for.inc169.2_crit_edge:        ; preds = %land.lhs.true161.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.2

for.inc169.2:                                     ; preds = %land.lhs.true161.2.for.inc169.2_crit_edge, %land.lhs.true155.2.for.inc169.2_crit_edge, %for.body149.2.for.inc169.2_crit_edge
  %inc170.2 = add nuw nsw i32 %j135.0412.2, 1
  %exitcond429.not.2 = icmp eq i32 %inc170.2, %call136
  br i1 %exitcond429.not.2, label %for.inc172.2, label %for.inc169.2.for.body149.2_crit_edge

for.inc169.2.for.body149.2_crit_edge:             ; preds = %for.inc169.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149.2

for.inc172.2:                                     ; preds = %for.inc169.2
  br i1 %cmp148411.not, label %for.inc172.2.for.inc172.4_crit_edge, label %for.body149.lr.ph.3

for.inc172.2.for.inc172.4_crit_edge:              ; preds = %for.inc172.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

for.body149.lr.ph.3:                              ; preds = %for.inc172.2
  %107 = ptrtoint ptr %sclass130 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %sclass130, align 4
  br label %for.body149.3

for.body149.3:                                    ; preds = %for.inc169.3.for.body149.3_crit_edge, %for.body149.lr.ph.3
  %j135.0412.3 = phi i32 [ 0, %for.body149.lr.ph.3 ], [ %inc170.3, %for.inc169.3.for.body149.3_crit_edge ]
  %arrayidx152.3 = getelementptr %struct.nvif_sclass, ptr %108, i32 %j135.0412.3
  %109 = ptrtoint ptr %arrayidx152.3 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx152.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463155, i32 %110)
  %cmp154.3 = icmp eq i32 %110, -2147463155
  br i1 %cmp154.3, label %land.lhs.true155.3, label %for.body149.3.for.inc169.3_crit_edge

for.body149.3.for.inc169.3_crit_edge:             ; preds = %for.body149.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.3

land.lhs.true155.3:                               ; preds = %for.body149.3
  %minver159.3 = getelementptr %struct.nvif_sclass, ptr %108, i32 %j135.0412.3, i32 1
  %111 = ptrtoint ptr %minver159.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %minver159.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp160.not.3 = icmp sgt i32 %112, -1
  br i1 %cmp160.not.3, label %land.lhs.true155.3.for.inc169.3_crit_edge, label %land.lhs.true161.3

land.lhs.true155.3.for.inc169.3_crit_edge:        ; preds = %land.lhs.true155.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.3

land.lhs.true161.3:                               ; preds = %land.lhs.true155.3
  %maxver165.3 = getelementptr %struct.nvif_sclass, ptr %108, i32 %j135.0412.3, i32 2
  %113 = ptrtoint ptr %maxver165.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %maxver165.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %114)
  %cmp166.not.3 = icmp slt i32 %114, -1
  br i1 %cmp166.not.3, label %land.lhs.true161.3.for.inc169.3_crit_edge, label %land.lhs.true161.3.if.end191_crit_edge

land.lhs.true161.3.if.end191_crit_edge:           ; preds = %land.lhs.true161.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true161.3.for.inc169.3_crit_edge:        ; preds = %land.lhs.true161.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.3

for.inc169.3:                                     ; preds = %land.lhs.true161.3.for.inc169.3_crit_edge, %land.lhs.true155.3.for.inc169.3_crit_edge, %for.body149.3.for.inc169.3_crit_edge
  %inc170.3 = add nuw nsw i32 %j135.0412.3, 1
  %exitcond429.not.3 = icmp eq i32 %inc170.3, %call136
  br i1 %exitcond429.not.3, label %for.inc172.3, label %for.inc169.3.for.body149.3_crit_edge

for.inc169.3.for.body149.3_crit_edge:             ; preds = %for.inc169.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149.3

for.inc172.3:                                     ; preds = %for.inc169.3
  br i1 %cmp148411.not, label %for.inc172.3.for.inc172.4_crit_edge, label %for.body149.lr.ph.4

for.inc172.3.for.inc172.4_crit_edge:              ; preds = %for.inc172.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

for.body149.lr.ph.4:                              ; preds = %for.inc172.3
  %115 = ptrtoint ptr %sclass130 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %sclass130, align 4
  br label %for.body149.4

for.body149.4:                                    ; preds = %for.inc169.4.for.body149.4_crit_edge, %for.body149.lr.ph.4
  %j135.0412.4 = phi i32 [ 0, %for.body149.lr.ph.4 ], [ %inc170.4, %for.inc169.4.for.body149.4_crit_edge ]
  %arrayidx152.4 = getelementptr %struct.nvif_sclass, ptr %116, i32 %j135.0412.4
  %117 = ptrtoint ptr %arrayidx152.4 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx152.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483635, i32 %118)
  %cmp154.4 = icmp eq i32 %118, -2147483635
  br i1 %cmp154.4, label %land.lhs.true155.4, label %for.body149.4.for.inc169.4_crit_edge

for.body149.4.for.inc169.4_crit_edge:             ; preds = %for.body149.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.4

land.lhs.true155.4:                               ; preds = %for.body149.4
  %minver159.4 = getelementptr %struct.nvif_sclass, ptr %116, i32 %j135.0412.4, i32 1
  %119 = ptrtoint ptr %minver159.4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %minver159.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %120)
  %cmp160.not.4 = icmp sgt i32 %120, -1
  br i1 %cmp160.not.4, label %land.lhs.true155.4.for.inc169.4_crit_edge, label %land.lhs.true161.4

land.lhs.true155.4.for.inc169.4_crit_edge:        ; preds = %land.lhs.true155.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.4

land.lhs.true161.4:                               ; preds = %land.lhs.true155.4
  %maxver165.4 = getelementptr %struct.nvif_sclass, ptr %116, i32 %j135.0412.4, i32 2
  %121 = ptrtoint ptr %maxver165.4 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %maxver165.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %cmp166.not.4 = icmp slt i32 %122, -1
  br i1 %cmp166.not.4, label %land.lhs.true161.4.for.inc169.4_crit_edge, label %land.lhs.true161.4.if.end191_crit_edge

land.lhs.true161.4.if.end191_crit_edge:           ; preds = %land.lhs.true161.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end191

land.lhs.true161.4.for.inc169.4_crit_edge:        ; preds = %land.lhs.true161.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc169.4

for.inc169.4:                                     ; preds = %land.lhs.true161.4.for.inc169.4_crit_edge, %land.lhs.true155.4.for.inc169.4_crit_edge, %for.body149.4.for.inc169.4_crit_edge
  %inc170.4 = add nuw nsw i32 %j135.0412.4, 1
  %exitcond429.not.4 = icmp eq i32 %inc170.4, %call136
  br i1 %exitcond429.not.4, label %for.inc169.4.for.inc172.4_crit_edge, label %for.inc169.4.for.body149.4_crit_edge

for.inc169.4.for.body149.4_crit_edge:             ; preds = %for.inc169.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body149.4

for.inc169.4.for.inc172.4_crit_edge:              ; preds = %for.inc169.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc172.4

for.inc172.4:                                     ; preds = %for.inc169.4.for.inc172.4_crit_edge, %for.inc172.3.for.inc172.4_crit_edge, %for.inc172.2.for.inc172.4_crit_edge, %for.inc172.1.for.inc172.4_crit_edge, %for.inc172.for.inc172.4_crit_edge, %for.cond139.preheader.for.inc172.4_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass130) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass130) #12
  br label %do.body179

do.body179:                                       ; preds = %for.inc172.4, %if.end175.thread
  %123 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %drm2, align 8
  %dev185 = getelementptr inbounds %struct.nouveau_drm, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %dev185 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev185, align 8
  %dev186 = getelementptr inbounds %struct.drm_device, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %dev186 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev186, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.65, ptr noundef %name) #15
  br label %if.then277

if.end191:                                        ; preds = %land.lhs.true161.4.if.end191_crit_edge, %land.lhs.true161.3.if.end191_crit_edge, %land.lhs.true161.2.if.end191_crit_edge, %land.lhs.true161.1.if.end191_crit_edge, %land.lhs.true161.if.end191_crit_edge
  %i134.0416467.lcssa = phi i32 [ 0, %land.lhs.true161.if.end191_crit_edge ], [ 1, %land.lhs.true161.1.if.end191_crit_edge ], [ 2, %land.lhs.true161.2.if.end191_crit_edge ], [ 3, %land.lhs.true161.3.if.end191_crit_edge ], [ 4, %land.lhs.true161.4.if.end191_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass130) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass130) #12
  %arrayidx192 = getelementptr [6 x %struct.nvif_mclass], ptr @nouveau_cli_init.vmms, i32 0, i32 %i134.0416467.lcssa
  %129 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx192, align 4
  %vmm = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 5
  %call194 = call i32 @nouveau_vmm_init(ptr noundef %cli, i32 noundef %130, ptr noundef %vmm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %if.end209, label %do.body197

do.body197:                                       ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #14
  %131 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %drm2, align 8
  %dev203 = getelementptr inbounds %struct.nouveau_drm, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %dev203 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev203, align 8
  %dev204 = getelementptr inbounds %struct.drm_device, ptr %134, i32 0, i32 2
  %135 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev204, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.68, ptr noundef %name, i32 noundef %call194) #15
  br label %if.then277

if.end209:                                        ; preds = %if.end191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass213) #12
  %137 = ptrtoint ptr %sclass213 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass213, align 4, !annotation !326
  %call219 = call i32 @nvif_object_sclass_get(ptr noundef %mmu, ptr noundef nonnull %sclass213) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call219)
  %cmp220 = icmp sgt i32 %call219, -1
  br i1 %cmp220, label %for.cond222.preheader, label %if.end258.thread

for.cond222.preheader:                            ; preds = %if.end209
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call219)
  %cmp231418.not = icmp eq i32 %call219, 0
  br i1 %cmp231418.not, label %for.cond222.preheader.if.end258.thread399_crit_edge, label %for.body232.lr.ph

for.cond222.preheader.if.end258.thread399_crit_edge: ; preds = %for.cond222.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258.thread399

if.end258.thread:                                 ; preds = %if.end209
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass213) #12
  br label %do.body262

for.body232.lr.ph:                                ; preds = %for.cond222.preheader
  %138 = ptrtoint ptr %sclass213 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sclass213, align 4
  br label %for.body232

if.end258.thread399:                              ; preds = %for.inc252.2.if.end258.thread399_crit_edge, %land.rhs224.2.if.end258.thread399_crit_edge, %land.rhs224.1.if.end258.thread399_crit_edge, %for.cond222.preheader.if.end258.thread399_crit_edge
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass213) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass213) #12
  br label %do.body262

for.body232:                                      ; preds = %for.inc252.for.body232_crit_edge, %for.body232.lr.ph
  %j218.0419 = phi i32 [ 0, %for.body232.lr.ph ], [ %inc253, %for.inc252.for.body232_crit_edge ]
  %arrayidx235 = getelementptr %struct.nvif_sclass, ptr %139, i32 %j218.0419
  %140 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147446773, i32 %141)
  %cmp237 = icmp eq i32 %141, -2147446773
  br i1 %cmp237, label %land.lhs.true238, label %for.body232.for.inc252_crit_edge

for.body232.for.inc252_crit_edge:                 ; preds = %for.body232
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252

land.lhs.true238:                                 ; preds = %for.body232
  %minver242 = getelementptr %struct.nvif_sclass, ptr %139, i32 %j218.0419, i32 1
  %142 = ptrtoint ptr %minver242 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %minver242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %143)
  %cmp243.not = icmp sgt i32 %143, -1
  br i1 %cmp243.not, label %land.lhs.true238.for.inc252_crit_edge, label %land.lhs.true244

land.lhs.true238.for.inc252_crit_edge:            ; preds = %land.lhs.true238
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252

land.lhs.true244:                                 ; preds = %land.lhs.true238
  %maxver248 = getelementptr %struct.nvif_sclass, ptr %139, i32 %j218.0419, i32 2
  %144 = ptrtoint ptr %maxver248 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %maxver248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %145)
  %cmp249.not = icmp slt i32 %145, -1
  br i1 %cmp249.not, label %land.lhs.true244.for.inc252_crit_edge, label %land.lhs.true244.if.end274_crit_edge

land.lhs.true244.if.end274_crit_edge:             ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

land.lhs.true244.for.inc252_crit_edge:            ; preds = %land.lhs.true244
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252

for.inc252:                                       ; preds = %land.lhs.true244.for.inc252_crit_edge, %land.lhs.true238.for.inc252_crit_edge, %for.body232.for.inc252_crit_edge
  %inc253 = add nuw nsw i32 %j218.0419, 1
  %exitcond431.not = icmp eq i32 %inc253, %call219
  br i1 %exitcond431.not, label %land.rhs224.1, label %for.inc252.for.body232_crit_edge

for.inc252.for.body232_crit_edge:                 ; preds = %for.inc252
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body232

land.rhs224.1:                                    ; preds = %for.inc252
  br i1 %cmp231418.not, label %land.rhs224.1.if.end258.thread399_crit_edge, label %for.body232.lr.ph.1

land.rhs224.1.if.end258.thread399_crit_edge:      ; preds = %land.rhs224.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258.thread399

for.body232.lr.ph.1:                              ; preds = %land.rhs224.1
  %146 = ptrtoint ptr %sclass213 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sclass213, align 4
  br label %for.body232.1

for.body232.1:                                    ; preds = %for.inc252.1.for.body232.1_crit_edge, %for.body232.lr.ph.1
  %j218.0419.1 = phi i32 [ 0, %for.body232.lr.ph.1 ], [ %inc253.1, %for.inc252.1.for.body232.1_crit_edge ]
  %arrayidx235.1 = getelementptr %struct.nvif_sclass, ptr %147, i32 %j218.0419.1
  %148 = ptrtoint ptr %arrayidx235.1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx235.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147463157, i32 %149)
  %cmp237.1 = icmp eq i32 %149, -2147463157
  br i1 %cmp237.1, label %land.lhs.true238.1, label %for.body232.1.for.inc252.1_crit_edge

for.body232.1.for.inc252.1_crit_edge:             ; preds = %for.body232.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.1

land.lhs.true238.1:                               ; preds = %for.body232.1
  %minver242.1 = getelementptr %struct.nvif_sclass, ptr %147, i32 %j218.0419.1, i32 1
  %150 = ptrtoint ptr %minver242.1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %minver242.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %151)
  %cmp243.not.1 = icmp sgt i32 %151, -1
  br i1 %cmp243.not.1, label %land.lhs.true238.1.for.inc252.1_crit_edge, label %land.lhs.true244.1

land.lhs.true238.1.for.inc252.1_crit_edge:        ; preds = %land.lhs.true238.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.1

land.lhs.true244.1:                               ; preds = %land.lhs.true238.1
  %maxver248.1 = getelementptr %struct.nvif_sclass, ptr %147, i32 %j218.0419.1, i32 2
  %152 = ptrtoint ptr %maxver248.1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %maxver248.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %153)
  %cmp249.not.1 = icmp slt i32 %153, -1
  br i1 %cmp249.not.1, label %land.lhs.true244.1.for.inc252.1_crit_edge, label %land.lhs.true244.1.if.end274_crit_edge

land.lhs.true244.1.if.end274_crit_edge:           ; preds = %land.lhs.true244.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

land.lhs.true244.1.for.inc252.1_crit_edge:        ; preds = %land.lhs.true244.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.1

for.inc252.1:                                     ; preds = %land.lhs.true244.1.for.inc252.1_crit_edge, %land.lhs.true238.1.for.inc252.1_crit_edge, %for.body232.1.for.inc252.1_crit_edge
  %inc253.1 = add nuw nsw i32 %j218.0419.1, 1
  %exitcond431.1.not = icmp eq i32 %inc253.1, %call219
  br i1 %exitcond431.1.not, label %land.rhs224.2, label %for.inc252.1.for.body232.1_crit_edge

for.inc252.1.for.body232.1_crit_edge:             ; preds = %for.inc252.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body232.1

land.rhs224.2:                                    ; preds = %for.inc252.1
  br i1 %cmp231418.not, label %land.rhs224.2.if.end258.thread399_crit_edge, label %for.body232.lr.ph.2

land.rhs224.2.if.end258.thread399_crit_edge:      ; preds = %land.rhs224.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258.thread399

for.body232.lr.ph.2:                              ; preds = %land.rhs224.2
  %154 = ptrtoint ptr %sclass213 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sclass213, align 4
  br label %for.body232.2

for.body232.2:                                    ; preds = %for.inc252.2.for.body232.2_crit_edge, %for.body232.lr.ph.2
  %j218.0419.2 = phi i32 [ 0, %for.body232.lr.ph.2 ], [ %inc253.2, %for.inc252.2.for.body232.2_crit_edge ]
  %arrayidx235.2 = getelementptr %struct.nvif_sclass, ptr %155, i32 %j218.0419.2
  %156 = ptrtoint ptr %arrayidx235.2 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx235.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483637, i32 %157)
  %cmp237.2 = icmp eq i32 %157, -2147483637
  br i1 %cmp237.2, label %land.lhs.true238.2, label %for.body232.2.for.inc252.2_crit_edge

for.body232.2.for.inc252.2_crit_edge:             ; preds = %for.body232.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.2

land.lhs.true238.2:                               ; preds = %for.body232.2
  %minver242.2 = getelementptr %struct.nvif_sclass, ptr %155, i32 %j218.0419.2, i32 1
  %158 = ptrtoint ptr %minver242.2 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %minver242.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %159)
  %cmp243.not.2 = icmp sgt i32 %159, -1
  br i1 %cmp243.not.2, label %land.lhs.true238.2.for.inc252.2_crit_edge, label %land.lhs.true244.2

land.lhs.true238.2.for.inc252.2_crit_edge:        ; preds = %land.lhs.true238.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.2

land.lhs.true244.2:                               ; preds = %land.lhs.true238.2
  %maxver248.2 = getelementptr %struct.nvif_sclass, ptr %155, i32 %j218.0419.2, i32 2
  %160 = ptrtoint ptr %maxver248.2 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %maxver248.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %161)
  %cmp249.not.2 = icmp slt i32 %161, -1
  br i1 %cmp249.not.2, label %land.lhs.true244.2.for.inc252.2_crit_edge, label %land.lhs.true244.2.if.end274_crit_edge

land.lhs.true244.2.if.end274_crit_edge:           ; preds = %land.lhs.true244.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end274

land.lhs.true244.2.for.inc252.2_crit_edge:        ; preds = %land.lhs.true244.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc252.2

for.inc252.2:                                     ; preds = %land.lhs.true244.2.for.inc252.2_crit_edge, %land.lhs.true238.2.for.inc252.2_crit_edge, %for.body232.2.for.inc252.2_crit_edge
  %inc253.2 = add nuw nsw i32 %j218.0419.2, 1
  %exitcond431.2.not = icmp eq i32 %inc253.2, %call219
  br i1 %exitcond431.2.not, label %for.inc252.2.if.end258.thread399_crit_edge, label %for.inc252.2.for.body232.2_crit_edge

for.inc252.2.for.body232.2_crit_edge:             ; preds = %for.inc252.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body232.2

for.inc252.2.if.end258.thread399_crit_edge:       ; preds = %for.inc252.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end258.thread399

do.body262:                                       ; preds = %if.end258.thread399, %if.end258.thread
  %162 = ptrtoint ptr %drm2 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %drm2, align 8
  %dev268 = getelementptr inbounds %struct.nouveau_drm, ptr %163, i32 0, i32 3
  %164 = ptrtoint ptr %dev268 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev268, align 8
  %dev269 = getelementptr inbounds %struct.drm_device, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %dev269 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev269, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %167, ptr noundef nonnull @.str.71, ptr noundef %name) #15
  br label %if.then277

if.end274:                                        ; preds = %land.lhs.true244.2.if.end274_crit_edge, %land.lhs.true244.1.if.end274_crit_edge, %land.lhs.true244.if.end274_crit_edge
  %ret215.1.lcssa = phi i32 [ 2, %land.lhs.true244.2.if.end274_crit_edge ], [ 1, %land.lhs.true244.1.if.end274_crit_edge ], [ 0, %land.lhs.true244.if.end274_crit_edge ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass213) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass213) #12
  %arrayidx275 = getelementptr [4 x %struct.nvif_mclass], ptr @nouveau_cli_init.mems, i32 0, i32 %ret215.1.lcssa
  %mem = getelementptr inbounds %struct.nouveau_cli, ptr %cli, i32 0, i32 7
  %168 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %arrayidx275, ptr %mem, align 8
  br label %cleanup

if.then277:                                       ; preds = %do.body262, %do.body197, %do.body179, %do.body114, %do.body94, %do.body47, %do.body28
  %ret.1 = phi i32 [ %ret.0, %do.body28 ], [ %call44, %do.body47 ], [ -19, %do.body94 ], [ %call111, %do.body114 ], [ -19, %do.body179 ], [ %call194, %do.body197 ], [ -19, %do.body262 ]
  call fastcc void @nouveau_cli_fini(ptr noundef %cli)
  br label %cleanup

cleanup:                                          ; preds = %if.then277, %if.end274
  %retval.0 = phi i32 [ %ret.1, %if.then277 ], [ 0, %if.end274 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_dbgopt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_ttm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nouveau_accel_init(ptr noundef %drm) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i = alloca %struct.nv_dma_v0, align 8
  %sclass = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclass) #12
  %0 = ptrtoint ptr %sclass to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %sclass, align 4, !annotation !326
  %1 = load i32, ptr @nouveau_noaccel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @nouveau_channels_init(ptr noundef %drm) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @nvif_object_sclass_get(ptr noundef %device1, ptr noundef nonnull %sclass) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %for.cond.preheader

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp876.not = icmp eq i32 %call5, 0
  br i1 %cmp876.not, label %for.end.thread, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #12
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ret.077 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -38, %for.cond.preheader.for.body_crit_edge ]
  %2 = ptrtoint ptr %sclass to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sclass, align 4
  %arrayidx = getelementptr %struct.nvif_sclass, ptr %3, i32 %i.078
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %5, label %for.body.for.inc_crit_edge [
    i32 107, label %sw.bb
    i32 110, label %sw.bb10
    i32 5998, label %for.body.sw.bb12_crit_edge
    i32 16494, label %for.body.sw.bb12_crit_edge82
    i32 20591, label %sw.bb14
    i32 33391, label %sw.bb16
    i32 36975, label %for.body.sw.bb18_crit_edge
    i32 41071, label %for.body.sw.bb18_crit_edge83
    i32 41327, label %for.body.sw.bb18_crit_edge84
    i32 45167, label %for.body.sw.bb18_crit_edge85
    i32 49263, label %for.body.sw.bb18_crit_edge86
    i32 50031, label %for.body.sw.bb18_crit_edge87
    i32 50287, label %for.body.sw.bb18_crit_edge88
    i32 51055, label %for.body.sw.bb18_crit_edge89
  ]

for.body.sw.bb18_crit_edge89:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge88:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge87:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge86:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge85:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge84:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge83:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb18_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb18

for.body.sw.bb12_crit_edge82:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12

for.body.sw.bb12_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb12

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = call i32 @nv04_fence_create(ptr noundef %drm) #12
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call11 = call i32 @nv10_fence_create(ptr noundef %drm) #12
  br label %for.inc

sw.bb12:                                          ; preds = %for.body.sw.bb12_crit_edge, %for.body.sw.bb12_crit_edge82
  %call13 = call i32 @nv17_fence_create(ptr noundef %drm) #12
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = call i32 @nv50_fence_create(ptr noundef %drm) #12
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call17 = call i32 @nv84_fence_create(ptr noundef %drm) #12
  br label %for.inc

sw.bb18:                                          ; preds = %for.body.sw.bb18_crit_edge, %for.body.sw.bb18_crit_edge83, %for.body.sw.bb18_crit_edge84, %for.body.sw.bb18_crit_edge85, %for.body.sw.bb18_crit_edge86, %for.body.sw.bb18_crit_edge87, %for.body.sw.bb18_crit_edge88, %for.body.sw.bb18_crit_edge89
  %call19 = call i32 @nvc0_fence_create(ptr noundef %drm) #12
  br label %for.inc

for.inc:                                          ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.077, %for.body.for.inc_crit_edge ], [ %call19, %sw.bb18 ], [ %call17, %sw.bb16 ], [ %call15, %sw.bb14 ], [ %call13, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb ]
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %call5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @nvif_object_sclass_put(ptr noundef nonnull %sclass) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool20.not = icmp eq i32 %ret.1, 0
  br i1 %tobool20.not, label %if.end28, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %for.end.thread
  %ret.0.lcssa81 = phi i32 [ -38, %for.end.thread ], [ %ret.1, %for.end.do.body_crit_edge ]
  %drm24 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %drm24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm24, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dev25 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev25, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.73, ptr noundef %name, i32 noundef %ret.0.lcssa81) #15
  call fastcc void @nouveau_accel_fini(ptr noundef %drm)
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %family = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp31 = icmp ugt i8 %14, 10
  br i1 %cmp31, label %if.then33, label %if.end38.thread

if.end38.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  br label %if.end.i

if.then33:                                        ; preds = %if.end28
  %call34 = call i32 @nvif_user_ctor(ptr noundef %device1, ptr noundef nonnull @.str.75) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38, label %if.then33.cleanup_crit_edge

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end38:                                         ; preds = %if.then33
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %15)
  %.pr = load i8, ptr %family, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %.compoundliteral.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %.pr)
  %cmp.i = icmp ugt i8 %.pr, 12
  br i1 %cmp.i, label %nouveau_accel_gr_init.exit.thread, label %if.end38.if.end.i_crit_edge

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

nouveau_accel_gr_init.exit.thread:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  br label %if.then.i

if.end.i:                                         ; preds = %if.end38.if.end.i_crit_edge, %if.end38.thread
  %16 = phi i8 [ %14, %if.end38.thread ], [ %.pr, %if.end38.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %16)
  %cmp6.i = icmp ugt i8 %16, 7
  br i1 %cmp6.i, label %if.then8.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = call i64 @nvif_fifo_runlist(ptr noundef %device1, i64 noundef 2) #12
  %conv9.i = trunc i64 %call.i to i32
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %arg1.0.i = phi i32 [ 1, %if.then8.i ], [ -2147483645, %if.end.i.if.end10.i_crit_edge ]
  %arg0.0.i = phi i32 [ %conv9.i, %if.then8.i ], [ -2147483646, %if.end.i.if.end10.i_crit_edge ]
  %channel.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 13
  %call11.i = call i32 @nouveau_channel_new(ptr noundef %drm, ptr noundef %device1, i32 noundef %arg0.0.i, i32 noundef %arg1.0.i, i1 noundef zeroext false, ptr noundef %channel.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %do.body.i

do.body.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  %drm15.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %drm15.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drm15.i, align 8
  %dev.i = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 8
  %dev16.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %dev16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev16.i, align 4
  %name.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.76, ptr noundef %name.i, i32 noundef %call11.i) #15
  %23 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel.i, align 4
  %call.i.i = call i32 @nouveau_channel_idle(ptr noundef %24) #12
  %ntfy.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 16
  call void @nvif_object_dtor(ptr noundef %ntfy.i.i) #12
  %notify.i.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 14
  call void @nvkm_gpuobj_del(ptr noundef %notify.i.i) #12
  call void @nouveau_channel_del(ptr noundef %channel.i) #12
  br label %nouveau_accel_gr_init.exit

if.end19.i:                                       ; preds = %if.end10.i
  %25 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel.i, align 4
  %client21.i = getelementptr inbounds %struct.nouveau_channel, ptr %26, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %client21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client21.i, align 4
  %tobool22.not.i = icmp eq ptr %28, null
  br i1 %tobool22.not.i, label %land.lhs.true.i, label %if.end19.i.if.end359thread-pre-split.i_crit_edge

if.end19.i.if.end359thread-pre-split.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end359thread-pre-split.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %29 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %family, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %30)
  %cmp26.i = icmp ult i8 %30, 6
  br i1 %cmp26.i, label %if.then28.i, label %land.lhs.true.i.if.end359.i_crit_edge

land.lhs.true.i.if.end359.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end359.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  %user.i = getelementptr inbounds %struct.nouveau_channel, ptr %26, i32 0, i32 17
  %call30.i = call i32 @nouveau_abi16_swclass(ptr noundef %drm) #12
  %31 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %channel.i, align 4
  %nvsw32.i = getelementptr inbounds %struct.nouveau_channel, ptr %32, i32 0, i32 9
  %call33.i = call i32 @nvif_object_ctor(ptr noundef %user.i, ptr noundef nonnull @.str.78, i32 noundef 1431633920, i32 noundef %call30.i, ptr noundef null, i32 noundef 0, ptr noundef %nvsw32.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp eq i32 %call33.i, 0
  br i1 %cmp34.i, label %if.then36.i, label %if.then28.i.do.body345.i_crit_edge

if.then28.i.do.body345.i_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body345.i

if.then36.i:                                      ; preds = %if.then28.i
  %33 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel.i, align 4
  %push38.i = getelementptr inbounds %struct.anon.104, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %push38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %push38.i, align 8
  %cur.i.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cur.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %38, i32 2
  %end.i.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 6
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i.i, align 4
  %cmp.not.i.i = icmp ult ptr %add.ptr.i.i, %40
  br i1 %cmp.not.i.i, label %if.then36.i.if.end116.i_crit_edge, label %if.then.i.i

if.then36.i.if.end116.i_crit_edge:                ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116.i

if.then.i.i:                                      ; preds = %if.then36.i
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 8
  %call.i471.i = call i32 %42(ptr noundef %36, i32 noundef 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i471.i)
  %tobool.not.i.i = icmp eq i32 %call.i471.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end116.i_crit_edge, label %if.then.i.i.do.body345.i_crit_edge

if.then.i.i.do.body345.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body345.i

if.then.i.i.if.end116.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.then.i.i.if.end116.i_crit_edge, %if.then36.i.if.end116.i_crit_edge
  %43 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cur.i.i, align 4
  %add.ptr4.i.i = getelementptr i32, ptr %44, i32 2
  %seg.i.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 5
  %45 = ptrtoint ptr %seg.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr4.i.i, ptr %seg.i.i, align 8
  %cmp129.not.i = icmp ult ptr %44, %add.ptr4.i.i
  br i1 %cmp129.not.i, label %if.end116.i.if.end154.i_crit_edge, label %do.end148.i, !prof !321

if.end116.i.if.end154.i_crit_edge:                ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end154.i

do.end148.i:                                      ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.82) #12
  br label %if.end154.i

if.end154.i:                                      ; preds = %do.end148.i, %if.end116.i.if.end154.i_crit_edge
  %46 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cur.i.i, align 4
  %48 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %end.i.i, align 4
  %cmp167.not.i = icmp ult ptr %47, %49
  br i1 %cmp167.not.i, label %if.end154.i.if.end192.i_crit_edge, label %do.end186.i, !prof !321

if.end154.i.if.end192.i_crit_edge:                ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192.i

do.end186.i:                                      ; preds = %if.end154.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.83) #12
  br label %if.end192.i

if.end192.i:                                      ; preds = %do.end186.i, %if.end154.i.if.end192.i_crit_edge
  %50 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cur.i.i, align 4
  %mem.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 2
  %map.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 2, i32 0, i32 6
  %52 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %map.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %51 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %53 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %54 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mem.i, align 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %client208.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 2, i32 0, i32 1
  %60 = ptrtoint ptr %client208.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %client208.i, align 4
  %name210.i = getelementptr inbounds %struct.nvif_object, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %name210.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name210.i, align 8
  %handle.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 2, i32 0, i32 3
  %64 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %handle.i, align 4
  %name211.i = getelementptr inbounds %struct.nvif_push, ptr %36, i32 0, i32 2, i32 0, i32 2
  %66 = ptrtoint ptr %name211.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name211.i, align 8
  call void (ptr, ptr, ...) %59(ptr noundef %mem.i, ptr noundef nonnull @.str.84, ptr noundef %63, i32 noundef %65, ptr noundef %67, i32 noundef %sub.ptr.sub.i, i32 noundef 270336, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @.str.77) #12
  %68 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cur.i.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %69, i32 1
  store ptr %incdec.ptr.i, ptr %cur.i.i, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 270336, ptr %69, align 4
  %71 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channel.i, align 4
  %handle226.i = getelementptr inbounds %struct.nouveau_channel, ptr %72, i32 0, i32 9, i32 3
  %73 = ptrtoint ptr %handle226.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %handle226.i, align 4
  %75 = load ptr, ptr %cur.i.i, align 4
  %76 = ptrtoint ptr %seg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %seg.i.i, align 8
  %cmp231.not.i = icmp ult ptr %75, %77
  br i1 %cmp231.not.i, label %if.end192.i.if.end256.i_crit_edge, label %do.end250.i, !prof !321

if.end192.i.if.end256.i_crit_edge:                ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end256.i

do.end250.i:                                      ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.82) #12
  br label %if.end256.i

if.end256.i:                                      ; preds = %do.end250.i, %if.end192.i.if.end256.i_crit_edge
  %78 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cur.i.i, align 4
  %80 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i, align 4
  %cmp270.not.i = icmp ult ptr %79, %81
  br i1 %cmp270.not.i, label %if.end256.i.if.end342.i_crit_edge, label %do.end289.i, !prof !321

if.end256.i.if.end342.i_crit_edge:                ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end342.i

do.end289.i:                                      ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 380, i32 noundef 9, ptr noundef nonnull @.str.83) #12
  br label %if.end342.i

if.end342.i:                                      ; preds = %do.end289.i, %if.end256.i.if.end342.i_crit_edge
  %82 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cur.i.i, align 4
  %84 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %map.i, align 8
  %sub.ptr.lhs.cast313.i = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast314.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub315.i = sub i32 %sub.ptr.lhs.cast313.i, %sub.ptr.rhs.cast314.i
  %86 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mem.i, align 8
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %89, align 4
  %92 = ptrtoint ptr %client208.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %client208.i, align 4
  %name327.i = getelementptr inbounds %struct.nvif_object, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %name327.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name327.i, align 8
  %96 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %handle.i, align 4
  %98 = ptrtoint ptr %name211.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name211.i, align 8
  call void (ptr, ptr, ...) %91(ptr noundef %mem.i, ptr noundef nonnull @.str.85, ptr noundef %95, i32 noundef %97, ptr noundef %99, i32 noundef %sub.ptr.sub315.i, i32 noundef %74) #12
  %100 = ptrtoint ptr %cur.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %cur.i.i, align 4
  %incdec.ptr336.i = getelementptr i32, ptr %101, i32 1
  store ptr %incdec.ptr336.i, ptr %cur.i.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %74, ptr %101, align 4
  br label %if.end359thread-pre-split.i

do.body345.i:                                     ; preds = %if.then.i.i.do.body345.i_crit_edge, %if.then28.i.do.body345.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call.i471.i, %if.then.i.i.do.body345.i_crit_edge ], [ %call33.i, %if.then28.i.do.body345.i_crit_edge ]
  %drm351.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %103 = ptrtoint ptr %drm351.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %drm351.i, align 8
  %dev352.i = getelementptr inbounds %struct.nouveau_drm, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %dev352.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev352.i, align 8
  %dev353.i = getelementptr inbounds %struct.drm_device, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %dev353.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev353.i, align 4
  %name354.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.87, ptr noundef %name354.i, i32 noundef %ret.0.ph.i) #15
  call fastcc void @nouveau_accel_gr_fini(ptr noundef %drm) #12
  br label %nouveau_accel_gr_init.exit

if.end359thread-pre-split.i:                      ; preds = %if.end342.i, %if.end19.i.if.end359thread-pre-split.i_crit_edge
  %109 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %109)
  %.pr.i = load i8, ptr %family, align 1
  br label %if.end359.i

if.end359.i:                                      ; preds = %if.end359thread-pre-split.i, %land.lhs.true.i.if.end359.i_crit_edge
  %110 = phi i8 [ %.pr.i, %if.end359thread-pre-split.i ], [ %30, %land.lhs.true.i.if.end359.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %110)
  %cmp363.i = icmp ult i8 %110, 7
  br i1 %cmp363.i, label %if.then365.i, label %if.end359.i.nouveau_accel_gr_init.exit_crit_edge

if.end359.i.nouveau_accel_gr_init.exit_crit_edge: ; preds = %if.end359.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_gr_init.exit

if.then365.i:                                     ; preds = %if.end359.i
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 0, i32 5
  %111 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %priv.i, align 4
  %device368.i = getelementptr inbounds %struct.anon.201, ptr %112, i32 0, i32 1
  %113 = ptrtoint ptr %device368.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %device368.i, align 8
  %notify.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 14
  %call369.i = call i32 @nvkm_gpuobj_new(ptr noundef %114, i32 noundef 32, i32 noundef 0, i1 noundef zeroext false, ptr noundef null, ptr noundef %notify.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call369.i)
  %tobool370.not.i = icmp eq i32 %call369.i, 0
  br i1 %tobool370.not.i, label %if.end385.i, label %do.body372.i

do.body372.i:                                     ; preds = %if.then365.i
  call void @__sanitizer_cov_trace_pc() #14
  %drm378.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %115 = ptrtoint ptr %drm378.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %drm378.i, align 8
  %dev379.i = getelementptr inbounds %struct.nouveau_drm, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %dev379.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev379.i, align 8
  %dev380.i = getelementptr inbounds %struct.drm_device, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %dev380.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev380.i, align 4
  %name381.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.90, ptr noundef %name381.i, i32 noundef %call369.i) #15
  call fastcc void @nouveau_accel_gr_fini(ptr noundef %drm) #12
  br label %nouveau_accel_gr_init.exit

if.end385.i:                                      ; preds = %if.then365.i
  %121 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %channel.i, align 4
  %user387.i = getelementptr inbounds %struct.nouveau_channel, ptr %122, i32 0, i32 17
  %123 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %.compoundliteral.i, align 8
  %target.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 1
  %124 = ptrtoint ptr %target.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 1, ptr %target.i, align 1
  %access.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 2
  %125 = ptrtoint ptr %access.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 3, ptr %access.i, align 2
  %pad03.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 3
  %126 = call ptr @memset(ptr %pad03.i, i32 0, i32 5)
  %start.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 4
  %127 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %notify.i, align 8
  %addr.i = getelementptr inbounds %struct.nvkm_gpuobj, ptr %128, i32 0, i32 4
  %129 = ptrtoint ptr %addr.i to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %addr.i, align 8
  %131 = ptrtoint ptr %start.i to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %130, ptr %start.i, align 8
  %limit.i = getelementptr inbounds %struct.nv_dma_v0, ptr %.compoundliteral.i, i32 0, i32 5
  %add.i = add i64 %130, 31
  %132 = ptrtoint ptr %limit.i to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %add.i, ptr %limit.i, align 8
  %ntfy.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 16
  %call391.i = call i32 @nvif_object_ctor(ptr noundef %user387.i, ptr noundef nonnull @.str.92, i32 noundef -2147483642, i32 noundef 61, ptr noundef nonnull %.compoundliteral.i, i32 noundef 24, ptr noundef %ntfy.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call391.i)
  %tobool392.not.i = icmp eq i32 %call391.i, 0
  br i1 %tobool392.not.i, label %if.end385.i.nouveau_accel_gr_init.exit_crit_edge, label %if.then393.i

if.end385.i.nouveau_accel_gr_init.exit_crit_edge: ; preds = %if.end385.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_gr_init.exit

if.then393.i:                                     ; preds = %if.end385.i
  call void @__sanitizer_cov_trace_pc() #14
  %133 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %channel.i, align 4
  %call.i473.i = call i32 @nouveau_channel_idle(ptr noundef %134) #12
  call void @nvif_object_dtor(ptr noundef %ntfy.i) #12
  call void @nvkm_gpuobj_del(ptr noundef %notify.i) #12
  call void @nouveau_channel_del(ptr noundef %channel.i) #12
  br label %nouveau_accel_gr_init.exit

nouveau_accel_gr_init.exit:                       ; preds = %if.then393.i, %if.end385.i.nouveau_accel_gr_init.exit_crit_edge, %do.body372.i, %if.end359.i.nouveau_accel_gr_init.exit_crit_edge, %do.body345.i, %do.body.i
  %135 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %135)
  %.pr74 = load i8, ptr %family, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %.compoundliteral.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %.pr74)
  %cmp.i66 = icmp ugt i8 %.pr74, 7
  br i1 %cmp.i66, label %nouveau_accel_gr_init.exit.if.then.i_crit_edge, label %if.else.i

nouveau_accel_gr_init.exit.if.then.i_crit_edge:   ; preds = %nouveau_accel_gr_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %nouveau_accel_gr_init.exit.if.then.i_crit_edge, %nouveau_accel_gr_init.exit.thread
  %call.i.i67 = call i64 @nvif_fifo_runlist(ptr noundef %device1, i64 noundef 2) #12
  %call1.i.i = call i64 @nvif_fifo_runlist(ptr noundef %device1, i64 noundef 128) #12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call1.i.i)
  %tobool.not.i.i68 = icmp eq i64 %call1.i.i, 0
  br i1 %tobool.not.i.i68, label %if.then.i.nvif_fifo_runlist_ce.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i.nvif_fifo_runlist_ce.exit.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nvif_fifo_runlist_ce.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %neg.i.i = xor i64 %call.i.i67, -1
  %and.i.i = and i64 %call1.i.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool2.not.i.i = icmp eq i64 %and.i.i, 0
  %spec.select.i.i = select i1 %tobool2.not.i.i, i64 %call.i.i67, i64 %and.i.i
  %extract.t.i = trunc i64 %spec.select.i.i to i32
  br label %nvif_fifo_runlist_ce.exit.i

nvif_fifo_runlist_ce.exit.i:                      ; preds = %land.lhs.true.i.i, %if.then.i.nvif_fifo_runlist_ce.exit.i_crit_edge
  %runmce.0.i.off0.i = phi i32 [ 0, %if.then.i.nvif_fifo_runlist_ce.exit.i_crit_edge ], [ %extract.t.i, %land.lhs.true.i.i ]
  %cechan.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 12
  %call4.i = call i32 @nouveau_channel_new(ptr noundef %drm, ptr noundef %device1, i32 noundef %runmce.0.i.off0.i, i32 noundef 0, i1 noundef zeroext true, ptr noundef %cechan.i) #12
  br label %if.end23.i

if.else.i:                                        ; preds = %nouveau_accel_gr_init.exit
  %chipset.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 3, i32 1, i32 2
  %136 = ptrtoint ptr %chipset.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %chipset.i, align 2
  %.fr.i = freeze i16 %137
  call void @__sanitizer_cov_trace_const_cmp2(i16 163, i16 %.fr.i)
  %cmp7.i = icmp ult i16 %.fr.i, 163
  br i1 %cmp7.i, label %if.else.i.nouveau_accel_ce_init.exit_crit_edge, label %switch.early.test.i

if.else.i.nouveau_accel_ce_init.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_ce_init.exit

switch.early.test.i:                              ; preds = %if.else.i
  %138 = zext i16 %.fr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %.fr.i, label %if.then20.i [
    i16 172, label %switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge
    i16 170, label %switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge90
  ]

switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge90: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_ce_init.exit

switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_ce_init.exit

if.then20.i:                                      ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #14
  %cechan21.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 12
  %call22.i = call i32 @nouveau_channel_new(ptr noundef %drm, ptr noundef %device1, i32 noundef -2147483646, i32 noundef -2147483645, i1 noundef zeroext false, ptr noundef %cechan21.i) #12
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %nvif_fifo_runlist_ce.exit.i
  %ret.0.i = phi i32 [ %call4.i, %nvif_fifo_runlist_ce.exit.i ], [ %call22.i, %if.then20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not.i69 = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not.i69, label %if.end23.i.nouveau_accel_ce_init.exit_crit_edge, label %do.body.i72

if.end23.i.nouveau_accel_ce_init.exit_crit_edge:  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_accel_ce_init.exit

do.body.i72:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  %drm27.i = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 1
  %139 = ptrtoint ptr %drm27.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %drm27.i, align 8
  %dev.i70 = getelementptr inbounds %struct.nouveau_drm, ptr %140, i32 0, i32 3
  %141 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev.i70, align 8
  %dev28.i = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 2
  %143 = ptrtoint ptr %dev28.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %dev28.i, align 4
  %name.i71 = getelementptr inbounds %struct.nouveau_drm, ptr %drm, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.93, ptr noundef %name.i71, i32 noundef %ret.0.i) #15
  br label %nouveau_accel_ce_init.exit

nouveau_accel_ce_init.exit:                       ; preds = %do.body.i72, %if.end23.i.nouveau_accel_ce_init.exit_crit_edge, %switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge, %switch.early.test.i.nouveau_accel_ce_init.exit_crit_edge90, %if.else.i.nouveau_accel_ce_init.exit_crit_edge
  call void @nouveau_bo_move_init(ptr noundef %drm) #12
  br label %cleanup

cleanup:                                          ; preds = %nouveau_accel_ce_init.exit, %if.then33.cleanup_crit_edge, %do.body, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclass) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_init(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_debugfs_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hwmon_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_fbcon_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_led_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_drm_debugf(ptr nocapture noundef readonly %object, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #12
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !326
  call void @llvm.va_start(ptr nonnull %va)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fmt, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %va, ptr %2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %6 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.end10_crit_edge, label %do.body3

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drm5 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %drm5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drm5, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev6, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %12, ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull %vaf) #15
  br label %do.end10

do.end10:                                         ; preds = %do.body3, %entry.do.end10_crit_edge
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_drm_errorf(ptr nocapture noundef readonly %object, ptr noundef %fmt, ...) #0 align 64 {
entry:
  %vaf = alloca %struct.va_format, align 4
  %va = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %object to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %object, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #12
  %2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #12
  %3 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !326
  call void @llvm.va_start(ptr nonnull %va)
  %4 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fmt, ptr %vaf, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %va, ptr %2, align 4
  %drm4 = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %drm4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drm4, align 8
  %dev = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull %vaf) #15
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @usif_client_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_cli_work(ptr noundef %w) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %w, i32 52
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #12
  %worker = getelementptr i8, ptr %w, i32 44
  %0 = ptrtoint ptr %worker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %worker, align 4
  %cmp.not33 = icmp eq ptr %1, %worker
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in34 = phi ptr [ %.pn37, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %work.036 = getelementptr i8, ptr %.pn.in34, i32 -8
  %2 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %.pn.in34, align 4
  %fence = getelementptr i8, ptr %.pn.in34, i32 8
  %3 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fence, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %flags.i.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

if.end.i.i:                                       ; preds = %lor.lhs.false
  %ops.i.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %signaled.i.i = getelementptr inbounds %struct.dma_fence_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %signaled.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %signaled.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i.i, label %if.end.i.i.for.inc_crit_edge, label %land.lhs.true.i.i

if.end.i.i.for.inc_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %call4.i.i = tail call zeroext i1 %10(ptr noundef nonnull %4) #12
  br i1 %call4.i.i, label %if.then5.i.i, label %land.lhs.true.i.i.for.inc_crit_edge

land.lhs.true.i.i.for.inc_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call6.i.i = tail call i32 @dma_fence_signal(ptr noundef nonnull %4) #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then5.i.i, %lor.lhs.false.if.then.i.i_crit_edge
  %refcount.i.i = getelementptr inbounds %struct.dma_fence, ptr %4, i32 0, i32 6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !327
  tail call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #12
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 1, ptr elementtype(i32) %refcount.i.i) #12, !srcloc !328
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.then_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !321

if.end5.i.i.i.i.i.i.if.then_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 3) #12
  br label %if.then

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !329
  tail call void @dma_fence_release(ptr noundef %refcount.i.i) #12
  br label %if.then

if.then:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in34) #12
  br i1 %call.i.i, label %if.end.i.i29, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i29:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in34, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i29, %if.then.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in34 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in34, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in34, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %20 = ptrtoint ptr %work.036 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %work.036, align 4
  tail call void %21(ptr noundef %work.036) #12
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %land.lhs.true.i.i.for.inc_crit_edge, %if.end.i.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn37, %worker
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_driver_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_client_ctor(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_device_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mmu_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_vmm_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_fence_signal(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channels_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv10_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv84_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvc0_fence_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_user_ctor(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_move_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_fifo_runlist(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_channel_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_swclass(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_gpuobj_new(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_drm_probe(ptr noundef %pdev, ptr nocapture noundef readonly %pent) #0 align 64 {
entry:
  %device = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device) #12
  %0 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %device, align 4, !annotation !326
  %1 = load ptr, ptr @nouveau_config, align 4
  %call1 = call i32 @nvkm_device_pci_new(ptr noundef %pdev, ptr noundef %1, ptr noundef nonnull @.str.96, i1 noundef zeroext true, i1 noundef zeroext false, i64 noundef 0, ptr noundef nonnull %device) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @nvkm_device_del(ptr noundef nonnull %device) #12
  %call4 = call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @driver_pci) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %2 = load ptr, ptr @nouveau_config, align 4
  %3 = load ptr, ptr @nouveau_debug, align 4
  %call8 = call i32 @nvkm_device_pci_new(ptr noundef %pdev, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext true, i64 noundef -1, ptr noundef nonnull %device) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @pci_set_master(ptr noundef %pdev) #12
  %4 = load i32, ptr @nouveau_atomic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool12.not = icmp eq i32 %4, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %5 = load i32, ptr getelementptr inbounds (%struct.drm_driver, ptr @driver_pci, i32 0, i32 24), align 4
  %or = or i32 %5, 16
  store i32 %or, ptr getelementptr inbounds (%struct.drm_driver, ptr @driver_pci, i32 0, i32 24), align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call15 = call ptr @drm_dev_alloc(ptr noundef nonnull @driver_pci, ptr noundef %dev) #12
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %call15 to i32
  br label %fail_nvkm

if.end19:                                         ; preds = %if.end14
  %call20 = call i32 @pci_enable_device(ptr noundef %pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.fail_drm_crit_edge

if.end19.fail_drm_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_drm

if.end23:                                         ; preds = %if.end19
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %driver_data.i.i, align 4
  %call24 = call fastcc i32 @nouveau_drm_device_init(ptr noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.fail_pci_crit_edge

if.end23.fail_pci_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail_pci

if.end27:                                         ; preds = %if.end23
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %pent, i32 0, i32 6
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %call28 = call i32 @drm_dev_register(ptr noundef %call15, i32 noundef %9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %fail_drm_dev_init

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @quirk_broken_nv_runpm(ptr noundef %pdev)
  br label %cleanup

fail_drm_dev_init:                                ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nouveau_drm_device_fini(ptr noundef %call15)
  br label %fail_pci

fail_pci:                                         ; preds = %fail_drm_dev_init, %if.end23.fail_pci_crit_edge
  %ret.0 = phi i32 [ %call24, %if.end23.fail_pci_crit_edge ], [ %call28, %fail_drm_dev_init ]
  call void @pci_disable_device(ptr noundef %pdev) #12
  br label %fail_drm

fail_drm:                                         ; preds = %fail_pci, %if.end19.fail_drm_crit_edge
  %ret.1 = phi i32 [ %call20, %if.end19.fail_drm_crit_edge ], [ %ret.0, %fail_pci ]
  call void @drm_dev_put(ptr noundef %call15) #12
  br label %fail_nvkm

fail_nvkm:                                        ; preds = %fail_drm, %if.then17
  %ret.2 = phi i32 [ %6, %if.then17 ], [ %ret.1, %fail_drm ]
  call void @nvkm_device_del(ptr noundef nonnull %device) #12
  br label %cleanup

cleanup:                                          ; preds = %fail_nvkm, %if.end31, %if.end7.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %fail_nvkm ], [ 0, %if.end31 ], [ %call1, %entry.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_drm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  %device.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %old_pm_cap = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %old_pm_cap to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %old_pm_cap, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %pm_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 32
  %6 = ptrtoint ptr %pm_cap to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %pm_cap, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %device.i) #12
  tail call void @drm_dev_unplug(ptr noundef %1) #12
  %priv.i = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 0, i32 0, i32 5
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 4
  %device2.i = getelementptr inbounds %struct.nvkm_client, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %device2.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %device2.i, align 8
  %call3.i = tail call ptr @nvkm_device_find(i64 noundef %12) #12
  %13 = ptrtoint ptr %device.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3.i, ptr %device.i, align 4
  tail call fastcc void @nouveau_drm_device_fini(ptr noundef %1) #12
  tail call void @drm_dev_put(ptr noundef %1) #12
  call void @nvkm_device_del(ptr noundef nonnull %device.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %device.i) #12
  call void @pci_disable_device(ptr noundef %pdev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_device_pci_new(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @quirk_broken_nv_runpm(ptr nocapture noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %is_virtfn.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 49
  %4 = ptrtoint ptr %is_virtfn.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 5)
  %bf.load.i.i = load i40, ptr %is_virtfn.i.i, align 1
  %5 = and i40 %bf.load.i.i, 65536
  %tobool.not.i.i = icmp eq i40 %5, 0
  br i1 %tobool.not.i.i, label %entry.pci_physfn.exit.i_crit_edge, label %if.then.i.i

entry.pci_physfn.exit.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pci_physfn.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 66
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  br label %pci_physfn.exit.i

pci_physfn.exit.i:                                ; preds = %if.then.i.i, %entry.pci_physfn.exit.i_crit_edge
  %dev.addr.0.i.i = phi ptr [ %8, %if.then.i.i ], [ %pdev, %entry.pci_physfn.exit.i_crit_edge ]
  %bus.i = getelementptr inbounds %struct.pci_dev, ptr %dev.addr.0.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bus.i, align 8
  %parent.i.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i.i, align 8
  %tobool.not.i5.i = icmp eq ptr %12, null
  br i1 %tobool.not.i5.i, label %pci_physfn.exit.i.cleanup_crit_edge, label %pci_upstream_bridge.exit

pci_physfn.exit.i.cleanup_crit_edge:              ; preds = %pci_physfn.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pci_upstream_bridge.exit:                         ; preds = %pci_physfn.exit.i
  %self.i = getelementptr inbounds %struct.pci_bus, ptr %10, i32 0, i32 4
  %13 = ptrtoint ptr %self.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %self.i, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %pci_upstream_bridge.exit.cleanup_crit_edge, label %lor.lhs.false

pci_upstream_bridge.exit.cleanup_crit_edge:       ; preds = %pci_upstream_bridge.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %pci_upstream_bridge.exit
  %vendor = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %16)
  %cmp.not = icmp eq i16 %16, -32634
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %device = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6401, i16 %18)
  %cond = icmp eq i16 %18, 6401
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %pm_cap = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 32
  %19 = ptrtoint ptr %pm_cap to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_cap, align 1
  %old_pm_cap = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %old_pm_cap to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %old_pm_cap, align 8
  store i8 0, ptr %pm_cap, align 1
  %drm7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %drm7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %drm7, align 8
  %dev8 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev8, align 8
  %dev9 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev9, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.97, ptr noundef %name) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %pci_upstream_bridge.exit.cleanup_crit_edge, %pci_physfn.exit.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %1, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_thaw(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %1, i1 noundef zeroext false)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp2.i = icmp eq i32 %0, 1
  br i1 %cmp2.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pm_runtime_forbid(ptr noundef %dev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %call2 = tail call fastcc i32 @nouveau_do_suspend(ptr noundef %2, i1 noundef zeroext true)
  %call3 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #12
  tail call void @pci_disable_device(ptr noundef %add.ptr) #12
  tail call void @pci_ignore_hotplug(ptr noundef %add.ptr) #12
  %call4 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 4) #12
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 35
  %3 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 3, ptr %switch_power_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %device3 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %4 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.i = icmp eq i32 %4, 1
  br i1 %cmp2.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pm_runtime_forbid(ptr noundef %dev) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #12
  tail call void @pci_restore_state(ptr noundef %add.ptr) #12
  %call6 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %add.ptr) #12
  %call9 = tail call fastcc i32 @nouveau_do_resume(ptr noundef %1, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end19, label %do.body

do.body:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %drm14 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %drm14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drm14, align 8
  %dev15 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev15, align 8
  %dev16 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev16, align 4
  %name = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.99, ptr noundef %name, i32 noundef %call9) #15
  br label %cleanup

if.end19:                                         ; preds = %if.end8
  %map = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 8
  %tobool22.not = icmp eq ptr %12, null
  br i1 %tobool22.not, label %if.else, label %if.then25, !prof !320

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr28 = getelementptr i8, ptr %12, i32 558216
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !322
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !330
  br label %if.end32

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %call31 = tail call i32 @nvif_object_rd(ptr noundef %device3, i32 noundef 4, i64 noundef 558216) #12
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  %_data21.0 = phi i32 [ %13, %if.then25 ], [ %call31, %if.else ]
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map, align 8
  %tobool37.not = icmp eq ptr %15, null
  br i1 %tobool37.not, label %if.else51, label %do.body45, !prof !320

do.body45:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !331
  tail call void @arm_heavy_mb() #12
  %or = or i32 %_data21.0, 33554432
  %16 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map, align 8
  %add.ptr50 = getelementptr i8, ptr %17, i32 558216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %or) #12, !srcloc !325
  br label %if.end55

if.else51:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %or54 = or i32 %_data21.0, 33554432
  tail call void @nvif_object_wr(ptr noundef %device3, i32 noundef 4, i64 noundef 558216, i32 noundef %or54) #12
  br label %if.end55

if.end55:                                         ; preds = %if.else51, %do.body45
  %switch_power_state = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 35
  %18 = ptrtoint ptr %switch_power_state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %switch_power_state, align 4
  tail call void @nouveau_display_hpd_resume(ptr noundef %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.body, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call9, %do.body ], [ 0, %if.end55 ], [ -16, %if.then ], [ %call6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_pmops_runtime_idle(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nouveau_runtime_pm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp2.i = icmp eq i32 %0, 1
  br i1 %cmp2.i, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @pm_runtime_forbid(ptr noundef %dev) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %1 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %call.i4 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 8) #12
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.end ], [ -16, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_ignore_hotplug(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_ctor() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nouveau_drm_open(ptr nocapture noundef readonly %dev, ptr nocapture noundef %fpriv) #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  %tmpname = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #12
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmpname) #12
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %3 = call ptr @memset(ptr %tmpname, i32 255, i32 16)
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, -13
  %or.cond = or i1 %cmp, %cmp3.not
  br i1 %or.cond, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %call.i51 = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 13) #12
  br label %cleanup

do.end:                                           ; preds = %entry
  %8 = tail call i32 @llvm.read_register.i32(metadata !309) #12
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %call7 = call ptr @__get_task_comm(ptr noundef nonnull %tmpname, i32 noundef 16, ptr noundef %11) #12
  %pid = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 10
  %12 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pid, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end.pid_nr.exit_crit_edge, label %if.then.i

do.end.pid_nr.exit_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pid_nr.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %numbers.i = getelementptr inbounds %struct.pid, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i, %do.end.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %15, %if.then.i ], [ 0, %do.end.pid_nr.exit_crit_edge ]
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.103, ptr noundef nonnull %tmpname, i32 noundef %nr.0.i)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 792) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %pid_nr.exit.if.end25_crit_edge, label %if.end14

pid_nr.exit.if.end25_crit_edge:                   ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end14:                                         ; preds = %pid_nr.exit
  %call16 = call fastcc i32 @nouveau_cli_init(ptr noundef %1, ptr noundef nonnull %name, ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then24.critedge

if.end19:                                         ; preds = %if.end14
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 19
  %17 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  %clients_lock = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %clients_lock, i32 noundef 0) #12
  %head = getelementptr inbounds %struct.nouveau_cli, ptr %call7.i.i, i32 0, i32 8
  %clients = getelementptr inbounds %struct.nouveau_drm, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %clients to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clients, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %head, ptr noundef %clients, ptr noundef %19) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add.exit_crit_edge

if.end19.list_add.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %head, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %head, align 4
  %prev3.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %call7.i.i, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %clients, ptr %prev3.i.i, align 8
  %23 = ptrtoint ptr %clients to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %head, ptr %clients, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end19.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %clients_lock) #12
  br label %if.end25

if.then24.critedge:                               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @nouveau_cli_fini(ptr noundef nonnull %call7.i.i)
  call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %if.end25

if.end25:                                         ; preds = %if.then24.critedge, %list_add.exit, %pid_nr.exit.if.end25_crit_edge
  %ret.057 = phi i32 [ %call16, %if.then24.critedge ], [ -12, %pid_nr.exit.if.end25_crit_edge ], [ 0, %list_add.exit ]
  %24 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev1, align 4
  %call.i52 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i52, ptr %last_busy.i, align 8
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  %call.i53 = call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %ret.057, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmpname) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nouveau_drm_postclose(ptr noundef %dev, ptr noundef readonly %fpriv) #0 align 64 {
entry:
  %dev_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %fpriv, null
  br i1 %tobool.not.i, label %entry.nouveau_cli.exit_crit_edge, label %cond.true.i

entry.nouveau_cli.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %nouveau_cli.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %driver_priv.i = getelementptr inbounds %struct.drm_file, ptr %fpriv, i32 0, i32 19
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_index) #12
  %4 = ptrtoint ptr %dev_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %dev_index, align 4, !annotation !326
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %dev, ptr noundef nonnull %dev_index) #12
  br i1 %call2, label %if.end, label %nouveau_cli.exit.cleanup_crit_edge

nouveau_cli.exit.cleanup_crit_edge:               ; preds = %nouveau_cli.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %nouveau_cli.exit
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #12
  %mutex = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #12
  %abi16 = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 9
  %7 = ptrtoint ptr %abi16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %abi16, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @nouveau_abi16_fini(ptr noundef nonnull %8) #12
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #12
  %clients_lock = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %clients_lock, i32 noundef 0) #12
  %head = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 8
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %head) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_del.exit_crit_edge

if.end7.list_del.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end7.list_del.exit_crit_edge
  %15 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %head, align 4
  %prev.i = getelementptr inbounds %struct.nouveau_cli, ptr %cond.i, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @mutex_unlock(ptr noundef %clients_lock) #12
  call fastcc void @nouveau_cli_fini(ptr noundef %cond.i)
  call void @kfree(ptr noundef %cond.i) #12
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  %call.i26 = call i64 @ktime_get_mono_fast_ns() #12
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i26, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev3, align 4
  %call.i27 = call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #12
  %22 = ptrtoint ptr %dev_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dev_index, align 4
  call void @drm_dev_exit(i32 noundef %23) #12
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %nouveau_cli.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_index) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_vga_lastclose(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_drm_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__get_task_comm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_getparam(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_invalid_op(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_channel_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_channel_free(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_grobj_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_notifierobj_alloc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_abi16_ioctl_gpuobj_free(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nouveau_svmm_init(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %file) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 -38
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nouveau_svmm_bind(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %file) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  ret i32 -38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_new(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_pushbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_cpu_prep(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_cpu_fini(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_ioctl_info(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 139)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !66, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !119, !121, !122, !124, !125, !127, !129, !130, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !191, !193, !195, !196, !197, !198, !200, !202, !203, !204, !205, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !220, !221, !222, !223, !225, !227, !229, !231, !233, !235, !236, !237, !238, !240, !242, !243, !244, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307}
!llvm.named.register.sp = !{!309}
!llvm.module.flags = !{!310, !311, !312, !313, !314, !315, !316, !317}
!llvm.ident = !{!318}

!0 = !{ptr @__UNIQUE_ID_config325, !1, !"__UNIQUE_ID_config325", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 73, i32 1}
!2 = !{ptr @__param_config, !3, !"__param_config", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 75, i32 1}
!4 = !{ptr @__UNIQUE_ID_configtype326, !3, !"__UNIQUE_ID_configtype326", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_debug327, !6, !"__UNIQUE_ID_debug327", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 77, i32 1}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 79, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype328, !8, !"__UNIQUE_ID_debugtype328", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_noaccel329, !11, !"__UNIQUE_ID_noaccel329", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 81, i32 1}
!12 = !{ptr @__param_noaccel, !13, !"__param_noaccel", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 83, i32 1}
!14 = !{ptr @__UNIQUE_ID_noacceltype330, !13, !"__UNIQUE_ID_noacceltype330", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_modeset331, !16, !"__UNIQUE_ID_modeset331", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 85, i32 1}
!17 = !{ptr @nouveau_modeset, !18, !"nouveau_modeset", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 87, i32 5}
!19 = !{ptr @__param_modeset, !20, !"__param_modeset", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 88, i32 1}
!21 = !{ptr @__UNIQUE_ID_modesettype332, !20, !"__UNIQUE_ID_modesettype332", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_atomic333, !23, !"__UNIQUE_ID_atomic333", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 90, i32 1}
!24 = !{ptr @__param_atomic, !25, !"__param_atomic", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 92, i32 1}
!26 = !{ptr @__UNIQUE_ID_atomictype334, !25, !"__UNIQUE_ID_atomictype334", i1 false, i1 false}
!27 = !{ptr @__UNIQUE_ID_runpm335, !28, !"__UNIQUE_ID_runpm335", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 94, i32 1}
!29 = !{ptr @__param_runpm, !30, !"__param_runpm", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 96, i32 1}
!31 = !{ptr @__UNIQUE_ID_runpmtype336, !30, !"__UNIQUE_ID_runpmtype336", i1 false, i1 false}
!32 = !{ptr @__initcall__kmod_nouveau__338_1401_nouveau_drm_init6, !33, !"__initcall__kmod_nouveau__338_1401_nouveau_drm_init6", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1401, i32 1}
!34 = !{ptr @__exitcall_nouveau_drm_exit, !35, !"__exitcall_nouveau_drm_exit", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1402, i32 1}
!36 = !{ptr @__UNIQUE_ID_author339, !37, !"__UNIQUE_ID_author339", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1405, i32 1}
!38 = !{ptr @__UNIQUE_ID_description340, !39, !"__UNIQUE_ID_description340", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1406, i32 1}
!40 = !{ptr @__UNIQUE_ID_file341, !41, !"__UNIQUE_ID_file341", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1407, i32 1}
!42 = !{ptr @__UNIQUE_ID_license342, !41, !"__UNIQUE_ID_license342", i1 false, i1 false}
!43 = !{ptr @nouveau_config, !44, !"nouveau_config", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 74, i32 14}
!45 = !{ptr @nouveau_debug, !46, !"nouveau_debug", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 78, i32 14}
!47 = !{ptr @driver_platform, !48, !"driver_platform", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 100, i32 26}
!49 = !{ptr @__param_str_config, !3, !"__param_str_config", i1 false, i1 false}
!50 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!51 = !{ptr @__param_str_noaccel, !13, !"__param_str_noaccel", i1 false, i1 false}
!52 = !{ptr @nouveau_noaccel, !53, !"nouveau_noaccel", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 82, i32 12}
!54 = !{ptr @__param_str_modeset, !20, !"__param_str_modeset", i1 false, i1 false}
!55 = !{ptr @__param_str_atomic, !25, !"__param_str_atomic", i1 false, i1 false}
!56 = !{ptr @nouveau_atomic, !57, !"nouveau_atomic", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 91, i32 12}
!58 = !{ptr @__param_str_runpm, !30, !"__param_str_runpm", i1 false, i1 false}
!59 = !{ptr @nouveau_runtime_pm, !60, !"nouveau_runtime_pm", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 95, i32 12}
!61 = !{ptr @.str, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 179, i32 2}
!63 = !{ptr @.str.1, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 855, i32 3}
!65 = !{ptr @.str.2, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.3, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.4, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nouveau_do_suspend._entry, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @nouveau_do_suspend._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.6, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 857, i32 3}
!72 = !{ptr @nouveau_do_suspend._entry.5, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @nouveau_do_suspend._entry_ptr.7, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.9, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 863, i32 2}
!76 = !{ptr @nouveau_do_suspend._entry.8, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @nouveau_do_suspend._entry_ptr.10, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 868, i32 2}
!80 = !{ptr @nouveau_do_suspend._entry.11, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @nouveau_do_suspend._entry_ptr.13, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.15, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 881, i32 2}
!84 = !{ptr @nouveau_do_suspend._entry.14, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @nouveau_do_suspend._entry_ptr.16, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 889, i32 2}
!88 = !{ptr @nouveau_do_suspend._entry.17, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @nouveau_do_suspend._entry_ptr.19, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 902, i32 3}
!92 = !{ptr @nouveau_do_suspend._entry.20, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @nouveau_do_suspend._entry_ptr.22, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 914, i32 2}
!96 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @nouveau_do_resume._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @nouveau_do_resume._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 917, i32 3}
!101 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @nouveau_do_resume._entry.25, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @nouveau_do_resume._entry_ptr.28, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.30, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 921, i32 2}
!106 = !{ptr @nouveau_do_resume._entry.29, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @nouveau_do_resume._entry_ptr.31, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @nouveau_do_resume._entry.32, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 928, i32 3}
!110 = !{ptr @nouveau_do_resume._entry_ptr.33, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.35, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 930, i32 3}
!113 = !{ptr @nouveau_do_resume._entry.34, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @nouveau_do_resume._entry_ptr.36, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 553, i32 30}
!117 = !{ptr @.str.38, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 557, i32 30}
!119 = !{ptr @nouveau_drm_device_init.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 565, i32 2}
!121 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @nouveau_drm_device_init.__key.40, !123, !"__key", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 566, i32 2}
!124 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @nouveau_parent, !126, !"nouveau_parent", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 534, i32 1}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 529, i32 2}
!129 = !{ptr @.str.43, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @nouveau_drm_debugf._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @nouveau_drm_debugf._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 515, i32 2}
!134 = !{ptr @nouveau_drm_errorf._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @nouveau_drm_errorf._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @nouveau_cli_init.mems, !137, !"mems", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 196, i32 2}
!138 = !{ptr @nouveau_cli_init.mmus, !139, !"mmus", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 203, i32 2}
!140 = !{ptr @nouveau_cli_init.vmms, !141, !"vmms", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 210, i32 2}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 221, i32 41}
!144 = !{ptr @nouveau_cli_init.__key, !145, !"__key", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 223, i32 2}
!146 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nouveau_cli_init.__key.47, !148, !"__key", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 226, i32 2}
!149 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @nouveau_cli_init.__key.49, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 228, i32 2}
!152 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 240, i32 3}
!155 = !{ptr @.str.52, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @nouveau_cli_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @nouveau_cli_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 244, i32 44}
!160 = !{ptr @.str.55, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 251, i32 3}
!162 = !{ptr @nouveau_cli_init._entry.54, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @nouveau_cli_init._entry_ptr.56, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 257, i32 3}
!166 = !{ptr @nouveau_cli_init._entry.57, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @nouveau_cli_init._entry_ptr.59, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.60, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 261, i32 43}
!170 = !{ptr @.str.62, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 264, i32 3}
!172 = !{ptr @nouveau_cli_init._entry.61, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @nouveau_cli_init._entry_ptr.63, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 270, i32 3}
!176 = !{ptr @nouveau_cli_init._entry.64, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @nouveau_cli_init._entry_ptr.66, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 276, i32 3}
!180 = !{ptr @nouveau_cli_init._entry.67, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @nouveau_cli_init._entry_ptr.69, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.71, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 282, i32 3}
!184 = !{ptr @nouveau_cli_init._entry.70, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @nouveau_cli_init._entry_ptr.72, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 485, i32 3}
!188 = !{ptr @.str.74, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @nouveau_accel_init._entry, !187, !"_entry", i1 false, i1 false}
!190 = !{ptr @nouveau_accel_init._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 492, i32 32}
!193 = !{ptr @.str.76, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 363, i32 3}
!195 = !{ptr @.str.77, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @nouveau_accel_gr_init._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @nouveau_accel_gr_init._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.78, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 373, i32 47}
!200 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 380, i32 5}
!202 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!203 = distinct !{null, !201, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.82, !201, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.83, !201, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.85, !201, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 384, i32 4}
!210 = !{ptr @nouveau_accel_gr_init._entry.86, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @nouveau_accel_gr_init._entry_ptr.88, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 398, i32 4}
!214 = !{ptr @nouveau_accel_gr_init._entry.89, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @nouveau_accel_gr_init._entry_ptr.91, !213, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.92, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 403, i32 47}
!218 = !{ptr @.str.93, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 329, i32 3}
!220 = !{ptr @.str.94, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @nouveau_accel_ce_init._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @nouveau_accel_ce_init._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1310, i32 10}
!225 = !{ptr @nouveau_drm_pci_driver, !226, !"nouveau_drm_pci_driver", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1309, i32 1}
!227 = !{ptr @nouveau_drm_pci_table, !228, !"nouveau_drm_pci_table", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1265, i32 1}
!229 = !{ptr @.str.96, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 757, i32 50}
!231 = !{ptr @driver_pci, !232, !"driver_pci", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 99, i32 26}
!233 = !{ptr @.str.97, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 739, i32 3}
!235 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @quirk_broken_nv_runpm._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @quirk_broken_nv_runpm._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @nouveau_pm_ops, !239, !"nouveau_pm_ops", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1296, i32 32}
!240 = !{ptr @.str.99, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1057, i32 3}
!242 = !{ptr @.str.100, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @nouveau_pmops_runtime_resume._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @nouveau_pmops_runtime_resume._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.101, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1253, i32 10}
!247 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1257, i32 10}
!249 = !{ptr @driver_stub, !250, !"driver_stub", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1224, i32 1}
!251 = !{ptr @.str.103, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1101, i32 31}
!253 = !{ptr @.str.104, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1165, i32 2}
!255 = !{ptr @.str.105, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1166, i32 2}
!257 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1167, i32 2}
!259 = !{ptr @.str.107, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1168, i32 2}
!261 = !{ptr @.str.108, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1169, i32 2}
!263 = !{ptr @.str.109, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1170, i32 2}
!265 = !{ptr @.str.110, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1171, i32 2}
!267 = !{ptr @.str.111, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1172, i32 2}
!269 = !{ptr @.str.112, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1173, i32 2}
!271 = !{ptr @.str.113, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1174, i32 2}
!273 = !{ptr @.str.114, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1175, i32 2}
!275 = !{ptr @.str.115, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1176, i32 2}
!277 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1177, i32 2}
!279 = !{ptr @.str.117, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1178, i32 2}
!281 = !{ptr @nouveau_ioctls, !282, !"nouveau_ioctls", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1164, i32 1}
!283 = !{ptr @nouveau_driver_fops, !284, !"nouveau_driver_fops", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1209, i32 1}
!285 = !{ptr @.str.118, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1281, i32 2}
!287 = !{ptr @.str.119, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1283, i32 2}
!289 = !{ptr @.str.120, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1284, i32 2}
!291 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1285, i32 2}
!293 = !{ptr @.str.122, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1286, i32 2}
!295 = !{ptr @.str.123, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1287, i32 2}
!297 = !{ptr @.str.124, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1288, i32 2}
!299 = !{ptr @.str.125, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1289, i32 2}
!301 = !{ptr @.str.126, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1290, i32 2}
!303 = !{ptr @.str.127, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1291, i32 2}
!305 = !{ptr @.str.128, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1292, i32 2}
!307 = !{ptr @.str.129, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/nouveau/nouveau_drm.c", i32 1293, i32 2}
!309 = !{!"sp"}
!310 = !{i32 1, !"wchar_size", i32 2}
!311 = !{i32 1, !"min_enum_size", i32 4}
!312 = !{i32 8, !"branch-target-enforcement", i32 0}
!313 = !{i32 8, !"sign-return-address", i32 0}
!314 = !{i32 8, !"sign-return-address-all", i32 0}
!315 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!316 = !{i32 7, !"uwtable", i32 1}
!317 = !{i32 7, !"frame-pointer", i32 2}
!318 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!319 = !{i64 2148225033, i64 2148225065, i64 2148225094, i64 2148225128, i64 2148225159, i64 2148225182}
!320 = !{!"branch_weights", i32 1, i32 2000}
!321 = !{!"branch_weights", i32 2000, i32 1}
!322 = !{i64 5022553}
!323 = !{i64 2158170287}
!324 = !{i64 2158171336}
!325 = !{i64 5022135}
!326 = !{!"auto-init"}
!327 = !{i64 2148313034}
!328 = !{i64 2148227498, i64 2148227530, i64 2148227559, i64 2148227593, i64 2148227624, i64 2148227647}
!329 = !{i64 2149591752}
!330 = !{i64 2158216909}
!331 = !{i64 2158217950}
