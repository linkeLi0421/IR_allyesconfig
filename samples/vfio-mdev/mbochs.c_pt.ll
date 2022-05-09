; ModuleID = '/llk/IR_all_yes/samples/vfio-mdev/mbochs.c_pt.bc'
source_filename = "../samples/vfio-mdev/mbochs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdev_driver = type { ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mdev_parent_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mbochs_type = type { ptr, i32, i32, i32 }
%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.66 }
%union.anon.66 = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dma_buf_export_info = type { ptr, ptr, ptr, i32, i32, ptr, ptr }
%struct.dma_buf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mdev_type_attribute = type { %struct.attribute, ptr, ptr }
%struct.mdev_state = type { %struct.vfio_device, ptr, [3 x i64], i32, %struct.mutex, ptr, ptr, [11 x i16], i64, ptr, i32, %struct.vfio_region_gfx_edid, [1024 x i8], %struct.list_head, i32, i32 }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.vfio_region_gfx_edid = type { i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_device_info = type { i32, i32, i32, i32, i32 }
%struct.vfio_region_info_ext = type { %struct.vfio_region_info, %struct.vfio_region_info_cap_type }
%struct.vfio_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.vfio_region_info_cap_type = type { %struct.vfio_info_cap_header, i32, i32 }
%struct.vfio_info_cap_header = type { i16, i16, i32 }
%struct.vfio_irq_info = type { i32, i32, i32, i32 }
%struct.vfio_device_gfx_plane_info = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.79 }
%union.anon.79 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.mbochs_mode = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.mbochs_dmabuf = type { %struct.mbochs_mode, i32, ptr, i32, ptr, ptr, %struct.list_head, i8 }
%struct.dma_buf = type { i32, ptr, %struct.list_head, ptr, %struct.mutex, i32, %struct.dma_buf_map, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, ptr, ptr, %struct.wait_queue_head, %struct.dma_buf_poll_cb_t, %struct.dma_buf_poll_cb_t, ptr }
%struct.dma_buf_map = type { %union.anon.74, i8 }
%union.anon.74 = type { ptr }
%struct.dma_buf_poll_cb_t = type { %struct.dma_fence_cb, ptr, i32 }
%struct.dma_fence_cb = type { %struct.list_head, ptr }
%struct.dma_buf_attachment = type { ptr, ptr, %struct.list_head, ptr, i32, i8, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.vm_fault = type { %struct.anon.13, i32, ptr, ptr, %union.anon.14, ptr, ptr, ptr, ptr, ptr }
%union.anon.14 = type { i32 }

@__UNIQUE_ID_license269 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__param_str_count = internal constant [6 x i8] c"count\00", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_mbytes = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__param_count = internal constant %struct.kernel_param { ptr @__param_str_count, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @max_mbytes } }, section "__param", align 4
@__UNIQUE_ID_counttype270 = internal constant [19 x i8] c"parmtype=count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mem271 = internal constant [47 x i8] c"parm=mem:megabytes available to mbochs devices\00", section ".modinfo", align 1
@__UNIQUE_ID_import_ns285 = internal constant [18 x i8] c"import_ns=DMA_BUF\00", section ".modinfo", align 1
@mbochs_avail_mbytes = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@mbochs_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mbochs\00", [25 x i8] zeroinitializer }, align 32
@mbochs_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Error: failed to register mbochs_dev, err: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mbochs_dev_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"samples/vfio-mdev/mbochs.c\00", [37 x i8] zeroinitializer }, align 32
@mbochs_dev_init._entry_ptr = internal global ptr @mbochs_dev_init._entry, section ".printk_index", align 4
@mbochs_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@vd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mbochs_dev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: major %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mbochs_dev_init._entry_ptr.6 = internal global ptr @mbochs_dev_init._entry.4, section ".printk_index", align 4
@mbochs_driver = internal global { %struct.mdev_driver, [44 x i8] } { %struct.mdev_driver { ptr @mbochs_probe, ptr @mbochs_remove, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr @.str, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdev_dev_groups, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mbochs_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mbochs_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mbochs_dev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Error: failed to register mbochs_dev class\0A\00", [50 x i8] zeroinitializer }, align 32
@mbochs_dev_init._entry_ptr.9 = internal global ptr @mbochs_dev_init._entry.7, section ".printk_index", align 4
@mbochs_dev = internal global { %struct.device, [224 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mdev_fops = internal constant { %struct.mdev_parent_ops, [40 x i8] } { %struct.mdev_parent_ops { ptr @__this_module, ptr @mbochs_driver, ptr null, ptr null, ptr @mdev_type_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mdev_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mdev_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mbochs_types = internal constant { [3 x %struct.mbochs_type], [48 x i8] } { [3 x %struct.mbochs_type] [%struct.mbochs_type { ptr @.str.16, i32 4, i32 800, i32 600 }, %struct.mbochs_type { ptr @.str.17, i32 16, i32 1920, i32 1440 }, %struct.mbochs_type { ptr @.str.18, i32 64, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@mbochs_dev_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr null, ptr null, ptr @mbochs_close_device, ptr @mbochs_read, ptr @mbochs_write, ptr @mbochs_ioctl, ptr @mbochs_mmap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mbochs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 541, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: %s, %d MB, %ld pages\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mbochs_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mbochs_probe._entry_ptr = internal global ptr @mbochs_probe._entry, section ".printk_index", align 4
@mbochs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mdev_state->ops_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mbochs-small\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mbochs-medium\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mbochs-large\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mbochs_put_pages.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mbochs_put_pages\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %d pages released\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@mdev_access.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdev_access\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s @0x%llx (unhandled)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WR\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RD\00", [29 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 315, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"BAR #%d @ 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_pci_cfg_write\00", [43 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry_ptr = internal global ptr @handle_pci_cfg_write._entry, section ".printk_index", align 4
@handle_mmio_write.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 85, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"handle_mmio_write\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: vbe write %d = %d (%s)\0A\00", [36 x i8] zeroinitializer }, align 32
@handle_mmio_write.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.30, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: @0x%03x, count %d (unhandled)\0A\00", [61 x i8] zeroinitializer }, align 32
@vbe_name_list = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"(invalid)\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xres\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"yres\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bpp\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bank\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"virt-width\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virt-height\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x-offset\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"y-offset\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"video-mem\00", [22 x i8] zeroinitializer }, align 32
@handle_mmio_read.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"handle_mmio_read\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: vbe read %d = %d (%s)\0A\00", [37 x i8] zeroinitializer }, align 32
@handle_mmio_read.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.30, i8 0, i8 96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mbochs_query_gfx_plane.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 1, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mbochs_query_gfx_plane\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: primary: %d => %d\0A\00", [41 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.mbochs_check_framebuffer = private unnamed_addr constant [25 x i8] c"mbochs_check_framebuffer\00", align 1
@mbochs_check_framebuffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @__func__.mbochs_check_framebuffer, ptr @.str.3, i32 259, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: bpp %d not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._entry_ptr = internal global ptr @mbochs_check_framebuffer._entry, section ".printk_index", align 4
@mbochs_check_framebuffer._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.mbochs_check_framebuffer, ptr @.str.3, i32 275, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid resolution %dx%d\0A\00", [34 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._entry_ptr.58 = internal global ptr @mbochs_check_framebuffer._entry.56, section ".printk_index", align 4
@mbochs_check_framebuffer._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.mbochs_check_framebuffer, ptr @.str.3, i32 280, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: framebuffer memory overflow\0A\00", [63 x i8] zeroinitializer }, align 32
@mbochs_check_framebuffer._entry_ptr.62 = internal global ptr @mbochs_check_framebuffer._entry.60, section ".printk_index", align 4
@__func__.mbochs_dmabuf_alloc = private unnamed_addr constant [20 x i8] c"mbochs_dmabuf_alloc\00", align 1
@mbochs_print_dmabuf.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -48, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mbochs_print_dmabuf\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"%s/%d: %c%c%c%c, %dx%d, stride %d, off 0x%llx, size 0x%llx, pages %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@__const.mbochs_dmabuf_export.exp_info = private unnamed_addr constant %struct.dma_buf_export_info { ptr @.str, ptr @__this_module, ptr null, i32 0, i32 0, ptr null, ptr null }, align 4
@mbochs_dmabuf_export._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.mbochs_dmabuf_export = private unnamed_addr constant [21 x i8] c"mbochs_dmabuf_export\00", align 1
@mbochs_dmabuf_export._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @__func__.mbochs_dmabuf_export, ptr @.str.3, i32 989, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: framebuffer not page-aligned\0A\00", [62 x i8] zeroinitializer }, align 32
@mbochs_dmabuf_export._entry_ptr = internal global ptr @mbochs_dmabuf_export._entry, section ".printk_index", align 4
@mbochs_dmabuf_ops = internal global { %struct.dma_buf_ops, [44 x i8] } { %struct.dma_buf_ops { i8 0, ptr null, ptr null, ptr null, ptr null, ptr @mbochs_map_dmabuf, ptr @mbochs_unmap_dmabuf, ptr @mbochs_release_dmabuf, ptr null, ptr null, ptr @mbochs_mmap_dmabuf, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mbochs_dmabuf_export._rs.66 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.53, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@mbochs_dmabuf_export._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @__func__.mbochs_dmabuf_export, ptr @.str.3, i32 1000, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: dma_buf_export failed: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@mbochs_dmabuf_export._entry_ptr.69 = internal global ptr @mbochs_dmabuf_export._entry.67, section ".printk_index", align 4
@mbochs_dmabuf_export.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.mbochs_dmabuf_export, ptr @.str.3, ptr @.str.70, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %d\0A\00", [24 x i8] zeroinitializer }, align 32
@mbochs_map_dmabuf.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.3, ptr @.str.70, i8 0, i8 -45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mbochs_map_dmabuf\00", [46 x i8] zeroinitializer }, align 32
@mbochs_unmap_dmabuf.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.3, ptr @.str.70, i8 0, i8 -38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mbochs_unmap_dmabuf\00", [44 x i8] zeroinitializer }, align 32
@mbochs_release_dmabuf.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.70, i8 0, i8 -35, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mbochs_release_dmabuf\00", [42 x i8] zeroinitializer }, align 32
@mbochs_mmap_dmabuf.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.70, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbochs_mmap_dmabuf\00", [45 x i8] zeroinitializer }, align 32
@mbochs_dmabuf_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbochs_dmabuf_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mbochs_region_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } { %struct.vm_operations_struct { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbochs_region_vm_fault, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mdev_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.75, ptr null, ptr null, ptr @mdev_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@mdev_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_memory, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_memory = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @memory_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"memory\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d MB\0A\00", [25 x i8] zeroinitializer }, align 32
@mdev_type_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mdev_type_group1, ptr @mdev_type_group2, ptr @mdev_type_group3, ptr null], [16 x i8] zeroinitializer }, align 32
@mdev_type_group1 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.78, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_type_group2 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.87, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_type_group3 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.88, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"small\00", [26 x i8] zeroinitializer }, align 32
@mdev_types_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @mdev_type_attr_name, ptr @mdev_type_attr_description, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr null], [44 x i8] zeroinitializer }, align 32
@mdev_type_attr_name = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_description = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_device_api = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_api_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_available_instances = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_instances_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"virtual display, %d MB video memory\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_api\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfio-pci\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_instances\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"large\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 15211, i64 15212, i64 15213, i64 15214, i64 15215, i64 15218, i64 15219]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 7, i64 9]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 24]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 8, i64 20]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"max_mbytes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 94, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"mbochs_avail_mbytes\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 132, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"mbochs_devt\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 128, i32 15 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1438, i32 60 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1440, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"mbochs_cdev\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 130, i32 20 }
@___asan_gen_.121 = private unnamed_addr constant [8 x i8] c"vd_fops\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1423, i32 37 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1445, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"mbochs_driver\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1406, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1451, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"mbochs_class\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 129, i32 22 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1453, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"mbochs_dev\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 131, i32 22 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1459, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant [10 x i8] c"mdev_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1417, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant [16 x i8] c"mdev_dev_groups\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1323, i32 38 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"mbochs_types\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 108, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"mbochs_dev_ops\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1398, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 540, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 543, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 110, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 115, i32 11 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 120, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 748, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 717, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 481, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 314, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 342, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 349, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"vbe_name_list\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 184, i32 20 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 202, i32 9 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 185, i32 39 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 186, i32 39 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 187, i32 39 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 188, i32 39 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 189, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 190, i32 39 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 191, i32 39 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 192, i32 39 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 193, i32 39 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 194, i32 39 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 195, i32 39 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 379, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.278, i32 1160, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.281, i32 44, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 174, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1130, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 258, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 274, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 279, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 828, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 988, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [18 x i8] c"mbochs_dmabuf_ops\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 899, i32 27 }
@___asan_gen_.340 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 999, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1005, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 845, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 873, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 887, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 812, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"mbochs_dmabuf_vm_ops\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 803, i32 42 }
@___asan_gen_.367 = private unnamed_addr constant [21 x i8] c"mbochs_region_vm_ops\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 767, i32 42 }
@___asan_gen_.370 = private unnamed_addr constant [15 x i8] c"mdev_dev_group\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1318, i32 37 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1319, i32 11 }
@___asan_gen_.376 = private unnamed_addr constant [15 x i8] c"mdev_dev_attrs\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1313, i32 26 }
@___asan_gen_.379 = private unnamed_addr constant [16 x i8] c"dev_attr_memory\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1311, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1309, i32 22 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"mdev_type_groups\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1391, i32 32 }
@___asan_gen_.391 = private unnamed_addr constant [17 x i8] c"mdev_type_group1\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1376, i32 31 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"mdev_type_group2\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1381, i32 31 }
@___asan_gen_.397 = private unnamed_addr constant [17 x i8] c"mdev_type_group3\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1386, i32 31 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1377, i32 11 }
@___asan_gen_.403 = private unnamed_addr constant [17 x i8] c"mdev_types_attrs\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1368, i32 26 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c"mdev_type_attr_name\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [27 x i8] c"mdev_type_attr_description\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [26 x i8] c"mdev_type_attr_device_api\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [35 x i8] c"mdev_type_attr_available_instances\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1336, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1334, i32 22 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1347, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1344, i32 22 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1366, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1364, i32 30 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1359, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1357, i32 22 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1382, i32 11 }
@___asan_gen_.445 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.446 = private constant [30 x i8] c"../samples/vfio-mdev/mbochs.c\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.446, i32 1387, i32 11 }
@llvm.compiler.used = appending global [133 x ptr] [ptr @__UNIQUE_ID_counttype270, ptr @__UNIQUE_ID_import_ns285, ptr @__UNIQUE_ID_license269, ptr @__UNIQUE_ID_mem271, ptr @__param_count, ptr @handle_pci_cfg_write._entry, ptr @handle_pci_cfg_write._entry_ptr, ptr @mbochs_check_framebuffer._entry, ptr @mbochs_check_framebuffer._entry.56, ptr @mbochs_check_framebuffer._entry.60, ptr @mbochs_check_framebuffer._entry_ptr, ptr @mbochs_check_framebuffer._entry_ptr.58, ptr @mbochs_check_framebuffer._entry_ptr.62, ptr @mbochs_dev_init._entry, ptr @mbochs_dev_init._entry.4, ptr @mbochs_dev_init._entry.7, ptr @mbochs_dev_init._entry_ptr, ptr @mbochs_dev_init._entry_ptr.6, ptr @mbochs_dev_init._entry_ptr.9, ptr @mbochs_dmabuf_export._entry, ptr @mbochs_dmabuf_export._entry.67, ptr @mbochs_dmabuf_export._entry_ptr, ptr @mbochs_dmabuf_export._entry_ptr.69, ptr @mbochs_probe._entry, ptr @mbochs_probe._entry_ptr, ptr @max_mbytes, ptr @mbochs_avail_mbytes, ptr @mbochs_devt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mbochs_cdev, ptr @vd_fops, ptr @.str.5, ptr @mbochs_driver, ptr @mbochs_dev_init.__key, ptr @mbochs_class, ptr @.str.8, ptr @mbochs_dev, ptr @.str.10, ptr @mdev_fops, ptr @mdev_dev_groups, ptr @mbochs_types, ptr @mbochs_dev_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mbochs_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @vbe_name_list, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @mbochs_check_framebuffer._rs, ptr @.str.53, ptr @.str.54, ptr @mbochs_check_framebuffer._rs.55, ptr @.str.57, ptr @mbochs_check_framebuffer._rs.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @mbochs_dmabuf_export._rs, ptr @.str.65, ptr @mbochs_dmabuf_ops, ptr @mbochs_dmabuf_export._rs.66, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @mbochs_dmabuf_vm_ops, ptr @mbochs_region_vm_ops, ptr @mdev_dev_group, ptr @.str.75, ptr @mdev_dev_attrs, ptr @dev_attr_memory, ptr @.str.76, ptr @.str.77, ptr @mdev_type_groups, ptr @mdev_type_group1, ptr @mdev_type_group2, ptr @mdev_type_group3, ptr @.str.78, ptr @mdev_types_attrs, ptr @mdev_type_attr_name, ptr @mdev_type_attr_description, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [118 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_mbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_avail_mbytes to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_fops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_types to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dev_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pci_cfg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbe_name_list to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_check_framebuffer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_export._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_export._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_export._rs.66 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_export._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_dmabuf_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbochs_region_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_memory to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_types_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_device_api to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_available_instances to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_mbytes, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  store volatile i32 %0, ptr @mbochs_avail_mbytes, align 4
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mbochs_devt, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cdev_init(ptr noundef nonnull @mbochs_cdev, ptr noundef nonnull @vd_fops) #16
  %1 = load i32, ptr @mbochs_devt, align 4
  %call2 = tail call i32 @cdev_add(ptr noundef nonnull @mbochs_cdev, i32 noundef %1, i32 noundef 1048576) #16
  %2 = load i32, ptr @mbochs_devt, align 4
  %shr = lshr i32 %2, 20
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %shr) #19
  %call8 = tail call i32 @mdev_register_driver(ptr noundef nonnull @mbochs_driver) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.err_cdev_crit_edge

if.end.err_cdev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_cdev

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str, ptr noundef nonnull @mbochs_dev_init.__key) #16
  store ptr %call12, ptr @mbochs_class, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #19
  %3 = load ptr, ptr @mbochs_class, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %err_driver

if.end21:                                         ; preds = %if.end10
  store ptr %call12, ptr getelementptr inbounds (%struct.device, ptr @mbochs_dev, i32 0, i32 33), align 4
  store ptr @mbochs_device_release, ptr getelementptr inbounds (%struct.device, ptr @mbochs_dev, i32 0, i32 35), align 4
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @mbochs_dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str) #16
  %call23 = tail call i32 @device_register(ptr noundef nonnull @mbochs_dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.err_class_crit_edge

if.end21.err_class_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_class

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @mdev_register_device(ptr noundef nonnull @mbochs_dev, ptr noundef nonnull @mdev_fops) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %err_device

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err_device:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @device_unregister(ptr noundef nonnull @mbochs_dev) #16
  br label %err_class

err_class:                                        ; preds = %err_device, %if.end21.err_class_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end21.err_class_crit_edge ], [ %call27, %err_device ]
  %5 = load ptr, ptr @mbochs_class, align 4
  tail call void @class_destroy(ptr noundef %5) #16
  br label %err_driver

err_driver:                                       ; preds = %err_class, %do.end17
  %ret.1 = phi i32 [ %4, %do.end17 ], [ %ret.0, %err_class ]
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mbochs_driver) #16
  br label %err_cdev

err_cdev:                                         ; preds = %err_driver, %if.end.err_cdev_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end.err_cdev_crit_edge ], [ %ret.1, %err_driver ]
  tail call void @cdev_del(ptr noundef nonnull @mbochs_cdev) #16
  %6 = load i32, ptr @mbochs_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %6, i32 noundef 1048576) #16
  br label %cleanup

cleanup:                                          ; preds = %err_cdev, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %err_cdev ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  store ptr null, ptr getelementptr inbounds (%struct.device, ptr @mbochs_dev, i32 0, i32 5), align 8
  tail call void @mdev_unregister_device(ptr noundef nonnull @mbochs_dev) #16
  tail call void @device_unregister(ptr noundef nonnull @mbochs_dev) #16
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mbochs_driver) #16
  tail call void @cdev_del(ptr noundef nonnull @mbochs_cdev) #16
  %0 = load i32, ptr @mbochs_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #16
  %1 = load ptr, ptr @mbochs_class, align 4
  tail call void @class_destroy(ptr noundef %1) #16
  store ptr null, ptr @mbochs_class, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_register_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mbochs_device_release(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_probe(ptr noundef %mdev) #5 align 64 {
entry:
  %avail_mbytes = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_mbytes) #16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  %0 = load volatile i32, ptr @mbochs_avail_mbytes, align 4
  %1 = ptrtoint ptr %avail_mbytes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %avail_mbytes, align 4
  %call1 = tail call i32 @mdev_get_type_group_id(ptr noundef %mdev) #16
  %arrayidx = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call1
  %mbytes = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call1, i32 1
  %2 = ptrtoint ptr %mbytes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mbytes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %3)
  %cmp108 = icmp ult i32 %0, %3
  br i1 %cmp108, label %entry.cleanup_crit_edge, label %entry.do.cond_crit_edge

entry.do.cond_crit_edge:                          ; preds = %entry
  br label %do.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond:                                          ; preds = %atomic_try_cmpxchg.exit.do.cond_crit_edge, %entry.do.cond_crit_edge
  %4 = phi i32 [ %asmresult3.i.i.i.i, %atomic_try_cmpxchg.exit.do.cond_crit_edge ], [ %0, %entry.do.cond_crit_edge ]
  %sub = sub i32 %4, %3
  %call.i.i93 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  %call.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %avail_mbytes, i32 noundef 4) #16
  %5 = ptrtoint ptr %avail_mbytes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %avail_mbytes, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !255
  call void @llvm.prefetch.p0(ptr nonnull @mbochs_avail_mbytes, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.cond
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mbochs_avail_mbytes, ptr nonnull @mbochs_avail_mbytes, i32 %6, i32 %sub, ptr nonnull elementtype(i32) @mbochs_avail_mbytes) #16, !srcloc !256
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %7, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !257
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult3.i.i.i.i, i32 %6)
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %6
  br i1 %cmp.not.i.i, label %do.end, label %atomic_try_cmpxchg.exit, !prof !258

atomic_try_cmpxchg.exit:                          ; preds = %arch_atomic_cmpxchg.exit.i.i
  %8 = ptrtoint ptr %avail_mbytes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %asmresult3.i.i.i.i, ptr %avail_mbytes, align 4
  %cmp = icmp ult i32 %asmresult3.i.i.i.i, %3
  br i1 %cmp, label %atomic_try_cmpxchg.exit.cleanup_crit_edge, label %atomic_try_cmpxchg.exit.do.cond_crit_edge

atomic_try_cmpxchg.exit.do.cond_crit_edge:        ; preds = %atomic_try_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.cond

atomic_try_cmpxchg.exit.cleanup_crit_edge:        ; preds = %atomic_try_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 1336) #20
  %cmp6 = icmp eq ptr %call7.i.i, null
  br i1 %cmp6, label %do.end.err_avail_crit_edge, label %if.end8

do.end.err_avail_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_avail

if.end8:                                          ; preds = %do.end
  call void @vfio_init_group_dev(ptr noundef nonnull %call7.i.i, ptr noundef %mdev, ptr noundef nonnull @mbochs_dev_ops) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i97 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 255) #20
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %vconfig to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i97, ptr %vconfig, align 8
  %cmp12 = icmp eq ptr %call7.i.i97, null
  br i1 %cmp12, label %if.end8.err_mem_crit_edge, label %if.end14

if.end8.err_mem_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mem

if.end14:                                         ; preds = %if.end8
  %mul16 = shl i32 %3, 20
  %conv = zext i32 %mul16 to i64
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %memsize to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %memsize, align 8
  %shr = lshr exact i32 %mul16, 12
  %pagecount = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %pagecount to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %pagecount, align 4
  %14 = lshr exact i32 %mul16, 10
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #21
  %pages = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i, ptr %pages, align 8
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end14.err_mem_crit_edge, label %do.end26

if.end14.err_mem_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mem

do.end26:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pagecount, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %17, i32 noundef %3, i32 noundef %19) #19
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %ops_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mbochs_probe.__key) #16
  %mdev32 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %mdev32 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mdev, ptr %mdev32, align 8
  %dmabufs = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %dmabufs to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %dmabufs, ptr %dmabufs, align 8
  %prev.i = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dmabufs, ptr %prev.i, align 4
  %next_id = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %next_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %next_id, align 4
  %type33 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %type33 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %arrayidx, ptr %type33, align 4
  %max_x = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call1, i32 2
  %25 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_x, align 4
  %edid_regs = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11
  %max_xres = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11, i32 3
  %27 = ptrtoint ptr %max_xres to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %max_xres, align 4
  %max_y = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call1, i32 3
  %28 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_y, align 4
  %max_yres = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %max_yres to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %max_yres, align 8
  %31 = ptrtoint ptr %edid_regs to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2048, ptr %edid_regs, align 8
  %edid_max_size = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %edid_max_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1024, ptr %edid_max_size, align 4
  call fastcc void @mbochs_create_config_space(ptr noundef nonnull %call7.i.i)
  %33 = ptrtoint ptr %memsize to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %memsize, align 8
  %uglygep.i = getelementptr i8, ptr %call7.i.i, i32 232
  %35 = getelementptr i8, ptr %call7.i.i, i32 234
  %36 = call ptr @memset(ptr %35, i32 0, i32 18)
  %div1.i = lshr i64 %34, 16
  %37 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 -20283, ptr %uglygep.i, align 8
  %conv4.i = trunc i64 %div1.i to i16
  %arrayidx6.i = getelementptr %struct.mdev_state, ptr %call7.i.i, i32 0, i32 7, i32 10
  %38 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv4.i, ptr %arrayidx6.i, align 4
  %call39 = call i32 @vfio_register_emulated_iommu_dev(ptr noundef nonnull %call7.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %do.end26.err_mem_crit_edge

do.end26.err_mem_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_mem

if.end42:                                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #18
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %39 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

err_mem:                                          ; preds = %do.end26.err_mem_crit_edge, %if.end14.err_mem_crit_edge, %if.end8.err_mem_crit_edge
  %ret.0 = phi i32 [ -12, %if.end8.err_mem_crit_edge ], [ %call39, %do.end26.err_mem_crit_edge ], [ -12, %if.end14.err_mem_crit_edge ]
  call void @vfio_uninit_group_dev(ptr noundef nonnull %call7.i.i) #16
  %pages45 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 9
  %40 = ptrtoint ptr %pages45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pages45, align 8
  call void @kfree(ptr noundef %41) #16
  %42 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vconfig, align 8
  call void @kfree(ptr noundef %43) #16
  call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %err_avail

err_avail:                                        ; preds = %err_mem, %do.end.err_avail_crit_edge
  %ret.1 = phi i32 [ -12, %do.end.err_avail_crit_edge ], [ %ret.0, %err_mem ]
  %call.i.i94 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr nonnull @mbochs_avail_mbytes, i32 1, i32 3, i32 1) #16
  %44 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mbochs_avail_mbytes, ptr nonnull @mbochs_avail_mbytes, i32 %3, ptr nonnull elementtype(i32) @mbochs_avail_mbytes) #16, !srcloc !259
  br label %cleanup

cleanup:                                          ; preds = %err_avail, %if.end42, %atomic_try_cmpxchg.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_avail ], [ 0, %if.end42 ], [ -28, %entry.cleanup_crit_edge ], [ -28, %atomic_try_cmpxchg.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_mbytes) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbochs_remove(ptr nocapture noundef readonly %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @vfio_unregister_group_dev(ptr noundef %1) #16
  tail call void @vfio_uninit_group_dev(ptr noundef %1) #16
  %type = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %mbytes = getelementptr inbounds %struct.mbochs_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbytes, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull @mbochs_avail_mbytes, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mbochs_avail_mbytes, ptr nonnull @mbochs_avail_mbytes, i32 %5, ptr nonnull elementtype(i32) @mbochs_avail_mbytes) #16, !srcloc !259
  %pages = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pages, align 8
  tail call void @kfree(ptr noundef %8) #16
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vconfig, align 8
  tail call void @kfree(ptr noundef %10) #16
  tail call void @kfree(ptr noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_get_type_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_init_group_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mbochs_create_config_space(ptr nocapture noundef %mdev_state) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 4660, ptr %1, align 2
  %3 = load ptr, ptr %vconfig, align 8
  %arrayidx2 = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 4369, ptr %arrayidx2, align 2
  %5 = load ptr, ptr %vconfig, align 8
  %arrayidx4 = getelementptr i8, ptr %5, i32 44
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6900, ptr %arrayidx4, align 2
  %7 = load ptr, ptr %vconfig, align 8
  %arrayidx6 = getelementptr i8, ptr %7, i32 46
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4352, ptr %arrayidx6, align 2
  %9 = load ptr, ptr %vconfig, align 8
  %arrayidx8 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %arrayidx8, align 2
  %11 = load ptr, ptr %vconfig, align 8
  %arrayidx10 = getelementptr i8, ptr %11, i32 10
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 896, ptr %arrayidx10, align 2
  %13 = load ptr, ptr %vconfig, align 8
  %arrayidx12 = getelementptr i8, ptr %13, i32 8
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx12, align 1
  %15 = load ptr, ptr %vconfig, align 8
  %arrayidx14 = getelementptr i8, ptr %15, i32 16
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %arrayidx14, align 4
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 8
  %17 = ptrtoint ptr %memsize to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %memsize, align 8
  %add = sub i64 0, %18
  %bar_mask = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %19 = ptrtoint ptr %bar_mask to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %add, ptr %bar_mask, align 8
  %20 = load ptr, ptr %vconfig, align 8
  %arrayidx17 = getelementptr i8, ptr %20, i32 24
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 4294963200, ptr %arrayidx19, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_emulated_iommu_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_uninit_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbochs_close_device(ptr noundef %vdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #16
  %dmabufs = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 13
  %0 = ptrtoint ptr %dmabufs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmabufs, align 8
  %cmp.not32 = icmp eq ptr %1, %dmabufs
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn36, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dmabuf.035 = getelementptr i8, ptr %.pn.in33, i32 -60
  %2 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn36 = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #16
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %buf = getelementptr i8, ptr %.pn.in33, i32 -8
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  %unlinked = getelementptr i8, ptr %.pn.in33, i32 8
  %13 = ptrtoint ptr %unlinked to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %unlinked, align 4
  br label %for.inc

if.else:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %dmabuf.035) #16
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %cmp.not = icmp eq ptr %.pn36, %dmabufs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @mbochs_put_pages(ptr noundef %vdev)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_read(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #5 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not141 = icmp eq i32 %count, 0
  br i1 %tobool.not141, label %entry.cleanup45_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

while.body:                                       ; preds = %cleanup42.while.body_crit_edge, %entry.while.body_crit_edge
  %done.0148 = phi i32 [ %add, %cleanup42.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %buf.addr.0146 = phi ptr [ %add.ptr41, %cleanup42.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %count.addr.0142 = phi i32 [ %sub, %cleanup42.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0142)
  %cmp = icmp ugt i32 %count.addr.0142, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %2 = and i64 %1, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.land.lhs.true9_crit_edge

land.lhs.true.land.lhs.true9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !260
  %call = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val, i32 noundef 4, i64 noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %cleanup.thread, label %if.end59.i.i

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  br label %cleanup45

if.end59.i.i:                                     ; preds = %if.then
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.end59.i.i.cleanup.thread110_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup.thread110_crit_edge:         ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread110

if.end.i.i:                                       ; preds = %if.end59.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 4, i32 -1226833920) #22, !srcloc !261
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %cleanup, label %if.end.i.i.cleanup.thread110_crit_edge

if.end.i.i.cleanup.thread110_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup.thread110

cleanup.thread110:                                ; preds = %if.end.i.i.cleanup.thread110_crit_edge, %if.end59.i.i.cleanup.thread110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val, i32 noundef 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  br i1 %tobool5.not, label %cleanup.cleanup42_crit_edge, label %cleanup.cleanup45_crit_edge

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0142)
  %cmp8 = icmp ugt i32 %count.addr.0142, 1
  br i1 %cmp8, label %if.else.land.lhs.true9_crit_edge, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else25

if.else.land.lhs.true9_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else.land.lhs.true9_crit_edge, %land.lhs.true.land.lhs.true9_crit_edge
  %5 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ppos, align 8
  %7 = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool11.not = icmp eq i64 %7, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.else25_crit_edge

land.lhs.true9.if.else25_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #16
  %8 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val13, align 2, !annotation !260
  %call14 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val13, i32 noundef 2, i64 noundef %6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup22.thread, label %if.end59.i.i84

cleanup22.thread:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #16
  br label %cleanup45

if.end59.i.i84:                                   ; preds = %if.then12
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i85, label %if.end59.i.i84.cleanup22.thread119_crit_edge, label %if.end.i.i88

if.end59.i.i84.cleanup22.thread119_crit_edge:     ; preds = %if.end59.i.i84
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup22.thread119

if.end.i.i88:                                     ; preds = %if.end59.i.i84
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 2, i32 -1226833920) #22, !srcloc !261
  %asmresult.i.i86 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %cleanup22, label %if.end.i.i88.cleanup22.thread119_crit_edge

if.end.i.i88.cleanup22.thread119_crit_edge:       ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup22.thread119

cleanup22.thread119:                              ; preds = %if.end.i.i88.cleanup22.thread119_crit_edge, %if.end59.i.i84.cleanup22.thread119_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #16
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val13, i32 noundef 2) #16
  %call.i12.i.i90 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val13, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i90)
  %tobool19.not = icmp eq i32 %call.i12.i.i90, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #16
  br i1 %tobool19.not, label %cleanup22.cleanup42_crit_edge, label %cleanup22.cleanup45_crit_edge

cleanup22.cleanup45_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #16
  %10 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val26, align 1, !annotation !260
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %call27 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val26, i32 noundef 1, i64 noundef %12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %cleanup35.thread, label %if.end59.i.i97

cleanup35.thread:                                 ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #16
  br label %cleanup45

if.end59.i.i97:                                   ; preds = %if.else25
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i98 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i98, label %if.end59.i.i97.cleanup35.thread127_crit_edge, label %if.end.i.i101

if.end59.i.i97.cleanup35.thread127_crit_edge:     ; preds = %if.end59.i.i97
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup35.thread127

if.end.i.i101:                                    ; preds = %if.end59.i.i97
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 1, i32 -1226833920) #22, !srcloc !261
  %asmresult.i.i99 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i99)
  %cmp.i6.i100 = icmp eq i32 %asmresult.i.i99, 0
  br i1 %cmp.i6.i100, label %cleanup35, label %if.end.i.i101.cleanup35.thread127_crit_edge

if.end.i.i101.cleanup35.thread127_crit_edge:      ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup35.thread127

cleanup35.thread127:                              ; preds = %if.end.i.i101.cleanup35.thread127_crit_edge, %if.end59.i.i97.cleanup35.thread127_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #16
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i101
  %call.i.i.i102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val26, i32 noundef 1) #16
  %call.i12.i.i103 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val26, i32 noundef 1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i103)
  %tobool32.not = icmp eq i32 %call.i12.i.i103, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #16
  br i1 %tobool32.not, label %cleanup35.cleanup42_crit_edge, label %cleanup35.cleanup45_crit_edge

cleanup35.cleanup45_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup35.cleanup42_crit_edge, %cleanup22.cleanup42_crit_edge, %cleanup.cleanup42_crit_edge
  %filled.3 = phi i32 [ 1, %cleanup35.cleanup42_crit_edge ], [ 2, %cleanup22.cleanup42_crit_edge ], [ 4, %cleanup.cleanup42_crit_edge ]
  %sub = sub i32 %count.addr.0142, %filled.3
  %add = add i32 %filled.3, %done.0148
  %conv = zext i32 %filled.3 to i64
  %14 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ppos, align 8
  %add40 = add i64 %15, %conv
  store i64 %add40, ptr %ppos, align 8
  %add.ptr41 = getelementptr i8, ptr %buf.addr.0146, i32 %filled.3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup42.cleanup45_crit_edge, label %cleanup42.while.body_crit_edge

cleanup42.while.body_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

cleanup42.cleanup45_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %cleanup35.cleanup45_crit_edge, %cleanup35.thread127, %cleanup35.thread, %cleanup22.cleanup45_crit_edge, %cleanup22.thread119, %cleanup22.thread, %cleanup.cleanup45_crit_edge, %cleanup.thread110, %cleanup.thread, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %cleanup.thread ], [ -14, %cleanup.thread110 ], [ -14, %cleanup22.thread ], [ -14, %cleanup22.thread119 ], [ -14, %cleanup35.thread ], [ -14, %cleanup35.thread127 ], [ 0, %entry.cleanup45_crit_edge ], [ -14, %cleanup.cleanup45_crit_edge ], [ -14, %cleanup22.cleanup45_crit_edge ], [ -14, %cleanup35.cleanup45_crit_edge ], [ %add, %cleanup42.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_write(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #5 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %cleanup42.while.cond_crit_edge, %entry
  %count.addr.0 = phi i32 [ %count, %entry ], [ %count.addr.1, %cleanup42.while.cond_crit_edge ]
  %buf.addr.0 = phi ptr [ %buf, %entry ], [ %buf.addr.1, %cleanup42.while.cond_crit_edge ]
  %done.0 = phi i32 [ 0, %entry ], [ %done.1, %cleanup42.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %tobool.not = icmp eq i32 %count.addr.0, 0
  br i1 %tobool.not, label %while.cond.cleanup45_crit_edge, label %while.body

while.cond.cleanup45_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0)
  %cmp = icmp ugt i32 %count.addr.0, 3
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %2 = and i64 %1, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %2)
  %tobool1.not = icmp eq i64 %2, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.land.lhs.true9_crit_edge

land.lhs.true.land.lhs.true9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #16
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !260
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 4, i32 -1226833920) #22, !srcloc !262
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !258

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #16
  %5 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !263
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf.addr.0, i32 noundef 4) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !258

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  %call4 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val, i32 noundef 4, i64 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #16
  br i1 %cmp5, label %cleanup.cleanup42_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp8 = icmp ugt i32 %count.addr.0, 1
  br i1 %cmp8, label %if.else.land.lhs.true9_crit_edge, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else25

if.else.land.lhs.true9_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.else.land.lhs.true9_crit_edge, %land.lhs.true.land.lhs.true9_crit_edge
  %10 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ppos, align 8
  %12 = and i64 %11, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %tobool11.not = icmp eq i64 %12, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.else25_crit_edge

land.lhs.true9.if.else25_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #16
  %13 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val13, align 2, !annotation !260
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i85, label %if.then12.if.then11.i.i101_crit_edge, label %land.lhs.true.i.i88

if.then12.if.then11.i.i101_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i101

land.lhs.true.i.i88:                              ; preds = %if.then12
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 2, i32 -1226833920) #22, !srcloc !262
  %asmresult.i.i86 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %if.end.i.i98, label %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, !prof !258

land.lhs.true.i.i88.if.then11.i.i101_crit_edge:   ; preds = %land.lhs.true.i.i88
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i101

if.end.i.i98:                                     ; preds = %land.lhs.true.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val13, i32 noundef 2) #16
  %15 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i90 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i90 to ptr
  %cpu_domain.i.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i91) #11, !srcloc !263
  %and.i.i.i.i92 = and i32 %17, -13
  %or.i.i.i.i93 = or i32 %and.i.i.i.i92, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i93) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i94 = call i32 @arm_copy_from_user(ptr noundef nonnull %val13, ptr noundef %buf.addr.0, i32 noundef 2) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i94)
  %tobool4.not.i.i97 = icmp eq i32 %call1.i.i.i94, 0
  br i1 %tobool4.not.i.i97, label %cleanup22, label %if.end.i.i98.if.then11.i.i101_crit_edge, !prof !258

if.end.i.i98.if.then11.i.i101_crit_edge:          ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i101

if.then11.i.i101:                                 ; preds = %if.end.i.i98.if.then11.i.i101_crit_edge, %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, %if.then12.if.then11.i.i101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #16
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i98
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %call18 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val13, i32 noundef 2, i64 noundef %19, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #16
  br i1 %cmp19, label %cleanup22.cleanup42_crit_edge, label %cleanup22.if.end39_crit_edge

cleanup22.if.end39_crit_edge:                     ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #16
  %20 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val26, align 1, !annotation !260
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i108 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i108, label %if.else25.if.then11.i.i124_crit_edge, label %land.lhs.true.i.i111

if.else25.if.then11.i.i124_crit_edge:             ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i124

land.lhs.true.i.i111:                             ; preds = %if.else25
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 1, i32 -1226833920) #22, !srcloc !262
  %asmresult.i.i109 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %if.end.i.i121, label %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, !prof !258

land.lhs.true.i.i111.if.then11.i.i124_crit_edge:  ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i124

if.end.i.i121:                                    ; preds = %land.lhs.true.i.i111
  %call.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val26, i32 noundef 1) #16
  %22 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i113 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i113 to ptr
  %cpu_domain.i.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i114) #11, !srcloc !263
  %and.i.i.i.i115 = and i32 %24, -13
  %or.i.i.i.i116 = or i32 %and.i.i.i.i115, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i116) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i117 = call i32 @arm_copy_from_user(ptr noundef nonnull %val26, ptr noundef %buf.addr.0, i32 noundef 1) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i117)
  %tobool4.not.i.i120 = icmp eq i32 %call1.i.i.i117, 0
  br i1 %tobool4.not.i.i120, label %cleanup35, label %if.end.i.i121.if.then11.i.i124_crit_edge, !prof !258

if.end.i.i121.if.then11.i.i124_crit_edge:         ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i124

if.then11.i.i124:                                 ; preds = %if.end.i.i121.if.then11.i.i124_crit_edge, %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, %if.else25.if.then11.i.i124_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #16
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i121
  %25 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ppos, align 8
  %call31 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val26, i32 noundef 1, i64 noundef %26, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #16
  br i1 %cmp32, label %cleanup35.cleanup42_crit_edge, label %cleanup35.if.end39_crit_edge

cleanup35.if.end39_crit_edge:                     ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup42

if.end39:                                         ; preds = %cleanup35.if.end39_crit_edge, %cleanup22.if.end39_crit_edge, %cleanup.if.end39_crit_edge
  %filled.3 = phi i32 [ 1, %cleanup35.if.end39_crit_edge ], [ 2, %cleanup22.if.end39_crit_edge ], [ 4, %cleanup.if.end39_crit_edge ]
  %sub = sub i32 %count.addr.0, %filled.3
  %add = add i32 %filled.3, %done.0
  %conv = zext i32 %filled.3 to i64
  %27 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %ppos, align 8
  %add40 = add i64 %28, %conv
  store i64 %add40, ptr %ppos, align 8
  %add.ptr41 = getelementptr i8, ptr %buf.addr.0, i32 %filled.3
  br label %cleanup42

cleanup42:                                        ; preds = %if.end39, %cleanup35.cleanup42_crit_edge, %cleanup22.cleanup42_crit_edge, %cleanup.cleanup42_crit_edge
  %count.addr.1 = phi i32 [ %sub, %if.end39 ], [ %count.addr.0, %cleanup35.cleanup42_crit_edge ], [ %count.addr.0, %cleanup22.cleanup42_crit_edge ], [ %count.addr.0, %cleanup.cleanup42_crit_edge ]
  %buf.addr.1 = phi ptr [ %add.ptr41, %if.end39 ], [ %buf.addr.0, %cleanup35.cleanup42_crit_edge ], [ %buf.addr.0, %cleanup22.cleanup42_crit_edge ], [ %buf.addr.0, %cleanup.cleanup42_crit_edge ]
  %done.1 = phi i32 [ %add, %if.end39 ], [ %done.0, %cleanup35.cleanup42_crit_edge ], [ %done.0, %cleanup22.cleanup42_crit_edge ], [ %done.0, %cleanup.cleanup42_crit_edge ]
  %cond80 = phi i1 [ true, %if.end39 ], [ false, %cleanup35.cleanup42_crit_edge ], [ false, %cleanup22.cleanup42_crit_edge ], [ false, %cleanup.cleanup42_crit_edge ]
  br i1 %cond80, label %cleanup42.while.cond_crit_edge, label %cleanup42.cleanup45_crit_edge

cleanup42.cleanup45_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup45

cleanup42.while.cond_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.cond

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %if.then11.i.i124, %if.then11.i.i101, %if.then11.i.i, %while.cond.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i101 ], [ -14, %if.then11.i.i124 ], [ -14, %cleanup42.cleanup45_crit_edge ], [ %done.0, %while.cond.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_ioctl(ptr noundef %vdev, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %info = alloca %struct.vfio_device_info, align 4
  %info12 = alloca %struct.vfio_region_info_ext, align 8
  %info34 = alloca %struct.vfio_irq_info, align 4
  %plane = alloca %struct.vfio_device_gfx_plane_info, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog [
    i32 15211, label %sw.bb
    i32 15212, label %sw.bb11
    i32 15213, label %sw.bb33
    i32 15218, label %sw.bb53
    i32 15219, label %sw.bb71
    i32 15214, label %entry.cleanup84_crit_edge
    i32 15215, label %sw.bb82
  ]

entry.cleanup84_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #16
  %1 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %info, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #22
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !258

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #16
  %7 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !263
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %4, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !258

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i255 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %sw.bb.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i255
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i255)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end59.i.i123

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end59.i.i123:                                  ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %3, align 4
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i124 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i124, label %if.end59.i.i123.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i123.cleanup_crit_edge:                ; preds = %if.end59.i.i123
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i123
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i128 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #16
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i123.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i123.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #16
  br label %cleanup84

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info12) #16
  %16 = call ptr @memset(ptr %info12, i32 255, i32 48)
  %17 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i134 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i134, label %sw.bb11.if.then11.i.i150_crit_edge, label %land.lhs.true.i.i137

sw.bb11.if.then11.i.i150_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i150

land.lhs.true.i.i137:                             ; preds = %sw.bb11
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 32, i32 -1226833920) #22, !srcloc !262
  %asmresult.i.i135 = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i135)
  %cmp.i6.i136 = icmp eq i32 %asmresult.i.i135, 0
  br i1 %cmp.i6.i136, label %if.end.i.i147, label %land.lhs.true.i.i137.if.then11.i.i150_crit_edge, !prof !258

land.lhs.true.i.i137.if.then11.i.i150_crit_edge:  ; preds = %land.lhs.true.i.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i150

if.end.i.i147:                                    ; preds = %land.lhs.true.i.i137
  %call.i.i.i138 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info12, i32 noundef 32) #16
  %19 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i139 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i139 to ptr
  %cpu_domain.i.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i140) #11, !srcloc !263
  %and.i.i.i.i141 = and i32 %21, -13
  %or.i.i.i.i142 = or i32 %and.i.i.i.i141, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i142) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i143 = call i32 @arm_copy_from_user(ptr noundef nonnull %info12, ptr noundef %17, i32 noundef 32) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i143)
  %tobool4.not.i.i146 = icmp eq i32 %call1.i.i.i143, 0
  br i1 %tobool4.not.i.i146, label %if.end16, label %if.end.i.i147.if.then11.i.i150_crit_edge, !prof !258

if.end.i.i147.if.then11.i.i150_crit_edge:         ; preds = %if.end.i.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i150

if.then11.i.i150:                                 ; preds = %if.end.i.i147.if.then11.i.i150_crit_edge, %land.lhs.true.i.i137.if.then11.i.i150_crit_edge, %sw.bb11.if.then11.i.i150_crit_edge
  %res.0.i.i145262 = phi i32 [ %call1.i.i.i143, %if.end.i.i147.if.then11.i.i150_crit_edge ], [ 32, %sw.bb11.if.then11.i.i150_crit_edge ], [ 32, %land.lhs.true.i.i137.if.then11.i.i150_crit_edge ]
  %sub.i.i148 = sub i32 32, %res.0.i.i145262
  %add.ptr.i.i149 = getelementptr i8, ptr %info12, i32 %sub.i.i148
  %22 = call ptr @memset(ptr %add.ptr.i.i149, i32 0, i32 %res.0.i.i145262)
  br label %cleanup32

if.end16:                                         ; preds = %if.end.i.i147
  %23 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %info12, align 8
  %25 = add i32 %24, -49
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %25)
  %26 = icmp ult i32 %25, -17
  br i1 %26, label %if.end16.cleanup32_crit_edge, label %if.end23

if.end16.cleanup32_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32

if.end23:                                         ; preds = %if.end16
  %index.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 2
  %27 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %index.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %28)
  %cmp.i = icmp ugt i32 %28, 9
  br i1 %cmp.i, label %if.end23.cleanup32_crit_edge, label %if.end.i

if.end23.cleanup32_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup32

if.end.i:                                         ; preds = %if.end23
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %28, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 0, label %sw.bb2.i
    i32 2, label %sw.bb6.i
    i32 9, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %offset.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %30 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 0, ptr %offset.i, align 8
  %size.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 255, ptr %size.i, align 8
  %flags.i246 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i246 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %flags.i246, align 4
  br label %if.then.i.i.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %offset3.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %33 = ptrtoint ptr %offset3.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 12288, ptr %offset3.i, align 8
  %memsize.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  %34 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %memsize.i, align 8
  %size4.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %36 = ptrtoint ptr %size4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %size4.i, align 8
  %flags5.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %37 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 7, ptr %flags5.i, align 4
  br label %if.then.i.i.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %offset7.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %38 = ptrtoint ptr %offset7.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 4096, ptr %offset7.i, align 8
  %size8.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %39 = ptrtoint ptr %size8.i to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 4096, ptr %size8.i, align 8
  %flags9.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %40 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %flags9.i, align 4
  br label %if.then.i.i.i

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %info12 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 48, ptr %info12, align 8
  %offset13.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %42 = ptrtoint ptr %offset13.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 8192, ptr %offset13.i, align 8
  %size15.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %43 = ptrtoint ptr %size15.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 4096, ptr %size15.i, align 8
  %flags17.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %44 = ptrtoint ptr %flags17.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 11, ptr %flags17.i, align 4
  %cap_offset.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 3
  %45 = ptrtoint ptr %cap_offset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 32, ptr %cap_offset.i, align 4
  %type.i = getelementptr inbounds %struct.vfio_region_info_ext, ptr %info12, i32 0, i32 1
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %type.i, align 8
  %version.i = getelementptr inbounds %struct.vfio_region_info_ext, ptr %info12, i32 0, i32 1, i32 0, i32 1
  %47 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %version.i, align 2
  %next.i = getelementptr inbounds %struct.vfio_region_info_ext, ptr %info12, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %next.i, align 4
  %type24.i = getelementptr inbounds %struct.vfio_region_info_ext, ptr %info12, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %type24.i, align 8
  %subtype.i = getelementptr inbounds %struct.vfio_region_info_ext, ptr %info12, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %subtype.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %subtype.i, align 4
  br label %if.then.i.i.i

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %size26.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %flags28.i = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %51 = ptrtoint ptr %flags28.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flags28.i, align 4
  %52 = call ptr @memset(ptr %size26.i, i32 0, i32 16)
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %sw.default.i, %sw.bb10.i, %sw.bb6.i, %sw.bb2.i, %sw.bb.i
  call void @__check_object_size(ptr noundef nonnull %info12, i32 noundef %24, i1 noundef zeroext true) #16
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i157 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i157, label %if.then.i.i.i.copy_to_user.exit165_crit_edge, label %if.end.i.i160

if.then.i.i.i.copy_to_user.exit165_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit165

if.end.i.i160:                                    ; preds = %if.then.i.i.i
  %53 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %24, i32 -1226833920) #22, !srcloc !261
  %asmresult.i.i158 = extractvalue { i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i158)
  %cmp.i6.i159 = icmp eq i32 %asmresult.i.i158, 0
  br i1 %cmp.i6.i159, label %if.then2.i.i163, label %if.end.i.i160.copy_to_user.exit165_crit_edge

if.end.i.i160.copy_to_user.exit165_crit_edge:     ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #18
  br label %copy_to_user.exit165

if.then2.i.i163:                                  ; preds = %if.end.i.i160
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i161 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info12, i32 noundef %24) #16
  %call.i12.i.i162 = call i32 @arm_copy_to_user(ptr noundef %17, ptr noundef nonnull %info12, i32 noundef %24) #16
  br label %copy_to_user.exit165

copy_to_user.exit165:                             ; preds = %if.then2.i.i163, %if.end.i.i160.copy_to_user.exit165_crit_edge, %if.then.i.i.i.copy_to_user.exit165_crit_edge
  %n.addr.0.i164 = phi i32 [ %24, %if.then.i.i.i.copy_to_user.exit165_crit_edge ], [ %call.i12.i.i162, %if.then2.i.i163 ], [ %24, %if.end.i.i160.copy_to_user.exit165_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i164)
  %tobool29.not = icmp eq i32 %n.addr.0.i164, 0
  %. = select i1 %tobool29.not, i32 0, i32 -14
  br label %cleanup32

cleanup32:                                        ; preds = %copy_to_user.exit165, %if.end23.cleanup32_crit_edge, %if.end16.cleanup32_crit_edge, %if.then11.i.i150
  %retval.1 = phi i32 [ -22, %if.end16.cleanup32_crit_edge ], [ %., %copy_to_user.exit165 ], [ -22, %if.end23.cleanup32_crit_edge ], [ -14, %if.then11.i.i150 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info12) #16
  br label %cleanup84

sw.bb33:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info34) #16
  %54 = getelementptr inbounds %struct.vfio_irq_info, ptr %info34, i32 0, i32 2
  %55 = getelementptr inbounds %struct.vfio_irq_info, ptr %info34, i32 0, i32 3
  %56 = inttoptr i32 %arg to ptr
  %57 = call ptr @memset(ptr %info34, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i171 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i171, label %sw.bb33.if.then11.i.i188_crit_edge, label %land.lhs.true.i.i175

sw.bb33.if.then11.i.i188_crit_edge:               ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i188

land.lhs.true.i.i175:                             ; preds = %sw.bb33
  %58 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %56, i32 16, i32 -1226833920) #22
  %asmresult.i.i173 = extractvalue { i32, i32 } %58, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i173)
  %cmp.i6.i174 = icmp eq i32 %asmresult.i.i173, 0
  br i1 %cmp.i6.i174, label %if.end.i.i185, label %land.lhs.true.i.i175.if.then11.i.i188_crit_edge, !prof !258

land.lhs.true.i.i175.if.then11.i.i188_crit_edge:  ; preds = %land.lhs.true.i.i175
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i188

if.end.i.i185:                                    ; preds = %land.lhs.true.i.i175
  %call.i.i.i176 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info34, i32 noundef 16) #16
  %59 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i177 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i177 to ptr
  %cpu_domain.i.i.i.i.i178 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i178) #11, !srcloc !263
  %and.i.i.i.i179 = and i32 %61, -13
  %or.i.i.i.i180 = or i32 %and.i.i.i.i179, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i180) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i181 = call i32 @arm_copy_from_user(ptr noundef nonnull %info34, ptr noundef %56, i32 noundef 16) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i181)
  %tobool4.not.i.i184 = icmp eq i32 %call1.i.i.i181, 0
  br i1 %tobool4.not.i.i184, label %if.end38, label %if.end.i.i185.if.then11.i.i188_crit_edge, !prof !258

if.end.i.i185.if.then11.i.i188_crit_edge:         ; preds = %if.end.i.i185
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i188

if.then11.i.i188:                                 ; preds = %if.end.i.i185.if.then11.i.i188_crit_edge, %land.lhs.true.i.i175.if.then11.i.i188_crit_edge, %sw.bb33.if.then11.i.i188_crit_edge
  %res.0.i.i183269 = phi i32 [ %call1.i.i.i181, %if.end.i.i185.if.then11.i.i188_crit_edge ], [ 16, %sw.bb33.if.then11.i.i188_crit_edge ], [ 16, %land.lhs.true.i.i175.if.then11.i.i188_crit_edge ]
  %sub.i.i186 = sub i32 16, %res.0.i.i183269
  %add.ptr.i.i187 = getelementptr i8, ptr %info34, i32 %sub.i.i186
  %62 = call ptr @memset(ptr %add.ptr.i.i187, i32 0, i32 %res.0.i.i183269)
  br label %cleanup52

if.end38:                                         ; preds = %if.end.i.i185
  %63 = ptrtoint ptr %info34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %info34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %64)
  %cmp40 = icmp ult i32 %64, 16
  br i1 %cmp40, label %if.end38.cleanup52_crit_edge, label %lor.lhs.false

if.end38.cleanup52_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup52

lor.lhs.false:                                    ; preds = %if.end38
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %66)
  %cmp41 = icmp ugt i32 %66, 4
  br i1 %cmp41, label %lor.lhs.false.cleanup52_crit_edge, label %if.end59.i.i195

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup52

if.end59.i.i195:                                  ; preds = %lor.lhs.false
  %67 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %55, align 4
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i196 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i196, label %if.end59.i.i195.cleanup52_crit_edge, label %copy_to_user.exit205

if.end59.i.i195.cleanup52_crit_edge:              ; preds = %if.end59.i.i195
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup52

copy_to_user.exit205:                             ; preds = %if.end59.i.i195
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i201 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info34, i32 noundef 16) #16
  %call.i12.i.i202 = call i32 @arm_copy_to_user(ptr noundef %56, ptr noundef nonnull %info34, i32 noundef 16) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i202)
  %tobool49.not = icmp eq i32 %call.i12.i.i202, 0
  %spec.select281 = select i1 %tobool49.not, i32 0, i32 -14
  br label %cleanup52

cleanup52:                                        ; preds = %copy_to_user.exit205, %if.end59.i.i195.cleanup52_crit_edge, %lor.lhs.false.cleanup52_crit_edge, %if.end38.cleanup52_crit_edge, %if.then11.i.i188
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup52_crit_edge ], [ -22, %if.end38.cleanup52_crit_edge ], [ -14, %if.then11.i.i188 ], [ -14, %if.end59.i.i195.cleanup52_crit_edge ], [ %spec.select281, %copy_to_user.exit205 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info34) #16
  br label %cleanup84

sw.bb53:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %plane) #16
  %68 = call ptr @memset(ptr %plane, i32 255, i32 64)
  %69 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 156) #16
  %call.i.i211 = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i211, label %sw.bb53.if.then11.i.i228_crit_edge, label %land.lhs.true.i.i215

sw.bb53.if.then11.i.i228_crit_edge:               ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i228

land.lhs.true.i.i215:                             ; preds = %sw.bb53
  %70 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %69, i32 60, i32 -1226833920) #22
  %asmresult.i.i213 = extractvalue { i32, i32 } %70, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i213)
  %cmp.i6.i214 = icmp eq i32 %asmresult.i.i213, 0
  br i1 %cmp.i6.i214, label %if.end.i.i225, label %land.lhs.true.i.i215.if.then11.i.i228_crit_edge, !prof !258

land.lhs.true.i.i215.if.then11.i.i228_crit_edge:  ; preds = %land.lhs.true.i.i215
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i228

if.end.i.i225:                                    ; preds = %land.lhs.true.i.i215
  %call.i.i.i216 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %plane, i32 noundef 60) #16
  %71 = call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i.i.i.i217 = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i217 to ptr
  %cpu_domain.i.i.i.i.i218 = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 4
  %73 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i218) #11, !srcloc !263
  %and.i.i.i.i219 = and i32 %73, -13
  %or.i.i.i.i220 = or i32 %and.i.i.i.i219, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i220) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %call1.i.i.i221 = call i32 @arm_copy_from_user(ptr noundef nonnull %plane, ptr noundef %69, i32 noundef 60) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %73) #16, !srcloc !264
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i221)
  %tobool4.not.i.i224 = icmp eq i32 %call1.i.i.i221, 0
  br i1 %tobool4.not.i.i224, label %if.end57, label %if.end.i.i225.if.then11.i.i228_crit_edge, !prof !258

if.end.i.i225.if.then11.i.i228_crit_edge:         ; preds = %if.end.i.i225
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i228

if.then11.i.i228:                                 ; preds = %if.end.i.i225.if.then11.i.i228_crit_edge, %land.lhs.true.i.i215.if.then11.i.i228_crit_edge, %sw.bb53.if.then11.i.i228_crit_edge
  %res.0.i.i223276 = phi i32 [ %call1.i.i.i221, %if.end.i.i225.if.then11.i.i228_crit_edge ], [ 60, %sw.bb53.if.then11.i.i228_crit_edge ], [ 60, %land.lhs.true.i.i215.if.then11.i.i228_crit_edge ]
  %sub.i.i226 = sub i32 60, %res.0.i.i223276
  %add.ptr.i.i227 = getelementptr i8, ptr %plane, i32 %sub.i.i226
  %74 = call ptr @memset(ptr %add.ptr.i.i227, i32 0, i32 %res.0.i.i223276)
  br label %cleanup70

if.end57:                                         ; preds = %if.end.i.i225
  %75 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %plane, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %76)
  %cmp59 = icmp ult i32 %76, 60
  br i1 %cmp59, label %if.end57.cleanup70_crit_edge, label %if.end61

if.end57.cleanup70_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.end61:                                         ; preds = %if.end57
  %call62 = call fastcc i32 @mbochs_query_gfx_plane(ptr noundef %vdev, ptr noundef nonnull %plane)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end59.i.i235, label %if.end61.cleanup70_crit_edge

if.end61.cleanup70_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

if.end59.i.i235:                                  ; preds = %if.end61
  call void @__might_fault(ptr noundef nonnull @.str.50, i32 noundef 174) #16
  %call.i.i236 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i236, label %if.end59.i.i235.cleanup70_crit_edge, label %copy_to_user.exit245

if.end59.i.i235.cleanup70_crit_edge:              ; preds = %if.end59.i.i235
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup70

copy_to_user.exit245:                             ; preds = %if.end59.i.i235
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i241 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %plane, i32 noundef 60) #16
  %call.i12.i.i242 = call i32 @arm_copy_to_user(ptr noundef %69, ptr noundef nonnull %plane, i32 noundef 60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i242)
  %tobool67.not = icmp eq i32 %call.i12.i.i242, 0
  %spec.select282 = select i1 %tobool67.not, i32 0, i32 -14
  br label %cleanup70

cleanup70:                                        ; preds = %copy_to_user.exit245, %if.end59.i.i235.cleanup70_crit_edge, %if.end61.cleanup70_crit_edge, %if.end57.cleanup70_crit_edge, %if.then11.i.i228
  %retval.3 = phi i32 [ -22, %if.end57.cleanup70_crit_edge ], [ %call62, %if.end61.cleanup70_crit_edge ], [ -14, %if.then11.i.i228 ], [ -14, %if.end59.i.i235.cleanup70_crit_edge ], [ %spec.select282, %copy_to_user.exit245 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %plane) #16
  br label %cleanup84

sw.bb71:                                          ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 1266) #16
  %77 = inttoptr i32 %arg to ptr
  %78 = tail call i32 @llvm.read_register.i32(metadata !245) #16
  %and.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #11, !srcloc !263
  %and.i = and i32 %80, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  %81 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %77, i32 -1226833921) #16, !srcloc !266
  %asmresult = extractvalue { i32, i32 } %81, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #16, !srcloc !264
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !265
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool76.not = icmp eq i32 %asmresult, 0
  br i1 %tobool76.not, label %if.end78, label %sw.bb71.cleanup84_crit_edge

sw.bb71.cleanup84_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.end78:                                         ; preds = %sw.bb71
  %asmresult74 = extractvalue { i32, i32 } %81, 1
  %ops_lock.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #16
  %call.i.i247 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock.i) #16
  br i1 %call.i.i247, label %if.end78.if.end.i.i248_crit_edge, label %do.end.i.i, !prof !258

if.end78.if.end.i.i248_crit_edge:                 ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i248

do.end.i.i:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 969, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i248

if.end.i.i248:                                    ; preds = %do.end.i.i, %if.end78.if.end.i.i248_crit_edge
  %dmabufs.i.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 13
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i248
  %.pn.in.i.i = phi ptr [ %dmabufs.i.i, %if.end.i.i248 ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %82 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %dmabufs.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.then.i249_crit_edge, label %for.body.i.i

for.cond.i.i.if.then.i249_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i249

for.body.i.i:                                     ; preds = %for.cond.i.i
  %id25.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %83 = ptrtoint ptr %id25.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %id25.i.i, align 8
  %cmp26.i.i = icmp eq i32 %84, %asmresult74
  br i1 %cmp26.i.i, label %mbochs_dmabuf_find_by_id.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i.i

mbochs_dmabuf_find_by_id.exit.i:                  ; preds = %for.body.i.i
  %dmabuf.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -60
  %tobool.not.i = icmp eq ptr %dmabuf.0.le.i.i, null
  br i1 %tobool.not.i, label %mbochs_dmabuf_find_by_id.exit.i.if.then.i249_crit_edge, label %if.end.i250

mbochs_dmabuf_find_by_id.exit.i.if.then.i249_crit_edge: ; preds = %mbochs_dmabuf_find_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i249

if.then.i249:                                     ; preds = %mbochs_dmabuf_find_by_id.exit.i.if.then.i249_crit_edge, %for.cond.i.i.if.then.i249_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #16
  br label %cleanup84

if.end.i250:                                      ; preds = %mbochs_dmabuf_find_by_id.exit.i
  %buf.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  %85 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buf.i, align 4
  %tobool2.not.i = icmp eq ptr %86, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i250.if.end5.i_crit_edge

if.end.i250.if.end5.i_crit_edge:                  ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i250
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @mbochs_dmabuf_export(ptr noundef nonnull %dmabuf.0.le.i.i) #16
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i250.if.end5.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #16
  %87 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %buf.i, align 4
  %tobool8.not.i = icmp eq ptr %88, null
  br i1 %tobool8.not.i, label %if.end5.i.cleanup84_crit_edge, label %if.end10.i

if.end5.i.cleanup84_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12.i = tail call i32 @dma_buf_fd(ptr noundef nonnull %88, i32 noundef 0) #16
  br label %cleanup84

sw.bb82:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %memsize.i252 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  %89 = ptrtoint ptr %memsize.i252 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %memsize.i252, align 8
  %uglygep.i = getelementptr i8, ptr %vdev, i32 232
  %91 = getelementptr i8, ptr %vdev, i32 234
  %92 = call ptr @memset(ptr %91, i32 0, i32 18)
  %div1.i = lshr i64 %90, 16
  %93 = ptrtoint ptr %uglygep.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -20283, ptr %uglygep.i, align 8
  %conv4.i = trunc i64 %div1.i to i16
  %arrayidx6.i = getelementptr %struct.mdev_state, ptr %vdev, i32 0, i32 7, i32 10
  %94 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %conv4.i, ptr %arrayidx6.i, align 4
  br label %cleanup84

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup84

cleanup84:                                        ; preds = %sw.epilog, %sw.bb82, %if.end10.i, %if.end5.i.cleanup84_crit_edge, %if.then.i249, %sw.bb71.cleanup84_crit_edge, %cleanup70, %cleanup52, %cleanup32, %cleanup, %entry.cleanup84_crit_edge
  %retval.5 = phi i32 [ -25, %sw.epilog ], [ 0, %sw.bb82 ], [ %retval.3, %cleanup70 ], [ %retval.2, %cleanup52 ], [ %retval.1, %cleanup32 ], [ %retval.0, %cleanup ], [ -14, %sw.bb71.cleanup84_crit_edge ], [ -22, %entry.cleanup84_crit_edge ], [ %call12.i, %if.end10.i ], [ -2, %if.then.i249 ], [ -22, %if.end5.i.cleanup84_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mbochs_mmap(ptr noundef %vdev, ptr nocapture noundef %vma) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp1 = icmp ult i32 %3, %5
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i32 %3, %5
  %conv = zext i32 %sub to i64
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %memsize to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %memsize, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv)
  %cmp6 = icmp ult i64 %7, %conv
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end9

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end9:                                          ; preds = %if.end3
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mbochs_region_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %11 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vdev, ptr %vm_private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mbochs_put_pages(ptr noundef %mdev_state) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %call1 = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call1, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 739, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pagecount = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 10
  %2 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pagecount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp56.not = icmp eq i32 %3, 0
  br i1 %cmp56.not, label %if.end.do.body29_crit_edge, label %for.body.lr.ph

if.end.do.body29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body29

for.body.lr.ph:                                   ; preds = %if.end
  %pages = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc.for.body_crit_edge ]
  %count.057 = phi i32 [ 0, %for.body.lr.ph ], [ %count.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.058
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %7, null
  br i1 %tobool21.not, label %for.body.for.inc_crit_edge, label %if.end23

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end23:                                         ; preds = %for.body
  %8 = getelementptr inbounds %struct.page, ptr %7, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %8, align 4
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !258

if.then.i.i:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %10, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %11 = ptrtoint ptr %7 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %11, %if.end.i.i ]
  %12 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %13 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i.i.i.i = icmp eq i32 %14, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !267

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %15 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %15, ptr noundef nonnull @.str.21) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !268
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mbochs_put_pages, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !272

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %12) #16
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 8
  %arrayidx27 = getelementptr ptr, ptr %18, i32 %i.058
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx27, align 4
  %inc = add i32 %count.057, 1
  br label %for.inc

for.inc:                                          ; preds = %put_page.exit, %for.body.for.inc_crit_edge
  %count.1 = phi i32 [ %inc, %put_page.exit ], [ %count.057, %for.body.for.inc_crit_edge ]
  %inc28 = add nuw i32 %i.058, 1
  %20 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pagecount, align 4
  %cmp = icmp ult i32 %inc28, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body29_crit_edge

for.inc.do.body29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body29

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body29:                                        ; preds = %for.inc.do.body29_crit_edge, %if.end.do.body29_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.do.body29_crit_edge ], [ %count.1, %for.inc.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_put_pages.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_put_pages, %if.then39)) #16
          to label %do.end42 [label %if.then39], !srcloc !272

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_put_pages.__UNIQUE_ID_ddebug277, ptr noundef %1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %count.0.lcssa) #16
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdev_access(ptr noundef %mdev_state, ptr nocapture noundef %buf, i32 noundef %count, i64 noundef %pos, i1 noundef zeroext %is_write) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %pos)
  %cmp = icmp slt i64 %pos, 255
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  br i1 %is_write, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %conv = trunc i64 %pos to i16
  %mdev.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 8
  %2 = trunc i64 %pos to i32
  %conv.i = and i32 %2, 65535
  %sub.i = add nsw i32 %conv.i, -16
  %div.i = sdiv i32 %sub.i, 4
  %3 = zext i16 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %conv, label %if.then1.accessfailed_crit_edge [
    i16 16, label %if.then1.sw.bb.i_crit_edge
    i16 24, label %if.then1.sw.bb.i_crit_edge157
  ]

if.then1.sw.bb.i_crit_edge157:                    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then1.sw.bb.i_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i

if.then1.accessfailed_crit_edge:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #18
  br label %accessfailed

sw.bb.i:                                          ; preds = %if.then1.sw.bb.i_crit_edge, %if.then1.sw.bb.i_crit_edge157
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp.i = icmp eq i32 %5, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 2, i32 %div.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %conv4.i = trunc i64 %7 to i32
  br label %if.end7.i

if.else.i:                                        ; preds = %sw.bb.i
  %and5.i = and i32 %5, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end7.i_crit_edge, label %do.end.i

if.else.i.if.end7.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.26, i32 noundef %div.i, i32 noundef %and5.i) #19
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.else.i.if.end7.i_crit_edge, %if.then.i
  %cfg_addr.0.i = phi i32 [ %conv4.i, %if.then.i ], [ %and5.i, %do.end.i ], [ 0, %if.else.i.if.end7.i_crit_edge ]
  %vconfig.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %8 = ptrtoint ptr %vconfig.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vconfig.i, align 8
  %arrayidx8.i = getelementptr i8, ptr %9, i32 %conv.i
  %10 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8.i, align 1
  %12 = and i8 %11, 15
  %and10.i = zext i8 %12 to i32
  %or.i = or i32 %cfg_addr.0.i, %and10.i
  store i32 %or.i, ptr %arrayidx8.i, align 4
  br label %accessfailed

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %13 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vconfig, align 8
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %14, i32 %idx.ext
  %15 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count)
  br label %accessfailed

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %pos)
  %cmp3 = icmp ugt i64 %pos, 4095
  br i1 %cmp3, label %land.lhs.true, label %if.else2.do.body_crit_edge

if.else2.do.body_crit_edge:                       ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true:                                    ; preds = %if.else2
  %conv5 = zext i32 %count to i64
  %add = add nuw i64 %conv5, %pos
  call void @__sanitizer_cov_trace_const_cmp8(i64 8193, i64 %add)
  %cmp6 = icmp slt i64 %add, 8193
  br i1 %cmp6, label %if.then8, label %if.else15

if.then8:                                         ; preds = %land.lhs.true
  %sub = add nsw i64 %pos, -4096
  %conv11 = trunc i64 %sub to i16
  br i1 %is_write, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.then8
  %mdev.i128 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %16 = ptrtoint ptr %mdev.i128 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mdev.i128, align 8
  %18 = trunc i64 %sub to i32
  %conv.i129 = and i32 %18, 65535
  %offset.off.i = add i16 %conv11, -1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %offset.off.i)
  %switch.i = icmp ult i16 %offset.off.i, 22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp.not.i = icmp eq i32 %count, 2
  %or.cond.i = and i1 %cmp.not.i, %switch.i
  br i1 %or.cond.i, label %if.end.i, label %do.body16.i

if.end.i:                                         ; preds = %if.then10
  %sub.i130 = add nsw i32 %conv.i129, -1280
  %div.i131 = sdiv i32 %sub.i130, 2
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %buf, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %div.i131)
  %cmp4.i = icmp ult i32 %div.i131, 11
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i132 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 %div.i131
  %21 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %arrayidx.i132, align 2
  br label %do.body.i

do.body.i:                                        ; preds = %if.then6.i, %if.end.i.do.body.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_mmio_write.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_access, %if.then11.i)) #16
          to label %accessfailed [label %if.then11.i], !srcloc !272

if.then11.i:                                      ; preds = %do.body.i
  %conv12.i = zext i16 %20 to i32
  br i1 %cmp4.i, label %if.then.i.i, label %if.then11.i.vbe_name.exit.i_crit_edge

if.then11.i.vbe_name.exit.i_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %vbe_name.exit.i

if.then.i.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i.i = getelementptr [11 x ptr], ptr @vbe_name_list, i32 0, i32 %div.i131
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i.i, align 4
  br label %vbe_name.exit.i

vbe_name.exit.i:                                  ; preds = %if.then.i.i, %if.then11.i.vbe_name.exit.i_crit_edge
  %retval.0.i45.i = phi ptr [ %23, %if.then.i.i ], [ @.str.31, %if.then11.i.vbe_name.exit.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_mmio_write.__UNIQUE_ID_ddebug272, ptr noundef %17, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %div.i131, i32 noundef %conv12.i, ptr noundef %retval.0.i45.i) #16
  br label %accessfailed

do.body16.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_mmio_write.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_access, %if.then28.i)) #16
          to label %accessfailed [label %if.then28.i], !srcloc !272

if.then28.i:                                      ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_mmio_write.__UNIQUE_ID_ddebug273, ptr noundef %17, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.28, i32 noundef %conv.i129, i32 noundef %count) #16
  br label %accessfailed

if.else12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @handle_mmio_read(ptr noundef %mdev_state, i16 noundef zeroext %conv11, ptr noundef %buf, i32 noundef %count)
  br label %accessfailed

if.else15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp8(i64 8191, i64 %pos)
  %cmp16 = icmp ugt i64 %pos, 8191
  br i1 %cmp16, label %land.lhs.true18, label %if.else15.do.body_crit_edge

if.else15.do.body_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true18:                                  ; preds = %if.else15
  call void @__sanitizer_cov_trace_const_cmp8(i64 12289, i64 %add)
  %cmp21 = icmp ult i64 %add, 12289
  br i1 %cmp21, label %if.then23, label %if.else35

if.then23:                                        ; preds = %land.lhs.true18
  %sub24 = add nsw i64 %pos, -8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %sub24)
  %cmp25 = icmp ult i64 %sub24, 2048
  br i1 %cmp25, label %if.then27, label %if.else30

if.then27:                                        ; preds = %if.then23
  %conv28 = trunc i64 %sub24 to i16
  %edid_regs.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 11
  %24 = trunc i64 %sub24 to i32
  %add.i = add i32 %24, %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %add.i)
  %cmp.i134 = icmp ult i32 %add.i, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %count)
  %cmp2.not.i = icmp eq i32 %count, 4
  %or.cond.i135 = and i1 %cmp2.not.i, %cmp.i134
  %rem.i = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i136 = icmp eq i32 %rem.i, 0
  %or.cond25.i = and i1 %tobool.not.i136, %or.cond.i135
  br i1 %or.cond25.i, label %if.end8.i, label %if.then27.accessfailed_crit_edge

if.then27.accessfailed_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #18
  br label %accessfailed

if.end8.i:                                        ; preds = %if.then27
  br i1 %is_write, label %if.then10.i, label %if.else.i138

if.then10.i:                                      ; preds = %if.end8.i
  %25 = zext i16 %conv28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %conv28, label %if.then10.i.accessfailed_crit_edge [
    i16 20, label %if.then10.i.sw.bb.i137_crit_edge
    i16 8, label %if.then10.i.sw.bb.i137_crit_edge158
  ]

if.then10.i.sw.bb.i137_crit_edge158:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i137

if.then10.i.sw.bb.i137_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.bb.i137

if.then10.i.accessfailed_crit_edge:               ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %accessfailed

sw.bb.i137:                                       ; preds = %if.then10.i.sw.bb.i137_crit_edge, %if.then10.i.sw.bb.i137_crit_edge158
  %add.ptr.i = getelementptr i8, ptr %edid_regs.i, i32 %24
  br label %cleanup.sink.split.i

if.else.i138:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr14.i = getelementptr i8, ptr %edid_regs.i, i32 %24
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i138, %sw.bb.i137
  %add.ptr14.sink.i = phi ptr [ %add.ptr14.i, %if.else.i138 ], [ %buf, %sw.bb.i137 ]
  %buf.sink.i = phi ptr [ %buf, %if.else.i138 ], [ %add.ptr.i, %sw.bb.i137 ]
  %26 = ptrtoint ptr %add.ptr14.sink.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr14.sink.i, align 1
  %28 = ptrtoint ptr %buf.sink.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %buf.sink.i, align 1
  br label %accessfailed

if.else30:                                        ; preds = %if.then23
  %29 = trunc i64 %pos to i32
  %conv32 = add i32 %29, 55296
  %conv.i139 = and i32 %conv32, 65535
  %add.i140 = add i32 %conv.i139, %count
  %edid_max_size.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %edid_max_size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %edid_max_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i140, i32 %31)
  %cmp.i141 = icmp ugt i32 %add.i140, %31
  br i1 %cmp.i141, label %if.else30.accessfailed_crit_edge, label %if.end.i143

if.else30.accessfailed_crit_edge:                 ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #18
  br label %accessfailed

if.end.i143:                                      ; preds = %if.else30
  %edid_blob.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  %add.ptr.i142 = getelementptr i8, ptr %edid_blob.i, i32 %conv.i139
  br i1 %is_write, label %if.then2.i, label %if.else.i144

if.then2.i:                                       ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #18
  %32 = call ptr @memcpy(ptr %add.ptr.i142, ptr %buf, i32 %count)
  br label %accessfailed

if.else.i144:                                     ; preds = %if.end.i143
  call void @__sanitizer_cov_trace_pc() #18
  %33 = call ptr @memcpy(ptr %buf, ptr %add.ptr.i142, i32 %count)
  br label %accessfailed

if.else35:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_const_cmp8(i64 12287, i64 %pos)
  %cmp36 = icmp ugt i64 %pos, 12287
  br i1 %cmp36, label %land.lhs.true38, label %if.else35.do.body_crit_edge

if.else35.do.body_crit_edge:                      ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

land.lhs.true38:                                  ; preds = %if.else35
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 8
  %34 = ptrtoint ptr %memsize to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %memsize, align 8
  %add41 = add i64 %35, 12288
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %add41)
  %cmp42.not = icmp ugt i64 %add, %add41
  br i1 %cmp42.not, label %land.lhs.true38.do.body_crit_edge, label %if.then44

land.lhs.true38.do.body_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then44:                                        ; preds = %land.lhs.true38
  %sub45 = add nuw i64 %pos, 17592186040320
  %36 = lshr i64 %sub45, 12
  %conv46 = trunc i64 %36 to i32
  %call = tail call fastcc ptr @__mbochs_get_page(ptr noundef %mdev_state, i32 noundef %conv46)
  tail call void @__might_sleep(ptr noundef nonnull @.str.47, i32 noundef 44) #16
  %37 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call, align 4
  %shr.i.i = lshr i32 %38, 30
  %39 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %shr.i.i, label %if.then44.if.then.i146_crit_edge [
    i32 2, label %if.then44.if.else.i147_crit_edge
    i32 3, label %is_highmem_idx.exit.i
  ]

if.then44.if.else.i147_crit_edge:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i147

if.then44.if.then.i146_crit_edge:                 ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i146

is_highmem_idx.exit.i:                            ; preds = %if.then44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %40 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp2.i.not.i = icmp eq i32 %40, 2
  br i1 %cmp2.i.not.i, label %is_highmem_idx.exit.i.if.else.i147_crit_edge, label %is_highmem_idx.exit.i.if.then.i146_crit_edge

is_highmem_idx.exit.i.if.then.i146_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i146

is_highmem_idx.exit.i.if.else.i147_crit_edge:     ; preds = %is_highmem_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else.i147

if.then.i146:                                     ; preds = %is_highmem_idx.exit.i.if.then.i146_crit_edge, %if.then44.if.then.i146_crit_edge
  %call5.i = tail call ptr @page_address(ptr noundef %call) #16
  br label %kmap.exit

if.else.i147:                                     ; preds = %is_highmem_idx.exit.i.if.else.i147_crit_edge, %if.then44.if.else.i147_crit_edge
  %call6.i = tail call ptr @kmap_high(ptr noundef %call) #16
  br label %kmap.exit

kmap.exit:                                        ; preds = %if.else.i147, %if.then.i146
  %addr.0.i = phi ptr [ %call6.i, %if.else.i147 ], [ %call5.i, %if.then.i146 ]
  %41 = trunc i64 %pos to i32
  %idx.ext50 = and i32 %41, 4095
  %add.ptr51 = getelementptr i8, ptr %addr.0.i, i32 %idx.ext50
  br i1 %is_write, label %if.then49, label %if.else52

if.then49:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  %42 = call ptr @memcpy(ptr %add.ptr51, ptr %buf, i32 %count)
  br label %if.end55

if.else52:                                        ; preds = %kmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  %43 = call ptr @memcpy(ptr %buf, ptr %add.ptr51, i32 %count)
  br label %if.end55

if.end55:                                         ; preds = %if.else52, %if.then49
  tail call void @__might_sleep(ptr noundef nonnull @.str.47, i32 noundef 55) #16
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call, align 4
  %shr.i.i149 = lshr i32 %45, 30
  %46 = zext i32 %shr.i.i149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %shr.i.i149, label %if.end55.kunmap.exit_crit_edge [
    i32 2, label %if.end55.if.end.i152_crit_edge
    i32 3, label %is_highmem_idx.exit.i151
  ]

if.end55.if.end.i152_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i152

if.end55.kunmap.exit_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i151:                         ; preds = %if.end55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %47 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp2.i.not.i150 = icmp eq i32 %47, 2
  br i1 %cmp2.i.not.i150, label %is_highmem_idx.exit.i151.if.end.i152_crit_edge, label %is_highmem_idx.exit.i151.kunmap.exit_crit_edge

is_highmem_idx.exit.i151.kunmap.exit_crit_edge:   ; preds = %is_highmem_idx.exit.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %kunmap.exit

is_highmem_idx.exit.i151.if.end.i152_crit_edge:   ; preds = %is_highmem_idx.exit.i151
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i152

if.end.i152:                                      ; preds = %is_highmem_idx.exit.i151.if.end.i152_crit_edge, %if.end55.if.end.i152_crit_edge
  tail call void @kunmap_high(ptr noundef %call) #16
  br label %kunmap.exit

kunmap.exit:                                      ; preds = %if.end.i152, %is_highmem_idx.exit.i151.kunmap.exit_crit_edge, %if.end55.kunmap.exit_crit_edge
  %48 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %48, align 4
  %and.i.i = and i32 %50, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i153, !prof !258

if.then.i.i153:                                   ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %50, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %kunmap.exit
  call void @__sanitizer_cov_trace_pc() #18
  %51 = ptrtoint ptr %call to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i153
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i153 ], [ %51, %if.end.i.i ]
  %52 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %52, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %53 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp.i.i.i.i = icmp eq i32 %54, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !267

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %52, ptr noundef nonnull @.str.21) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !268
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %55, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mdev_access, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !272

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %52, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.accessfailed_crit_edge

folio_put_testzero.exit.i.i.accessfailed_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %accessfailed

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %52) #16
  br label %accessfailed

do.body:                                          ; preds = %land.lhs.true38.do.body_crit_edge, %if.else35.do.body_crit_edge, %if.else15.do.body_crit_edge, %if.else2.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mdev_access.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mdev_access, %if.then62)) #16
          to label %accessfailed [label %if.then62], !srcloc !272

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %56 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mdev_state, align 8
  %cond = select i1 %is_write, ptr @.str.24, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mdev_access.__UNIQUE_ID_ddebug276, ptr noundef %57, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond, i64 noundef %pos) #16
  br label %accessfailed

accessfailed:                                     ; preds = %if.then62, %do.body, %if.then.i4.i, %folio_put_testzero.exit.i.i.accessfailed_crit_edge, %if.else.i144, %if.then2.i, %if.else30.accessfailed_crit_edge, %cleanup.sink.split.i, %if.then10.i.accessfailed_crit_edge, %if.then27.accessfailed_crit_edge, %if.else12, %if.then28.i, %do.body16.i, %vbe_name.exit.i, %do.body.i, %if.else, %if.end7.i, %if.then1.accessfailed_crit_edge
  %ret.0 = phi i32 [ -1, %if.then62 ], [ %count, %if.else12 ], [ %count, %if.else ], [ %count, %if.then1.accessfailed_crit_edge ], [ %count, %if.end7.i ], [ 2, %do.body.i ], [ 2, %vbe_name.exit.i ], [ %count, %do.body16.i ], [ %count, %if.then28.i ], [ %count, %if.then27.accessfailed_crit_edge ], [ 4, %if.then10.i.accessfailed_crit_edge ], [ 4, %cleanup.sink.split.i ], [ %count, %if.else30.accessfailed_crit_edge ], [ %count, %if.then2.i ], [ %count, %if.else.i144 ], [ %count, %folio_put_testzero.exit.i.i.accessfailed_crit_edge ], [ %count, %if.then.i4.i ], [ -1, %do.body ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #16
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_mmio_read(ptr nocapture noundef readonly %mdev_state, i16 noundef zeroext %offset, ptr nocapture noundef writeonly %buf, i32 noundef %count) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 8
  %conv = zext i16 %offset to i32
  %offset.off = add i16 %offset, -1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 22, i16 %offset.off)
  %switch = icmp ult i16 %offset.off, 22
  br i1 %switch, label %sw.bb6, label %sw.caserange

sw.bb:                                            ; preds = %sw.caserange
  %link_state = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 5
  %2 = ptrtoint ptr %link_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %link_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.if.then_crit_edge

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %edid_size = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 2
  %4 = ptrtoint ptr %edid_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edid_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3.not = icmp ugt i32 %5, %conv
  br i1 %cmp3.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %6 = call ptr @memset(ptr %buf, i32 0, i32 %count)
  br label %sw.epilog

sw.caserange:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %offset)
  %inbounds = icmp ult i16 %offset, 1024
  br i1 %inbounds, label %sw.bb, label %sw.caserange.do.body23_crit_edge

sw.caserange.do.body23_crit_edge:                 ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body23

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  %edid_blob = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  %add.ptr = getelementptr i8, ptr %edid_blob, i32 %conv
  %7 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp7.not = icmp eq i32 %count, 2
  br i1 %cmp7.not, label %if.end10, label %sw.bb6.do.body23_crit_edge

sw.bb6.do.body23_crit_edge:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body23

if.end10:                                         ; preds = %sw.bb6
  %sub = add nsw i32 %conv, -1280
  %div = sdiv i32 %sub, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %div)
  %cmp12 = icmp ult i32 %div, 11
  br i1 %cmp12, label %if.then14, label %if.end10.do.body_crit_edge

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 %div
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  br label %do.body

do.body:                                          ; preds = %if.then14, %if.end10.do.body_crit_edge
  %reg16.0 = phi i16 [ %9, %if.then14 ], [ 0, %if.end10.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_mmio_read.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_mmio_read, %if.then19)) #16
          to label %do.end [label %if.then19], !srcloc !272

if.then19:                                        ; preds = %do.body
  %conv20 = zext i16 %reg16.0 to i32
  br i1 %cmp12, label %if.then.i, label %if.then19.vbe_name.exit_crit_edge

if.then19.vbe_name.exit_crit_edge:                ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  br label %vbe_name.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #18
  %arrayidx.i = getelementptr [11 x ptr], ptr @vbe_name_list, i32 0, i32 %div
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  br label %vbe_name.exit

vbe_name.exit:                                    ; preds = %if.then.i, %if.then19.vbe_name.exit_crit_edge
  %retval.0.i63 = phi ptr [ %11, %if.then.i ], [ @.str.31, %if.then19.vbe_name.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_mmio_read.__UNIQUE_ID_ddebug274, ptr noundef %1, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, i32 noundef %div, i32 noundef %conv20, ptr noundef %retval.0.i63) #16
  br label %do.end

do.end:                                           ; preds = %vbe_name.exit, %do.body
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %reg16.0, ptr %buf, align 2
  br label %sw.epilog

do.body23:                                        ; preds = %sw.bb6.do.body23_crit_edge, %sw.caserange.do.body23_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @handle_mmio_read.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@handle_mmio_read, %if.then35)) #16
          to label %do.end39 [label %if.then35], !srcloc !272

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @handle_mmio_read.__UNIQUE_ID_ddebug275, ptr noundef %1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %count) #16
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %13 = call ptr @memset(ptr %buf, i32 0, i32 %count)
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end39, %do.end, %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__mbochs_get_page(ptr noundef %mdev_state, i32 noundef %pgoff) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 706, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %pages = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 9
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 8
  %arrayidx = getelementptr ptr, ptr %1, i32 %pgoff
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.then21, label %if.end.if.end30_crit_edge

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then21:                                        ; preds = %if.end
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 1052098, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  %4 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pages, align 8
  %arrayidx24 = getelementptr ptr, ptr %5, i32 %pgoff
  %6 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i.i, ptr %arrayidx24, align 4
  %7 = load ptr, ptr %pages, align 8
  %arrayidx26 = getelementptr ptr, ptr %7, i32 %pgoff
  %8 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %9, null
  br i1 %tobool27.not, label %if.then21.return_crit_edge, label %if.then21.if.end30_crit_edge

if.then21.if.end30_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then21.return_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end30:                                         ; preds = %if.then21.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 8
  %arrayidx32 = getelementptr ptr, ptr %11, i32 %pgoff
  %12 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx32, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !258

if.then.i.i:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %19 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %20, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !267

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %18, ptr noundef nonnull @.str.46) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !273
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__mbochs_get_page, %if.then.i.i.i.i)) #16
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !272

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %18, i32 noundef 1) #16
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %22 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pages, align 8
  %arrayidx34 = getelementptr ptr, ptr %23, i32 %pgoff
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx34, align 4
  br label %return

return:                                           ; preds = %get_page.exit, %if.then21.return_crit_edge
  %retval.0 = phi ptr [ %25, %get_page.exit ], [ null, %if.then21.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mbochs_query_gfx_plane(ptr noundef %mdev_state, ptr nocapture noundef %plane) unnamed_addr #5 align 64 {
entry:
  %mode = alloca %struct.mbochs_mode, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mode) #16
  %flags = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %. = select i1 %cmp, i32 0, i32 -22
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5.not = icmp eq i32 %1, 2
  br i1 %cmp5.not, label %if.end7, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %drm_format_mod = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 4
  %2 = ptrtoint ptr %drm_format_mod to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 0, ptr %drm_format_mod, align 8
  %x_pos = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 9
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %3 = call ptr @memset(ptr %x_pos, i32 0, i32 16)
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #16
  %drm_plane_type = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 2
  %4 = ptrtoint ptr %drm_plane_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %drm_plane_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp8 = icmp eq i32 %5, 1
  br i1 %cmp8, label %if.then9, label %if.end7.if.then12_crit_edge

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then12

if.then9:                                         ; preds = %if.end7
  %mdev.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %6 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev.i, align 8
  %call2.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call2.i, label %if.then9.if.end.i_crit_edge, label %do.end.i, !prof !258

if.then9.if.end.i_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 246, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then9.if.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx.i, align 2
  %10 = and i16 %9, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool22.not.i = icmp eq i16 %10, 0
  br i1 %tobool22.not.i, label %if.end.i.mbochs_check_framebuffer.exit.thread_crit_edge, label %if.end24.i

if.end.i.mbochs_check_framebuffer.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mbochs_check_framebuffer.exit.thread

if.end24.i:                                       ; preds = %if.end.i
  %11 = getelementptr inbounds i8, ptr %mode, i32 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %11, align 8
  %arrayidx25.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %14)
  %cond.i = icmp eq i16 %14, 32
  br i1 %cond.i, label %sw.bb.i, label %do.body27.i

sw.bb.i:                                          ; preds = %if.end24.i
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 875713112, ptr %mode, align 8
  %bytepp.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 1
  %16 = ptrtoint ptr %bytepp.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %bytepp.i, align 4
  %arrayidx39.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx39.i, align 2
  %conv40.i = zext i16 %18 to i32
  %width.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 2
  %19 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv40.i, ptr %width.i, align 8
  %arrayidx41.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx41.i, align 2
  %conv42.i = zext i16 %21 to i32
  %height.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 3
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv42.i, ptr %height.i, align 4
  %arrayidx43.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 6
  %23 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx43.i, align 2
  %25 = tail call i16 @llvm.umax.i16(i16 %18, i16 %24) #16
  %26 = zext i16 %25 to i32
  %mul.i = shl nuw nsw i32 %26, 2
  %stride.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 4
  %27 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %stride.i, align 8
  %conv52.i = zext i32 %mul.i to i64
  %conv54.i = zext i16 %21 to i64
  %mul55.i = mul nuw nsw i64 %conv52.i, %conv54.i
  %size.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 7
  %28 = ptrtoint ptr %size.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %mul55.i, ptr %size.i, align 8
  %arrayidx56.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 8
  %29 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx56.i, align 2
  %conv57.i = zext i16 %30 to i64
  %mul60.i = shl nuw nsw i64 %conv57.i, 2
  %arrayidx61.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 7, i32 9
  %31 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx61.i, align 2
  %conv62.i = zext i16 %32 to i64
  %mul65.i = mul nuw nsw i64 %conv62.i, %conv52.i
  %add.i = add nuw nsw i64 %mul65.i, %mul60.i
  %offset.i = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 6
  %33 = ptrtoint ptr %offset.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %add.i, ptr %offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %18)
  %cmp67.i = icmp ult i16 %18, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %21)
  %cmp70.i = icmp ult i16 %21, 64
  %or.cond.i = select i1 %cmp67.i, i1 true, i1 %cmp70.i
  br i1 %or.cond.i, label %do.body73.i, label %if.end85.i

do.body27.i:                                      ; preds = %if.end24.i
  %call28.i = tail call i32 @___ratelimit(ptr noundef nonnull @mbochs_check_framebuffer._rs, ptr noundef nonnull @__func__.mbochs_check_framebuffer) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %do.body27.i.mbochs_check_framebuffer.exit.thread_crit_edge, label %do.end33.i

do.body27.i.mbochs_check_framebuffer.exit.thread_crit_edge: ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mbochs_check_framebuffer.exit.thread

do.end33.i:                                       ; preds = %do.body27.i
  call void @__sanitizer_cov_trace_pc() #18
  %34 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx25.i, align 2
  %conv35.i = zext i16 %35 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.54, ptr noundef nonnull @__func__.mbochs_check_framebuffer, i32 noundef %conv35.i) #19
  br label %mbochs_check_framebuffer.exit.thread

do.body73.i:                                      ; preds = %sw.bb.i
  %call74.i = tail call i32 @___ratelimit(ptr noundef nonnull @mbochs_check_framebuffer._rs.55, ptr noundef nonnull @__func__.mbochs_check_framebuffer) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %tobool75.not.i = icmp eq i32 %call74.i, 0
  br i1 %tobool75.not.i, label %do.body73.i.mbochs_check_framebuffer.exit.thread_crit_edge, label %do.end79.i

do.body73.i.mbochs_check_framebuffer.exit.thread_crit_edge: ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mbochs_check_framebuffer.exit.thread

do.end79.i:                                       ; preds = %do.body73.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.mbochs_check_framebuffer, i32 noundef %conv40.i, i32 noundef %conv42.i) #19
  br label %mbochs_check_framebuffer.exit.thread

if.end85.i:                                       ; preds = %sw.bb.i
  %add88.i = add nuw nsw i64 %add.i, %mul55.i
  %memsize.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 8
  %36 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %memsize.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add88.i, i64 %37)
  %cmp89.i = icmp ugt i64 %add88.i, %37
  br i1 %cmp89.i, label %do.body92.i, label %if.end13

do.body92.i:                                      ; preds = %if.end85.i
  %call93.i = tail call i32 @___ratelimit(ptr noundef nonnull @mbochs_check_framebuffer._rs.59, ptr noundef nonnull @__func__.mbochs_check_framebuffer) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %do.body92.i.mbochs_check_framebuffer.exit.thread_crit_edge, label %do.end98.i

do.body92.i.mbochs_check_framebuffer.exit.thread_crit_edge: ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mbochs_check_framebuffer.exit.thread

do.end98.i:                                       ; preds = %do.body92.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.61, ptr noundef nonnull @__func__.mbochs_check_framebuffer) #19
  br label %mbochs_check_framebuffer.exit.thread

mbochs_check_framebuffer.exit.thread:             ; preds = %do.end98.i, %do.body92.i.mbochs_check_framebuffer.exit.thread_crit_edge, %do.end79.i, %do.body73.i.mbochs_check_framebuffer.exit.thread_crit_edge, %do.end33.i, %do.body27.i.mbochs_check_framebuffer.exit.thread_crit_edge, %if.end.i.mbochs_check_framebuffer.exit.thread_crit_edge
  %38 = call ptr @memset(ptr %mode, i32 0, i32 40)
  br label %if.then12

if.then12:                                        ; preds = %mbochs_check_framebuffer.exit.thread, %if.end7.if.then12_crit_edge
  %drm_format = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 3
  %39 = ptrtoint ptr %drm_format to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %drm_format, align 4
  %width = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 5
  %40 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 13
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %40, align 8
  %42 = call ptr @memset(ptr %width, i32 0, i32 16)
  br label %done

if.end13:                                         ; preds = %if.end85.i
  %call.i = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call.i, label %if.end13.if.end.i99_crit_edge, label %do.end.i98, !prof !258

if.end13.if.end.i99_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i99

do.end.i98:                                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 955, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i99

if.end.i99:                                       ; preds = %do.end.i98, %if.end13.if.end.i99_crit_edge
  %dmabufs.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 13
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i99
  %.pn.in.i = phi ptr [ %dmabufs.i, %if.end.i99 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %43 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dmabufs.i
  br i1 %cmp.not.i, label %for.cond.i.if.then16_crit_edge, label %for.body.i

for.cond.i.if.then16_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

for.body.i:                                       ; preds = %for.cond.i
  %dmabuf.0.i = getelementptr i8, ptr %.pn.i, i32 -60
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(40) %dmabuf.0.i, ptr noundef nonnull dereferenceable(40) %mode, i32 40) #23
  %cmp.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp.i.i, label %mbochs_dmabuf_find_by_mode.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.i

mbochs_dmabuf_find_by_mode.exit:                  ; preds = %for.body.i
  %tobool15.not = icmp eq ptr %dmabuf.0.i, null
  br i1 %tobool15.not, label %mbochs_dmabuf_find_by_mode.exit.if.then16_crit_edge, label %if.end22

mbochs_dmabuf_find_by_mode.exit.if.then16_crit_edge: ; preds = %mbochs_dmabuf_find_by_mode.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then16

if.then16:                                        ; preds = %mbochs_dmabuf_find_by_mode.exit.if.then16_crit_edge, %for.cond.i.if.then16_crit_edge
  call fastcc void @mbochs_dmabuf_alloc(ptr noundef %mdev_state, ptr noundef nonnull %mode)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #16
  br label %cleanup

if.end22:                                         ; preds = %mbochs_dmabuf_find_by_mode.exit
  call void @__sanitizer_cov_trace_pc() #18
  %44 = ptrtoint ptr %dmabuf.0.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dmabuf.0.i, align 8
  %drm_format25 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 3
  %46 = ptrtoint ptr %drm_format25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %drm_format25, align 4
  %width27 = getelementptr i8, ptr %.pn.i, i32 -52
  %47 = ptrtoint ptr %width27 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %width27, align 8
  %width28 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 5
  %49 = ptrtoint ptr %width28 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %width28, align 8
  %height30 = getelementptr i8, ptr %.pn.i, i32 -48
  %50 = ptrtoint ptr %height30 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height30, align 4
  %height31 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 6
  %52 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %height31, align 4
  %stride33 = getelementptr i8, ptr %.pn.i, i32 -44
  %53 = ptrtoint ptr %stride33 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %stride33, align 8
  %stride34 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 7
  %55 = ptrtoint ptr %stride34 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %stride34, align 8
  %size36 = getelementptr i8, ptr %.pn.i, i32 -28
  %56 = ptrtoint ptr %size36 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %size36, align 8
  %conv = trunc i64 %57 to i32
  %size37 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 8
  %58 = ptrtoint ptr %size37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv, ptr %size37, align 4
  %id = getelementptr i8, ptr %.pn.i, i32 -20
  %59 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %id, align 8
  %61 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 13
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %60, ptr %61, align 8
  br label %done

done:                                             ; preds = %if.end22, %if.then12
  %63 = ptrtoint ptr %drm_plane_type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %drm_plane_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %64)
  %cmp39 = icmp eq i32 %64, 1
  br i1 %cmp39, label %land.lhs.true, label %done.if.end52_crit_edge

done.if.end52_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

land.lhs.true:                                    ; preds = %done
  %active_id = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 14
  %65 = ptrtoint ptr %active_id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %active_id, align 8
  %67 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 13
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %69)
  %cmp41.not = icmp eq i32 %66, %69
  br i1 %cmp41.not, label %land.lhs.true.if.end52_crit_edge, label %do.body

land.lhs.true.if.end52_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_query_gfx_plane.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_query_gfx_plane, %if.then48)) #16
          to label %do.end [label %if.then48], !srcloc !272

if.then48:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %70 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mdev_state, align 8
  %72 = ptrtoint ptr %active_id to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %active_id, align 8
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %67, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_query_gfx_plane.__UNIQUE_ID_ddebug284, ptr noundef %71, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %73, i32 noundef %75) #16
  br label %do.end

do.end:                                           ; preds = %if.then48, %do.body
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %67, align 8
  %78 = ptrtoint ptr %active_id to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %active_id, align 8
  br label %if.end52

if.end52:                                         ; preds = %do.end, %land.lhs.true.if.end52_crit_edge, %done.if.end52_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.then16, %if.end3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.end52 ], [ -12, %if.then16 ], [ %., %if.then ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mode) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mbochs_dmabuf_alloc(ptr noundef %mdev_state, ptr nocapture noundef readonly %mode) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 912, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 72) #20
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %mode, i32 40)
  %next_id = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 15
  %2 = ptrtoint ptr %next_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %next_id, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %next_id, align 4
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %id, align 8
  %size = getelementptr inbounds %struct.mbochs_mode, ptr %mode, i32 0, i32 7
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %size, align 8
  %sub = add i64 %6, 4095
  %div1 = lshr i64 %sub, 12
  %conv = trunc i64 %div1 to i32
  %pagecount = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %pagecount to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %pagecount, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %conv, i32 4) #16
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !267

kcalloc.exit.thread:                              ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %pages7 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %pages7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %pages7, align 4
  br label %err_free_dmabuf

if.end7.i.i:                                      ; preds = %if.end23
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #21
  %pages = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %pages, align 4
  %tobool28.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool28.not, label %if.end7.i.i.err_free_dmabuf_crit_edge, label %if.end30

if.end7.i.i.err_free_dmabuf_crit_edge:            ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_free_dmabuf

if.end30:                                         ; preds = %if.end7.i.i
  %offset = getelementptr inbounds %struct.mbochs_mode, ptr %call7.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %offset, align 8
  %shr = lshr i64 %14, 12
  %conv32 = trunc i64 %shr to i32
  %15 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pagecount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.not = icmp eq i32 %16, 0
  br i1 %cmp15.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30.for.body_crit_edge
  %pg.016 = phi i32 [ %inc43, %for.inc.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %add35 = add i32 %pg.016, %conv32
  %call36 = tail call fastcc ptr @__mbochs_get_page(ptr noundef %mdev_state, i32 noundef %add35)
  %17 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %18, i32 %pg.016
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %arrayidx, align 4
  %20 = load ptr, ptr %pages, align 4
  %arrayidx39 = getelementptr ptr, ptr %20, i32 %pg.016
  %21 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx39, align 4
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %while.cond.preheader, label %for.inc

while.cond.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg.016)
  %cmp45.not17 = icmp eq i32 %pg.016, 0
  br i1 %cmp45.not17, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

for.inc:                                          ; preds = %for.body
  %inc43 = add nuw i32 %pg.016, 1
  %23 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagecount, align 8
  %cmp = icmp ult i32 %inc43, %24
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end30.for.end_crit_edge
  %mdev_state44 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %mdev_state44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %mdev_state, ptr %mdev_state44, align 8
  %next = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 6
  %dmabufs = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 13
  %26 = ptrtoint ptr %dmabufs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dmabufs, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %next, ptr noundef %dmabufs, ptr noundef %27) #16
  br i1 %call.i.i, label %if.end.i.i2, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add.exit

if.end.i.i2:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %next, ptr %prev1.i.i, align 4
  %29 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %next, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbochs_dmabuf, ptr %call7.i.i, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dmabufs, ptr %prev3.i.i, align 8
  %31 = ptrtoint ptr %dmabufs to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %next, ptr %dmabufs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i2, %for.end.list_add.exit_crit_edge
  %32 = ptrtoint ptr %mdev_state44 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdev_state44, align 8
  %mdev.i = getelementptr inbounds %struct.mdev_state, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mdev.i, align 8
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_print_dmabuf.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_dmabuf_alloc, %if.then.i)) #16
          to label %cleanup [label %if.then.i], !srcloc !272

if.then.i:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #18
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool4.not.i = icmp eq i32 %37, 0
  %and.i = and i32 %37, 255
  %spec.select.i = select i1 %tobool4.not.i, i32 45, i32 %and.i
  %shr7.i = lshr i32 %37, 8
  %and8.i = and i32 %shr7.i, 255
  %cond11.i = select i1 %tobool4.not.i, i32 45, i32 %and8.i
  %shr14.i = lshr i32 %37, 16
  %and15.i = and i32 %shr14.i, 255
  %cond18.i = select i1 %tobool4.not.i, i32 45, i32 %and15.i
  %shr21.i = lshr i32 %37, 24
  %cond25.i = select i1 %tobool4.not.i, i32 45, i32 %shr21.i
  %width.i = getelementptr inbounds %struct.mbochs_mode, ptr %call7.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.mbochs_mode, ptr %call7.i.i, i32 0, i32 3
  %42 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height.i, align 4
  %stride.i = getelementptr inbounds %struct.mbochs_mode, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %stride.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stride.i, align 8
  %46 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %offset, align 8
  %size.i = getelementptr inbounds %struct.mbochs_mode, ptr %call7.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size.i, align 8
  %50 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pagecount, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_print_dmabuf.__UNIQUE_ID_ddebug279, ptr noundef %35, ptr noundef nonnull @.str.64, ptr noundef nonnull @__func__.mbochs_dmabuf_alloc, i32 noundef %39, i32 noundef %spec.select.i, i32 noundef %cond11.i, i32 noundef %cond18.i, i32 noundef %cond25.i, i32 noundef %41, i32 noundef %43, i32 noundef %45, i64 noundef %47, i64 noundef %49, i32 noundef %51) #16
  br label %cleanup

while.body:                                       ; preds = %put_page.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %pg.118 = phi i32 [ %dec, %put_page.exit.while.body_crit_edge ], [ %pg.016, %while.cond.preheader.while.body_crit_edge ]
  %52 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pages, align 4
  %dec = add i32 %pg.118, -1
  %arrayidx48 = getelementptr ptr, ptr %53, i32 %dec
  %54 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx48, align 4
  %56 = getelementptr inbounds %struct.page, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %and.i.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i3, label %if.then.i.i, !prof !258

if.then.i.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %58, -1
  br label %_compound_head.exit.i

if.end.i.i3:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %59 = ptrtoint ptr %55 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i3, %if.then.i.i
  %retval.0.i.i4 = phi i32 [ %sub.i.i, %if.then.i.i ], [ %59, %if.end.i.i3 ]
  %60 = inttoptr i32 %retval.0.i.i4 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %60, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %61 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i.i5 = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i.i5, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !267

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %63 = inttoptr i32 %retval.0.i.i4 to ptr
  tail call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.21) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !268
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %64 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %64, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mbochs_dmabuf_alloc, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !272

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %60, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %60) #16
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp45.not = icmp eq i32 %dec, 0
  br i1 %cmp45.not, label %put_page.exit.while.end_crit_edge, label %put_page.exit.while.body_crit_edge

put_page.exit.while.body_crit_edge:               ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

put_page.exit.while.end_crit_edge:                ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %put_page.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %65 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pages, align 4
  tail call void @kfree(ptr noundef %66) #16
  br label %err_free_dmabuf

err_free_dmabuf:                                  ; preds = %while.end, %if.end7.i.i.err_free_dmabuf_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err_free_dmabuf, %if.then.i, %list_add.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mbochs_dmabuf_export(ptr noundef %dmabuf) unnamed_addr #5 align 64 {
entry:
  %exp_info = alloca %struct.dma_buf_export_info, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev_state1 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %dmabuf, i32 0, i32 5
  %0 = ptrtoint ptr %mdev_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev_state1, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %exp_info) #16
  %4 = call ptr @memcpy(ptr %exp_info, ptr @__const.mbochs_dmabuf_export.exp_info, i32 24)
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 4
  %call = tail call zeroext i1 @mutex_is_locked(ptr noundef %ops_lock) #16
  br i1 %call, label %entry.if.end_crit_edge, label %do.end, !prof !258

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 985, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %offset = getelementptr inbounds %struct.mbochs_mode, ptr %dmabuf, i32 0, i32 6
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %offset, align 8
  %and = and i64 %6, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.end33, label %do.body23

do.body23:                                        ; preds = %if.end
  %call24 = tail call i32 @___ratelimit(ptr noundef nonnull @mbochs_dmabuf_export._rs, ptr noundef nonnull @__func__.mbochs_dmabuf_export) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.body23.cleanup_crit_edge, label %do.end29

do.body23.cleanup_crit_edge:                      ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.65, ptr noundef nonnull @__func__.mbochs_dmabuf_export) #19
  br label %cleanup

if.end33:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 2
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mbochs_dmabuf_ops, ptr %ops, align 4
  %size = getelementptr inbounds %struct.mbochs_mode, ptr %dmabuf, i32 0, i32 7
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %size, align 8
  %conv = trunc i64 %9 to i32
  %size35 = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 3
  %10 = ptrtoint ptr %size35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %size35, align 4
  %priv = getelementptr inbounds %struct.dma_buf_export_info, ptr %exp_info, i32 0, i32 6
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dmabuf, ptr %priv, align 4
  %call36 = call ptr @dma_buf_export(ptr noundef nonnull %exp_info) #16
  %cmp.i = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body39, label %if.end51

do.body39:                                        ; preds = %if.end33
  %call40 = call i32 @___ratelimit(ptr noundef nonnull @mbochs_dmabuf_export._rs.66, ptr noundef nonnull @__func__.mbochs_dmabuf_export) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %do.body39.cleanup_crit_edge, label %do.end45

do.body39.cleanup_crit_edge:                      ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.end45:                                         ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #18
  %12 = ptrtoint ptr %call36 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.68, ptr noundef nonnull @__func__.mbochs_dmabuf_export, i32 noundef %12) #19
  br label %cleanup

if.end51:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %buf52 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %dmabuf, i32 0, i32 4
  %13 = ptrtoint ptr %buf52 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call36, ptr %buf52, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_dmabuf_export.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_dmabuf_export, %if.then63)) #16
          to label %cleanup [label %if.then63], !srcloc !272

if.then63:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #18
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %dmabuf, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_dmabuf_export.__UNIQUE_ID_ddebug283, ptr noundef %3, ptr noundef nonnull @.str.70, ptr noundef nonnull @__func__.mbochs_dmabuf_export, i32 noundef %15) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end51, %do.end45, %do.body39.cleanup_crit_edge, %do.end29, %do.body23.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %exp_info) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_buf_fd(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_buf_export(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mbochs_map_dmabuf(ptr nocapture noundef readonly %at, i32 noundef %direction) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %at, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %mdev_state = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev_state, align 8
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_map_dmabuf.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_map_dmabuf, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_map_dmabuf.__UNIQUE_ID_ddebug280, ptr noundef %7, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef %9) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 12) #20
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %pages = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 4
  %pagecount = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 3
  %13 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pagecount, align 8
  %size = getelementptr inbounds %struct.mbochs_mode, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %size, align 8
  %conv = trunc i64 %16 to i32
  %call.i = tail call i32 @sg_alloc_table_from_pages_segment(ptr noundef nonnull %call7.i.i, ptr noundef %12, i32 noundef %14, i32 noundef 0, i32 noundef %conv, i32 noundef -1, i32 noundef 3264) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end8.err2_crit_edge, label %if.end12

if.end8.err2_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %err2

if.end12:                                         ; preds = %if.end8
  %dev13 = getelementptr inbounds %struct.dma_buf_attachment, ptr %at, i32 0, i32 1
  %17 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev13, align 4
  %call14 = tail call i32 @dma_map_sgtable(ptr noundef %18, ptr noundef nonnull %call7.i.i, i32 noundef %direction, i32 noundef 0) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %err3

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

err3:                                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @sg_free_table(ptr noundef nonnull %call7.i.i) #16
  br label %err2

err2:                                             ; preds = %err3, %if.end8.err2_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end12.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %err2 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbochs_unmap_dmabuf(ptr nocapture noundef readonly %at, ptr noundef %sg, i32 noundef %direction) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %at, align 4
  %priv = getelementptr inbounds %struct.dma_buf, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %mdev_state = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev_state, align 8
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_unmap_dmabuf.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_unmap_dmabuf, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_unmap_dmabuf.__UNIQUE_ID_ddebug281, ptr noundef %7, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.72, i32 noundef %9) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev5 = getelementptr inbounds %struct.dma_buf_attachment, ptr %at, i32 0, i32 1
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %12 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg, align 4
  %orig_nents.i = getelementptr inbounds %struct.sg_table, ptr %sg, i32 0, i32 2
  %14 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_nents.i, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %11, ptr noundef %13, i32 noundef %15, i32 noundef %direction, i32 noundef 0) #16
  tail call void @sg_free_table(ptr noundef %sg) #16
  tail call void @kfree(ptr noundef %sg) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbochs_release_dmabuf(ptr nocapture noundef readonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mdev_state1 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mdev_state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev_state1, align 8
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_release_dmabuf.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_release_dmabuf, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_release_dmabuf.__UNIQUE_ID_ddebug282, ptr noundef %5, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.73, i32 noundef %7) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %pagecount = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagecount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %pages = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %for.body.lr.ph
  %pg.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %put_page.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %pg.022
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = getelementptr inbounds %struct.page, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %14, align 4
  %and.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !258

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %16, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %13 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %17, %if.end.i.i ]
  %18 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %18, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  %19 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i.i.i.i = icmp eq i32 %20, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !267

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %21 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %21, ptr noundef nonnull @.str.21) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #16, !srcloc !268
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !269
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #16
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #16, !srcloc !270
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %22, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !271
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@mbochs_release_dmabuf, %if.then.i.i.i.i.i)) #16
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !272

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #16
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_page(ptr noundef %18) #16
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %inc = add nuw i32 %pg.022, 1
  %23 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pagecount, align 8
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %put_page.exit.for.body_crit_edge, label %put_page.exit.for.end_crit_edge

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #16
  %buf5 = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %buf5, align 4
  %unlinked = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %unlinked to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %unlinked, align 4, !range !274
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool6.not = icmp eq i8 %27, 0
  br i1 %tobool6.not, label %for.end.if.end8_crit_edge, label %if.then7

for.end.if.end8_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef %1) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.end.if.end8_crit_edge
  tail call void @mutex_unlock(ptr noundef %ops_lock) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_mmap_dmabuf(ptr nocapture noundef readonly %buf, ptr nocapture noundef %vma) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dma_buf, ptr %buf, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %mdev_state = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev_state, align 8
  %mdev = getelementptr inbounds %struct.mdev_state, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbochs_mmap_dmabuf.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbochs_mmap_dmabuf, %if.then)) #16
          to label %do.end [label %if.then], !srcloc !272

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %id = getelementptr inbounds %struct.mbochs_dmabuf, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbochs_mmap_dmabuf.__UNIQUE_ID_ddebug278, ptr noundef %5, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.74, i32 noundef %7) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %10 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mbochs_dmabuf_vm_ops, ptr %vm_ops, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %11 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %1, ptr %vm_private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sgtable(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table_from_pages_segment(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_dmabuf_vm_fault(ptr nocapture noundef %vmf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %pgoff = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 2
  %4 = ptrtoint ptr %pgoff to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pgoff, align 4
  %pagecount = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pagecount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end22, label %do.end, !prof !258

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 795, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.end22:                                         ; preds = %entry
  %pages = getelementptr inbounds %struct.mbochs_dmabuf, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pages, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %12 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %page, align 4
  %13 = getelementptr inbounds %struct.page, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !258

if.then.i.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %11 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  %18 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %19, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !267

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.46) #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #16, !srcloc !273
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #16
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #16, !srcloc !259
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@mbochs_dmabuf_vm_fault, %if.then.i.i.i.i)) #16
          to label %cleanup [label %if.then.i.i.i.i], !srcloc !272

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__page_ref_mod(ptr noundef %17, i32 noundef 1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i.i, %do.end5.i.i, %do.end
  %retval.0 = phi i32 [ 2, %do.end ], [ 0, %do.end5.i.i ], [ 0, %if.then.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbochs_region_vm_fault(ptr nocapture noundef %vmf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vmf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vmf, align 4
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vm_private_data, align 4
  %address = getelementptr inbounds %struct.anon.13, ptr %vmf, i32 0, i32 3
  %4 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %address, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %sub = sub i32 %5, %7
  %shr = lshr i32 %sub, 12
  %pagecount = getelementptr inbounds %struct.mdev_state, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %pagecount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pagecount, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %9)
  %cmp.not = icmp ult i32 %shr, %9
  br i1 %cmp.not, label %mbochs_get_page.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mbochs_get_page.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %ops_lock.i = getelementptr inbounds %struct.mdev_state, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #16
  %call.i = tail call fastcc ptr @__mbochs_get_page(ptr noundef %3, i32 noundef %shr) #16
  tail call void @mutex_unlock(ptr noundef %ops_lock.i) #16
  %page = getelementptr inbounds %struct.vm_fault, ptr %vmf, i32 0, i32 6
  %10 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %page, align 4
  %tobool.not = icmp eq ptr %call.i, null
  %. = select i1 %tobool.not, i32 2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %mbochs_get_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %entry.cleanup_crit_edge ], [ %., %mbochs_get_page.exit ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @memory_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %mbytes = getelementptr inbounds %struct.mbochs_type, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mbytes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mbytes, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.77, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #16
  %arrayidx = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtype_get_type_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @description_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #16
  %arrayidx = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call
  %tobool.not = icmp eq ptr %arrayidx, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %mbytes = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call, i32 1
  %0 = ptrtoint ptr %mbytes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mbytes, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %1, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.82, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_api_show(ptr nocapture noundef readnone %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.84)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_instances_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #16
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @mbochs_avail_mbytes, i32 noundef 4) #16
  %0 = load volatile i32, ptr @mbochs_avail_mbytes, align 4
  %mbytes = getelementptr [3 x %struct.mbochs_type], ptr @mbochs_types, i32 0, i32 %call, i32 1
  %1 = ptrtoint ptr %mbytes to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mbytes, align 4
  %div = udiv i32 %0, %2
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.86, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 118)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readnone }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !62, !64, !65, !66, !68, !70, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !126, !127, !129, !131, !133, !134, !135, !137, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !190, !192, !194, !196, !198, !200, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !220, !222, !224, !225, !227, !229, !230, !232, !234, !235, !237, !239, !241, !243}
!llvm.named.register.sp = !{!245}
!llvm.module.flags = !{!246, !247, !248, !249, !250, !251, !252, !253}
!llvm.ident = !{!254}

!0 = !{ptr @__UNIQUE_ID_license269, !1, !"__UNIQUE_ID_license269", i1 false, i1 false}
!1 = !{!"../samples/vfio-mdev/mbochs.c", i32 92, i32 1}
!2 = !{ptr @__param_count, !3, !"__param_count", i1 false, i1 false}
!3 = !{!"../samples/vfio-mdev/mbochs.c", i32 95, i32 1}
!4 = !{ptr @__UNIQUE_ID_counttype270, !3, !"__UNIQUE_ID_counttype270", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_mem271, !6, !"__UNIQUE_ID_mem271", i1 false, i1 false}
!6 = !{!"../samples/vfio-mdev/mbochs.c", i32 96, i32 1}
!7 = !{ptr @__UNIQUE_ID_import_ns285, !8, !"__UNIQUE_ID_import_ns285", i1 false, i1 false}
!8 = !{!"../samples/vfio-mdev/mbochs.c", i32 1496, i32 1}
!9 = !{ptr @__param_str_count, !3, !"__param_str_count", i1 false, i1 false}
!10 = !{ptr @max_mbytes, !11, !"max_mbytes", i1 false, i1 false}
!11 = !{!"../samples/vfio-mdev/mbochs.c", i32 94, i32 12}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../samples/vfio-mdev/mbochs.c", i32 1438, i32 60}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../samples/vfio-mdev/mbochs.c", i32 1440, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mbochs_dev_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mbochs_dev_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../samples/vfio-mdev/mbochs.c", i32 1445, i32 2}
!22 = !{ptr @mbochs_dev_init._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mbochs_dev_init._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mbochs_dev_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../samples/vfio-mdev/mbochs.c", i32 1451, i32 17}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../samples/vfio-mdev/mbochs.c", i32 1453, i32 3}
!28 = !{ptr @mbochs_dev_init._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mbochs_dev_init._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../samples/vfio-mdev/mbochs.c", i32 1459, i32 28}
!32 = !{ptr @mbochs_avail_mbytes, !33, !"mbochs_avail_mbytes", i1 false, i1 false}
!33 = !{!"../samples/vfio-mdev/mbochs.c", i32 132, i32 17}
!34 = !{ptr @mbochs_devt, !35, !"mbochs_devt", i1 false, i1 false}
!35 = !{!"../samples/vfio-mdev/mbochs.c", i32 128, i32 15}
!36 = !{ptr @mbochs_cdev, !37, !"mbochs_cdev", i1 false, i1 false}
!37 = !{!"../samples/vfio-mdev/mbochs.c", i32 130, i32 20}
!38 = !{ptr @vd_fops, !39, !"vd_fops", i1 false, i1 false}
!39 = !{!"../samples/vfio-mdev/mbochs.c", i32 1423, i32 37}
!40 = !{ptr @mbochs_driver, !41, !"mbochs_driver", i1 false, i1 false}
!41 = !{!"../samples/vfio-mdev/mbochs.c", i32 1406, i32 27}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../samples/vfio-mdev/mbochs.c", i32 540, i32 2}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mbochs_probe._entry, !43, !"_entry", i1 false, i1 false}
!48 = !{ptr @mbochs_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mbochs_probe.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../samples/vfio-mdev/mbochs.c", i32 543, i32 2}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../samples/vfio-mdev/mbochs.c", i32 110, i32 11}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../samples/vfio-mdev/mbochs.c", i32 115, i32 11}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../samples/vfio-mdev/mbochs.c", i32 120, i32 11}
!58 = !{ptr @mbochs_types, !59, !"mbochs_types", i1 false, i1 false}
!59 = !{!"../samples/vfio-mdev/mbochs.c", i32 108, i32 3}
!60 = !{ptr @mbochs_dev_ops, !61, !"mbochs_dev_ops", i1 false, i1 false}
!61 = !{!"../samples/vfio-mdev/mbochs.c", i32 1398, i32 37}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../samples/vfio-mdev/mbochs.c", i32 748, i32 2}
!64 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mbochs_put_pages.__UNIQUE_ID_ddebug277, !63, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../include/linux/mm.h", i32 717, i32 2}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../samples/vfio-mdev/mbochs.c", i32 481, i32 3}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mdev_access.__UNIQUE_ID_ddebug276, !69, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!72 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../samples/vfio-mdev/mbochs.c", i32 314, i32 5}
!76 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @handle_pci_cfg_write._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @handle_pci_cfg_write._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../samples/vfio-mdev/mbochs.c", i32 342, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @handle_mmio_write.__UNIQUE_ID_ddebug272, !80, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../samples/vfio-mdev/mbochs.c", i32 349, i32 3}
!85 = !{ptr @handle_mmio_write.__UNIQUE_ID_ddebug273, !84, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!86 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../samples/vfio-mdev/mbochs.c", i32 202, i32 9}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../samples/vfio-mdev/mbochs.c", i32 185, i32 39}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../samples/vfio-mdev/mbochs.c", i32 186, i32 39}
!92 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../samples/vfio-mdev/mbochs.c", i32 187, i32 39}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../samples/vfio-mdev/mbochs.c", i32 188, i32 39}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../samples/vfio-mdev/mbochs.c", i32 189, i32 39}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../samples/vfio-mdev/mbochs.c", i32 190, i32 39}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../samples/vfio-mdev/mbochs.c", i32 191, i32 39}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../samples/vfio-mdev/mbochs.c", i32 192, i32 39}
!104 = !{ptr @.str.40, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../samples/vfio-mdev/mbochs.c", i32 193, i32 39}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../samples/vfio-mdev/mbochs.c", i32 194, i32 39}
!108 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../samples/vfio-mdev/mbochs.c", i32 195, i32 39}
!110 = !{ptr @vbe_name_list, !111, !"vbe_name_list", i1 false, i1 false}
!111 = !{!"../samples/vfio-mdev/mbochs.c", i32 184, i32 20}
!112 = !{ptr @.str.43, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../samples/vfio-mdev/mbochs.c", i32 379, i32 3}
!114 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @handle_mmio_read.__UNIQUE_ID_ddebug274, !113, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!116 = !{ptr @handle_mmio_read.__UNIQUE_ID_ddebug275, !117, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!117 = !{!"../samples/vfio-mdev/mbochs.c", i32 385, i32 3}
!118 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!120 = !{ptr @.str.46, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!124 = distinct !{null, !125, !"__already_done", i1 false, i1 false}
!125 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!126 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!127 = distinct !{null, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../samples/vfio-mdev/mbochs.c", i32 1130, i32 3}
!133 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @mbochs_query_gfx_plane.__UNIQUE_ID_ddebug284, !132, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../samples/vfio-mdev/mbochs.c", i32 258, i32 3}
!137 = !{ptr @mbochs_check_framebuffer._rs, !136, !"_rs", i1 false, i1 false}
!138 = !{ptr @__func__.mbochs_check_framebuffer, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.54, !136, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mbochs_check_framebuffer._entry, !136, !"_entry", i1 false, i1 false}
!141 = !{ptr @mbochs_check_framebuffer._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @mbochs_check_framebuffer._rs.55, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../samples/vfio-mdev/mbochs.c", i32 274, i32 3}
!144 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @mbochs_check_framebuffer._entry.56, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @mbochs_check_framebuffer._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @mbochs_check_framebuffer._rs.59, !148, !"_rs", i1 false, i1 false}
!148 = !{!"../samples/vfio-mdev/mbochs.c", i32 279, i32 3}
!149 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mbochs_check_framebuffer._entry.60, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @mbochs_check_framebuffer._entry_ptr.62, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @__func__.mbochs_dmabuf_alloc, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../samples/vfio-mdev/mbochs.c", i32 937, i32 30}
!154 = !{ptr @.str.63, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../samples/vfio-mdev/mbochs.c", i32 828, i32 2}
!156 = !{ptr @.str.64, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @mbochs_print_dmabuf.__UNIQUE_ID_ddebug279, !155, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!158 = !{ptr @mbochs_dmabuf_export._rs, !159, !"_rs", i1 false, i1 false}
!159 = !{!"../samples/vfio-mdev/mbochs.c", i32 988, i32 3}
!160 = !{ptr @__func__.mbochs_dmabuf_export, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.65, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mbochs_dmabuf_export._entry, !159, !"_entry", i1 false, i1 false}
!163 = !{ptr @mbochs_dmabuf_export._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @mbochs_dmabuf_export._rs.66, !165, !"_rs", i1 false, i1 false}
!165 = !{!"../samples/vfio-mdev/mbochs.c", i32 999, i32 3}
!166 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @mbochs_dmabuf_export._entry.67, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @mbochs_dmabuf_export._entry_ptr.69, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.70, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../samples/vfio-mdev/mbochs.c", i32 1005, i32 2}
!171 = !{ptr @mbochs_dmabuf_export.__UNIQUE_ID_ddebug283, !170, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!172 = !{ptr @mbochs_dmabuf_ops, !173, !"mbochs_dmabuf_ops", i1 false, i1 false}
!173 = !{!"../samples/vfio-mdev/mbochs.c", i32 899, i32 27}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../samples/vfio-mdev/mbochs.c", i32 845, i32 2}
!176 = !{ptr @mbochs_map_dmabuf.__UNIQUE_ID_ddebug280, !175, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../samples/vfio-mdev/mbochs.c", i32 873, i32 2}
!179 = !{ptr @mbochs_unmap_dmabuf.__UNIQUE_ID_ddebug281, !178, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../samples/vfio-mdev/mbochs.c", i32 887, i32 2}
!182 = !{ptr @mbochs_release_dmabuf.__UNIQUE_ID_ddebug282, !181, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!183 = !{ptr @.str.74, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../samples/vfio-mdev/mbochs.c", i32 812, i32 2}
!185 = !{ptr @mbochs_mmap_dmabuf.__UNIQUE_ID_ddebug278, !184, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!186 = !{ptr @mbochs_dmabuf_vm_ops, !187, !"mbochs_dmabuf_vm_ops", i1 false, i1 false}
!187 = !{!"../samples/vfio-mdev/mbochs.c", i32 803, i32 42}
!188 = !{ptr @mbochs_region_vm_ops, !189, !"mbochs_region_vm_ops", i1 false, i1 false}
!189 = !{!"../samples/vfio-mdev/mbochs.c", i32 767, i32 42}
!190 = !{ptr @mdev_dev_groups, !191, !"mdev_dev_groups", i1 false, i1 false}
!191 = !{!"../samples/vfio-mdev/mbochs.c", i32 1323, i32 38}
!192 = !{ptr @.str.75, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../samples/vfio-mdev/mbochs.c", i32 1319, i32 11}
!194 = !{ptr @mdev_dev_group, !195, !"mdev_dev_group", i1 false, i1 false}
!195 = !{!"../samples/vfio-mdev/mbochs.c", i32 1318, i32 37}
!196 = !{ptr @mdev_dev_attrs, !197, !"mdev_dev_attrs", i1 false, i1 false}
!197 = !{!"../samples/vfio-mdev/mbochs.c", i32 1313, i32 26}
!198 = !{ptr @.str.76, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../samples/vfio-mdev/mbochs.c", i32 1311, i32 8}
!200 = !{ptr @dev_attr_memory, !199, !"dev_attr_memory", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../samples/vfio-mdev/mbochs.c", i32 1309, i32 22}
!203 = !{ptr @mbochs_class, !204, !"mbochs_class", i1 false, i1 false}
!204 = !{!"../samples/vfio-mdev/mbochs.c", i32 129, i32 22}
!205 = !{ptr @mbochs_dev, !206, !"mbochs_dev", i1 false, i1 false}
!206 = !{!"../samples/vfio-mdev/mbochs.c", i32 131, i32 22}
!207 = !{ptr @mdev_fops, !208, !"mdev_fops", i1 false, i1 false}
!208 = !{!"../samples/vfio-mdev/mbochs.c", i32 1417, i32 37}
!209 = !{ptr @mdev_type_groups, !210, !"mdev_type_groups", i1 false, i1 false}
!210 = !{!"../samples/vfio-mdev/mbochs.c", i32 1391, i32 32}
!211 = !{ptr @.str.78, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../samples/vfio-mdev/mbochs.c", i32 1377, i32 11}
!213 = !{ptr @mdev_type_group1, !214, !"mdev_type_group1", i1 false, i1 false}
!214 = !{!"../samples/vfio-mdev/mbochs.c", i32 1376, i32 31}
!215 = !{ptr @mdev_types_attrs, !216, !"mdev_types_attrs", i1 false, i1 false}
!216 = !{!"../samples/vfio-mdev/mbochs.c", i32 1368, i32 26}
!217 = !{ptr @.str.79, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../samples/vfio-mdev/mbochs.c", i32 1336, i32 8}
!219 = !{ptr @mdev_type_attr_name, !218, !"mdev_type_attr_name", i1 false, i1 false}
!220 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../samples/vfio-mdev/mbochs.c", i32 1334, i32 22}
!222 = !{ptr @.str.81, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../samples/vfio-mdev/mbochs.c", i32 1347, i32 8}
!224 = !{ptr @mdev_type_attr_description, !223, !"mdev_type_attr_description", i1 false, i1 false}
!225 = !{ptr @.str.82, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../samples/vfio-mdev/mbochs.c", i32 1344, i32 22}
!227 = !{ptr @.str.83, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../samples/vfio-mdev/mbochs.c", i32 1366, i32 8}
!229 = !{ptr @mdev_type_attr_device_api, !228, !"mdev_type_attr_device_api", i1 false, i1 false}
!230 = !{ptr @.str.84, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../samples/vfio-mdev/mbochs.c", i32 1364, i32 30}
!232 = !{ptr @.str.85, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../samples/vfio-mdev/mbochs.c", i32 1359, i32 8}
!234 = !{ptr @mdev_type_attr_available_instances, !233, !"mdev_type_attr_available_instances", i1 false, i1 false}
!235 = !{ptr @.str.86, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../samples/vfio-mdev/mbochs.c", i32 1357, i32 22}
!237 = !{ptr @.str.87, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../samples/vfio-mdev/mbochs.c", i32 1382, i32 11}
!239 = !{ptr @mdev_type_group2, !240, !"mdev_type_group2", i1 false, i1 false}
!240 = !{!"../samples/vfio-mdev/mbochs.c", i32 1381, i32 31}
!241 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../samples/vfio-mdev/mbochs.c", i32 1387, i32 11}
!243 = !{ptr @mdev_type_group3, !244, !"mdev_type_group3", i1 false, i1 false}
!244 = !{!"../samples/vfio-mdev/mbochs.c", i32 1386, i32 31}
!245 = !{!"sp"}
!246 = !{i32 1, !"wchar_size", i32 2}
!247 = !{i32 1, !"min_enum_size", i32 4}
!248 = !{i32 8, !"branch-target-enforcement", i32 0}
!249 = !{i32 8, !"sign-return-address", i32 0}
!250 = !{i32 8, !"sign-return-address-all", i32 0}
!251 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!252 = !{i32 7, !"uwtable", i32 1}
!253 = !{i32 7, !"frame-pointer", i32 2}
!254 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!255 = !{i64 2148489278}
!256 = !{i64 871964, i64 871988, i64 872009, i64 872026, i64 872043}
!257 = !{i64 2148489504}
!258 = !{!"branch_weights", i32 2000, i32 1}
!259 = !{i64 2148387431, i64 2148387457, i64 2148387486, i64 2148387520, i64 2148387551, i64 2148387574}
!260 = !{!"auto-init"}
!261 = !{i64 2153327766, i64 2153327791}
!262 = !{i64 2153327085, i64 2153327110}
!263 = !{i64 5818579}
!264 = !{i64 5818776}
!265 = !{i64 2153304009}
!266 = !{i64 2155442189, i64 2155442469, i64 2155442803, i64 2155443137}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{i64 2153672372, i64 2153672855, i64 2153672409, i64 2153672465, i64 2153672499, i64 2153672523, i64 2153672564, i64 2153672585, i64 2153672613, i64 2153672647}
!269 = !{i64 2148475907}
!270 = !{i64 2148390616, i64 2148390648, i64 2148390677, i64 2148390711, i64 2148390742, i64 2148390765}
!271 = !{i64 2148476136}
!272 = !{i64 2148988324, i64 2148988329, i64 2148988342, i64 2148988386, i64 2148988420, i64 2148988441}
!273 = !{i64 2153696345, i64 2153696829, i64 2153696382, i64 2153696438, i64 2153696472, i64 2153696496, i64 2153696537, i64 2153696558, i64 2153696586, i64 2153696620}
!274 = !{i8 0, i8 2}
