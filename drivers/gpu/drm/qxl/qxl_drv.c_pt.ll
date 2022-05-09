; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.84, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.84 = type { ptr }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.93] }
%struct.anon.93 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.qxl_ram_header = type <{ i32, i32, i32, [4096 x i8], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [8 x i64], %struct.qxl_rect, i32, %struct.qxl_mem_slot, %struct.qxl_surface_create, i64, i64, [64 x i8] }>
%struct.qxl_command = type { i64, i32, i32 }
%struct.qxl_ring_header = type { i32, i32, i32, i32, i32 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_mem_slot = type { i64, i64 }
%struct.qxl_surface_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@qxl_num_crtc = dso_local global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_modeset322 = internal constant [44 x i8] c"qxl.parm=modeset:Disable/Enable modesetting\00", section ".modinfo", align 1
@__param_str_modeset = internal constant [12 x i8] c"qxl.modeset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@qxl_modeset = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_modeset = internal constant %struct.kernel_param { ptr @__param_str_modeset, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @qxl_modeset } }, section "__param", align 4
@__UNIQUE_ID_modesettype323 = internal constant [25 x i8] c"qxl.parmtype=modeset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_heads324 = internal constant [65 x i8] c"qxl.parm=num_heads:Number of virtual crtcs to expose (default 4)\00", section ".modinfo", align 1
@__param_str_num_heads = internal constant [14 x i8] c"qxl.num_heads\00", align 1
@__param_num_heads = internal constant %struct.kernel_param { ptr @__param_str_num_heads, ptr null, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.76 { ptr @qxl_num_crtc } }, section "__param", align 4
@__UNIQUE_ID_num_headstype325 = internal constant [27 x i8] c"qxl.parmtype=num_heads:int\00", section ".modinfo", align 1
@qxl_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @pciidlist, ptr @qxl_pci_probe, ptr @qxl_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qxl_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_qxl__326_311_qxl_init6 = internal global ptr @qxl_init, section ".initcall6.init", align 4
@__exitcall_qxl_exit = internal global ptr @qxl_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author327 = internal constant [23 x i8] c"qxl.author=Dave Airlie\00", section ".modinfo", align 1
@__UNIQUE_ID_description328 = internal constant [23 x i8] c"qxl.description=RH QXL\00", section ".modinfo", align 1
@__UNIQUE_ID_file329 = internal constant [33 x i8] c"qxl.file=drivers/gpu/drm/qxl/qxl\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [38 x i8] c"qxl.license=GPL and additional rights\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"qxl\00", [28 x i8] zeroinitializer }, align 32
@pciidlist = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 6966, i32 256, i32 -1, i32 -1, i32 196608, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id { i32 6966, i32 256, i32 -1, i32 -1, i32 229376, i32 16776960, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qxl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @qxl_pm_suspend, ptr @qxl_pm_resume, ptr @qxl_pm_freeze, ptr @qxl_pm_thaw, ptr @qxl_pm_freeze, ptr @qxl_pm_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"qxl too old, doesn't support client_monitors_config, use xf86-video-qxl in user mode\00", [43 x i8] zeroinitializer }, align 32
@qxl_driver = internal global { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qxl_drm_release, ptr null, ptr null, ptr @qxl_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @qxl_gem_prime_import_sg_table, ptr null, ptr @qxl_mode_dumb_create, ptr @drm_gem_ttm_dumb_map_offset, ptr null, i32 0, i32 1, i32 0, ptr @.str, ptr @.str.6, ptr @.str.7, i32 19, ptr @qxl_ioctls, i32 0, ptr @qxl_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@qxl_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Unable to init drm dev\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qxl_pci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/qxl/qxl_drv.c\00", [34 x i8] zeroinitializer }, align 32
@qxl_pci_probe._entry_ptr = internal global ptr @qxl_pci_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't get legacy vga ioports\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RH QXL\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20120117\00", [23 x i8] zeroinitializer }, align 32
@qxl_ioctls = external dso_local constant [0 x %struct.drm_ioctl_desc], align 4
@qxl_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@qxl_max_ioctls = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"qxl_num_crtc\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 58, i32 5 }
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"qxl_modeset\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 57, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"qxl_pci_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 264, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 265, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"pciidlist\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 48, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"qxl_pm_ops\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 256, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 81, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"qxl_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 272, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 89, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 104, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 286, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 287, i32 10 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"qxl_fops\00", align 1
@___asan_gen_.54 = private constant [33 x i8] c"../drivers/gpu/drm/qxl/qxl_drv.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 164, i32 1 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_description328, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__UNIQUE_ID_modeset322, ptr @__UNIQUE_ID_modesettype323, ptr @__UNIQUE_ID_num_heads324, ptr @__UNIQUE_ID_num_headstype325, ptr @__exitcall_qxl_exit, ptr @__initcall__kmod_qxl__326_311_qxl_init6, ptr @__param_modeset, ptr @__param_num_heads, ptr @qxl_exit, ptr @qxl_pci_probe._entry, ptr @qxl_pci_probe._entry_ptr, ptr @qxl_num_crtc, ptr @qxl_modeset, ptr @qxl_pci_driver, ptr @.str, ptr @pciidlist, ptr @qxl_pm_ops, ptr @.str.1, ptr @qxl_driver, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @qxl_fops], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_num_crtc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_modeset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pciidlist to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qxl_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pci_unregister_driver(ptr noundef nonnull @qxl_pci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @drm_firmware_drivers_only() #4
  %0 = load i32, ptr @qxl_modeset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %0)
  %cmp = icmp eq i32 %0, -1
  %or.cond = select i1 %call, i1 %cmp, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp1 = icmp eq i32 %0, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %cmp1
  br i1 %or.cond5, label %entry.return_crit_edge, label %if.end3

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qxl_max_ioctls to i32))
  %1 = load i32, ptr @qxl_max_ioctls, align 4
  store i32 %1, ptr getelementptr inbounds (%struct.drm_driver, ptr @qxl_driver, i32 0, i32 26), align 4
  %call4 = tail call i32 @__pci_register_driver(ptr noundef nonnull @qxl_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #4
  br label %return

return:                                           ; preds = %if.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end3 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp = icmp ult i8 %1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev, ptr noundef nonnull @qxl_driver, i32 noundef 6776, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pci_enable_device(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef %pdev, ptr noundef nonnull @qxl_driver) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.disable_pci_crit_edge

if.end8.disable_pci_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_pci

if.end12:                                         ; preds = %if.end8
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %3)
  %cmp.i74 = icmp eq i32 %3, 196608
  br i1 %cmp.i74, label %land.lhs.true, label %if.end12.if.end24_crit_edge

if.end12.if.end24_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp17 = icmp ult i8 %5, 5
  br i1 %cmp17, label %if.then19, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then19:                                        ; preds = %land.lhs.true
  %call.i = tail call i32 @vga_get(ptr noundef %pdev, i32 noundef 1, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool21.not = icmp eq i32 %call.i, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then22

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end24

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %disable_pci

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %if.end12.if.end24_crit_edge
  %call25 = tail call i32 @qxl_device_init(ptr noundef %call, ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end24.put_vga_crit_edge

if.end24.put_vga_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %put_vga

if.end28:                                         ; preds = %if.end24
  %call29 = tail call i32 @qxl_modeset_init(ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.unload_crit_edge

if.end28.unload_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %unload

if.end32:                                         ; preds = %if.end28
  tail call void @drm_kms_helper_poll_init(ptr noundef %call) #4
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %call34 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %modeset_cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_fbdev_generic_setup(ptr noundef %call, i32 noundef 32) #4
  br label %cleanup

modeset_cleanup:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @qxl_modeset_fini(ptr noundef %call) #4
  br label %unload

unload:                                           ; preds = %modeset_cleanup, %if.end28.unload_crit_edge
  %ret.0 = phi i32 [ %call29, %if.end28.unload_crit_edge ], [ %call34, %modeset_cleanup ]
  tail call void @qxl_device_fini(ptr noundef %call) #4
  br label %put_vga

put_vga:                                          ; preds = %unload, %if.end24.put_vga_crit_edge
  %ret.1 = phi i32 [ %call25, %if.end24.put_vga_crit_edge ], [ %ret.0, %unload ]
  %8 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %9)
  %cmp.i76 = icmp eq i32 %9, 196608
  br i1 %cmp.i76, label %land.lhs.true41, label %put_vga.disable_pci_crit_edge

put_vga.disable_pci_crit_edge:                    ; preds = %put_vga
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_pci

land.lhs.true41:                                  ; preds = %put_vga
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %11)
  %cmp44 = icmp ult i8 %11, 5
  br i1 %cmp44, label %if.then46, label %land.lhs.true41.disable_pci_crit_edge

land.lhs.true41.disable_pci_crit_edge:            ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_pci

if.then46:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vga_put(ptr noundef %pdev, i32 noundef 1) #4
  br label %disable_pci

disable_pci:                                      ; preds = %if.then46, %land.lhs.true41.disable_pci_crit_edge, %put_vga.disable_pci_crit_edge, %if.then22, %if.end8.disable_pci_crit_edge
  %ret.2 = phi i32 [ %call9, %if.end8.disable_pci_crit_edge ], [ %call.i, %if.then22 ], [ %ret.1, %if.then46 ], [ %ret.1, %land.lhs.true41.disable_pci_crit_edge ], [ %ret.1, %put_vga.disable_pci_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #4
  br label %cleanup

cleanup:                                          ; preds = %disable_pci, %if.end37, %if.end5.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -12, %do.end ], [ %ret.2, %disable_pci ], [ 0, %if.end37 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #4
  tail call void @drm_atomic_helper_shutdown(ptr noundef %1) #4
  %class.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 11
  %2 = ptrtoint ptr %class.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %class.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %3)
  %cmp.i = icmp eq i32 %3, 196608
  br i1 %cmp.i, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %4 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %cmp = icmp ult i8 %5, 5
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @vga_put(ptr noundef %pdev, i32 noundef 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_aperture_remove_conflicting_pci_framebuffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_device_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_modeset_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_device_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vga_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_drm_release(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @qxl_modeset_fini(ptr noundef %dev) #4
  tail call void @qxl_device_fini(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_debugfs_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_mode_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_ttm_dumb_map_offset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vga_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pm_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @qxl_drm_freeze(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  tail call void @pci_disable_device(ptr noundef %add.ptr) #4
  %call2 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pm_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @pci_set_power_state(ptr noundef %add.ptr, i32 noundef 0) #4
  tail call void @pci_restore_state(ptr noundef %add.ptr) #4
  %call2 = tail call i32 @pci_enable_device(ptr noundef %add.ptr) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_header.i, align 4
  %int_mask.i = getelementptr inbounds %struct.qxl_ram_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 39, ptr %int_mask.i, align 1
  tail call void @qxl_reinit_memslots(ptr noundef %1) #4
  %release_ring.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %release_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_ring.i, align 8
  tail call void @qxl_ring_init_hdr(ptr noundef %6) #4
  %call.i = tail call i32 @qxl_create_monitors_object(ptr noundef %1) #4
  %call1.i = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.end ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pm_freeze(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @qxl_drm_freeze(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pm_thaw(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_header.i, align 4
  %int_mask.i = getelementptr inbounds %struct.qxl_ram_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 39, ptr %int_mask.i, align 1
  %call.i = tail call i32 @qxl_create_monitors_object(ptr noundef %1) #4
  %call1.i = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qxl_pm_restore(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @qxl_io_reset(ptr noundef %1) #4
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_header.i, align 4
  %int_mask.i = getelementptr inbounds %struct.qxl_ram_header, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %int_mask.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 39, ptr %int_mask.i, align 1
  tail call void @qxl_reinit_memslots(ptr noundef %1) #4
  %release_ring.i = getelementptr inbounds %struct.qxl_device, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %release_ring.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %release_ring.i, align 8
  tail call void @qxl_ring_init_hdr(ptr noundef %6) #4
  %call.i = tail call i32 @qxl_create_monitors_object(ptr noundef %1) #4
  %call1.i = tail call i32 @drm_mode_config_helper_resume(ptr noundef %1) #4
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @qxl_drm_freeze(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @qxl_destroy_monitors_object(ptr noundef %dev) #4
  %call6 = tail call i32 @qxl_surf_evict(ptr noundef %dev) #4
  %call7 = tail call i32 @qxl_vram_evict(ptr noundef %dev) #4
  %command_ring = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 18
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %2 = ptrtoint ptr %command_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %command_ring, align 4
  %call8 = tail call i32 @qxl_check_idle(ptr noundef %3) #4
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %while.cond.while.cond_crit_edge, label %while.cond10.preheader

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

while.cond10.preheader:                           ; preds = %while.cond
  %release_ring = getelementptr inbounds %struct.qxl_device, ptr %dev, i32 0, i32 17
  %4 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release_ring, align 8
  %call1128 = tail call i32 @qxl_check_idle(ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1128)
  %tobool12.not29 = icmp eq i32 %call1128, 0
  br i1 %tobool12.not29, label %while.cond10.preheader.while.body14_crit_edge, label %while.cond10.preheader.while.end16_crit_edge

while.cond10.preheader.while.end16_crit_edge:     ; preds = %while.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end16

while.cond10.preheader.while.body14_crit_edge:    ; preds = %while.cond10.preheader
  br label %while.body14

while.body14:                                     ; preds = %while.body14.while.body14_crit_edge, %while.cond10.preheader.while.body14_crit_edge
  %call15 = tail call zeroext i1 @qxl_queue_garbage_collect(ptr noundef %dev, i1 noundef zeroext true) #4
  %6 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release_ring, align 8
  %call11 = tail call i32 @qxl_check_idle(ptr noundef %7) #4
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %while.body14.while.body14_crit_edge, label %while.body14.while.end16_crit_edge

while.body14.while.end16_crit_edge:               ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end16

while.body14.while.body14_crit_edge:              ; preds = %while.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body14

while.end16:                                      ; preds = %while.body14.while.end16_crit_edge, %while.cond10.preheader.while.end16_crit_edge
  %call17 = tail call i32 @pci_save_state(ptr noundef %add.ptr) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end16 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_destroy_monitors_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_surf_evict(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_vram_evict(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_check_idle(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qxl_queue_garbage_collect(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_reinit_memslots(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ring_init_hdr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_create_monitors_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_firmware_drivers_only() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @qxl_num_crtc, !1, !"qxl_num_crtc", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 58, i32 5}
!2 = !{ptr @__UNIQUE_ID_modeset322, !3, !"__UNIQUE_ID_modeset322", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 60, i32 1}
!4 = !{ptr @__param_modeset, !5, !"__param_modeset", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 61, i32 1}
!6 = !{ptr @__UNIQUE_ID_modesettype323, !5, !"__UNIQUE_ID_modesettype323", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_num_heads324, !8, !"__UNIQUE_ID_num_heads324", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 63, i32 1}
!9 = !{ptr @__param_num_heads, !10, !"__param_num_heads", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 64, i32 1}
!11 = !{ptr @__UNIQUE_ID_num_headstype325, !10, !"__UNIQUE_ID_num_headstype325", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_qxl__326_311_qxl_init6, !13, !"__initcall__kmod_qxl__326_311_qxl_init6", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 311, i32 1}
!14 = !{ptr @__exitcall_qxl_exit, !15, !"__exitcall_qxl_exit", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 312, i32 1}
!16 = !{ptr @__UNIQUE_ID_author327, !17, !"__UNIQUE_ID_author327", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 314, i32 1}
!18 = !{ptr @__UNIQUE_ID_description328, !19, !"__UNIQUE_ID_description328", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 315, i32 1}
!20 = !{ptr @__UNIQUE_ID_file329, !21, !"__UNIQUE_ID_file329", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 316, i32 1}
!22 = !{ptr @__UNIQUE_ID_license330, !21, !"__UNIQUE_ID_license330", i1 false, i1 false}
!23 = !{ptr @__param_str_modeset, !5, !"__param_str_modeset", i1 false, i1 false}
!24 = !{ptr @qxl_modeset, !25, !"qxl_modeset", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 57, i32 12}
!26 = !{ptr @__param_str_num_heads, !10, !"__param_str_num_heads", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 265, i32 11}
!29 = !{ptr @qxl_pci_driver, !30, !"qxl_pci_driver", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 264, i32 26}
!31 = !{ptr @pciidlist, !32, !"pciidlist", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 48, i32 35}
!33 = !{ptr @.str.1, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 81, i32 3}
!35 = !{ptr @.str.2, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 89, i32 3}
!37 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @qxl_pci_probe._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @qxl_pci_probe._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 104, i32 4}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 286, i32 10}
!45 = !{ptr @.str.7, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 287, i32 10}
!47 = !{ptr @qxl_driver, !48, !"qxl_driver", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 272, i32 26}
!49 = !{ptr @qxl_fops, !50, !"qxl_fops", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 164, i32 1}
!51 = !{ptr @qxl_pm_ops, !52, !"qxl_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/qxl/qxl_drv.c", i32 256, i32 32}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
