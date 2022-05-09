; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/etnaviv/etnaviv_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/etnaviv/etnaviv_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.component_master_ops = type { ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_ioctl_desc = type { i32, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.85, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.91, ptr, i32, ptr, i8, i32 }
%struct.anon.85 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.91 = type { i32, ptr }
%struct.etnaviv_drm_private = type { i32, [4 x ptr], i32, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.etnaviv_gpu = type { ptr, ptr, ptr, %struct.mutex, %struct.etnaviv_chip_identity, i32, ptr, %struct.drm_gpu_scheduler, i8, i8, %struct.etnaviv_cmdbuf, i32, [1 x i32], [30 x %struct.etnaviv_event], %struct.completion, %struct.spinlock, i32, %struct.mutex, %struct.idr, i32, i32, %struct.wait_queue_head, i64, %struct.spinlock, %struct.work_struct, i32, i32, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.etnaviv_chip_identity = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.drm_gpu_scheduler = type { ptr, i32, i32, ptr, [4 x %struct.drm_sched_rq], %struct.wait_queue_head, %struct.wait_queue_head, %struct.atomic_t, %struct.atomic64_t, ptr, %struct.delayed_work, ptr, %struct.list_head, %struct.spinlock, i32, ptr, %struct.atomic_t, i8, i8 }
%struct.drm_sched_rq = type { %struct.spinlock, ptr, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.etnaviv_cmdbuf = type { ptr, i32, ptr, i32, i32 }
%struct.etnaviv_event = type { ptr, ptr, ptr }
%struct.etnaviv_file_private = type { ptr, [4 x %struct.drm_sched_entity] }
%struct.drm_sched_entity = type { %struct.list_head, ptr, ptr, i32, i32, %struct.spinlock, %struct.spsc_queue, %struct.atomic_t, i64, ptr, %struct.dma_fence_cb, ptr, ptr, ptr, i8, %struct.completion }
%struct.spsc_queue = type { ptr, %struct.atomic_t, %struct.atomic_t }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_vma_offset_manager = type { %struct.rwlock_t, %struct.drm_mm }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.etnaviv_iommu_context = type { %struct.kref, ptr, %struct.mutex, %struct.list_head, %struct.drm_mm, i32, %struct.etnaviv_vram_mapping }
%struct.etnaviv_vram_mapping = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, %struct.drm_mm_node, i32, i32 }
%struct.drm_etnaviv_param = type { i32, i32, i64 }
%struct.drm_etnaviv_gem_new = type { i64, i32, i32 }
%struct.drm_etnaviv_gem_info = type { i32, i32, i64 }
%struct.drm_etnaviv_gem_cpu_prep = type { i32, i32, %struct.drm_etnaviv_timespec }
%struct.drm_etnaviv_timespec = type { i64, i64 }
%struct.drm_etnaviv_gem_cpu_fini = type { i32, i32 }
%struct.drm_etnaviv_wait_fence = type { i32, i32, i32, i32, %struct.drm_etnaviv_timespec }
%struct.drm_etnaviv_gem_userptr = type { i64, i64, i32, i32 }
%struct.drm_etnaviv_gem_wait = type { i32, i32, i32, i32, %struct.drm_etnaviv_timespec }

@__initcall__kmod_etnaviv__325_713_etnaviv_init6 = internal global ptr @etnaviv_init, section ".initcall6.init", align 4
@etnaviv_drm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@etnaviv_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @etnaviv_pdev_probe, ptr @etnaviv_pdev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@etnaviv_gpu_driver = external dso_local global %struct.platform_driver, align 4
@__exitcall_etnaviv_exit = internal global ptr @etnaviv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [63 x i8] c"etnaviv.author=Christian Gmeiner <christian.gmeiner@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author327 = internal constant [57 x i8] c"etnaviv.author=Russell King <rmk+kernel@armlinux.org.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_author328 = internal constant [52 x i8] c"etnaviv.author=Lucas Stach <l.stach@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description329 = internal constant [39 x i8] c"etnaviv.description=etnaviv DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file330 = internal constant [45 x i8] c"etnaviv.file=drivers/gpu/drm/etnaviv/etnaviv\00", section ".modinfo", align 1
@__UNIQUE_ID_license331 = internal constant [23 x i8] c"etnaviv.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias332 = internal constant [31 x i8] c"etnaviv.alias=platform:etnaviv\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vivante,gc\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"etnaviv\00", [24 x i8] zeroinitializer }, align 32
@etnaviv_pdev_probe.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -99, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"etnaviv_pdev_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/etnaviv/etnaviv_drv.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No suitable DMA available\0A\00", [37 x i8] zeroinitializer }, align 32
@etnaviv_master_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @etnaviv_bind, ptr @etnaviv_unbind }, [24 x i8] zeroinitializer }, align 32
@etnaviv_drm_driver = internal constant { %struct.drm_driver, [60 x i8] } { %struct.drm_driver { ptr null, ptr @etnaviv_open, ptr @etnaviv_postclose, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @etnaviv_debugfs_init, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @etnaviv_gem_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr null, ptr null, ptr null, i32 1, i32 3, i32 0, ptr @.str.1, ptr @.str.13, ptr @.str.14, i32 9, ptr @etnaviv_ioctls, i32 12, ptr @fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [60 x i8] zeroinitializer }, align 32
@etnaviv_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 509, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate private data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"etnaviv_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@etnaviv_bind._entry_ptr = internal global ptr @etnaviv_bind._entry, section ".printk_index", align 4
@etnaviv_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&priv->gem_lock\00", [16 x i8] zeroinitializer }, align 32
@etnaviv_bind._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 524, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to create cmdbuf suballocator\0A\00", [58 x i8] zeroinitializer }, align 32
@etnaviv_bind._entry_ptr.12 = internal global ptr @etnaviv_bind._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"etnaviv DRM\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"20151214\00", [23 x i8] zeroinitializer }, align 32
@etnaviv_ioctls = internal constant { [12 x %struct.drm_ioctl_desc], [32 x i8] } { [12 x %struct.drm_ioctl_desc] [%struct.drm_ioctl_desc { i32 -1072667584, i32 32, ptr @etnaviv_ioctl_get_param, ptr @.str.26 }, %struct.drm_ioctl_desc zeroinitializer, %struct.drm_ioctl_desc { i32 -1072667582, i32 32, ptr @etnaviv_ioctl_gem_new, ptr @.str.27 }, %struct.drm_ioctl_desc { i32 -1072667581, i32 32, ptr @etnaviv_ioctl_gem_info, ptr @.str.28 }, %struct.drm_ioctl_desc { i32 1075340356, i32 32, ptr @etnaviv_ioctl_gem_cpu_prep, ptr @.str.29 }, %struct.drm_ioctl_desc { i32 1074291781, i32 32, ptr @etnaviv_ioctl_gem_cpu_fini, ptr @.str.30 }, %struct.drm_ioctl_desc { i32 -1068997562, i32 32, ptr @etnaviv_ioctl_gem_submit, ptr @.str.31 }, %struct.drm_ioctl_desc { i32 1075864647, i32 32, ptr @etnaviv_ioctl_wait_fence, ptr @.str.32 }, %struct.drm_ioctl_desc { i32 -1072143288, i32 32, ptr @etnaviv_ioctl_gem_userptr, ptr @.str.33 }, %struct.drm_ioctl_desc { i32 1075864649, i32 32, ptr @etnaviv_ioctl_gem_wait, ptr @.str.34 }, %struct.drm_ioctl_desc { i32 -1068997558, i32 32, ptr @etnaviv_ioctl_pm_query_dom, ptr @.str.35 }, %struct.drm_ioctl_desc { i32 -1068735413, i32 32, ptr @etnaviv_ioctl_pm_query_sig, ptr @.str.36 }], [32 x i8] zeroinitializer }, align 32
@fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@etnaviv_debugfs_list = internal global { [5 x %struct.drm_info_list], [48 x i8] } { [5 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.15, ptr @show_each_gpu, i32 0, ptr @etnaviv_gpu_debugfs }, %struct.drm_info_list { ptr @.str.16, ptr @show_unlocked, i32 0, ptr @etnaviv_gem_show }, %struct.drm_info_list { ptr @.str.17, ptr @show_unlocked, i32 0, ptr @etnaviv_mm_show }, %struct.drm_info_list { ptr @.str.18, ptr @show_each_gpu, i32 0, ptr @etnaviv_mmu_show }, %struct.drm_info_list { ptr @.str.19, ptr @show_each_gpu, i32 0, ptr @etnaviv_ring_show }], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpu\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gem\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmu\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ring\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Active Objects (%s):\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Ring Buffer (%s): \00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"virt %p - phys 0x%llx - free 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\090x%p: \00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%08x \00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ETNAVIV_GET_PARAM\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ETNAVIV_GEM_NEW\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ETNAVIV_GEM_INFO\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ETNAVIV_GEM_CPU_PREP\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ETNAVIV_GEM_CPU_FINI\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ETNAVIV_GEM_SUBMIT\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ETNAVIV_WAIT_FENCE\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ETNAVIV_GEM_USERPTR\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ETNAVIV_GEM_WAIT\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ETNAVIV_PM_QUERY_DOM\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ETNAVIV_PM_QUERY_SIG\00", [43 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"etnaviv_drm\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 660, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"etnaviv_platform_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 652, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 682, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 686, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 630, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"etnaviv_master_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 572, i32 42 }
@___asan_gen_.61 = private unnamed_addr constant [19 x i8] c"etnaviv_drm_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 473, i32 32 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 509, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 517, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 524, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 488, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 489, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"etnaviv_ioctls\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 455, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [5 x i8] c"fops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 471, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"etnaviv_debugfs_list\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 226, i32 29 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 227, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 228, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 229, i32 5 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 230, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 231, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 135, i32 16 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 183, i32 16 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 173, i32 16 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 175, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 17 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 458, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 459, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 460, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 461, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 462, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 463, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 464, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 465, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 466, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 467, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [41 x i8] c"../drivers/gpu/drm/etnaviv/etnaviv_drv.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 468, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_alias332, ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_author327, ptr @__UNIQUE_ID_author328, ptr @__UNIQUE_ID_description329, ptr @__UNIQUE_ID_file330, ptr @__UNIQUE_ID_license331, ptr @__exitcall_etnaviv_exit, ptr @__initcall__kmod_etnaviv__325_713_etnaviv_init6, ptr @etnaviv_bind._entry, ptr @etnaviv_bind._entry.10, ptr @etnaviv_bind._entry_ptr, ptr @etnaviv_bind._entry_ptr.12, ptr @etnaviv_exit, ptr @etnaviv_drm, ptr @etnaviv_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @etnaviv_master_ops, ptr @etnaviv_drm_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @etnaviv_bind.__key, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @etnaviv_ioctls, ptr @fops, ptr @etnaviv_debugfs_list, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_drm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_master_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_drm_driver to i32), i32 164, i32 224, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_bind._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_ioctls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @etnaviv_debugfs_list to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @etnaviv_validate_init() #10
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @etnaviv_gpu_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @etnaviv_platform_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.unregister_gpu_driver_crit_edge

if.end.unregister_gpu_driver_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_gpu_driver

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #10
  %tobool.not33 = icmp eq ptr %call5, null
  br i1 %tobool.not33, label %if.end4.cleanup_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end4.for.body_crit_edge
  %np.034 = phi ptr [ %call17, %for.inc.for.body_crit_edge ], [ %call5, %if.end4.for.body_crit_edge ]
  %call6 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np.034) #10
  br i1 %call6, label %if.end8, label %for.inc

if.end8:                                          ; preds = %for.body
  %call9 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -1) #10
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.unregister_platform_driver_crit_edge, label %if.end12

if.end8.unregister_platform_driver_crit_edge:     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %unregister_platform_driver

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @platform_device_add(ptr noundef nonnull %call9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_device_put(ptr noundef nonnull %call9) #10
  br label %unregister_platform_driver

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call9, ptr @etnaviv_drm, align 4
  tail call void @of_node_put(ptr noundef nonnull %np.034) #10
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call17 = tail call ptr @of_find_compatible_node(ptr noundef nonnull %np.034, ptr noundef null, ptr noundef nonnull @.str) #10
  %tobool.not = icmp eq ptr %call17, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

unregister_platform_driver:                       ; preds = %if.then15, %if.end8.unregister_platform_driver_crit_edge
  %ret.0 = phi i32 [ %call13, %if.then15 ], [ -12, %if.end8.unregister_platform_driver_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %np.034) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_platform_driver) #10
  br label %unregister_gpu_driver

unregister_gpu_driver:                            ; preds = %unregister_platform_driver, %if.end.unregister_gpu_driver_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.unregister_gpu_driver_crit_edge ], [ %ret.0, %unregister_platform_driver ]
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_gpu_driver) #10
  br label %cleanup

cleanup:                                          ; preds = %unregister_gpu_driver, %for.inc.cleanup_crit_edge, %if.end16, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %unregister_gpu_driver ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end16 ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load ptr, ptr @etnaviv_drm, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_platform_driver) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @etnaviv_gpu_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_validate_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_pdev_probe(ptr noundef %pdev) #3 align 64 {
entry:
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #10
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool12.not61 = icmp eq ptr %4, null
  br i1 %tobool12.not61, label %for.cond11.preheader.if.end17_crit_edge, label %for.cond11.preheader.for.body13_crit_edge

for.cond11.preheader.for.body13_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body13

for.cond11.preheader.if.end17_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #10
  %tobool2.not63 = icmp eq ptr %call, null
  br i1 %tobool2.not63, label %if.then.if.end17_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %core_node.065 = phi ptr [ %call9, %for.inc.for.body_crit_edge ], [ %call, %if.then.for.body_crit_edge ]
  %first_node.064 = phi ptr [ %first_node.2, %for.inc.for.body_crit_edge ], [ null, %if.then.for.body_crit_edge ]
  %call3 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %core_node.065) #10
  br i1 %call3, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %tobool5.not = icmp eq ptr %first_node.064, null
  %spec.select = select i1 %tobool5.not, ptr %core_node.065, ptr %first_node.064
  call void @drm_of_component_match_add(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @compare_of, ptr noundef nonnull %core_node.065) #10
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %first_node.2 = phi ptr [ %spec.select, %if.end ], [ %first_node.064, %for.body.for.inc_crit_edge ]
  %call9 = call ptr @of_find_compatible_node(ptr noundef nonnull %core_node.065, ptr noundef null, ptr noundef nonnull @.str) #10
  %tobool2.not = icmp eq ptr %call9, null
  br i1 %tobool2.not, label %for.inc.if.end17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.cond11.preheader.for.body13_crit_edge
  %5 = phi ptr [ %7, %for.body13.for.body13_crit_edge ], [ %4, %for.cond11.preheader.for.body13_crit_edge ]
  %i.062 = phi i32 [ %inc, %for.body13.for.body13_crit_edge ], [ 0, %for.cond11.preheader.for.body13_crit_edge ]
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef null, ptr noundef nonnull @compare_str, ptr noundef nonnull %5) #10
  %inc = add i32 %i.062, 1
  %arrayidx = getelementptr ptr, ptr %2, i32 %inc
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %for.body13.if.end17_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.body13.if.end17_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.end17:                                         ; preds = %for.body13.if.end17_crit_edge, %for.inc.if.end17_crit_edge, %if.then.if.end17_crit_edge, %for.cond11.preheader.if.end17_crit_edge
  %first_node.3 = phi ptr [ null, %if.then.if.end17_crit_edge ], [ null, %for.cond11.preheader.if.end17_crit_edge ], [ %first_node.2, %for.inc.if.end17_crit_edge ], [ null, %for.body13.if.end17_crit_edge ]
  %call19 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %lor.lhs.false, label %if.end17.do.body_crit_edge

if.end17.do.body_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end17
  %call22 = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end32, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end17.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @etnaviv_pdev_probe.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@etnaviv_pdev_probe, %if.then29)) #10
          to label %cleanup [label %if.then29], !srcloc !111

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @etnaviv_pdev_probe.__UNIQUE_ID_ddebug324, ptr noundef %dev1, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end32:                                         ; preds = %lor.lhs.false
  %tobool33.not = icmp eq ptr %first_node.3, null
  br i1 %tobool33.not, label %if.end32.if.end37_crit_edge, label %if.then34

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @of_dma_configure_id(ptr noundef %dev1, ptr noundef nonnull %first_node.3, i1 noundef zeroext true, ptr noundef null) #10
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end32.if.end37_crit_edge
  %8 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %match, align 4
  %call38 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @etnaviv_master_ops, ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then29, %do.body
  %retval.0 = phi i32 [ %call38, %if.end37 ], [ -19, %if.then29 ], [ -19, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_pdev_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @etnaviv_master_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_of_component_match_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @compare_str(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call i32 @strcmp(ptr noundef %retval.0.i, ptr noundef %data) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_bind(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_dev_alloc(ptr noundef nonnull @etnaviv_drm_driver, ptr noundef %dev) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 132) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #15
  br label %out_put

if.end5:                                          ; preds = %if.end
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %dev_private, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %3 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end5.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end5.dma_set_max_seg_size.exit_crit_edge:      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -2147483648, ptr %4, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end5.dma_set_max_seg_size.exit_crit_edge
  %gem_lock = getelementptr inbounds %struct.etnaviv_drm_private, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %gem_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @etnaviv_bind.__key) #10
  %gem_list = getelementptr inbounds %struct.etnaviv_drm_private, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %gem_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %gem_list, ptr %gem_list, align 4
  %prev.i = getelementptr inbounds %struct.etnaviv_drm_private, ptr %call7.i.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %gem_list, ptr %prev.i, align 8
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %call7.i.i, align 8
  %shm_gfp_mask = getelementptr inbounds %struct.etnaviv_drm_private, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %shm_gfp_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1076418, ptr %shm_gfp_mask, align 4
  %dev10 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10, align 4
  %call11 = tail call ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef %11) #10
  %cmdbuf_suballoc = getelementptr inbounds %struct.etnaviv_drm_private, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call11, ptr %cmdbuf_suballoc, align 8
  %cmp.i59 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i59, label %do.end17, label %if.end21

do.end17:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #15
  %15 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cmdbuf_suballoc, align 8
  %17 = ptrtoint ptr %16 to i32
  br label %out_free_priv

if.end21:                                         ; preds = %dma_set_max_seg_size.exit
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call, ptr %driver_data.i, align 4
  %call22 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end21.out_destroy_suballoc_crit_edge, label %if.end24

if.end21.out_destroy_suballoc_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_destroy_suballoc

if.end24:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private, align 4
  %arrayidx.i = getelementptr %struct.etnaviv_drm_private, ptr %20, i32 0, i32 1, i32 0
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i60 = icmp eq ptr %22, null
  br i1 %tobool.not.i60, label %if.end24.if.end5.i_crit_edge, label %if.then.i61

if.end24.if.end5.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then.i61:                                      ; preds = %if.end24
  %call.i = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %22) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i61.if.end5.i_crit_edge, label %if.then2.i

if.then.i61.if.end5.i_crit_edge:                  ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.i

if.then2.i:                                       ; preds = %if.then.i61
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %if.then.i61.if.end5.i_crit_edge, %if.end24.if.end5.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.etnaviv_drm_private, ptr %20, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %25, null
  br i1 %tobool.not.1.i, label %if.end5.i.if.end5.1.i_crit_edge, label %if.then.1.i

if.end5.i.if.end5.1.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.1.i

if.then.1.i:                                      ; preds = %if.end5.i
  %call.1.i = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool1.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool1.not.1.i, label %if.then.1.i.if.end5.1.i_crit_edge, label %if.then2.1.i

if.then.1.i.if.end5.1.i_crit_edge:                ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.1.i

if.then2.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %if.end5.1.i

if.end5.1.i:                                      ; preds = %if.then2.1.i, %if.then.1.i.if.end5.1.i_crit_edge, %if.end5.i.if.end5.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.etnaviv_drm_private, ptr %20, i32 0, i32 1, i32 2
  %27 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %28, null
  br i1 %tobool.not.2.i, label %if.end5.1.i.if.end5.2.i_crit_edge, label %if.then.2.i

if.end5.1.i.if.end5.2.i_crit_edge:                ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.2.i

if.then.2.i:                                      ; preds = %if.end5.1.i
  %call.2.i = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool1.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool1.not.2.i, label %if.then.2.i.if.end5.2.i_crit_edge, label %if.then2.2.i

if.then.2.i.if.end5.2.i_crit_edge:                ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5.2.i

if.then2.2.i:                                     ; preds = %if.then.2.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %arrayidx.2.i, align 4
  br label %if.end5.2.i

if.end5.2.i:                                      ; preds = %if.then2.2.i, %if.then.2.i.if.end5.2.i_crit_edge, %if.end5.1.i.if.end5.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.etnaviv_drm_private, ptr %20, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %31, null
  br i1 %tobool.not.3.i, label %if.end5.2.i.load_gpu.exit_crit_edge, label %if.then.3.i

if.end5.2.i.load_gpu.exit_crit_edge:              ; preds = %if.end5.2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %load_gpu.exit

if.then.3.i:                                      ; preds = %if.end5.2.i
  %call.3.i = tail call i32 @etnaviv_gpu_init(ptr noundef nonnull %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool1.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool1.not.3.i, label %if.then.3.i.load_gpu.exit_crit_edge, label %if.then2.3.i

if.then.3.i.load_gpu.exit_crit_edge:              ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %load_gpu.exit

if.then2.3.i:                                     ; preds = %if.then.3.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %arrayidx.3.i, align 4
  br label %load_gpu.exit

load_gpu.exit:                                    ; preds = %if.then2.3.i, %if.then.3.i.load_gpu.exit_crit_edge, %if.end5.2.i.load_gpu.exit_crit_edge
  %call25 = tail call i32 @drm_dev_register(ptr noundef %call, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %load_gpu.exit.cleanup_crit_edge, label %out_unbind

load_gpu.exit.cleanup_crit_edge:                  ; preds = %load_gpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out_unbind:                                       ; preds = %load_gpu.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %call) #10
  br label %out_destroy_suballoc

out_destroy_suballoc:                             ; preds = %out_unbind, %if.end21.out_destroy_suballoc_crit_edge
  %ret.0 = phi i32 [ %call22, %if.end21.out_destroy_suballoc_crit_edge ], [ %call25, %out_unbind ]
  %33 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cmdbuf_suballoc, align 8
  tail call void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %34) #10
  br label %out_free_priv

out_free_priv:                                    ; preds = %out_destroy_suballoc, %do.end17
  %ret.1 = phi i32 [ %17, %do.end17 ], [ %ret.0, %out_destroy_suballoc ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out_put

out_put:                                          ; preds = %out_free_priv, %do.end
  %ret.2 = phi i32 [ %ret.1, %out_free_priv ], [ -12, %do.end ]
  tail call void @drm_dev_put(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_put, %load_gpu.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %ret.2, %out_put ], [ 0, %load_gpu.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_unbind(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @drm_dev_unregister(ptr noundef %1) #10
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %1) #10
  %cmdbuf_suballoc = getelementptr inbounds %struct.etnaviv_drm_private, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmdbuf_suballoc, align 4
  tail call void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef %5) #10
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dev_private, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @drm_dev_put(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_cmdbuf_suballoc_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_cmdbuf_suballoc_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_open(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %file) #3 align 64 {
entry:
  %sched = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 744) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %mmu_global = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %mmu_global to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mmu_global, align 4
  %cmdbuf_suballoc = getelementptr inbounds %struct.etnaviv_drm_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %cmdbuf_suballoc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmdbuf_suballoc, align 4
  %call1 = tail call ptr @etnaviv_iommu_context_init(ptr noundef %4, ptr noundef %6) #10
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call1, ptr %call7.i.i, align 8
  %tobool3.not = icmp eq ptr %call1, null
  br i1 %tobool3.not, label %if.then4, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 0
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #10
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %for.body.preheader.if.end12_crit_edge, label %if.then8

for.body.preheader.if.end12_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.then8:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %sched9 = getelementptr inbounds %struct.etnaviv_gpu, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sched9, ptr %sched, align 4
  %arrayidx10 = getelementptr %struct.etnaviv_file_private, ptr %call7.i.i, i32 0, i32 1, i32 0
  %call11 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx10, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %for.body.preheader.if.end12_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #10
  %arrayidx.1 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #10
  %tobool7.not.1 = icmp eq ptr %12, null
  br i1 %tobool7.not.1, label %if.end12.if.end12.1_crit_edge, label %if.then8.1

if.end12.if.end12.1_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.1

if.then8.1:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %sched9.1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sched9.1, ptr %sched, align 4
  %arrayidx10.1 = getelementptr %struct.etnaviv_file_private, ptr %call7.i.i, i32 0, i32 1, i32 1
  %call11.1 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx10.1, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #10
  br label %if.end12.1

if.end12.1:                                       ; preds = %if.then8.1, %if.end12.if.end12.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #10
  %arrayidx.2 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #10
  %tobool7.not.2 = icmp eq ptr %15, null
  br i1 %tobool7.not.2, label %if.end12.1.if.end12.2_crit_edge, label %if.then8.2

if.end12.1.if.end12.2_crit_edge:                  ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.2

if.then8.2:                                       ; preds = %if.end12.1
  call void @__sanitizer_cov_trace_pc() #12
  %sched9.2 = getelementptr inbounds %struct.etnaviv_gpu, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %sched9.2, ptr %sched, align 4
  %arrayidx10.2 = getelementptr %struct.etnaviv_file_private, ptr %call7.i.i, i32 0, i32 1, i32 2
  %call11.2 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx10.2, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #10
  br label %if.end12.2

if.end12.2:                                       ; preds = %if.then8.2, %if.end12.1.if.end12.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #10
  %arrayidx.3 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sched) #10
  %tobool7.not.3 = icmp eq ptr %18, null
  br i1 %tobool7.not.3, label %if.end12.2.if.end12.3_crit_edge, label %if.then8.3

if.end12.2.if.end12.3_crit_edge:                  ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.3

if.then8.3:                                       ; preds = %if.end12.2
  call void @__sanitizer_cov_trace_pc() #12
  %sched9.3 = getelementptr inbounds %struct.etnaviv_gpu, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %sched to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sched9.3, ptr %sched, align 4
  %arrayidx10.3 = getelementptr %struct.etnaviv_file_private, ptr %call7.i.i, i32 0, i32 1, i32 3
  %call11.3 = call i32 @drm_sched_entity_init(ptr noundef %arrayidx10.3, i32 noundef 1, ptr noundef nonnull %sched, i32 noundef 1, ptr noundef null) #10
  br label %if.end12.3

if.end12.3:                                       ; preds = %if.then8.3, %if.end12.2.if.end12.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sched) #10
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %20 = ptrtoint ptr %driver_priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %driver_priv, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12.3, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12.3 ], [ -12, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_postclose(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %driver_priv = getelementptr inbounds %struct.drm_file, ptr %file, i32 0, i32 19
  %2 = ptrtoint ptr %driver_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_priv, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2 = getelementptr %struct.etnaviv_file_private, ptr %3, i32 0, i32 1, i32 0
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx2) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.1 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %7, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.1 = getelementptr %struct.etnaviv_file_private, ptr %3, i32 0, i32 1, i32 1
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx2.1) #10
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx.2 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %9, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.2 = getelementptr %struct.etnaviv_file_private, ptr %3, i32 0, i32 1, i32 2
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx2.2) #10
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx.3 = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %11, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx2.3 = getelementptr %struct.etnaviv_file_private, ptr %3, i32 0, i32 1, i32 3
  tail call void @drm_sched_entity_destroy(ptr noundef %arrayidx2.3) #10
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void @etnaviv_iommu_context_put(ptr noundef %13) #10
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @etnaviv_debugfs_init(ptr noundef %minor) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.drm_minor, ptr %minor, i32 0, i32 4
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @etnaviv_debugfs_list, i32 noundef 5, ptr noundef %1, ptr noundef %minor) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_gem_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @etnaviv_iommu_context_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_sched_entity_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_sched_entity_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_iommu_context_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_each_gpu(ptr noundef %m, ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %7, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %entry
  %call = tail call i32 %11(ptr noundef nonnull %13, ptr noundef %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp3 = icmp slt i32 %call, 0
  br i1 %cmp3, label %if.end.for.end_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %ret.1 = phi i32 [ %call, %if.end.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %arrayidx.1 = getelementptr %struct.etnaviv_drm_private, ptr %7, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %call.1 = tail call i32 %11(ptr noundef nonnull %15, ptr noundef %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp3.1 = icmp slt i32 %call.1, 0
  br i1 %cmp3.1, label %if.end.1.for.end_crit_edge, label %if.end.1.for.inc.1_crit_edge

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.1

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %call.1, %if.end.1.for.inc.1_crit_edge ], [ %ret.1, %for.inc.for.inc.1_crit_edge ]
  %arrayidx.2 = getelementptr %struct.etnaviv_drm_private, ptr %7, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %17, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %call.2 = tail call i32 %11(ptr noundef nonnull %17, ptr noundef %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp3.2 = icmp slt i32 %call.2, 0
  br i1 %cmp3.2, label %if.end.2.for.end_crit_edge, label %if.end.2.for.inc.2_crit_edge

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.2

if.end.2.for.end_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %ret.1.2 = phi i32 [ %call.2, %if.end.2.for.inc.2_crit_edge ], [ %ret.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %arrayidx.3 = getelementptr %struct.etnaviv_drm_private, ptr %7, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %19, null
  br i1 %tobool.not.3, label %for.inc.2.for.end_crit_edge, label %if.end.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  %call.3 = tail call i32 %11(ptr noundef nonnull %19, ptr noundef %m) #10
  br label %for.end

for.end:                                          ; preds = %if.end.3, %for.inc.2.for.end_crit_edge, %if.end.2.for.end_crit_edge, %if.end.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %ret.2 = phi i32 [ %call, %if.end.for.end_crit_edge ], [ %call.1, %if.end.1.for.end_crit_edge ], [ %call.2, %if.end.2.for.end_crit_edge ], [ %call.3, %if.end.3 ], [ %ret.1.2, %for.inc.2.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_debugfs(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_unlocked(ptr noundef %m, ptr nocapture noundef readnone %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call = tail call i32 %9(ptr noundef %5, ptr noundef %m) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_gem_show(ptr nocapture noundef readonly %dev, ptr noundef %m) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  tail call void @etnaviv_gem_describe_objects(ptr noundef %1, ptr noundef %m) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_mm_show(ptr nocapture noundef readonly %dev, ptr noundef %m) #3 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #10
  %0 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !112
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @__drm_puts_seq_file, ptr %0, align 4, !alias.scope !112
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m, ptr %1, align 4, !alias.scope !112
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4, !alias.scope !112
  %vma_offset_manager = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 33
  %7 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vma_offset_manager, align 4
  tail call void @_raw_read_lock(ptr noundef %8) #10
  %9 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vma_offset_manager, align 4
  %vm_addr_space_mm = getelementptr inbounds %struct.drm_vma_offset_manager, ptr %10, i32 0, i32 1
  call void @drm_mm_print(ptr noundef %vm_addr_space_mm, ptr noundef nonnull %p) #10
  %11 = ptrtoint ptr %vma_offset_manager to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vma_offset_manager, align 4
  call void @_raw_read_unlock(ptr noundef %12) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_mmu_show(ptr noundef %gpu, ptr noundef %m) #3 align 64 {
entry:
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #10
  %0 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %1 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %2 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @__drm_printfn_seq_file, ptr %p, align 4, !alias.scope !115
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @__drm_puts_seq_file, ptr %0, align 4, !alias.scope !115
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m, ptr %1, align 4, !alias.scope !115
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %2, align 4, !alias.scope !115
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i) #10
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %mmu_context1 = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 30
  %13 = ptrtoint ptr %mmu_context1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mmu_context1, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.then5.critedge, label %if.then

if.then:                                          ; preds = %dev_name.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #10, !srcloc !118
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !119

if.then.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %16 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %.not.i.i.i.i.i = icmp sgt i32 %16, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !120

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etnaviv_iommu_context_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef %.sink.i.i.i.i.i) #10
  br label %etnaviv_iommu_context_get.exit

etnaviv_iommu_context_get.exit:                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.etnaviv_iommu_context_get.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %lock7 = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock7, i32 noundef 0) #10
  %mm = getelementptr inbounds %struct.etnaviv_iommu_context, ptr %14, i32 0, i32 4
  call void @drm_mm_print(ptr noundef %mm, ptr noundef nonnull %p) #10
  call void @mutex_unlock(ptr noundef %lock7) #10
  call void @etnaviv_iommu_context_put(ptr noundef nonnull %14) #10
  br label %cleanup

if.then5.critedge:                                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then5.critedge, %etnaviv_iommu_context_get.exit
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ring_show(ptr noundef %gpu, ptr noundef %m) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.21, ptr noundef %retval.0.i) #10
  %lock = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %buffer.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10
  %size1.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 3
  %6 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size1.i, align 4
  %vaddr.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 2
  %8 = ptrtoint ptr %vaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vaddr.i, align 4
  %call.i = tail call i32 @etnaviv_cmdbuf_get_pa(ptr noundef %buffer.i) #10
  %conv.i = zext i32 %call.i to i64
  %user_size.i = getelementptr inbounds %struct.etnaviv_gpu, ptr %gpu, i32 0, i32 10, i32 4
  %10 = ptrtoint ptr %user_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %user_size.i, align 4
  %sub.i = sub i32 %7, %11
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.22, ptr noundef %9, i64 noundef %conv.i, i32 noundef %sub.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp28.not.i = icmp ult i32 %7, 4
  br i1 %cmp28.not.i, label %dev_name.exit.etnaviv_buffer_dump.exit_crit_edge, label %for.body.preheader.i

dev_name.exit.etnaviv_buffer_dump.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %etnaviv_buffer_dump.exit

for.body.preheader.i:                             ; preds = %dev_name.exit
  %div27.i = lshr i32 %7, 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end9.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.029.i = phi i32 [ %inc.i, %if.end9.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.029.i)
  %tobool.not.i6 = icmp ne i32 %i.029.i, 0
  %rem.i = and i32 %i.029.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool4.not.i = icmp eq i32 %rem.i, 0
  %or.cond.i = and i1 %tobool.not.i6, %tobool4.not.i
  br i1 %or.cond.i, label %if.then.i, label %for.body.i.if.end.i7_crit_edge

for.body.i.if.end.i7_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i7

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #10
  br label %if.end.i7

if.end.i7:                                        ; preds = %if.then.i, %for.body.i.if.end.i7_crit_edge
  br i1 %tobool4.not.i, label %if.then8.i, label %if.end.i7.if.end9.i_crit_edge

if.end.i7.if.end9.i_crit_edge:                    ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.end.i7
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i32, ptr %9, i32 %i.029.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.24, ptr noundef %add.ptr.i) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.end.i7.if.end9.i_crit_edge
  %add.ptr10.i = getelementptr i32, ptr %9, i32 %i.029.i
  %12 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr10.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.25, i32 noundef %13) #10
  %inc.i = add nuw nsw i32 %i.029.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div27.i
  br i1 %exitcond.not.i, label %if.end9.i.etnaviv_buffer_dump.exit_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end9.i.etnaviv_buffer_dump.exit_crit_edge:     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %etnaviv_buffer_dump.exit

etnaviv_buffer_dump.exit:                         ; preds = %if.end9.i.etnaviv_buffer_dump.exit_crit_edge, %dev_name.exit.etnaviv_buffer_dump.exit_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.23) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @etnaviv_gem_describe_objects(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mm_print(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_puts_seq_file(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_cmdbuf_get_pa(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_get_param(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %3, i32 0, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %param = getelementptr inbounds %struct.drm_etnaviv_param, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %value = getelementptr inbounds %struct.drm_etnaviv_param, ptr %data, i32 0, i32 2
  %call = tail call i32 @etnaviv_gpu_get_param(ptr noundef nonnull %5, i32 noundef %7, ptr noundef %value) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_new(ptr noundef %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_etnaviv_gem_new, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, -1507329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %data, align 8
  %conv = trunc i64 %3 to i32
  %handle = getelementptr inbounds %struct.drm_etnaviv_gem_new, ptr %data, i32 0, i32 2
  %call = tail call i32 @etnaviv_gem_new_handle(ptr noundef %dev, ptr noundef %file, i32 noundef %conv, i32 noundef %1, ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_info(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.drm_etnaviv_gem_info, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %3) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %offset = getelementptr inbounds %struct.drm_etnaviv_gem_info, ptr %data, i32 0, i32 2
  %call4 = tail call i32 @etnaviv_gem_mmap_offset(ptr noundef nonnull %call, ptr noundef %offset) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call4, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i.i.i ], [ %call4, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_cpu_prep(ptr nocapture noundef readnone %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %op = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_prep, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %tobool.not = icmp ult i32 %1, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 8
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %3) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %op, align 4
  %timeout = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_prep, ptr %data, i32 0, i32 2
  %call5 = tail call i32 @etnaviv_gem_cpu_prep(ptr noundef nonnull %call, i32 noundef %5, ptr noundef %timeout) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call5, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call5, %if.then10.i.i.i.i.i.i ], [ %call5, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_cpu_fini(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_etnaviv_gem_cpu_fini, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %3) #10
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %call4 = tail call i32 @etnaviv_gem_cpu_fini(ptr noundef nonnull %call) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ %call4, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i.i.i ], [ %call4, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_ioctl_gem_submit(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_wait_fence(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %timeout1 = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %data, i32 0, i32 4
  %flags = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool.not = icmp ult i32 %3, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool11.not = icmp eq i32 %3, 0
  %spec.select = select i1 %tobool11.not, ptr %timeout1, ptr null
  %fence = getelementptr inbounds %struct.drm_etnaviv_wait_fence, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %fence to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fence, align 4
  %call = tail call i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef nonnull %7, i32 noundef %9, ptr noundef %spec.select) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_userptr(ptr noundef %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %2 = add i32 %1, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %2)
  %3 = icmp ult i32 %2, -3
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %data, align 8
  %user_size = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %user_size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %user_size, align 8
  %or = or i64 %7, %5
  %and253 = and i64 %or, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and253)
  %tobool3.not = icmp eq i64 %and253, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %conv6 = trunc i64 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %5)
  %8 = icmp ult i64 %5, 4294967296
  br i1 %8, label %lor.lhs.false11, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false11:                                  ; preds = %lor.lhs.false4
  %conv13 = trunc i64 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %7)
  %9 = icmp ult i64 %7, 4294967296
  %and20 = and i64 %5, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and20)
  %tobool21.not = icmp eq i64 %and20, 0
  %or.cond54 = select i1 %9, i1 %tobool21.not, i1 false
  br i1 %or.cond54, label %if.end23, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false11
  %10 = inttoptr i32 %conv6 to ptr
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %10, i64 %7, i32 -1226833920) #16, !srcloc !124
  %asmresult = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %cmp28 = icmp eq i32 %asmresult, 0
  br i1 %cmp28, label %if.end31, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %handle = getelementptr inbounds %struct.drm_etnaviv_gem_userptr, ptr %data, i32 0, i32 3
  %call = tail call i32 @etnaviv_gem_new_userptr(ptr noundef %dev, ptr noundef %file, i32 noundef %conv6, i32 noundef %conv13, i32 noundef %1, ptr noundef %handle) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end23.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_gem_wait(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %timeout1 = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %data, i32 0, i32 4
  %flags = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %tobool.not = icmp ult i32 %3, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp ugt i32 %5, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %1, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %handle = getelementptr inbounds %struct.drm_etnaviv_gem_wait, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 4
  %call = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %9) #10
  %tobool9.not = icmp eq ptr %call, null
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then.i

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and13 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %spec.select = select i1 %tobool14.not, ptr %timeout1, ptr null
  %call17 = tail call i32 @etnaviv_gem_wait_bo(ptr noundef nonnull %7, ptr noundef nonnull %call, ptr noundef %spec.select) #10
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !122
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !120

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @drm_gem_object_free(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -6, %if.end3.cleanup_crit_edge ], [ -2, %if.end8.cleanup_crit_edge ], [ %call17, %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ %call17, %if.then10.i.i.i.i.i.i ], [ %call17, %if.then.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_pm_query_dom(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %3, i32 0, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @etnaviv_pm_query_dom(ptr noundef nonnull %5, ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @etnaviv_ioctl_pm_query_sig(ptr nocapture noundef readonly %dev, ptr noundef %data, ptr nocapture noundef readnone %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %arrayidx = getelementptr %struct.etnaviv_drm_private, ptr %3, i32 0, i32 1, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @etnaviv_pm_query_sig(ptr noundef nonnull %5, ptr noundef %data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_get_param(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_new_handle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_mmap_offset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_cpu_prep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_cpu_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_wait_fence_interruptible(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_new_userptr(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gem_wait_bo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_query_dom(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_pm_query_sig(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @etnaviv_gpu_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !34, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_etnaviv__325_713_etnaviv_init6, !1, !"__initcall__kmod_etnaviv__325_713_etnaviv_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 713, i32 1}
!2 = !{ptr @__exitcall_etnaviv_exit, !3, !"__exitcall_etnaviv_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 721, i32 1}
!4 = !{ptr @__UNIQUE_ID_author326, !5, !"__UNIQUE_ID_author326", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 723, i32 1}
!6 = !{ptr @__UNIQUE_ID_author327, !7, !"__UNIQUE_ID_author327", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 724, i32 1}
!8 = !{ptr @__UNIQUE_ID_author328, !9, !"__UNIQUE_ID_author328", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 725, i32 1}
!10 = !{ptr @__UNIQUE_ID_description329, !11, !"__UNIQUE_ID_description329", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 726, i32 1}
!12 = !{ptr @__UNIQUE_ID_file330, !13, !"__UNIQUE_ID_file330", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 727, i32 1}
!14 = !{ptr @__UNIQUE_ID_license331, !13, !"__UNIQUE_ID_license331", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_alias332, !16, !"__UNIQUE_ID_alias332", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 728, i32 1}
!17 = !{ptr @etnaviv_drm, !18, !"etnaviv_drm", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 660, i32 32}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 682, i32 2}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 686, i32 32}
!23 = !{ptr @etnaviv_platform_driver, !24, !"etnaviv_platform_driver", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 652, i32 31}
!25 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 630, i32 3}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @etnaviv_pdev_probe.__UNIQUE_ID_ddebug324, !26, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!30 = !{ptr @etnaviv_master_ops, !31, !"etnaviv_master_ops", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 572, i32 42}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 509, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @etnaviv_bind._entry, !33, !"_entry", i1 false, i1 false}
!38 = !{ptr @etnaviv_bind._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @etnaviv_bind.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 517, i32 2}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 524, i32 3}
!44 = !{ptr @etnaviv_bind._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @etnaviv_bind._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 488, i32 24}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 489, i32 24}
!50 = !{ptr @etnaviv_drm_driver, !51, !"etnaviv_drm_driver", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 473, i32 32}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 227, i32 4}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 228, i32 4}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 229, i32 5}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 230, i32 4}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 231, i32 4}
!62 = !{ptr @etnaviv_debugfs_list, !63, !"etnaviv_debugfs_list", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 226, i32 29}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 135, i32 16}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 183, i32 16}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 167, i32 16}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 173, i32 16}
!72 = !{ptr @.str.24, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 175, i32 18}
!74 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 176, i32 17}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 458, i32 2}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 459, i32 2}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 460, i32 2}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 461, i32 2}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 462, i32 2}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 463, i32 2}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 464, i32 2}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 465, i32 2}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 466, i32 2}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 467, i32 2}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 468, i32 2}
!98 = !{ptr @etnaviv_ioctls, !99, !"etnaviv_ioctls", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 455, i32 36}
!100 = !{ptr @fops, !101, !"fops", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/etnaviv/etnaviv_drv.c", i32 471, i32 1}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 2148341320, i64 2148341325, i64 2148341338, i64 2148341382, i64 2148341416, i64 2148341437}
!112 = !{!113}
!113 = distinct !{!113, !114, !"drm_seq_file_printer: %agg.result"}
!114 = distinct !{!114, !"drm_seq_file_printer"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"drm_seq_file_printer: %agg.result"}
!117 = distinct !{!117, !"drm_seq_file_printer"}
!118 = !{i64 2148529457, i64 2148529489, i64 2148529518, i64 2148529552, i64 2148529583, i64 2148529606}
!119 = !{!"branch_weights", i32 1, i32 2000}
!120 = !{!"branch_weights", i32 2000, i32 1}
!121 = !{i64 2148617458}
!122 = !{i64 2148531922, i64 2148531954, i64 2148531983, i64 2148532017, i64 2148532048, i64 2148532071}
!123 = !{i64 2149639511}
!124 = !{i64 2156914839, i64 2156914864}
