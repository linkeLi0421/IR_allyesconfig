; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/qxl/qxl_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/qxl/qxl_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.qxl_device = type { %struct.drm_device, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.qxl_mman, %struct.qxl_gem, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.qxl_memslot, %struct.qxl_memslot, %struct.spinlock, %struct.idr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, [32 x %struct.qxl_debugfs], i32, %struct.mutex, %struct.idr, %struct.spinlock, i32, %struct.mutex, ptr, ptr, %struct.mutex, [3 x ptr], [3 x i32], %struct.work_struct, ptr, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.anon.89 = type { i32, ptr }
%struct.qxl_mman = type { %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.91] }
%struct.anon.91 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.qxl_gem = type { %struct.mutex, %struct.list_head }
%struct.qxl_memslot = type { i32, ptr, i8, i64, i64, i64 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.qxl_debugfs = type { ptr, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.qxl_ram_header = type <{ i32, i32, i32, [4096 x i8], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [32 x %struct.qxl_command], %struct.qxl_ring_header, [8 x i64], %struct.qxl_rect, i32, %struct.qxl_mem_slot, %struct.qxl_surface_create, i64, i64, [64 x i8] }>
%struct.qxl_command = type { i64, i32, i32 }
%struct.qxl_ring_header = type { i32, i32, i32, i32, i32 }
%struct.qxl_rect = type { i32, i32, i32, i32 }
%struct.qxl_mem_slot = type { i64, i64 }
%struct.qxl_surface_create = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.qxl_rom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8, i8, i8, i8, i8, [58 x i8], i32, %struct.anon.90 }
%struct.anon.90 = type { i16, i16, [64 x %struct.qxl_urect] }
%struct.qxl_urect = type { i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.88, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.88 = type { ptr }
%struct.io_mapping = type { i32, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@qxl_device_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&qdev->gem.mutex\00", [47 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&qdev->update_area_mutex\00", [39 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&qdev->release_mutex\00", [43 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&qdev->surf_evict_mutex\00", [40 x i8] zeroinitializer }, align 32
@qxl_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to create vram_mapping\00", [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qxl_device_init\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/qxl/qxl_kms.c\00", [34 x i8] zeroinitializer }, align 32
@qxl_device_init._entry_ptr = internal global ptr @qxl_device_init._entry, section ".printk_index", align 4
@qxl_device_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to create surface_mapping\00", [61 x i8] zeroinitializer }, align 32
@qxl_device_init._entry_ptr.12 = internal global ptr @qxl_device_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"qxl: vram %llx-%llx(%dM %dk), surface %llx-%llx(%dM %dk, %s)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"64bit\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32bit\00", [26 x i8] zeroinitializer }, align 32
@qxl_device_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013Unable to ioremap ROM\0A\00", [39 x i8] zeroinitializer }, align 32
@qxl_device_init._entry_ptr.18 = internal global ptr @qxl_device_init._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bo init failed %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to ioremap RAM header\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to create command ring\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unable to create cursor ring\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to create release ring\0A\00", [33 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&qdev->release_idr_lock\00", [40 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.26 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&qdev->release_lock\00", [44 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&qdev->surf_id_idr_lock\00", [40 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&qdev->async_io_mutex\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unable to init qxl irq\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"main\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"surfaces\00", [23 x i8] zeroinitializer }, align 32
@qxl_device_init.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&qdev->gc_work)\00", [62 x i8] zeroinitializer }, align 32
@qxl_log_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bad rom signature %x\0A\00", [42 x i8] zeroinitializer }, align 32
@qxl_check_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.9, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[drm] Device Version %d.%d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qxl_check_device\00", [47 x i8] zeroinitializer }, align 32
@qxl_check_device._entry_ptr = internal global ptr @qxl_check_device._entry, section ".printk_index", align 4
@qxl_check_device._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.9, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] Compression level %d log level %d\0A\00", [53 x i8] zeroinitializer }, align 32
@qxl_check_device._entry_ptr.42 = internal global ptr @qxl_check_device._entry.40, section ".printk_index", align 4
@qxl_check_device._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.9, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016[drm] %d io pages at offset 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@qxl_check_device._entry_ptr.45 = internal global ptr @qxl_check_device._entry.43, section ".printk_index", align 4
@qxl_check_device._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.39, ptr @.str.9, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016[drm] %d byte draw area at offset 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@qxl_check_device._entry_ptr.48 = internal global ptr @qxl_check_device._entry.46, section ".printk_index", align 4
@qxl_check_device._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.39, ptr @.str.9, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016[drm] RAM header offset: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@qxl_check_device._entry_ptr.51 = internal global ptr @qxl_check_device._entry.49, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@setup_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.9, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016[drm] slot %d (%s): base 0x%08lx, size 0x%08lx\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"setup_slot\00", [21 x i8] zeroinitializer }, align 32
@setup_slot._entry_ptr = internal global ptr @setup_slot._entry, section ".printk_index", align 4
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 116, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 117, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 118, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 119, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 129, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 151, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 157, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 170, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 182, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 190, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 202, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 216, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 228, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 234, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 235, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 238, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 240, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 249, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 257, i32 40 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 260, i32 44 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 264, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"qxl_log_level\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 36, i32 5 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 43, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 47, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 48, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 50, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 52, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 56, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 378, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.218 = private constant [33 x i8] c"../drivers/gpu/drm/qxl/qxl_kms.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 90, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @qxl_check_device._entry, ptr @qxl_check_device._entry.40, ptr @qxl_check_device._entry.43, ptr @qxl_check_device._entry.46, ptr @qxl_check_device._entry.49, ptr @qxl_check_device._entry_ptr, ptr @qxl_check_device._entry_ptr.42, ptr @qxl_check_device._entry_ptr.45, ptr @qxl_check_device._entry_ptr.48, ptr @qxl_check_device._entry_ptr.51, ptr @qxl_device_init._entry, ptr @qxl_device_init._entry.10, ptr @qxl_device_init._entry.16, ptr @qxl_device_init._entry_ptr, ptr @qxl_device_init._entry_ptr.12, ptr @qxl_device_init._entry_ptr.18, ptr @setup_slot._entry, ptr @setup_slot._entry_ptr, ptr @qxl_device_init.__key, ptr @.str, ptr @qxl_device_init.__key.1, ptr @.str.2, ptr @qxl_device_init.__key.3, ptr @.str.4, ptr @qxl_device_init.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @qxl_device_init.__key.24, ptr @.str.25, ptr @qxl_device_init.__key.26, ptr @.str.27, ptr @qxl_device_init.__key.28, ptr @.str.29, ptr @qxl_device_init.__key.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @qxl_device_init.__key.35, ptr @.str.36, ptr @qxl_log_level, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @xa_init_flags.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_device_init.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_log_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_check_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_check_device._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_check_device._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_check_device._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qxl_check_device._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_reinit_memslots(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %main_slot = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %start_phys_addr.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24, i32 3
  %0 = ptrtoint ptr %start_phys_addr.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %start_phys_addr.i, align 8
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %2 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ram_header.i, align 4
  %mem_slot.i = getelementptr inbounds %struct.qxl_ram_header, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %mem_slot.i to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %1, ptr %mem_slot.i, align 1
  %5 = load i64, ptr %start_phys_addr.i, align 8
  %size.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24, i32 4
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size.i, align 8
  %add.i = add i64 %7, %5
  %8 = load ptr, ptr %ram_header.i, align 4
  %mem_end.i = getelementptr inbounds %struct.qxl_ram_header, ptr %8, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %add.i, ptr %mem_end.i, align 1
  %rom.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %10 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rom.i, align 4
  %slots_start.i = getelementptr inbounds %struct.qxl_rom, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %slots_start.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %slots_start.i, align 1
  %14 = ptrtoint ptr %main_slot to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %main_slot, align 8
  %16 = trunc i32 %15 to i8
  %conv5.i = add i8 %13, %16
  tail call void @qxl_io_memslot_add(ptr noundef %qdev, i8 noundef zeroext %conv5.i) #5
  %surfaces_slot = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %start_phys_addr.i4 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25, i32 3
  %17 = ptrtoint ptr %start_phys_addr.i4 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %start_phys_addr.i4, align 8
  %19 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ram_header.i, align 4
  %mem_slot.i6 = getelementptr inbounds %struct.qxl_ram_header, ptr %20, i32 0, i32 12
  %21 = ptrtoint ptr %mem_slot.i6 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %18, ptr %mem_slot.i6, align 1
  %22 = load i64, ptr %start_phys_addr.i4, align 8
  %size.i7 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25, i32 4
  %23 = ptrtoint ptr %size.i7 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %size.i7, align 8
  %add.i8 = add i64 %24, %22
  %25 = load ptr, ptr %ram_header.i, align 4
  %mem_end.i9 = getelementptr inbounds %struct.qxl_ram_header, ptr %25, i32 0, i32 12, i32 1
  %26 = ptrtoint ptr %mem_end.i9 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %add.i8, ptr %mem_end.i9, align 1
  %27 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rom.i, align 4
  %slots_start.i11 = getelementptr inbounds %struct.qxl_rom, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %slots_start.i11 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %slots_start.i11, align 1
  %31 = ptrtoint ptr %surfaces_slot to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %surfaces_slot, align 8
  %33 = trunc i32 %32 to i8
  %conv5.i12 = add i8 %30, %33
  tail call void @qxl_io_memslot_add(ptr noundef %qdev, i8 noundef zeroext %conv5.i12) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qxl_device_init(ptr noundef %qdev, ptr nocapture noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %qdev, ptr %driver_data.i.i, align 4
  %gem = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %gem, ptr noundef nonnull @.str, ptr noundef nonnull @qxl_device_init.__key) #5
  %update_area_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 45
  tail call void @__mutex_init(ptr noundef %update_area_mutex, ptr noundef nonnull @.str.2, ptr noundef nonnull @qxl_device_init.__key.1) #5
  %release_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 52
  tail call void @__mutex_init(ptr noundef %release_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @qxl_device_init.__key.3) #5
  %surf_evict_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 49
  tail call void @__mutex_init(ptr noundef %surf_evict_mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @qxl_device_init.__key.5) #5
  tail call void @qxl_gem_init(ptr noundef %qdev) #5
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %arrayidx = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 8
  %rom_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 5
  %3 = ptrtoint ptr %rom_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %rom_base, align 4
  %end = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 8
  %sub = add i32 %5, 1
  %add = sub i32 %sub, %7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %rom_size = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 6
  %8 = ptrtoint ptr %rom_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %rom_size, align 8
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %vram_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 1
  %11 = ptrtoint ptr %vram_base to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vram_base, align 4
  %arrayidx22 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 3
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx22, align 8
  %io_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 12
  %14 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %io_base, align 8
  %end27 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %15 = ptrtoint ptr %end27 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp28 = icmp eq i32 %16, 0
  br i1 %cmp28, label %cond.end.cond.end39_crit_edge, label %cond.false30

cond.end.cond.end39_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end39

cond.false30:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %resource, align 8
  %sub37 = add i32 %16, 1
  %add38 = sub i32 %sub37, %18
  br label %cond.end39

cond.end39:                                       ; preds = %cond.false30, %cond.end.cond.end39_crit_edge
  %cond40 = phi i32 [ %add38, %cond.false30 ], [ 0, %cond.end.cond.end39_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3264, i32 noundef 16) #8
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %cond.end39.do.end44_crit_edge, label %if.end.i

cond.end39.do.end44_crit_edge:                    ; preds = %cond.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end44

if.end.i:                                         ; preds = %cond.end39
  %call.i.i = tail call ptr @ioremap_wc(i32 noundef %10, i32 noundef %cond40) #5
  %iomem.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i, ptr %iomem.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then3.i, label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %do.end44

do.end44:                                         ; preds = %if.then3.i, %cond.end39.do.end44_crit_edge
  %vram_mapping431 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 50
  %21 = ptrtoint ptr %vram_mapping431 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vram_mapping431, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %10, ptr %call7.i.i, align 8
  %size3.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %size3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond40, ptr %size3.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %24 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = and i32 %24, -573
  %or4.i.i = or i32 %or.i.i, 516
  %prot.i.i = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %prot.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or4.i.i, ptr %prot.i.i, align 8
  %vram_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 50
  %26 = ptrtoint ptr %vram_mapping to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i, ptr %vram_mapping, align 4
  %arrayidx47 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4
  %end48 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 4, i32 1
  %27 = ptrtoint ptr %end48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %end48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp49 = icmp eq i32 %28, 0
  br i1 %cmp49, label %if.end.if.end86_crit_edge, label %cond.end60

if.end.if.end86_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

cond.end60:                                       ; preds = %if.end
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx47, align 8
  %sub58 = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub58)
  %cmp62.not = icmp eq i32 %sub58, -1
  br i1 %cmp62.not, label %cond.end60.if.end86_crit_edge, label %if.then63

cond.end60.if.end86_crit_edge:                    ; preds = %cond.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then63:                                        ; preds = %cond.end60
  %31 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx47, align 8
  %surfaceram_base = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 3
  %33 = ptrtoint ptr %surfaceram_base to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %surfaceram_base, align 4
  %34 = ptrtoint ptr %end48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %end48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp70 = icmp eq i32 %35, 0
  br i1 %cmp70, label %if.then63.cond.end81_crit_edge, label %cond.false72

if.then63.cond.end81_crit_edge:                   ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end81

cond.false72:                                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx47, align 8
  %sub79 = add i32 %35, 1
  %add80 = sub i32 %sub79, %37
  br label %cond.end81

cond.end81:                                       ; preds = %cond.false72, %if.then63.cond.end81_crit_edge
  %cond82 = phi i32 [ %add80, %cond.false72 ], [ 0, %if.then63.cond.end81_crit_edge ]
  %surfaceram_size = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 4
  %38 = ptrtoint ptr %surfaceram_size to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond82, ptr %surfaceram_size, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %39 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i396 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3264, i32 noundef 16) #8
  %tobool.not.i397 = icmp eq ptr %call7.i.i396, null
  br i1 %tobool.not.i397, label %cond.end81.io_mapping_create_wc.exit409_crit_edge, label %if.end.i401

cond.end81.io_mapping_create_wc.exit409_crit_edge: ; preds = %cond.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %io_mapping_create_wc.exit409

if.end.i401:                                      ; preds = %cond.end81
  %call.i.i398 = tail call ptr @ioremap_wc(i32 noundef %32, i32 noundef %cond82) #5
  %iomem.i.i399 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i396, i32 0, i32 3
  %40 = ptrtoint ptr %iomem.i.i399 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i398, ptr %iomem.i.i399, align 4
  %tobool.not.i.i400 = icmp eq ptr %call.i.i398, null
  br i1 %tobool.not.i.i400, label %if.then3.i407, label %io_mapping_init_wc.exit.i406

io_mapping_init_wc.exit.i406:                     ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %call7.i.i396 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %32, ptr %call7.i.i396, align 8
  %size3.i.i402 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i396, i32 0, i32 1
  %42 = ptrtoint ptr %size3.i.i402 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond82, ptr %size3.i.i402, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %43 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i403 = and i32 %43, -573
  %or4.i.i404 = or i32 %or.i.i403, 516
  %prot.i.i405 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i396, i32 0, i32 2
  %44 = ptrtoint ptr %prot.i.i405 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or4.i.i404, ptr %prot.i.i405, align 8
  br label %io_mapping_create_wc.exit409

if.then3.i407:                                    ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i396) #5
  br label %io_mapping_create_wc.exit409

io_mapping_create_wc.exit409:                     ; preds = %if.then3.i407, %io_mapping_init_wc.exit.i406, %cond.end81.io_mapping_create_wc.exit409_crit_edge
  %retval.0.i408 = phi ptr [ null, %if.then3.i407 ], [ null, %cond.end81.io_mapping_create_wc.exit409_crit_edge ], [ %call7.i.i396, %io_mapping_init_wc.exit.i406 ]
  %surface_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 51
  %45 = ptrtoint ptr %surface_mapping to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %retval.0.i408, ptr %surface_mapping, align 8
  br label %if.end86

if.end86:                                         ; preds = %io_mapping_create_wc.exit409, %cond.end60.if.end86_crit_edge, %if.end.if.end86_crit_edge
  %sb.0 = phi i32 [ 4, %io_mapping_create_wc.exit409 ], [ -1, %cond.end60.if.end86_crit_edge ], [ -1, %if.end.if.end86_crit_edge ]
  %surface_mapping87 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 51
  %46 = ptrtoint ptr %surface_mapping87 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %surface_mapping87, align 8
  %cmp88 = icmp eq ptr %47, null
  br i1 %cmp88, label %if.then89, label %if.end86.if.end124_crit_edge

if.end86.if.end124_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end124

if.then89:                                        ; preds = %if.end86
  %arrayidx91 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1
  %48 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx91, align 8
  %surfaceram_base93 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 3
  %50 = ptrtoint ptr %surfaceram_base93 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %surfaceram_base93, align 4
  %end96 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 1, i32 1
  %51 = ptrtoint ptr %end96 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp97 = icmp eq i32 %52, 0
  br i1 %cmp97, label %if.then89.cond.end108_crit_edge, label %cond.false99

if.then89.cond.end108_crit_edge:                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end108

cond.false99:                                     ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx91, align 8
  %sub106 = add i32 %52, 1
  %add107 = sub i32 %sub106, %54
  br label %cond.end108

cond.end108:                                      ; preds = %cond.false99, %if.then89.cond.end108_crit_edge
  %cond109 = phi i32 [ %add107, %cond.false99 ], [ 0, %if.then89.cond.end108_crit_edge ]
  %surfaceram_size110 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 4
  %55 = ptrtoint ptr %surfaceram_size110 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond109, ptr %surfaceram_size110, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i410 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3264, i32 noundef 16) #8
  %tobool.not.i411 = icmp eq ptr %call7.i.i410, null
  br i1 %tobool.not.i411, label %cond.end108.do.end120_crit_edge, label %if.end.i415

cond.end108.do.end120_crit_edge:                  ; preds = %cond.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end120

if.end.i415:                                      ; preds = %cond.end108
  %call.i.i412 = tail call ptr @ioremap_wc(i32 noundef %49, i32 noundef %cond109) #5
  %iomem.i.i413 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i410, i32 0, i32 3
  %57 = ptrtoint ptr %iomem.i.i413 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i.i412, ptr %iomem.i.i413, align 4
  %tobool.not.i.i414 = icmp eq ptr %call.i.i412, null
  br i1 %tobool.not.i.i414, label %if.then3.i421, label %io_mapping_create_wc.exit423

if.then3.i421:                                    ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i410) #5
  br label %do.end120

io_mapping_create_wc.exit423:                     ; preds = %if.end.i415
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call7.i.i410 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %49, ptr %call7.i.i410, align 8
  %size3.i.i416 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i410, i32 0, i32 1
  %59 = ptrtoint ptr %size3.i.i416 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %cond109, ptr %size3.i.i416, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %60 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i417 = and i32 %60, -573
  %or4.i.i418 = or i32 %or.i.i417, 516
  %prot.i.i419 = getelementptr inbounds %struct.io_mapping, ptr %call7.i.i410, i32 0, i32 2
  %61 = ptrtoint ptr %prot.i.i419 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or4.i.i418, ptr %prot.i.i419, align 8
  %62 = ptrtoint ptr %surface_mapping87 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i410, ptr %surface_mapping87, align 8
  br label %if.end124

do.end120:                                        ; preds = %if.then3.i421, %cond.end108.do.end120_crit_edge
  %63 = ptrtoint ptr %surface_mapping87 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %surface_mapping87, align 8
  %call122 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #9
  br label %vram_mapping_free

if.end124:                                        ; preds = %io_mapping_create_wc.exit423, %if.end86.if.end124_crit_edge
  %sb.1 = phi i32 [ 1, %io_mapping_create_wc.exit423 ], [ %sb.0, %if.end86.if.end124_crit_edge ]
  %64 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vram_base, align 4
  %conv = zext i32 %65 to i64
  %66 = ptrtoint ptr %end27 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %end27, align 4
  %conv129 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp133 = icmp eq i32 %67, 0
  br i1 %cmp133, label %if.end124.cond.end163_crit_edge, label %cond.false154

if.end124.cond.end163_crit_edge:                  ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end163

cond.false154:                                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #7
  %68 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %resource, align 8
  %sub143 = add i32 %67, 1
  %add144 = sub i32 %sub143, %69
  %phi.bo395 = sdiv i32 %add144, 1048576
  %phi.bo = sdiv i32 %add144, 1024
  br label %cond.end163

cond.end163:                                      ; preds = %cond.false154, %if.end124.cond.end163_crit_edge
  %cond146438 = phi i32 [ %phi.bo395, %cond.false154 ], [ 0, %if.end124.cond.end163_crit_edge ]
  %cond164 = phi i32 [ %phi.bo, %cond.false154 ], [ 0, %if.end124.cond.end163_crit_edge ]
  %surfaceram_base166 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 3
  %70 = ptrtoint ptr %surfaceram_base166 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %surfaceram_base166, align 4
  %conv167 = zext i32 %71 to i64
  %end170 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 %sb.1, i32 1
  %72 = ptrtoint ptr %end170 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %end170, align 4
  %conv171 = zext i32 %73 to i64
  %surfaceram_size172 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 4
  %74 = ptrtoint ptr %surfaceram_size172 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %surfaceram_size172, align 8
  %div173 = sdiv i32 %75, 1024
  %div174 = sdiv i32 %75, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sb.1)
  %cmp177 = icmp eq i32 %sb.1, 4
  %cond179 = select i1 %cmp177, ptr @.str.14, ptr @.str.15
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, i64 noundef %conv, i64 noundef %conv129, i32 noundef %cond146438, i32 noundef %cond164, i64 noundef %conv167, i64 noundef %conv171, i32 noundef %div174, i32 noundef %div173, ptr noundef nonnull %cond179) #5
  %76 = ptrtoint ptr %rom_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rom_base, align 4
  %78 = ptrtoint ptr %rom_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rom_size, align 8
  %call182 = tail call ptr @ioremap(i32 noundef %77, i32 noundef %79) #5
  %rom = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %80 = ptrtoint ptr %rom to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call182, ptr %rom, align 4
  %tobool184.not = icmp eq ptr %call182, null
  br i1 %tobool184.not, label %do.end188, label %if.end191

do.end188:                                        ; preds = %cond.end163
  call void @__sanitizer_cov_trace_pc() #7
  %call190 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #9
  br label %surface_mapping_free

if.end191:                                        ; preds = %cond.end163
  %81 = ptrtoint ptr %call182 to i32
  call void @__asan_loadN_noabort(i32 %81, i32 4)
  %82 = load i32, ptr %call182, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1330796625, i32 %82)
  %cmp.not.i = icmp eq i32 %82, 1330796625
  br i1 %cmp.not.i, label %if.end194, label %qxl_check_device.exit

qxl_check_device.exit:                            ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37, i32 noundef %82) #5
  br label %rom_unmap

if.end194:                                        ; preds = %if.end191
  %id.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 1
  %83 = ptrtoint ptr %id.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 4)
  %84 = load i32, ptr %id.i, align 1
  %update_id.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 2
  %85 = ptrtoint ptr %update_id.i to i32
  call void @__asan_loadN_noabort(i32 %85, i32 4)
  %86 = load i32, ptr %update_id.i, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %84, i32 noundef %86) #9
  %compression_level.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 3
  %87 = ptrtoint ptr %compression_level.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %compression_level.i, align 1
  %log_level.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 4
  %89 = ptrtoint ptr %log_level.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %log_level.i, align 1
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %88, i32 noundef %90) #9
  %num_io_pages.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 7
  %91 = ptrtoint ptr %num_io_pages.i to i32
  call void @__asan_loadN_noabort(i32 %91, i32 4)
  %92 = load i32, ptr %num_io_pages.i, align 1
  %pages_offset.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 8
  %93 = ptrtoint ptr %pages_offset.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 4)
  %94 = load i32, ptr %pages_offset.i, align 1
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %92, i32 noundef %94) #9
  %surface0_area_size.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 10
  %95 = ptrtoint ptr %surface0_area_size.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 4)
  %96 = load i32, ptr %surface0_area_size.i, align 1
  %draw_area_offset.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 9
  %97 = ptrtoint ptr %draw_area_offset.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 4)
  %98 = load i32, ptr %draw_area_offset.i, align 1
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %96, i32 noundef %98) #9
  %99 = ptrtoint ptr %surface0_area_size.i to i32
  call void @__asan_loadN_noabort(i32 %99, i32 4)
  %100 = load i32, ptr %surface0_area_size.i, align 1
  %vram_size.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 2
  %101 = ptrtoint ptr %vram_size.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %vram_size.i, align 8
  %ram_header_offset.i = getelementptr inbounds %struct.qxl_rom, ptr %call182, i32 0, i32 11
  %102 = ptrtoint ptr %ram_header_offset.i to i32
  call void @__asan_loadN_noabort(i32 %102, i32 4)
  %103 = load i32, ptr %ram_header_offset.i, align 1
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %103) #9
  %call195 = tail call i32 @qxl_bo_init(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call195)
  %tobool196.not = icmp eq i32 %call195, 0
  br i1 %tobool196.not, label %if.end198, label %if.then197

if.then197:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %call195) #5
  br label %rom_unmap

if.end198:                                        ; preds = %if.end194
  %104 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vram_base, align 4
  %106 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %rom, align 4
  %ram_header_offset = getelementptr inbounds %struct.qxl_rom, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %ram_header_offset to i32
  call void @__asan_loadN_noabort(i32 %108, i32 4)
  %109 = load i32, ptr %ram_header_offset, align 1
  %add201 = add i32 %109, %105
  %call202 = tail call ptr @ioremap(i32 noundef %add201, i32 noundef 5412) #5
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %110 = ptrtoint ptr %ram_header to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call202, ptr %ram_header, align 4
  %tobool204.not = icmp eq ptr %call202, null
  br i1 %tobool204.not, label %if.then205, label %if.end206

if.then205:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #5
  br label %bo_fini

if.end206:                                        ; preds = %if.end198
  %cmd_ring_hdr = getelementptr inbounds %struct.qxl_ram_header, ptr %call202, i32 0, i32 4
  %111 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %io_base, align 8
  %display_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 39
  %call210 = tail call ptr @qxl_ring_create(ptr noundef %cmd_ring_hdr, i32 noundef 16, i32 noundef 32, i32 noundef %112, i1 noundef zeroext false, ptr noundef %display_event) #5
  %command_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 18
  %113 = ptrtoint ptr %command_ring to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call210, ptr %command_ring, align 4
  %tobool212.not = icmp eq ptr %call210, null
  br i1 %tobool212.not, label %if.then213, label %if.end214

if.then213:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #5
  br label %ram_header_unmap

if.end214:                                        ; preds = %if.end206
  %114 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ram_header, align 4
  %cursor_ring_hdr = getelementptr inbounds %struct.qxl_ram_header, ptr %115, i32 0, i32 6
  %116 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %io_base, align 8
  %add217 = add i32 %117, 1
  %cursor_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 40
  %call218 = tail call ptr @qxl_ring_create(ptr noundef %cursor_ring_hdr, i32 noundef 16, i32 noundef 32, i32 noundef %add217, i1 noundef zeroext false, ptr noundef %cursor_event) #5
  %cursor_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 19
  %118 = ptrtoint ptr %cursor_ring to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call218, ptr %cursor_ring, align 8
  %tobool220.not = icmp eq ptr %call218, null
  br i1 %tobool220.not, label %if.then221, label %if.end222

if.then221:                                       ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #5
  br label %command_ring_free

if.end222:                                        ; preds = %if.end214
  %119 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ram_header, align 4
  %release_ring_hdr = getelementptr inbounds %struct.qxl_ram_header, ptr %120, i32 0, i32 8
  %call224 = tail call ptr @qxl_ring_create(ptr noundef %release_ring_hdr, i32 noundef 8, i32 noundef 8, i32 noundef 0, i1 noundef zeroext true, ptr noundef null) #5
  %release_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 17
  %121 = ptrtoint ptr %release_ring to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call224, ptr %release_ring, align 8
  %tobool226.not = icmp eq ptr %call224, null
  br i1 %tobool226.not, label %if.then227, label %if.end228

if.then227:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #5
  br label %cursor_ring_free

if.end228:                                        ; preds = %if.end222
  %release_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %release_idr, ptr noundef nonnull @.str.52, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27, i32 0, i32 1
  %122 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 67108868, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27, i32 0, i32 2
  %123 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %xa_head.i.i, align 4
  %idr_base.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27, i32 1
  %124 = ptrtoint ptr %idr_base.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %idr_base.i, align 4
  %idr_next.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 27, i32 2
  %125 = ptrtoint ptr %idr_next.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %idr_next.i, align 4
  %release_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 31
  tail call void @__raw_spin_lock_init(ptr noundef %release_idr_lock, ptr noundef nonnull @.str.25, ptr noundef nonnull @qxl_device_init.__key.24, i16 noundef signext 3) #5
  %release_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 26
  tail call void @__raw_spin_lock_init(ptr noundef %release_lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @qxl_device_init.__key.26, i16 noundef signext 3) #5
  %surf_id_idr = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46
  tail call void @__raw_spin_lock_init(ptr noundef %surf_id_idr, ptr noundef nonnull @.str.52, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #5
  %xa_flags.i.i424 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46, i32 0, i32 1
  %126 = ptrtoint ptr %xa_flags.i.i424 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 67108868, ptr %xa_flags.i.i424, align 4
  %xa_head.i.i425 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46, i32 0, i32 2
  %127 = ptrtoint ptr %xa_head.i.i425 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %xa_head.i.i425, align 4
  %idr_base.i426 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46, i32 1
  %128 = ptrtoint ptr %idr_base.i426 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %idr_base.i426, align 4
  %idr_next.i427 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 46, i32 2
  %129 = ptrtoint ptr %idr_next.i427 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %idr_next.i427, align 4
  %surf_id_idr_lock = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 47
  tail call void @__raw_spin_lock_init(ptr noundef %surf_id_idr_lock, ptr noundef nonnull @.str.29, ptr noundef nonnull @qxl_device_init.__key.28, i16 noundef signext 3) #5
  %async_io_mutex = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 32
  tail call void @__mutex_init(ptr noundef %async_io_mutex, ptr noundef nonnull @.str.31, ptr noundef nonnull @qxl_device_init.__key.30) #5
  tail call void @qxl_io_reset(ptr noundef %qdev) #5
  %call244 = tail call i32 @qxl_irq_init(ptr noundef %qdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call244)
  %tobool245.not = icmp eq i32 %call244, 0
  br i1 %tobool245.not, label %if.end247, label %if.then246

if.then246:                                       ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.32) #5
  %130 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %release_ring, align 8
  tail call void @qxl_ring_free(ptr noundef %131) #5
  br label %cursor_ring_free

if.end247:                                        ; preds = %if.end228
  call void @__sanitizer_cov_trace_pc() #7
  %main_slot = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 24
  %132 = ptrtoint ptr %vram_base to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %vram_base, align 4
  %134 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rom, align 4
  %ram_header_offset250 = getelementptr inbounds %struct.qxl_rom, ptr %135, i32 0, i32 11
  %136 = ptrtoint ptr %ram_header_offset250 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %ram_header_offset250, align 1
  tail call fastcc void @setup_slot(ptr noundef %qdev, ptr noundef %main_slot, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %133, i32 noundef %137)
  %surfaces_slot = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 25
  %138 = ptrtoint ptr %surfaceram_base166 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %surfaceram_base166, align 4
  %140 = ptrtoint ptr %surfaceram_size172 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %surfaceram_size172, align 8
  tail call fastcc void @setup_slot(ptr noundef %qdev, ptr noundef %surfaces_slot, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef %139, i32 noundef %141)
  %gc_work = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55
  tail call void @__init_work(ptr noundef %gc_work, i32 noundef 0) #5
  %142 = ptrtoint ptr %gc_work to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -64, ptr %gc_work, align 8
  %lockdep_map = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.36, ptr noundef nonnull @qxl_device_init.__key.35, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry257 = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55, i32 1
  %143 = ptrtoint ptr %entry257 to i32
  call void @__asan_store4_noabort(i32 %143)
  store volatile ptr %entry257, ptr %entry257, align 4
  %prev.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55, i32 1, i32 1
  %144 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %entry257, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55, i32 2
  %145 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @qxl_gc_work, ptr %func, align 4
  br label %cleanup

cursor_ring_free:                                 ; preds = %if.then246, %if.then227
  %r.0 = phi i32 [ %call244, %if.then246 ], [ -12, %if.then227 ]
  %146 = ptrtoint ptr %cursor_ring to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %cursor_ring, align 8
  tail call void @qxl_ring_free(ptr noundef %147) #5
  br label %command_ring_free

command_ring_free:                                ; preds = %cursor_ring_free, %if.then221
  %r.1 = phi i32 [ %r.0, %cursor_ring_free ], [ -12, %if.then221 ]
  %148 = ptrtoint ptr %command_ring to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %command_ring, align 4
  tail call void @qxl_ring_free(ptr noundef %149) #5
  br label %ram_header_unmap

ram_header_unmap:                                 ; preds = %command_ring_free, %if.then213
  %r.2 = phi i32 [ %r.1, %command_ring_free ], [ -12, %if.then213 ]
  %150 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ram_header, align 4
  tail call void @iounmap(ptr noundef %151) #5
  br label %bo_fini

bo_fini:                                          ; preds = %ram_header_unmap, %if.then205
  %r.3 = phi i32 [ %r.2, %ram_header_unmap ], [ -12, %if.then205 ]
  tail call void @qxl_bo_fini(ptr noundef %qdev) #5
  br label %rom_unmap

rom_unmap:                                        ; preds = %bo_fini, %if.then197, %qxl_check_device.exit
  %r.4 = phi i32 [ %call195, %if.then197 ], [ %r.3, %bo_fini ], [ -19, %qxl_check_device.exit ]
  %152 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rom, align 4
  tail call void @iounmap(ptr noundef %153) #5
  br label %surface_mapping_free

surface_mapping_free:                             ; preds = %rom_unmap, %do.end188
  %r.5 = phi i32 [ %r.4, %rom_unmap ], [ -12, %do.end188 ]
  %154 = ptrtoint ptr %surface_mapping87 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %surface_mapping87, align 8
  %iomem.i.i428 = getelementptr inbounds %struct.io_mapping, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %iomem.i.i428 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %iomem.i.i428, align 4
  tail call void @iounmap(ptr noundef %157) #5
  tail call void @kfree(ptr noundef %155) #5
  br label %vram_mapping_free

vram_mapping_free:                                ; preds = %surface_mapping_free, %do.end120
  %r.6 = phi i32 [ %r.5, %surface_mapping_free ], [ -12, %do.end120 ]
  %158 = ptrtoint ptr %vram_mapping to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %vram_mapping, align 4
  %iomem.i.i429 = getelementptr inbounds %struct.io_mapping, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %iomem.i.i429 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %iomem.i.i429, align 4
  tail call void @iounmap(ptr noundef %161) #5
  tail call void @kfree(ptr noundef %159) #5
  br label %cleanup

cleanup:                                          ; preds = %vram_mapping_free, %if.end247, %do.end44
  %retval.0 = phi i32 [ %r.6, %vram_mapping_free ], [ 0, %if.end247 ], [ -12, %do.end44 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @qxl_ring_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_irq_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_slot(ptr noundef %qdev, ptr nocapture noundef %slot, i32 noundef %slot_index, ptr noundef %slot_name, i32 noundef %start_phys_addr, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %slot_index, ptr %slot, align 8
  %name = getelementptr inbounds %struct.qxl_memslot, ptr %slot, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %slot_name, ptr %name, align 4
  %conv = zext i32 %start_phys_addr to i64
  %start_phys_addr1 = getelementptr inbounds %struct.qxl_memslot, ptr %slot, i32 0, i32 3
  %2 = ptrtoint ptr %start_phys_addr1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %start_phys_addr1, align 8
  %conv2 = zext i32 %size to i64
  %size3 = getelementptr inbounds %struct.qxl_memslot, ptr %slot, i32 0, i32 4
  %3 = ptrtoint ptr %size3 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv2, ptr %size3, align 8
  %ram_header.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %4 = ptrtoint ptr %ram_header.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ram_header.i, align 4
  %mem_slot.i = getelementptr inbounds %struct.qxl_ram_header, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %mem_slot.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 %conv, ptr %mem_slot.i, align 1
  %7 = load i64, ptr %start_phys_addr1, align 8
  %8 = load i64, ptr %size3, align 8
  %add.i = add i64 %8, %7
  %9 = load ptr, ptr %ram_header.i, align 4
  %mem_end.i = getelementptr inbounds %struct.qxl_ram_header, ptr %9, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %mem_end.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 %add.i, ptr %mem_end.i, align 1
  %rom.i = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %11 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rom.i, align 4
  %slots_start.i = getelementptr inbounds %struct.qxl_rom, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %slots_start.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %slots_start.i, align 1
  %15 = load i32, ptr %slot, align 8
  %16 = trunc i32 %15 to i8
  %conv5.i = add i8 %14, %16
  tail call void @qxl_io_memslot_add(ptr noundef %qdev, i8 noundef zeroext %conv5.i) #5
  %17 = ptrtoint ptr %rom.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rom.i, align 4
  %slot_generation = getelementptr inbounds %struct.qxl_rom, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %slot_generation to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %slot_generation, align 1
  %generation = getelementptr inbounds %struct.qxl_memslot, ptr %slot, i32 0, i32 2
  %21 = ptrtoint ptr %generation to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %generation, align 8
  %22 = load ptr, ptr %rom.i, align 4
  %slots_start = getelementptr inbounds %struct.qxl_rom, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %slots_start to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %slots_start, align 1
  %conv5 = zext i8 %24 to i32
  %25 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slot, align 8
  %add = add i32 %26, %conv5
  %slot_gen_bits = getelementptr inbounds %struct.qxl_rom, ptr %22, i32 0, i32 17
  %27 = ptrtoint ptr %slot_gen_bits to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %slot_gen_bits, align 1
  %conv8 = zext i8 %28 to i32
  %shl = shl i32 %add, %conv8
  %conv9 = sext i32 %shl to i64
  %conv11 = zext i8 %20 to i64
  %or = or i64 %conv9, %conv11
  %slot_id_bits = getelementptr inbounds %struct.qxl_rom, ptr %22, i32 0, i32 18
  %29 = ptrtoint ptr %slot_id_bits to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %slot_id_bits, align 1
  %conv16 = zext i8 %30 to i32
  %31 = add nuw nsw i32 %conv8, %conv16
  %sub = sub nsw i32 64, %31
  %sh_prom = zext i32 %sub to i64
  %shl18 = shl i64 %or, %sh_prom
  %high_bits19 = getelementptr inbounds %struct.qxl_memslot, ptr %slot, i32 0, i32 5
  %32 = ptrtoint ptr %high_bits19 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %shl18, ptr %high_bits19, align 8
  %33 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %name, align 4
  %35 = ptrtoint ptr %start_phys_addr1 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %start_phys_addr1, align 8
  %conv23 = trunc i64 %36 to i32
  %37 = ptrtoint ptr %size3 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %size3, align 8
  %conv25 = trunc i64 %38 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %26, ptr noundef %34, i32 noundef %conv23, i32 noundef %conv25) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qxl_gc_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6720
  %call = tail call i32 @qxl_garbage_collect(ptr noundef %add.ptr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_ring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qxl_device_fini(ptr noundef %qdev) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gc_work = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55
  %func = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 55, i32 2
  %0 = ptrtoint ptr %func to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %func, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup58_crit_edge, label %for.body.preheader

entry.cleanup58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup58

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 53, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %for.body.preheader.for.inc_crit_edge, label %if.end3

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end3:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %3) #5
  tail call void @qxl_bo_unref(ptr noundef %arrayidx) #5
  %arrayidx8 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 54, i32 0
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx8, align 4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 53, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %7, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.1 = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %7) #5
  tail call void @qxl_bo_unref(ptr noundef %arrayidx.1) #5
  %arrayidx8.1 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 54, i32 1
  %8 = ptrtoint ptr %arrayidx8.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx8.1, align 4
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 53, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %11, null
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end3.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.2 = tail call i32 @qxl_bo_unpin(ptr noundef nonnull %11) #5
  tail call void @qxl_bo_unref(ptr noundef %arrayidx.2) #5
  %arrayidx8.2 = getelementptr %struct.qxl_device, ptr %qdev, i32 0, i32 54, i32 2
  %12 = ptrtoint ptr %arrayidx8.2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx8.2, align 4
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %for.inc.1.for.inc.2_crit_edge
  tail call void @qxl_io_notify_oom(ptr noundef %qdev) #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.9, i32 noundef 311) #5
  %release_count = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %release_count, i32 noundef 4) #5
  %14 = ptrtoint ptr %release_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %release_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %for.inc.2.if.end51_crit_edge, label %if.then23

for.inc.2.if.end51_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.then23:                                        ; preds = %for.inc.2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #5
  %16 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #5
  %release_event = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 30
  %call26105 = call i32 @prepare_to_wait_event(ptr noundef %release_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call.i.i98106 = call zeroext i1 @__kasan_check_read(ptr noundef %release_count, i32 noundef 4) #5
  %17 = ptrtoint ptr %release_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %release_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp30107 = icmp eq i32 %18, 0
  br i1 %cmp30107, label %if.then23.for.end48_crit_edge, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  br label %cleanup

if.then23.for.end48_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then23.cleanup_crit_edge
  %__ret24.1108 = phi i32 [ %__ret24.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then23.cleanup_crit_edge ]
  %call47 = call i32 @schedule_timeout(i32 noundef %__ret24.1108) #5
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %release_event, ptr noundef nonnull %__wq_entry, i32 noundef 2) #5
  %call.i.i98 = call zeroext i1 @__kasan_check_read(ptr noundef %release_count, i32 noundef 4) #5
  %19 = ptrtoint ptr %release_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %release_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp30 = icmp eq i32 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool34.not = icmp eq i32 %call47, 0
  %21 = select i1 %cmp30, i1 %tobool34.not, i1 false
  %__ret24.1 = select i1 %21, i32 1, i32 %call47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool40.not = icmp eq i32 %__ret24.1, 0
  %22 = select i1 %cmp30, i1 true, i1 %tobool40.not
  br i1 %22, label %cleanup.for.end48_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.for.end48_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end48

for.end48:                                        ; preds = %cleanup.for.end48_crit_edge, %if.then23.for.end48_crit_edge
  call void @finish_wait(ptr noundef %release_event, ptr noundef nonnull %__wq_entry) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #5
  br label %if.end51

if.end51:                                         ; preds = %for.end48, %for.inc.2.if.end51_crit_edge
  %call54 = call zeroext i1 @flush_work(ptr noundef %gc_work) #5
  %call55 = call i32 @qxl_surf_evict(ptr noundef %qdev) #5
  %call56 = call i32 @qxl_vram_evict(ptr noundef %qdev) #5
  call void @qxl_gem_fini(ptr noundef %qdev) #5
  call void @qxl_bo_fini(ptr noundef %qdev) #5
  %command_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 18
  %23 = ptrtoint ptr %command_ring to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %command_ring, align 4
  call void @qxl_ring_free(ptr noundef %24) #5
  %cursor_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 19
  %25 = ptrtoint ptr %cursor_ring to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cursor_ring, align 8
  call void @qxl_ring_free(ptr noundef %26) #5
  %release_ring = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 17
  %27 = ptrtoint ptr %release_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %release_ring, align 8
  call void @qxl_ring_free(ptr noundef %28) #5
  %surface_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 51
  %29 = ptrtoint ptr %surface_mapping to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %surface_mapping, align 8
  %iomem.i.i = getelementptr inbounds %struct.io_mapping, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %iomem.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iomem.i.i, align 4
  call void @iounmap(ptr noundef %32) #5
  call void @kfree(ptr noundef %30) #5
  %vram_mapping = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 50
  %33 = ptrtoint ptr %vram_mapping to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vram_mapping, align 4
  %iomem.i.i99 = getelementptr inbounds %struct.io_mapping, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %iomem.i.i99 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %iomem.i.i99, align 4
  call void @iounmap(ptr noundef %36) #5
  call void @kfree(ptr noundef %34) #5
  %ram_header = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 20
  %37 = ptrtoint ptr %ram_header to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ram_header, align 4
  call void @iounmap(ptr noundef %38) #5
  %rom = getelementptr inbounds %struct.qxl_device, ptr %qdev, i32 0, i32 7
  %39 = ptrtoint ptr %rom to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rom, align 4
  call void @iounmap(ptr noundef %40) #5
  %41 = ptrtoint ptr %rom to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rom, align 4
  br label %cleanup58

cleanup58:                                        ; preds = %if.end51, %entry.cleanup58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_bo_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_notify_oom(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_surf_evict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_vram_evict(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_gem_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @qxl_io_memslot_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qxl_garbage_collect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !58, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @qxl_device_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 116, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @qxl_device_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 117, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @qxl_device_init.__key.3, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 118, i32 2}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @qxl_device_init.__key.5, !10, !"__key", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 119, i32 2}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 129, i32 3}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @qxl_device_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @qxl_device_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 151, i32 4}
!20 = !{ptr @qxl_device_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @qxl_device_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 157, i32 2}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 170, i32 3}
!28 = !{ptr @qxl_device_init._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @qxl_device_init._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 182, i32 3}
!32 = !{ptr @.str.20, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 190, i32 3}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 202, i32 3}
!36 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 216, i32 3}
!38 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 228, i32 3}
!40 = !{ptr @qxl_device_init.__key.24, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 234, i32 2}
!42 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @qxl_device_init.__key.26, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 235, i32 2}
!45 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @qxl_device_init.__key.28, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 238, i32 2}
!48 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @qxl_device_init.__key.30, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 240, i32 2}
!51 = !{ptr @.str.31, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 249, i32 3}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 257, i32 40}
!56 = !{ptr @.str.34, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 260, i32 44}
!58 = !{ptr @qxl_device_init.__key.35, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 264, i32 2}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @qxl_log_level, !62, !"qxl_log_level", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 36, i32 5}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 43, i32 3}
!65 = !{ptr @.str.38, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 47, i32 2}
!67 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @qxl_check_device._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @qxl_check_device._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 48, i32 2}
!72 = !{ptr @qxl_check_device._entry.40, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @qxl_check_device._entry_ptr.42, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 50, i32 2}
!76 = !{ptr @qxl_check_device._entry.43, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @qxl_check_device._entry_ptr.45, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 52, i32 2}
!80 = !{ptr @qxl_check_device._entry.46, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @qxl_check_device._entry_ptr.48, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.50, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 56, i32 2}
!84 = !{ptr @qxl_check_device._entry.49, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @qxl_check_device._entry_ptr.51, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @xa_init_flags.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!88 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.53, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/qxl/qxl_kms.c", i32 90, i32 2}
!91 = !{ptr @.str.54, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @setup_slot._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @setup_slot._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
