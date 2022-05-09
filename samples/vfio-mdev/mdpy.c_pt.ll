; ModuleID = '/llk/IR_all_yes/samples/vfio-mdev/mdpy.c_pt.bc'
source_filename = "../samples/vfio-mdev/mdpy.c"
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
%struct.mdpy_type = type { ptr, i32, i32, i32, i32 }
%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mdev_type_attribute = type { %struct.attribute, ptr, ptr }
%struct.mdev_state = type { %struct.vfio_device, ptr, i32, %struct.mutex, ptr, %struct.vfio_device_info, ptr, i32, ptr }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.vfio_device_info = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.vfio_irq_info = type { i32, i32, i32, i32 }
%struct.vfio_device_gfx_plane_info = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@__UNIQUE_ID_license236 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__param_str_count = internal constant [6 x i8] c"count\00", align 1
@__this_module = external dso_local global %struct.module, align 128
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_devices = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_count = internal constant %struct.kernel_param { ptr @__param_str_count, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @max_devices } }, section "__param", align 4
@__UNIQUE_ID_counttype237 = internal constant [19 x i8] c"parmtype=count:int\00", section ".modinfo", align 1
@__UNIQUE_ID_count238 = internal constant [34 x i8] c"parm=count:number of mdpy devices\00", section ".modinfo", align 1
@mdpy_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdpy\00", [27 x i8] zeroinitializer }, align 32
@mdpy_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Error: failed to register mdpy_dev, err: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mdpy_dev_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samples/vfio-mdev/mdpy.c\00", [39 x i8] zeroinitializer }, align 32
@mdpy_dev_init._entry_ptr = internal global ptr @mdpy_dev_init._entry, section ".printk_index", align 4
@mdpy_cdev = internal global { %struct.cdev, [32 x i8] } zeroinitializer, align 32
@vd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mdpy_dev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: major %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mdpy_dev_init._entry_ptr.6 = internal global ptr @mdpy_dev_init._entry.4, section ".printk_index", align 4
@mdpy_driver = internal global { %struct.mdev_driver, [44 x i8] } { %struct.mdev_driver { ptr @mdpy_probe, ptr @mdpy_remove, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr @.str, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdev_dev_groups, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mdpy_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mdpy_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mdpy_dev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 762, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Error: failed to register mdpy_dev class\0A\00", [52 x i8] zeroinitializer }, align 32
@mdpy_dev_init._entry_ptr.9 = internal global ptr @mdpy_dev_init._entry.7, section ".printk_index", align 4
@mdpy_dev = internal global { %struct.device, [224 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mdev_fops = internal constant { %struct.mdev_parent_ops, [40 x i8] } { %struct.mdev_parent_ops { ptr @__this_module, ptr @mdpy_driver, ptr null, ptr null, ptr @mdev_type_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mdev_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mdev_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mdpy_types = internal constant { [3 x %struct.mdpy_type], [36 x i8] } { [3 x %struct.mdpy_type] [%struct.mdpy_type { ptr @.str.16, i32 875713112, i32 4, i32 640, i32 480 }, %struct.mdpy_type { ptr @.str.17, i32 875713112, i32 4, i32 1024, i32 768 }, %struct.mdpy_type { ptr @.str.18, i32 875713112, i32 4, i32 1920, i32 1080 }], [36 x i8] zeroinitializer }, align 32
@mdpy_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mdpy_dev_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr null, ptr null, ptr null, ptr @mdpy_read, ptr @mdpy_write, ptr @mdpy_ioctl, ptr @mdpy_mmap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mdpy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 250, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s (%dx%d)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mdpy_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mdpy_probe._entry_ptr = internal global ptr @mdpy_probe._entry, section ".printk_index", align 4
@mdpy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mdev_state->ops_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdpy-vga\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mdpy-xga\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdpy-hd\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mdev_access._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 192, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: %s @0x%llx (unhandled)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdev_access\00", [20 x i8] zeroinitializer }, align 32
@mdev_access._entry_ptr = internal global ptr @mdev_access._entry, section ".printk_index", align 4
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"WR\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RD\00", [29 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 157, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"BAR0 @ 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_pci_cfg_write\00", [43 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry_ptr = internal global ptr @handle_pci_cfg_write._entry, section ".printk_index", align 4
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mdpy_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 280, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mdpy_remove\00", [20 x i8] zeroinitializer }, align 32
@mdpy_remove._entry_ptr = internal global ptr @mdpy_remove._entry, section ".printk_index", align 4
@mdev_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.30, ptr null, ptr null, ptr @mdev_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@mdev_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_resolution, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_resolution = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resolution_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"resolution\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%dx%d\0A\00", [25 x i8] zeroinitializer }, align 32
@mdev_type_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mdev_type_group1, ptr @mdev_type_group2, ptr @mdev_type_group3, ptr null], [16 x i8] zeroinitializer }, align 32
@mdev_type_group1 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.33, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_type_group2 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.41, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_type_group3 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.42, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vga\00", [28 x i8] zeroinitializer }, align 32
@mdev_types_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @mdev_type_attr_name, ptr @mdev_type_attr_description, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr null], [44 x i8] zeroinitializer }, align 32
@mdev_type_attr_name = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_description = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_device_api = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_api_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_available_instances = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_instances_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"description\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"virtual display, %dx%d framebuffer\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_api\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfio-pci\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_instances\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"xga\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hd\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 15211, i64 15212, i64 15213, i64 15214, i64 15215, i64 15218]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 7, i64 16]
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"max_devices\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 46, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"mdpy_devt\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 83, i32 15 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 747, i32 58 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 749, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"mdpy_cdev\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 85, i32 20 }
@___asan_gen_.68 = private unnamed_addr constant [8 x i8] c"vd_fops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 734, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 754, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"mdpy_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 717, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 760, i32 15 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"mdpy_class\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 84, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 762, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [9 x i8] c"mdpy_dev\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 86, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 768, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"mdev_fops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 728, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"mdev_dev_groups\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 639, i32 38 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"mdpy_types\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 61, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [11 x i8] c"mdpy_count\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 87, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant [13 x i8] c"mdpy_dev_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 710, i32 37 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 249, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 252, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 63, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 69, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 75, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 190, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 157, i32 5 }
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 174, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 280, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"mdev_dev_group\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 634, i32 37 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 635, i32 11 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"mdev_dev_attrs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 629, i32 26 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"dev_attr_resolution\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 627, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 623, i32 22 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"mdev_type_groups\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 703, i32 32 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"mdev_type_group1\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 688, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"mdev_type_group2\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 693, i32 31 }
@___asan_gen_.206 = private unnamed_addr constant [17 x i8] c"mdev_type_group3\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 698, i32 31 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 689, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"mdev_types_attrs\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 680, i32 26 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c"mdev_type_attr_name\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"mdev_type_attr_description\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [26 x i8] c"mdev_type_attr_device_api\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [35 x i8] c"mdev_type_attr_available_instances\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 652, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 663, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 660, i32 22 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 678, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 676, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 671, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 669, i32 22 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 694, i32 11 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [28 x i8] c"../samples/vfio-mdev/mdpy.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 699, i32 11 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_count238, ptr @__UNIQUE_ID_counttype237, ptr @__UNIQUE_ID_license236, ptr @__param_count, ptr @handle_pci_cfg_write._entry, ptr @handle_pci_cfg_write._entry_ptr, ptr @mdev_access._entry, ptr @mdev_access._entry_ptr, ptr @mdpy_dev_init._entry, ptr @mdpy_dev_init._entry.4, ptr @mdpy_dev_init._entry.7, ptr @mdpy_dev_init._entry_ptr, ptr @mdpy_dev_init._entry_ptr.6, ptr @mdpy_dev_init._entry_ptr.9, ptr @mdpy_probe._entry, ptr @mdpy_probe._entry_ptr, ptr @mdpy_remove._entry, ptr @mdpy_remove._entry_ptr, ptr @max_devices, ptr @mdpy_devt, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mdpy_cdev, ptr @vd_fops, ptr @.str.5, ptr @mdpy_driver, ptr @mdpy_dev_init.__key, ptr @mdpy_class, ptr @.str.8, ptr @mdpy_dev, ptr @.str.10, ptr @mdev_fops, ptr @mdev_dev_groups, ptr @mdpy_types, ptr @mdpy_count, ptr @mdpy_dev_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mdpy_probe.__key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mdev_dev_group, ptr @.str.30, ptr @mdev_dev_attrs, ptr @dev_attr_resolution, ptr @.str.31, ptr @.str.32, ptr @mdev_type_groups, ptr @mdev_type_group1, ptr @mdev_type_group2, ptr @mdev_type_group3, ptr @.str.33, ptr @mdev_types_attrs, ptr @mdev_type_attr_name, ptr @mdev_type_attr_description, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_devices to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_cdev to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_fops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_types to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_dev_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_access._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pci_cfg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdpy_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resolution to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_types_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_device_api to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_available_instances to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mdpy_devt, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %call) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cdev_init(ptr noundef nonnull @mdpy_cdev, ptr noundef nonnull @vd_fops) #14
  %0 = load i32, ptr @mdpy_devt, align 4
  %call2 = tail call i32 @cdev_add(ptr noundef nonnull @mdpy_cdev, i32 noundef %0, i32 noundef 1048576) #14
  %1 = load i32, ptr @mdpy_devt, align 4
  %shr = lshr i32 %1, 20
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %shr) #17
  %call8 = tail call i32 @mdev_register_driver(ptr noundef nonnull @mdpy_driver) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.err_cdev_crit_edge

if.end.err_cdev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_cdev

if.end10:                                         ; preds = %if.end
  %call12 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str, ptr noundef nonnull @mdpy_dev_init.__key) #14
  store ptr %call12, ptr @mdpy_class, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end17, label %if.end21

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #17
  %2 = load ptr, ptr @mdpy_class, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %err_driver

if.end21:                                         ; preds = %if.end10
  store ptr %call12, ptr getelementptr inbounds (%struct.device, ptr @mdpy_dev, i32 0, i32 33), align 4
  store ptr @mdpy_device_release, ptr getelementptr inbounds (%struct.device, ptr @mdpy_dev, i32 0, i32 35), align 4
  %call22 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @mdpy_dev, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str) #14
  %call23 = tail call i32 @device_register(ptr noundef nonnull @mdpy_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end21.err_class_crit_edge

if.end21.err_class_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_class

if.end26:                                         ; preds = %if.end21
  %call27 = tail call i32 @mdev_register_device(ptr noundef nonnull @mdpy_dev, ptr noundef nonnull @mdev_fops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %err_device

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_device:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @device_unregister(ptr noundef nonnull @mdpy_dev) #14
  br label %err_class

err_class:                                        ; preds = %err_device, %if.end21.err_class_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end21.err_class_crit_edge ], [ %call27, %err_device ]
  %4 = load ptr, ptr @mdpy_class, align 4
  tail call void @class_destroy(ptr noundef %4) #14
  br label %err_driver

err_driver:                                       ; preds = %err_class, %do.end17
  %ret.1 = phi i32 [ %3, %do.end17 ], [ %ret.0, %err_class ]
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mdpy_driver) #14
  br label %err_cdev

err_cdev:                                         ; preds = %err_driver, %if.end.err_cdev_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end.err_cdev_crit_edge ], [ %ret.1, %err_driver ]
  tail call void @cdev_del(ptr noundef nonnull @mdpy_cdev) #14
  %5 = load i32, ptr @mdpy_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %5, i32 noundef 1048576) #14
  br label %cleanup

cleanup:                                          ; preds = %err_cdev, %if.end26.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %ret.2, %err_cdev ], [ 0, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  store ptr null, ptr getelementptr inbounds (%struct.device, ptr @mdpy_dev, i32 0, i32 5), align 8
  tail call void @mdev_unregister_device(ptr noundef nonnull @mdpy_dev) #14
  tail call void @device_unregister(ptr noundef nonnull @mdpy_dev) #14
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mdpy_driver) #14
  tail call void @cdev_del(ptr noundef nonnull @mdpy_cdev) #14
  %0 = load i32, ptr @mdpy_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #14
  %1 = load ptr, ptr @mdpy_class, align 4
  tail call void @class_destroy(ptr noundef %1) #14
  store ptr null, ptr @mdpy_class, align 4
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
define internal void @mdpy_device_release(ptr nocapture noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdpy_probe(ptr noundef %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdev_get_type_group_id(ptr noundef %mdev) #14
  %arrayidx = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call
  %0 = load i32, ptr @mdpy_count, align 4
  %1 = load i32, ptr @max_devices, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %1)
  %cmp.not = icmp ult i32 %0, %1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 232) #18
  %cmp3 = icmp eq ptr %call7.i.i, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @vfio_init_group_dev(ptr noundef nonnull %call7.i.i, ptr noundef %mdev, ptr noundef nonnull @mdpy_dev_ops) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i135 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 255) #18
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %vconfig to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i135, ptr %vconfig, align 8
  %cmp9 = icmp eq ptr %call7.i.i135, null
  br i1 %cmp9, label %if.end5.err_state_crit_edge, label %if.end11

if.end5.err_state_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_state

if.end11:                                         ; preds = %if.end5
  %width = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call, i32 3
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %height = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call, i32 4
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %mul = mul i32 %8, %6
  %bytepp = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call, i32 2
  %9 = ptrtoint ptr %bytepp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytepp, align 4
  %mul12 = mul i32 %mul, %10
  %sub.i136 = add i32 %mul12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i136)
  %tobool.not.i.i.i = icmp eq i32 %sub.i136, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i136, i1 true) #14, !range !147
  %sub.i.i.i = sub nuw nsw i32 32, %11
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %call63 = tail call noalias ptr @vmalloc_user(i32 noundef %shl.i) #19
  %memblk = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %memblk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call63, ptr %memblk, align 4
  %tobool.not = icmp eq ptr %call63, null
  br i1 %tobool.not, label %if.end11.err_vconfig_crit_edge, label %do.end

if.end11.err_vconfig_crit_edge:                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_vconfig

do.end:                                           ; preds = %if.end11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %14, i32 noundef %6, i32 noundef %8) #17
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %ops_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mdpy_probe.__key) #14
  %mdev72 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %mdev72 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %mdev, ptr %mdev72, align 4
  %type73 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %type73 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx, ptr %type73, align 4
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %memsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shl.i, ptr %memsize, align 8
  tail call fastcc void @mdpy_create_config_space(ptr noundef nonnull %call7.i.i)
  tail call fastcc void @mdpy_reset(ptr noundef nonnull %call7.i.i)
  %18 = load i32, ptr @mdpy_count, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr @mdpy_count, align 4
  %call76 = tail call i32 @vfio_register_emulated_iommu_dev(ptr noundef nonnull %call7.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end79, label %err_mem

if.end79:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

err_mem:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %memblk, align 4
  tail call void @vfree(ptr noundef %21) #14
  br label %err_vconfig

err_vconfig:                                      ; preds = %err_mem, %if.end11.err_vconfig_crit_edge
  %ret.0 = phi i32 [ %call76, %err_mem ], [ -12, %if.end11.err_vconfig_crit_edge ]
  %22 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vconfig, align 8
  tail call void @kfree(ptr noundef %23) #14
  br label %err_state

err_state:                                        ; preds = %err_vconfig, %if.end5.err_state_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_vconfig ], [ -12, %if.end5.err_state_crit_edge ]
  tail call void @vfio_uninit_group_dev(ptr noundef nonnull %call7.i.i) #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_state, %if.end79, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_state ], [ 0, %if.end79 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mdpy_remove(ptr noundef %mdev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %mdev, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29) #17
  tail call void @vfio_unregister_group_dev(ptr noundef %1) #14
  %memblk = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memblk, align 4
  tail call void @vfree(ptr noundef %3) #14
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vconfig, align 4
  tail call void @kfree(ptr noundef %5) #14
  tail call void @vfio_uninit_group_dev(ptr noundef %1) #14
  tail call void @kfree(ptr noundef %1) #14
  %6 = load i32, ptr @mdpy_count, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr @mdpy_count, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_get_type_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_init_group_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_user(i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @mdpy_create_config_space(ptr nocapture noundef %mdev_state) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %0 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vconfig, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 6966, ptr %1, align 2
  %3 = load ptr, ptr %vconfig, align 4
  %arrayidx2 = getelementptr i8, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 15, ptr %arrayidx2, align 2
  %5 = load ptr, ptr %vconfig, align 4
  %arrayidx4 = getelementptr i8, ptr %5, i32 44
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 6900, ptr %arrayidx4, align 2
  %7 = load ptr, ptr %vconfig, align 4
  %arrayidx6 = getelementptr i8, ptr %7, i32 46
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 4352, ptr %arrayidx6, align 2
  %9 = load ptr, ptr %vconfig, align 4
  %arrayidx8 = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 3, ptr %arrayidx8, align 2
  %11 = load ptr, ptr %vconfig, align 4
  %arrayidx10 = getelementptr i8, ptr %11, i32 6
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %arrayidx10, align 2
  %13 = load ptr, ptr %vconfig, align 4
  %arrayidx12 = getelementptr i8, ptr %13, i32 10
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 896, ptr %arrayidx12, align 2
  %15 = load ptr, ptr %vconfig, align 4
  %arrayidx14 = getelementptr i8, ptr %15, i32 8
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx14, align 1
  %17 = load ptr, ptr %vconfig, align 4
  %arrayidx16 = getelementptr i8, ptr %17, i32 16
  %18 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %arrayidx16, align 4
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 7
  %19 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %memsize, align 4
  %add = sub i32 0, %20
  %bar_mask = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %21 = ptrtoint ptr %bar_mask to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %bar_mask, align 4
  %22 = load ptr, ptr %vconfig, align 4
  %arrayidx18 = getelementptr i8, ptr %22, i32 52
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 64, ptr %arrayidx18, align 1
  %24 = load ptr, ptr %vconfig, align 4
  %arrayidx20 = getelementptr i8, ptr %24, i32 64
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 9, ptr %arrayidx20, align 1
  %26 = load ptr, ptr %vconfig, align 4
  %arrayidx22 = getelementptr i8, ptr %26, i32 65
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx22, align 1
  %28 = load ptr, ptr %vconfig, align 4
  %arrayidx24 = getelementptr i8, ptr %28, i32 66
  %29 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 16, ptr %arrayidx24, align 1
  %type = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 6
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type, align 4
  %format = getelementptr inbounds %struct.mdpy_type, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %format, align 4
  %34 = load ptr, ptr %vconfig, align 4
  %arrayidx26 = getelementptr i8, ptr %34, i32 68
  %35 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %arrayidx26, align 4
  %36 = load ptr, ptr %type, align 4
  %width = getelementptr inbounds %struct.mdpy_type, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %width, align 4
  %39 = load ptr, ptr %vconfig, align 4
  %arrayidx29 = getelementptr i8, ptr %39, i32 72
  %40 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %arrayidx29, align 4
  %41 = load ptr, ptr %type, align 4
  %height = getelementptr inbounds %struct.mdpy_type, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %height, align 4
  %44 = load ptr, ptr %vconfig, align 4
  %arrayidx32 = getelementptr i8, ptr %44, i32 76
  %45 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %arrayidx32, align 4
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mdpy_reset(ptr nocapture noundef readonly %mdev_state) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 6
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %width = getelementptr inbounds %struct.mdpy_type, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %bytepp = getelementptr inbounds %struct.mdpy_type, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bytepp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bytepp, align 4
  %mul = mul i32 %5, %3
  %height1 = getelementptr inbounds %struct.mdpy_type, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %height1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %memblk = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %7, %for.body.lr.ph ], [ %17, %for.body.for.body_crit_edge ]
  %i.03 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %memblk, align 4
  %mul3 = mul i32 %i.03, %mul
  %add.ptr = getelementptr i8, ptr %10, i32 %mul3
  %mul4 = mul i32 %i.03, 255
  %div = udiv i32 %mul4, %8
  %11 = trunc i32 %div to i8
  %12 = zext i8 %11 to i32
  %13 = call ptr @memset(ptr %add.ptr, i32 %12, i32 %mul)
  %inc = add nuw i32 %i.03, 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type, align 4
  %height = getelementptr inbounds %struct.mdpy_type, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_emulated_iommu_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_uninit_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdpy_read(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #5 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock.i126 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 3
  %memsize.i135 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 7
  %memblk.i140 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  %vconfig.i129 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not210 = icmp eq i32 %count, 0
  br i1 %tobool.not210, label %entry.cleanup45_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

while.body:                                       ; preds = %cleanup42.while.body_crit_edge, %entry.while.body_crit_edge
  %done.0217 = phi i32 [ %add, %cleanup42.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %buf.addr.0215 = phi ptr [ %add.ptr41, %cleanup42.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %count.addr.0211 = phi i32 [ %sub, %cleanup42.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count.addr.0211)
  %cmp = icmp ugt i32 %count.addr.0211, 3
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !148
  call void @mutex_lock_nested(ptr noundef %ops_lock.i126, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %1)
  %cmp.i = icmp slt i64 %1, 255
  br i1 %cmp.i, label %if.then.i, label %if.else2.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %vconfig.i129 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vconfig.i129, align 4
  %idx.ext.i = trunc i64 %1 to i32
  %add.ptr.i = getelementptr i8, ptr %5, i32 %idx.ext.i
  br label %if.end

if.else2.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %1)
  %cmp3.i = icmp ugt i64 %1, 4095
  br i1 %cmp3.i, label %land.lhs.true.i, label %if.else2.i.cleanup.thread_crit_edge

if.else2.i.cleanup.thread_crit_edge:              ; preds = %if.else2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

land.lhs.true.i:                                  ; preds = %if.else2.i
  %add.i = add nuw i64 %1, 4
  %6 = ptrtoint ptr %memsize.i135 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %memsize.i135, align 4
  %add6.i = add i32 %7, 4096
  %conv7.i = zext i32 %add6.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %conv7.i)
  %cmp8.not.i = icmp sgt i64 %add.i, %conv7.i
  br i1 %cmp8.not.i, label %land.lhs.true.i.cleanup.thread_crit_edge, label %if.then10.i

land.lhs.true.i.cleanup.thread_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then10.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %memblk.i140 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %memblk.i140, align 4
  br label %if.end

cleanup.thread:                                   ; preds = %land.lhs.true.i.cleanup.thread_crit_edge, %if.else2.i.cleanup.thread_crit_edge
  %10 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i64 noundef %1) #17
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  br label %cleanup45

if.end:                                           ; preds = %if.then10.i, %if.then.i
  %storemerge182.in = phi ptr [ %add.ptr.i, %if.then.i ], [ %9, %if.then10.i ]
  %12 = ptrtoint ptr %storemerge182.in to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %storemerge182 = load i32, ptr %storemerge182.in, align 1
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge182, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.end.cleanup.thread150_crit_edge, label %if.end.i.i

if.end.cleanup.thread150_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread150

if.end.i.i:                                       ; preds = %if.end
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0215, i32 4, i32 -1226833920) #20, !srcloc !149
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %cleanup, label %if.end.i.i.cleanup.thread150_crit_edge

if.end.i.i.cleanup.thread150_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread150

cleanup.thread150:                                ; preds = %if.end.i.i.cleanup.thread150_crit_edge, %if.end.cleanup.thread150_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0215, ptr noundef nonnull %val, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  br i1 %tobool5.not, label %cleanup.cleanup42_crit_edge, label %cleanup.cleanup45_crit_edge

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0211)
  %cmp8 = icmp ugt i32 %count.addr.0211, 1
  br i1 %cmp8, label %land.lhs.true9thread-pre-split, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else25

land.lhs.true9thread-pre-split:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %15)
  %.pr = load i64, ptr %ppos, align 8
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %land.lhs.true9thread-pre-split, %land.lhs.true.land.lhs.true9_crit_edge
  %16 = phi i64 [ %.pr, %land.lhs.true9thread-pre-split ], [ %1, %land.lhs.true.land.lhs.true9_crit_edge ]
  %17 = and i64 %16, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool11.not = icmp eq i64 %17, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.else25_crit_edge

land.lhs.true9.if.else25_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #14
  %18 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %val13, align 2, !annotation !148
  call void @mutex_lock_nested(ptr noundef %ops_lock.i126, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %16)
  %cmp.i108 = icmp slt i64 %16, 255
  br i1 %cmp.i108, label %if.then.i109, label %if.else2.i114

if.then.i109:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %vconfig.i129 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vconfig.i129, align 4
  %idx.ext.i111 = trunc i64 %16 to i32
  %add.ptr.i112 = getelementptr i8, ptr %20, i32 %idx.ext.i111
  br label %if.end17

if.else2.i114:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %16)
  %cmp3.i113 = icmp ugt i64 %16, 4095
  br i1 %cmp3.i113, label %land.lhs.true.i120, label %if.else2.i114.cleanup22.thread_crit_edge

if.else2.i114.cleanup22.thread_crit_edge:         ; preds = %if.else2.i114
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22.thread

land.lhs.true.i120:                               ; preds = %if.else2.i114
  %add.i115 = add nuw i64 %16, 2
  %21 = ptrtoint ptr %memsize.i135 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %memsize.i135, align 4
  %add6.i117 = add i32 %22, 4096
  %conv7.i118 = zext i32 %add6.i117 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i115, i64 %conv7.i118)
  %cmp8.not.i119 = icmp sgt i64 %add.i115, %conv7.i118
  br i1 %cmp8.not.i119, label %land.lhs.true.i120.cleanup22.thread_crit_edge, label %if.then10.i122

land.lhs.true.i120.cleanup22.thread_crit_edge:    ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22.thread

if.then10.i122:                                   ; preds = %land.lhs.true.i120
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %memblk.i140 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %memblk.i140, align 4
  br label %if.end17

cleanup22.thread:                                 ; preds = %land.lhs.true.i120.cleanup22.thread_crit_edge, %if.else2.i114.cleanup22.thread_crit_edge
  %25 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i64 noundef %16) #17
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #14
  br label %cleanup45

if.end17:                                         ; preds = %if.then10.i122, %if.then.i109
  %storemerge181.in = phi ptr [ %add.ptr.i112, %if.then.i109 ], [ %24, %if.then10.i122 ]
  %27 = ptrtoint ptr %storemerge181.in to i32
  call void @__asan_loadN_noabort(i32 %27, i32 2)
  %storemerge181 = load i16, ptr %storemerge181.in, align 1
  %28 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %storemerge181, ptr %val13, align 2
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i85, label %if.end17.cleanup22.thread161_crit_edge, label %if.end.i.i88

if.end17.cleanup22.thread161_crit_edge:           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22.thread161

if.end.i.i88:                                     ; preds = %if.end17
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0215, i32 2, i32 -1226833920) #20, !srcloc !149
  %asmresult.i.i86 = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %cleanup22, label %if.end.i.i88.cleanup22.thread161_crit_edge

if.end.i.i88.cleanup22.thread161_crit_edge:       ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup22.thread161

cleanup22.thread161:                              ; preds = %if.end.i.i88.cleanup22.thread161_crit_edge, %if.end17.cleanup22.thread161_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #14
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val13, i32 noundef 2) #14
  %call.i12.i.i90 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0215, ptr noundef nonnull %val13, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i90)
  %tobool19.not = icmp eq i32 %call.i12.i.i90, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #14
  br i1 %tobool19.not, label %cleanup22.cleanup42_crit_edge, label %cleanup22.cleanup45_crit_edge

cleanup22.cleanup45_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #14
  %30 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -1, ptr %val26, align 1, !annotation !148
  %31 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %ppos, align 8
  call void @mutex_lock_nested(ptr noundef %ops_lock.i126, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %32)
  %cmp.i127 = icmp slt i64 %32, 255
  br i1 %cmp.i127, label %if.then.i128, label %if.else2.i133

if.then.i128:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %vconfig.i129 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vconfig.i129, align 4
  %idx.ext.i130 = trunc i64 %32 to i32
  %add.ptr.i131 = getelementptr i8, ptr %34, i32 %idx.ext.i130
  br label %if.end30

if.else2.i133:                                    ; preds = %if.else25
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %32)
  %cmp3.i132 = icmp ugt i64 %32, 4095
  br i1 %cmp3.i132, label %land.lhs.true.i139, label %if.else2.i133.cleanup35.thread_crit_edge

if.else2.i133.cleanup35.thread_crit_edge:         ; preds = %if.else2.i133
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35.thread

land.lhs.true.i139:                               ; preds = %if.else2.i133
  %add.i134 = add nuw i64 %32, 1
  %35 = ptrtoint ptr %memsize.i135 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %memsize.i135, align 4
  %add6.i136 = add i32 %36, 4096
  %conv7.i137 = zext i32 %add6.i136 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i134, i64 %conv7.i137)
  %cmp8.not.i138 = icmp sgt i64 %add.i134, %conv7.i137
  br i1 %cmp8.not.i138, label %land.lhs.true.i139.cleanup35.thread_crit_edge, label %if.then10.i141

land.lhs.true.i139.cleanup35.thread_crit_edge:    ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35.thread

if.then10.i141:                                   ; preds = %land.lhs.true.i139
  call void @__sanitizer_cov_trace_pc() #16
  %37 = ptrtoint ptr %memblk.i140 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %memblk.i140, align 4
  br label %if.end30

cleanup35.thread:                                 ; preds = %land.lhs.true.i139.cleanup35.thread_crit_edge, %if.else2.i133.cleanup35.thread_crit_edge
  %39 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vdev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i64 noundef %32) #17
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #14
  br label %cleanup45

if.end30:                                         ; preds = %if.then10.i141, %if.then.i128
  %storemerge.in = phi ptr [ %add.ptr.i131, %if.then.i128 ], [ %38, %if.then10.i141 ]
  %41 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load1_noabort(i32 %41)
  %storemerge = load i8, ptr %storemerge.in, align 1
  %42 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %storemerge, ptr %val26, align 1
  call void @mutex_unlock(ptr noundef %ops_lock.i126) #14
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i98 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i98, label %if.end30.cleanup35.thread171_crit_edge, label %if.end.i.i101

if.end30.cleanup35.thread171_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35.thread171

if.end.i.i101:                                    ; preds = %if.end30
  %43 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0215, i32 1, i32 -1226833920) #20, !srcloc !149
  %asmresult.i.i99 = extractvalue { i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i99)
  %cmp.i6.i100 = icmp eq i32 %asmresult.i.i99, 0
  br i1 %cmp.i6.i100, label %cleanup35, label %if.end.i.i101.cleanup35.thread171_crit_edge

if.end.i.i101.cleanup35.thread171_crit_edge:      ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup35.thread171

cleanup35.thread171:                              ; preds = %if.end.i.i101.cleanup35.thread171_crit_edge, %if.end30.cleanup35.thread171_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #14
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i101
  %call.i.i.i102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val26, i32 noundef 1) #14
  %call.i12.i.i103 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0215, ptr noundef nonnull %val26, i32 noundef 1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i103)
  %tobool32.not = icmp eq i32 %call.i12.i.i103, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #14
  br i1 %tobool32.not, label %cleanup35.cleanup42_crit_edge, label %cleanup35.cleanup45_crit_edge

cleanup35.cleanup45_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup35.cleanup42_crit_edge, %cleanup22.cleanup42_crit_edge, %cleanup.cleanup42_crit_edge
  %filled.3 = phi i32 [ 1, %cleanup35.cleanup42_crit_edge ], [ 2, %cleanup22.cleanup42_crit_edge ], [ 4, %cleanup.cleanup42_crit_edge ]
  %sub = sub i32 %count.addr.0211, %filled.3
  %add = add i32 %filled.3, %done.0217
  %conv = zext i32 %filled.3 to i64
  %44 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %ppos, align 8
  %add40 = add i64 %45, %conv
  store i64 %add40, ptr %ppos, align 8
  %add.ptr41 = getelementptr i8, ptr %buf.addr.0215, i32 %filled.3
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %cleanup42.cleanup45_crit_edge, label %cleanup42.while.body_crit_edge

cleanup42.while.body_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body

cleanup42.cleanup45_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %cleanup35.cleanup45_crit_edge, %cleanup35.thread171, %cleanup35.thread, %cleanup22.cleanup45_crit_edge, %cleanup22.thread161, %cleanup22.thread, %cleanup.cleanup45_crit_edge, %cleanup.thread150, %cleanup.thread, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %cleanup.thread ], [ -14, %cleanup.thread150 ], [ -14, %cleanup22.thread ], [ -14, %cleanup22.thread161 ], [ -14, %cleanup35.thread ], [ -14, %cleanup35.thread171 ], [ 0, %entry.cleanup45_crit_edge ], [ -14, %cleanup.cleanup45_crit_edge ], [ -14, %cleanup22.cleanup45_crit_edge ], [ -14, %cleanup35.cleanup45_crit_edge ], [ %add, %cleanup42.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdpy_write(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #5 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #14
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !148
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 4, i32 -1226833920) #20, !srcloc !150
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #14
  %5 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !152
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf.addr.0, i32 noundef 4) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !151

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  %call4 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val, i32 noundef 4, i64 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #14
  br i1 %cmp5, label %cleanup.cleanup42_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp8 = icmp ugt i32 %count.addr.0, 1
  br i1 %cmp8, label %if.else.land.lhs.true9_crit_edge, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else25

if.else.land.lhs.true9_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #14
  %13 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val13, align 2, !annotation !148
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i85, label %if.then12.if.then11.i.i101_crit_edge, label %land.lhs.true.i.i88

if.then12.if.then11.i.i101_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i101

land.lhs.true.i.i88:                              ; preds = %if.then12
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 2, i32 -1226833920) #20, !srcloc !150
  %asmresult.i.i86 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %if.end.i.i98, label %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, !prof !151

land.lhs.true.i.i88.if.then11.i.i101_crit_edge:   ; preds = %land.lhs.true.i.i88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i101

if.end.i.i98:                                     ; preds = %land.lhs.true.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val13, i32 noundef 2) #14
  %15 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i90 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i90 to ptr
  %cpu_domain.i.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i91) #11, !srcloc !152
  %and.i.i.i.i92 = and i32 %17, -13
  %or.i.i.i.i93 = or i32 %and.i.i.i.i92, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i93) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i94 = call i32 @arm_copy_from_user(ptr noundef nonnull %val13, ptr noundef %buf.addr.0, i32 noundef 2) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i94)
  %tobool4.not.i.i97 = icmp eq i32 %call1.i.i.i94, 0
  br i1 %tobool4.not.i.i97, label %cleanup22, label %if.end.i.i98.if.then11.i.i101_crit_edge, !prof !151

if.end.i.i98.if.then11.i.i101_crit_edge:          ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i101

if.then11.i.i101:                                 ; preds = %if.end.i.i98.if.then11.i.i101_crit_edge, %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, %if.then12.if.then11.i.i101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #14
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i98
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %call18 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val13, i32 noundef 2, i64 noundef %19, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #14
  br i1 %cmp19, label %cleanup22.cleanup42_crit_edge, label %cleanup22.if.end39_crit_edge

cleanup22.if.end39_crit_edge:                     ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #14
  %20 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val26, align 1, !annotation !148
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i108 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i108, label %if.else25.if.then11.i.i124_crit_edge, label %land.lhs.true.i.i111

if.else25.if.then11.i.i124_crit_edge:             ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i124

land.lhs.true.i.i111:                             ; preds = %if.else25
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 1, i32 -1226833920) #20, !srcloc !150
  %asmresult.i.i109 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %if.end.i.i121, label %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, !prof !151

land.lhs.true.i.i111.if.then11.i.i124_crit_edge:  ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i124

if.end.i.i121:                                    ; preds = %land.lhs.true.i.i111
  %call.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val26, i32 noundef 1) #14
  %22 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i113 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i113 to ptr
  %cpu_domain.i.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i114) #11, !srcloc !152
  %and.i.i.i.i115 = and i32 %24, -13
  %or.i.i.i.i116 = or i32 %and.i.i.i.i115, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i116) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i117 = call i32 @arm_copy_from_user(ptr noundef nonnull %val26, ptr noundef %buf.addr.0, i32 noundef 1) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i117)
  %tobool4.not.i.i120 = icmp eq i32 %call1.i.i.i117, 0
  br i1 %tobool4.not.i.i120, label %cleanup35, label %if.end.i.i121.if.then11.i.i124_crit_edge, !prof !151

if.end.i.i121.if.then11.i.i124_crit_edge:         ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i124

if.then11.i.i124:                                 ; preds = %if.end.i.i121.if.then11.i.i124_crit_edge, %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, %if.else25.if.then11.i.i124_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #14
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i121
  %25 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ppos, align 8
  %call31 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val26, i32 noundef 1, i64 noundef %26, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #14
  br i1 %cmp32, label %cleanup35.cleanup42_crit_edge, label %cleanup35.if.end39_crit_edge

cleanup35.if.end39_crit_edge:                     ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end39

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup45

cleanup42.while.cond_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %if.then11.i.i124, %if.then11.i.i101, %if.then11.i.i, %while.cond.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i101 ], [ -14, %if.then11.i.i124 ], [ -14, %cleanup42.cleanup45_crit_edge ], [ %done.0, %while.cond.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdpy_ioctl(ptr nocapture noundef %vdev, i32 noundef %cmd, i32 noundef %arg) #5 align 64 {
entry:
  %info = alloca %struct.vfio_device_info, align 4
  %info12 = alloca %struct.vfio_region_info, align 8
  %info33 = alloca %struct.vfio_irq_info, align 4
  %plane = alloca %struct.vfio_device_gfx_plane_info, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog [
    i32 15211, label %sw.bb
    i32 15212, label %sw.bb11
    i32 15213, label %sw.bb32
    i32 15218, label %sw.bb53
    i32 15214, label %entry.cleanup74_crit_edge
    i32 15215, label %sw.bb72
  ]

entry.cleanup74_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #14
  %1 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %info, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #20
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !151

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #14
  %7 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #11, !srcloc !152
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %4, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !151

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i241 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %sw.bb.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i241
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i241)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end59.i.i111

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end59.i.i111:                                  ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %3, align 4
  %dev_info = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 5
  %16 = call ptr @memcpy(ptr %dev_info, ptr %info, i32 20)
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i112 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i112, label %if.end59.i.i111.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i111.cleanup_crit_edge:                ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i111
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i116 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #14
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i111.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i111.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #14
  br label %cleanup74

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info12) #14
  %17 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 2
  %19 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %20 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %21 = inttoptr i32 %arg to ptr
  %22 = call ptr @memset(ptr %info12, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i122 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i122, label %sw.bb11.if.then11.i.i138_crit_edge, label %land.lhs.true.i.i125

sw.bb11.if.then11.i.i138_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i138

land.lhs.true.i.i125:                             ; preds = %sw.bb11
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 32, i32 -1226833920) #20
  %asmresult.i.i123 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i123)
  %cmp.i6.i124 = icmp eq i32 %asmresult.i.i123, 0
  br i1 %cmp.i6.i124, label %if.end.i.i135, label %land.lhs.true.i.i125.if.then11.i.i138_crit_edge, !prof !151

land.lhs.true.i.i125.if.then11.i.i138_crit_edge:  ; preds = %land.lhs.true.i.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i138

if.end.i.i135:                                    ; preds = %land.lhs.true.i.i125
  %call.i.i.i126 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info12, i32 noundef 32) #14
  %24 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i127 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i127 to ptr
  %cpu_domain.i.i.i.i.i128 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i128) #11, !srcloc !152
  %and.i.i.i.i129 = and i32 %26, -13
  %or.i.i.i.i130 = or i32 %and.i.i.i.i129, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i130) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i131 = call i32 @arm_copy_from_user(ptr noundef nonnull %info12, ptr noundef %21, i32 noundef 32) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i131)
  %tobool4.not.i.i134 = icmp eq i32 %call1.i.i.i131, 0
  br i1 %tobool4.not.i.i134, label %if.end16, label %if.end.i.i135.if.then11.i.i138_crit_edge, !prof !151

if.end.i.i135.if.then11.i.i138_crit_edge:         ; preds = %if.end.i.i135
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i138

if.then11.i.i138:                                 ; preds = %if.end.i.i135.if.then11.i.i138_crit_edge, %land.lhs.true.i.i125.if.then11.i.i138_crit_edge, %sw.bb11.if.then11.i.i138_crit_edge
  %res.0.i.i133248 = phi i32 [ %call1.i.i.i131, %if.end.i.i135.if.then11.i.i138_crit_edge ], [ 32, %sw.bb11.if.then11.i.i138_crit_edge ], [ 32, %land.lhs.true.i.i125.if.then11.i.i138_crit_edge ]
  %sub.i.i136 = sub i32 32, %res.0.i.i133248
  %add.ptr.i.i137 = getelementptr i8, ptr %info12, i32 %sub.i.i136
  %27 = call ptr @memset(ptr %add.ptr.i.i137, i32 0, i32 %res.0.i.i133248)
  br label %cleanup29

if.end16:                                         ; preds = %if.end.i.i135
  %28 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp18 = icmp ult i32 %29, 32
  br i1 %cmp18, label %if.end16.cleanup29_crit_edge, label %if.end20

if.end16.cleanup29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

if.end20:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %31)
  %cmp.i = icmp ult i32 %31, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %31)
  %cmp2.not.i = icmp eq i32 %31, 16
  %or.cond.i = or i1 %cmp.i, %cmp2.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end20.cleanup29_crit_edge

if.end20.cleanup29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

if.end.i:                                         ; preds = %if.end20
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %31, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 0, label %if.end.i.sw.bb4.i_crit_edge
    i32 16, label %if.end.i.sw.bb4.i_crit_edge274
  ]

if.end.i.sw.bb4.i_crit_edge274:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.end.i.sw.bb4.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %33 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 0, ptr %20, align 8
  %34 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 255, ptr %19, align 8
  %35 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %17, align 4
  br label %if.end59.i.i144

sw.bb4.i:                                         ; preds = %if.end.i.sw.bb4.i_crit_edge, %if.end.i.sw.bb4.i_crit_edge274
  %36 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 4096, ptr %20, align 8
  %memsize.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 7
  %37 = ptrtoint ptr %memsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %memsize.i, align 4
  %conv.i = zext i32 %38 to i64
  %39 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv.i, ptr %19, align 8
  %40 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %17, align 4
  br label %if.end59.i.i144

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %17, align 4
  %42 = call ptr @memset(ptr %19, i32 0, i32 16)
  br label %if.end59.i.i144

if.end59.i.i144:                                  ; preds = %sw.default.i, %sw.bb4.i, %sw.bb.i
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i145 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i145, label %if.end59.i.i144.cleanup29_crit_edge, label %copy_to_user.exit153

if.end59.i.i144.cleanup29_crit_edge:              ; preds = %if.end59.i.i144
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup29

copy_to_user.exit153:                             ; preds = %if.end59.i.i144
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i149 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info12, i32 noundef 32) #14
  %call.i12.i.i150 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %info12, i32 noundef 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i150)
  %tobool26.not = icmp eq i32 %call.i12.i.i150, 0
  %spec.select271 = select i1 %tobool26.not, i32 0, i32 -14
  br label %cleanup29

cleanup29:                                        ; preds = %copy_to_user.exit153, %if.end59.i.i144.cleanup29_crit_edge, %if.end20.cleanup29_crit_edge, %if.end16.cleanup29_crit_edge, %if.then11.i.i138
  %retval.1 = phi i32 [ -22, %if.end16.cleanup29_crit_edge ], [ -22, %if.end20.cleanup29_crit_edge ], [ -14, %if.then11.i.i138 ], [ -14, %if.end59.i.i144.cleanup29_crit_edge ], [ %spec.select271, %copy_to_user.exit153 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info12) #14
  br label %cleanup74

sw.bb32:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info33) #14
  %43 = getelementptr inbounds %struct.vfio_irq_info, ptr %info33, i32 0, i32 2
  %44 = getelementptr inbounds %struct.vfio_irq_info, ptr %info33, i32 0, i32 3
  %45 = inttoptr i32 %arg to ptr
  %46 = call ptr @memset(ptr %info33, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i158 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i158, label %sw.bb32.if.then11.i.i174_crit_edge, label %land.lhs.true.i.i161

sw.bb32.if.then11.i.i174_crit_edge:               ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i174

land.lhs.true.i.i161:                             ; preds = %sw.bb32
  %47 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %45, i32 16, i32 -1226833920) #20
  %asmresult.i.i159 = extractvalue { i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i159)
  %cmp.i6.i160 = icmp eq i32 %asmresult.i.i159, 0
  br i1 %cmp.i6.i160, label %if.end.i.i171, label %land.lhs.true.i.i161.if.then11.i.i174_crit_edge, !prof !151

land.lhs.true.i.i161.if.then11.i.i174_crit_edge:  ; preds = %land.lhs.true.i.i161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i174

if.end.i.i171:                                    ; preds = %land.lhs.true.i.i161
  %call.i.i.i162 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info33, i32 noundef 16) #14
  %48 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i163 = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i.i.i.i163 to ptr
  %cpu_domain.i.i.i.i.i164 = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i164) #11, !srcloc !152
  %and.i.i.i.i165 = and i32 %50, -13
  %or.i.i.i.i166 = or i32 %and.i.i.i.i165, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i166) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i167 = call i32 @arm_copy_from_user(ptr noundef nonnull %info33, ptr noundef %45, i32 noundef 16) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i167)
  %tobool4.not.i.i170 = icmp eq i32 %call1.i.i.i167, 0
  br i1 %tobool4.not.i.i170, label %if.end37, label %if.end.i.i171.if.then11.i.i174_crit_edge, !prof !151

if.end.i.i171.if.then11.i.i174_crit_edge:         ; preds = %if.end.i.i171
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i174

if.then11.i.i174:                                 ; preds = %if.end.i.i171.if.then11.i.i174_crit_edge, %land.lhs.true.i.i161.if.then11.i.i174_crit_edge, %sw.bb32.if.then11.i.i174_crit_edge
  %res.0.i.i169257 = phi i32 [ %call1.i.i.i167, %if.end.i.i171.if.then11.i.i174_crit_edge ], [ 16, %sw.bb32.if.then11.i.i174_crit_edge ], [ 16, %land.lhs.true.i.i161.if.then11.i.i174_crit_edge ]
  %sub.i.i172 = sub i32 16, %res.0.i.i169257
  %add.ptr.i.i173 = getelementptr i8, ptr %info33, i32 %sub.i.i172
  %51 = call ptr @memset(ptr %add.ptr.i.i173, i32 0, i32 %res.0.i.i169257)
  br label %cleanup52

if.end37:                                         ; preds = %if.end.i.i171
  %52 = ptrtoint ptr %info33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %info33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %53)
  %cmp39 = icmp ult i32 %53, 16
  br i1 %cmp39, label %if.end37.cleanup52_crit_edge, label %lor.lhs.false

if.end37.cleanup52_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

lor.lhs.false:                                    ; preds = %if.end37
  %54 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %43, align 4
  %num_irqs = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp41.not = icmp ult i32 %55, %57
  br i1 %cmp41.not, label %if.end59.i.i180, label %lor.lhs.false.cleanup52_crit_edge

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

if.end59.i.i180:                                  ; preds = %lor.lhs.false
  %58 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %44, align 4
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i181 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i181, label %if.end59.i.i180.cleanup52_crit_edge, label %copy_to_user.exit189

if.end59.i.i180.cleanup52_crit_edge:              ; preds = %if.end59.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup52

copy_to_user.exit189:                             ; preds = %if.end59.i.i180
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i185 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info33, i32 noundef 16) #14
  %call.i12.i.i186 = call i32 @arm_copy_to_user(ptr noundef %45, ptr noundef nonnull %info33, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i186)
  %tobool49.not = icmp eq i32 %call.i12.i.i186, 0
  %spec.select272 = select i1 %tobool49.not, i32 0, i32 -14
  br label %cleanup52

cleanup52:                                        ; preds = %copy_to_user.exit189, %if.end59.i.i180.cleanup52_crit_edge, %lor.lhs.false.cleanup52_crit_edge, %if.end37.cleanup52_crit_edge, %if.then11.i.i174
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup52_crit_edge ], [ -22, %if.end37.cleanup52_crit_edge ], [ -14, %if.then11.i.i174 ], [ -14, %if.end59.i.i180.cleanup52_crit_edge ], [ %spec.select272, %copy_to_user.exit189 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info33) #14
  br label %cleanup74

sw.bb53:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %plane) #14
  %59 = call ptr @memset(ptr %plane, i32 255, i32 64)
  %60 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 156) #14
  %call.i.i194 = tail call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i194, label %sw.bb53.if.then11.i.i210_crit_edge, label %land.lhs.true.i.i197

sw.bb53.if.then11.i.i210_crit_edge:               ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i210

land.lhs.true.i.i197:                             ; preds = %sw.bb53
  %61 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %60, i32 60, i32 -1226833920) #20
  %asmresult.i.i195 = extractvalue { i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i195)
  %cmp.i6.i196 = icmp eq i32 %asmresult.i.i195, 0
  br i1 %cmp.i6.i196, label %if.end.i.i207, label %land.lhs.true.i.i197.if.then11.i.i210_crit_edge, !prof !151

land.lhs.true.i.i197.if.then11.i.i210_crit_edge:  ; preds = %land.lhs.true.i.i197
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i210

if.end.i.i207:                                    ; preds = %land.lhs.true.i.i197
  %call.i.i.i198 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %plane, i32 noundef 60) #14
  %62 = call i32 @llvm.read_register.i32(metadata !137) #14
  %and.i.i.i.i.i.i199 = and i32 %62, -16384
  %63 = inttoptr i32 %and.i.i.i.i.i.i199 to ptr
  %cpu_domain.i.i.i.i.i200 = getelementptr inbounds %struct.thread_info, ptr %63, i32 0, i32 4
  %64 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i200) #11, !srcloc !152
  %and.i.i.i.i201 = and i32 %64, -13
  %or.i.i.i.i202 = or i32 %and.i.i.i.i201, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i202) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  %call1.i.i.i203 = call i32 @arm_copy_from_user(ptr noundef nonnull %plane, ptr noundef %60, i32 noundef 60) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %64) #14, !srcloc !153
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i203)
  %tobool4.not.i.i206 = icmp eq i32 %call1.i.i.i203, 0
  br i1 %tobool4.not.i.i206, label %if.end57, label %if.end.i.i207.if.then11.i.i210_crit_edge, !prof !151

if.end.i.i207.if.then11.i.i210_crit_edge:         ; preds = %if.end.i.i207
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then11.i.i210

if.then11.i.i210:                                 ; preds = %if.end.i.i207.if.then11.i.i210_crit_edge, %land.lhs.true.i.i197.if.then11.i.i210_crit_edge, %sw.bb53.if.then11.i.i210_crit_edge
  %res.0.i.i205264 = phi i32 [ %call1.i.i.i203, %if.end.i.i207.if.then11.i.i210_crit_edge ], [ 60, %sw.bb53.if.then11.i.i210_crit_edge ], [ 60, %land.lhs.true.i.i197.if.then11.i.i210_crit_edge ]
  %sub.i.i208 = sub i32 60, %res.0.i.i205264
  %add.ptr.i.i209 = getelementptr i8, ptr %plane, i32 %sub.i.i208
  %65 = call ptr @memset(ptr %add.ptr.i.i209, i32 0, i32 %res.0.i.i205264)
  br label %cleanup70

if.end57:                                         ; preds = %if.end.i.i207
  %66 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %plane, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %67)
  %cmp59 = icmp ult i32 %67, 60
  br i1 %cmp59, label %if.end57.cleanup70_crit_edge, label %if.end61

if.end57.cleanup70_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

if.end61:                                         ; preds = %if.end57
  %flags.i227 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i227 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags.i227, align 4
  %and.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.then.i

if.then.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %69)
  %cmp.i228 = icmp eq i32 %69, 5
  br i1 %cmp.i228, label %if.then.i.if.end59.i.i216_crit_edge, label %if.then.i.cleanup70_crit_edge

if.then.i.cleanup70_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

if.then.i.if.end59.i.i216_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end59.i.i216

if.end3.i:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %69)
  %cmp5.not.i = icmp eq i32 %69, 4
  br i1 %cmp5.not.i, label %if.end7.i, label %if.end3.i.cleanup70_crit_edge

if.end3.i.cleanup70_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  %type.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 6
  %70 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %type.i, align 4
  %format.i = getelementptr inbounds %struct.mdpy_type, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %format.i, align 4
  %drm_format.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 3
  %74 = ptrtoint ptr %drm_format.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %drm_format.i, align 4
  %width.i = getelementptr inbounds %struct.mdpy_type, ptr %71, i32 0, i32 3
  %75 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %width.i, align 4
  %width9.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 5
  %77 = ptrtoint ptr %width9.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %width9.i, align 8
  %height.i = getelementptr inbounds %struct.mdpy_type, ptr %71, i32 0, i32 4
  %78 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height.i, align 4
  %height11.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 6
  %80 = ptrtoint ptr %height11.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %height11.i, align 4
  %81 = load i32, ptr %width.i, align 4
  %bytepp.i = getelementptr inbounds %struct.mdpy_type, ptr %71, i32 0, i32 2
  %82 = ptrtoint ptr %bytepp.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %bytepp.i, align 4
  %mul.i = mul i32 %83, %81
  %stride.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 7
  %84 = ptrtoint ptr %stride.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %mul.i, ptr %stride.i, align 8
  %memsize.i229 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 7
  %85 = ptrtoint ptr %memsize.i229 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %memsize.i229, align 4
  %size.i230 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 8
  %87 = ptrtoint ptr %size.i230 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %size.i230, align 4
  %88 = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 13
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 16, ptr %88, align 8
  %drm_format_mod.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 4
  %90 = ptrtoint ptr %drm_format_mod.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %drm_format_mod.i, align 8
  %x_pos.i = getelementptr inbounds %struct.vfio_device_gfx_plane_info, ptr %plane, i32 0, i32 9
  %91 = call ptr @memset(ptr %x_pos.i, i32 0, i32 16)
  br label %if.end59.i.i216

if.end59.i.i216:                                  ; preds = %if.end7.i, %if.then.i.if.end59.i.i216_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.27, i32 noundef 174) #14
  %call.i.i217 = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i217, label %if.end59.i.i216.cleanup70_crit_edge, label %copy_to_user.exit225

if.end59.i.i216.cleanup70_crit_edge:              ; preds = %if.end59.i.i216
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup70

copy_to_user.exit225:                             ; preds = %if.end59.i.i216
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i221 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %plane, i32 noundef 60) #14
  %call.i12.i.i222 = call i32 @arm_copy_to_user(ptr noundef %60, ptr noundef nonnull %plane, i32 noundef 60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i222)
  %tobool67.not = icmp eq i32 %call.i12.i.i222, 0
  %spec.select273 = select i1 %tobool67.not, i32 0, i32 -14
  br label %cleanup70

cleanup70:                                        ; preds = %copy_to_user.exit225, %if.end59.i.i216.cleanup70_crit_edge, %if.end3.i.cleanup70_crit_edge, %if.then.i.cleanup70_crit_edge, %if.end57.cleanup70_crit_edge, %if.then11.i.i210
  %retval.3 = phi i32 [ -22, %if.end57.cleanup70_crit_edge ], [ -22, %if.then.i.cleanup70_crit_edge ], [ -22, %if.end3.i.cleanup70_crit_edge ], [ -14, %if.then11.i.i210 ], [ -14, %if.end59.i.i216.cleanup70_crit_edge ], [ %spec.select273, %copy_to_user.exit225 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %plane) #14
  br label %cleanup74

sw.bb72:                                          ; preds = %entry
  %type.i232 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 6
  %92 = ptrtoint ptr %type.i232 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %type.i232, align 4
  %width.i233 = getelementptr inbounds %struct.mdpy_type, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %width.i233 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %width.i233, align 4
  %bytepp.i234 = getelementptr inbounds %struct.mdpy_type, ptr %93, i32 0, i32 2
  %96 = ptrtoint ptr %bytepp.i234 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bytepp.i234, align 4
  %mul.i235 = mul i32 %97, %95
  %height1.i = getelementptr inbounds %struct.mdpy_type, ptr %93, i32 0, i32 4
  %98 = ptrtoint ptr %height1.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %height1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp2.not.i236 = icmp eq i32 %99, 0
  br i1 %cmp2.not.i236, label %sw.bb72.cleanup74_crit_edge, label %for.body.lr.ph.i

sw.bb72.cleanup74_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

for.body.lr.ph.i:                                 ; preds = %sw.bb72
  %memblk.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %100 = phi i32 [ %99, %for.body.lr.ph.i ], [ %109, %for.body.i.for.body.i_crit_edge ]
  %i.03.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %101 = ptrtoint ptr %memblk.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %memblk.i, align 4
  %mul3.i = mul i32 %i.03.i, %mul.i235
  %add.ptr.i = getelementptr i8, ptr %102, i32 %mul3.i
  %mul4.i = mul i32 %i.03.i, 255
  %div.i = udiv i32 %mul4.i, %100
  %103 = trunc i32 %div.i to i8
  %104 = zext i8 %103 to i32
  %105 = call ptr @memset(ptr %add.ptr.i, i32 %104, i32 %mul.i235)
  %inc.i = add nuw i32 %i.03.i, 1
  %106 = ptrtoint ptr %type.i232 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %type.i232, align 4
  %height.i237 = getelementptr inbounds %struct.mdpy_type, ptr %107, i32 0, i32 4
  %108 = ptrtoint ptr %height.i237 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height.i237, align 4
  %cmp.i238 = icmp ult i32 %inc.i, %109
  br i1 %cmp.i238, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup74_crit_edge

for.body.i.cleanup74_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup74

cleanup74:                                        ; preds = %sw.epilog, %for.body.i.cleanup74_crit_edge, %sw.bb72.cleanup74_crit_edge, %cleanup70, %cleanup52, %cleanup29, %cleanup, %entry.cleanup74_crit_edge
  %retval.4 = phi i32 [ -25, %sw.epilog ], [ %retval.3, %cleanup70 ], [ %retval.2, %cleanup52 ], [ %retval.1, %cleanup29 ], [ %retval.0, %cleanup ], [ -22, %entry.cleanup74_crit_edge ], [ 0, %sw.bb72.cleanup74_crit_edge ], [ 0, %for.body.i.cleanup74_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mdpy_mmap(ptr nocapture noundef readonly %vdev, ptr noundef %vma) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %0 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm_pgoff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
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
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %sub = sub i32 %3, %5
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 7
  %6 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %memsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp6 = icmp ugt i32 %sub, %7
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp9 = icmp eq i32 %and, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %if.end11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %memblk = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 8
  %10 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %memblk, align 4
  %call = tail call i32 @remap_vmalloc_range(ptr noundef %vma, ptr noundef %11, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdev_access(ptr noundef %mdev_state, ptr nocapture noundef %buf, i32 noundef %count, i64 noundef %pos, i1 noundef zeroext %is_write) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %pos)
  %cmp = icmp slt i64 %pos, 255
  br i1 %cmp, label %if.then, label %if.else2

if.then:                                          ; preds = %entry
  br i1 %is_write, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %conv = trunc i64 %pos to i16
  %mdev.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %0 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %conv)
  %cond.i = icmp eq i16 %conv, 16
  br i1 %cond.i, label %sw.bb.i, label %if.then1.accessfailed_crit_edge

if.then1.accessfailed_crit_edge:                  ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #16
  br label %accessfailed

sw.bb.i:                                          ; preds = %if.then1
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp.i = icmp eq i32 %3, -1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #16
  %bar_mask.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %4 = ptrtoint ptr %bar_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bar_mask.i, align 4
  br label %if.end4.i

if.else.i:                                        ; preds = %sw.bb.i
  %and2.i = and i32 %3, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool.not.i, label %if.else.i.if.end4.i_crit_edge, label %do.end.i

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i

do.end.i:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %and2.i) #17
  br label %if.end4.i

if.end4.i:                                        ; preds = %do.end.i, %if.else.i.if.end4.i_crit_edge, %if.then.i
  %cfg_addr.0.i = phi i32 [ %5, %if.then.i ], [ %and2.i, %do.end.i ], [ 0, %if.else.i.if.end4.i_crit_edge ]
  %vconfig.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %6 = ptrtoint ptr %vconfig.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vconfig.i, align 4
  %arrayidx.i = getelementptr i8, ptr %7, i32 16
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %10 = and i8 %9, 15
  %and6.i = zext i8 %10 to i32
  %or.i = or i32 %cfg_addr.0.i, %and6.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %accessfailed

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %11 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vconfig, align 4
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %12, i32 %idx.ext
  %13 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count)
  br label %accessfailed

if.else2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 4095, i64 %pos)
  %cmp3 = icmp ugt i64 %pos, 4095
  br i1 %cmp3, label %land.lhs.true, label %if.else2.do.end_crit_edge

if.else2.do.end_crit_edge:                        ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %if.else2
  %conv5 = zext i32 %count to i64
  %add = add nuw i64 %conv5, %pos
  %memsize = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 7
  %14 = ptrtoint ptr %memsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %memsize, align 4
  %add6 = add i32 %15, 4096
  %conv7 = zext i32 %add6 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv7)
  %cmp8.not = icmp sgt i64 %add, %conv7
  br i1 %cmp8.not, label %land.lhs.true.do.end_crit_edge, label %if.then10

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true
  %memblk = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 8
  %16 = ptrtoint ptr %memblk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %memblk, align 4
  br i1 %is_write, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %18 = call ptr @memcpy(ptr %17, ptr %buf, i32 %count)
  br label %accessfailed

if.else13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  %19 = call ptr @memcpy(ptr %buf, ptr %17, i32 %count)
  br label %accessfailed

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %if.else2.do.end_crit_edge
  %20 = ptrtoint ptr %mdev_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdev_state, align 4
  %cond = select i1 %is_write, ptr @.str.21, ptr @.str.22
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull %cond, i64 noundef %pos) #17
  br label %accessfailed

accessfailed:                                     ; preds = %do.end, %if.else13, %if.then12, %if.else, %if.end4.i, %if.then1.accessfailed_crit_edge
  %ret.0 = phi i32 [ -1, %do.end ], [ %count, %if.else13 ], [ %count, %if.then12 ], [ %count, %if.else ], [ %count, %if.then1.accessfailed_crit_edge ], [ %count, %if.end4.i ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_vmalloc_range(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_group_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resolution_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %width = getelementptr inbounds %struct.mdpy_type, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.mdpy_type, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %7)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #14
  %arrayidx = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtype_get_type_group_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @description_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #14
  %width = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call, i32 3
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %height = getelementptr [3 x %struct.mdpy_type], ptr @mdpy_types, i32 0, i32 %call, i32 4
  %2 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %height, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %1, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_api_show(ptr nocapture noundef readnone %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.38)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_instances_show(ptr nocapture noundef readnone %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_devices, align 4
  %1 = load i32, ptr @mdpy_count, align 4
  %sub = sub i32 %0, %1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.40, i32 noundef %sub)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind readonly }
attributes #12 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !122, !124, !126, !127, !129, !131, !133, !135}
!llvm.named.register.sp = !{!137}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__UNIQUE_ID_license236, !1, !"__UNIQUE_ID_license236", i1 false, i1 false}
!1 = !{!"../samples/vfio-mdev/mdpy.c", i32 44, i32 1}
!2 = !{ptr @__param_count, !3, !"__param_count", i1 false, i1 false}
!3 = !{!"../samples/vfio-mdev/mdpy.c", i32 47, i32 1}
!4 = !{ptr @__UNIQUE_ID_counttype237, !3, !"__UNIQUE_ID_counttype237", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_count238, !6, !"__UNIQUE_ID_count238", i1 false, i1 false}
!6 = !{!"../samples/vfio-mdev/mdpy.c", i32 48, i32 1}
!7 = !{ptr @__param_str_count, !3, !"__param_str_count", i1 false, i1 false}
!8 = !{ptr @max_devices, !9, !"max_devices", i1 false, i1 false}
!9 = !{!"../samples/vfio-mdev/mdpy.c", i32 46, i32 12}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../samples/vfio-mdev/mdpy.c", i32 747, i32 58}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../samples/vfio-mdev/mdpy.c", i32 749, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @mdpy_dev_init._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @mdpy_dev_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../samples/vfio-mdev/mdpy.c", i32 754, i32 2}
!20 = !{ptr @mdpy_dev_init._entry.4, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @mdpy_dev_init._entry_ptr.6, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @mdpy_dev_init.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../samples/vfio-mdev/mdpy.c", i32 760, i32 15}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../samples/vfio-mdev/mdpy.c", i32 762, i32 3}
!26 = !{ptr @mdpy_dev_init._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mdpy_dev_init._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../samples/vfio-mdev/mdpy.c", i32 768, i32 26}
!30 = !{ptr @mdpy_devt, !31, !"mdpy_devt", i1 false, i1 false}
!31 = !{!"../samples/vfio-mdev/mdpy.c", i32 83, i32 15}
!32 = !{ptr @mdpy_cdev, !33, !"mdpy_cdev", i1 false, i1 false}
!33 = !{!"../samples/vfio-mdev/mdpy.c", i32 85, i32 20}
!34 = !{ptr @vd_fops, !35, !"vd_fops", i1 false, i1 false}
!35 = !{!"../samples/vfio-mdev/mdpy.c", i32 734, i32 37}
!36 = !{ptr @mdpy_driver, !37, !"mdpy_driver", i1 false, i1 false}
!37 = !{!"../samples/vfio-mdev/mdpy.c", i32 717, i32 27}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../samples/vfio-mdev/mdpy.c", i32 249, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @mdpy_probe._entry, !39, !"_entry", i1 false, i1 false}
!44 = !{ptr @mdpy_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mdpy_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../samples/vfio-mdev/mdpy.c", i32 252, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../samples/vfio-mdev/mdpy.c", i32 63, i32 11}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../samples/vfio-mdev/mdpy.c", i32 69, i32 11}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../samples/vfio-mdev/mdpy.c", i32 75, i32 11}
!54 = !{ptr @mdpy_types, !55, !"mdpy_types", i1 false, i1 false}
!55 = !{!"../samples/vfio-mdev/mdpy.c", i32 61, i32 3}
!56 = !{ptr @mdpy_count, !57, !"mdpy_count", i1 false, i1 false}
!57 = !{!"../samples/vfio-mdev/mdpy.c", i32 87, i32 13}
!58 = !{ptr @mdpy_dev_ops, !59, !"mdpy_dev_ops", i1 false, i1 false}
!59 = !{!"../samples/vfio-mdev/mdpy.c", i32 710, i32 37}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../samples/vfio-mdev/mdpy.c", i32 190, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mdev_access._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mdev_access._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../samples/vfio-mdev/mdpy.c", i32 157, i32 5}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @handle_pci_cfg_write._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @handle_pci_cfg_write._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = distinct !{null, !73, !"__already_done", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!74 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../samples/vfio-mdev/mdpy.c", i32 280, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mdpy_remove._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @mdpy_remove._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @mdev_dev_groups, !85, !"mdev_dev_groups", i1 false, i1 false}
!85 = !{!"../samples/vfio-mdev/mdpy.c", i32 639, i32 38}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../samples/vfio-mdev/mdpy.c", i32 635, i32 11}
!88 = !{ptr @mdev_dev_group, !89, !"mdev_dev_group", i1 false, i1 false}
!89 = !{!"../samples/vfio-mdev/mdpy.c", i32 634, i32 37}
!90 = !{ptr @mdev_dev_attrs, !91, !"mdev_dev_attrs", i1 false, i1 false}
!91 = !{!"../samples/vfio-mdev/mdpy.c", i32 629, i32 26}
!92 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../samples/vfio-mdev/mdpy.c", i32 627, i32 8}
!94 = !{ptr @dev_attr_resolution, !93, !"dev_attr_resolution", i1 false, i1 false}
!95 = !{ptr @.str.32, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../samples/vfio-mdev/mdpy.c", i32 623, i32 22}
!97 = !{ptr @mdpy_class, !98, !"mdpy_class", i1 false, i1 false}
!98 = !{!"../samples/vfio-mdev/mdpy.c", i32 84, i32 22}
!99 = !{ptr @mdpy_dev, !100, !"mdpy_dev", i1 false, i1 false}
!100 = !{!"../samples/vfio-mdev/mdpy.c", i32 86, i32 22}
!101 = !{ptr @mdev_fops, !102, !"mdev_fops", i1 false, i1 false}
!102 = !{!"../samples/vfio-mdev/mdpy.c", i32 728, i32 37}
!103 = !{ptr @mdev_type_groups, !104, !"mdev_type_groups", i1 false, i1 false}
!104 = !{!"../samples/vfio-mdev/mdpy.c", i32 703, i32 32}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../samples/vfio-mdev/mdpy.c", i32 689, i32 11}
!107 = !{ptr @mdev_type_group1, !108, !"mdev_type_group1", i1 false, i1 false}
!108 = !{!"../samples/vfio-mdev/mdpy.c", i32 688, i32 31}
!109 = !{ptr @mdev_types_attrs, !110, !"mdev_types_attrs", i1 false, i1 false}
!110 = !{!"../samples/vfio-mdev/mdpy.c", i32 680, i32 26}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../samples/vfio-mdev/mdpy.c", i32 652, i32 8}
!113 = !{ptr @mdev_type_attr_name, !112, !"mdev_type_attr_name", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../samples/vfio-mdev/mdpy.c", i32 663, i32 8}
!116 = !{ptr @mdev_type_attr_description, !115, !"mdev_type_attr_description", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../samples/vfio-mdev/mdpy.c", i32 660, i32 22}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../samples/vfio-mdev/mdpy.c", i32 678, i32 8}
!121 = !{ptr @mdev_type_attr_device_api, !120, !"mdev_type_attr_device_api", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../samples/vfio-mdev/mdpy.c", i32 676, i32 30}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../samples/vfio-mdev/mdpy.c", i32 671, i32 8}
!126 = !{ptr @mdev_type_attr_available_instances, !125, !"mdev_type_attr_available_instances", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../samples/vfio-mdev/mdpy.c", i32 669, i32 22}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../samples/vfio-mdev/mdpy.c", i32 694, i32 11}
!131 = !{ptr @mdev_type_group2, !132, !"mdev_type_group2", i1 false, i1 false}
!132 = !{!"../samples/vfio-mdev/mdpy.c", i32 693, i32 31}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../samples/vfio-mdev/mdpy.c", i32 699, i32 11}
!135 = !{ptr @mdev_type_group3, !136, !"mdev_type_group3", i1 false, i1 false}
!136 = !{!"../samples/vfio-mdev/mdpy.c", i32 698, i32 31}
!137 = !{!"sp"}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i32 0, i32 33}
!148 = !{!"auto-init"}
!149 = !{i64 2153309331, i64 2153309356}
!150 = !{i64 2153308650, i64 2153308675}
!151 = !{!"branch_weights", i32 2000, i32 1}
!152 = !{i64 5800144}
!153 = !{i64 5800341}
!154 = !{i64 2153285574}
