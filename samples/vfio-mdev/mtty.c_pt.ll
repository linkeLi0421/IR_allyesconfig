; ModuleID = '/llk/IR_all_yes/samples/vfio-mdev/mtty.c_pt.bc'
source_filename = "../samples/vfio-mdev/mtty.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtty_dev = type { i32, ptr, %struct.cdev, %struct.idr, %struct.device }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mdev_driver = type { ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.mdev_parent_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.mdev_type_attribute = type { %struct.attribute, ptr, ptr }
%struct.mdev_state = type { %struct.vfio_device, i32, ptr, ptr, i32, ptr, %struct.mutex, ptr, [9 x %struct.mdev_region_info], [9 x i32], %struct.list_head, [2 x %struct.serial_port], %struct.mutex, %struct.vfio_device_info, i32 }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.mdev_region_info = type { i64, i64, i32, i64 }
%struct.serial_port = type { [8 x i8], %struct.rxtx, i8, i8, i16, i8, i8, i8 }
%struct.rxtx = type { [16 x i8], i8, i8, i8 }
%struct.vfio_device_info = type { i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.vfio_irq_info = type { i32, i32, i32, i32 }
%struct.vfio_irq_set = type { i32, i32, i32, i32, i32, [0 x i8] }

@__UNIQUE_ID_license237 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_supported238 = internal constant [57 x i8] c"supported=Test driver that simulate serial port over PCI\00", section ".modinfo", align 1
@__UNIQUE_ID_version239 = internal constant [12 x i8] c"version=0.1\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [26 x i8] c"author=NVIDIA Corporation\00", section ".modinfo", align 1
@mtty_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016mtty_dev: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtty_dev_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"samples/vfio-mdev/mtty.c\00", [39 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry_ptr = internal global ptr @mtty_dev_init._entry, section ".printk_index", align 4
@mtty_dev = internal global { %struct.mtty_dev, [312 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mtty\00", [27 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Error: failed to register mtty_dev, err:%d\0A\00", [50 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry_ptr.6 = internal global ptr @mtty_dev_init._entry.4, section ".printk_index", align 4
@vd_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr @__this_module, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016major_number:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry_ptr.9 = internal global ptr @mtty_dev_init._entry.7, section ".printk_index", align 4
@mtty_driver = internal global { %struct.mdev_driver, [44 x i8] } { %struct.mdev_driver { ptr @mtty_probe, ptr @mtty_remove, %struct.device_driver { ptr @.str.3, ptr null, ptr @__this_module, ptr @.str.3, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdev_dev_groups, ptr null, ptr null, ptr null } }, [44 x i8] zeroinitializer }, align 32
@mtty_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@__this_module = external dso_local global %struct.module, align 128
@mtty_dev_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Error: failed to register mtty_dev class\0A\00", [52 x i8] zeroinitializer }, align 32
@mtty_dev_init._entry_ptr.12 = internal global ptr @mtty_dev_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mdev_fops = internal constant { %struct.mdev_parent_ops, [40 x i8] } { %struct.mdev_parent_ops { ptr @__this_module, ptr @mtty_driver, ptr @mtty_dev_groups, ptr null, ptr @mdev_type_groups, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mdev_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mdev_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mdev_avail_ports = internal global { %struct.atomic_t, [28 x i8] } { %struct.atomic_t { i32 24 }, [28 x i8] zeroinitializer }, align 32
@mtty_dev_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr @.str.18, ptr null, ptr null, ptr @mtty_read, ptr @mtty_write, ptr @mtty_ioctl, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@mtty_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mdev_state->rxtx_lock\00", [41 x i8] zeroinitializer }, align 32
@mtty_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mdev_state->ops_lock\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vfio-mtty\00", [22 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016BAR%d addr 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"handle_pci_cfg_write\00", [43 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry_ptr = internal global ptr @handle_pci_cfg_write._entry, section ".printk_index", align 4
@handle_pci_cfg_write._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016PCI config write @0x%x of %d bytes not handled\0A\00", [46 x i8] zeroinitializer }, align 32
@handle_pci_cfg_write._entry_ptr.23 = internal global ptr @handle_pci_cfg_write._entry.21, section ".printk_index", align 4
@mtty_trigger_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Intr eventfd not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mtty_trigger_interrupt\00", [41 x i8] zeroinitializer }, align 32
@mtty_trigger_interrupt._entry_ptr = internal global ptr @mtty_trigger_interrupt._entry, section ".printk_index", align 4
@mtty_trigger_interrupt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: eventfd signal failed (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@mtty_trigger_interrupt._entry_ptr.28 = internal global ptr @mtty_trigger_interrupt._entry.26, section ".printk_index", align 4
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s: disable INTx\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtty_set_irqs\00", [18 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry_ptr = internal global ptr @mtty_set_irqs._entry, section ".printk_index", align 4
@mtty_set_irqs._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: disable MSI\0A\00", [45 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry_ptr.36 = internal global ptr @mtty_set_irqs._entry.34, section ".printk_index", align 4
@mtty_set_irqs._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\016%s: MSIX_IRQ\0A\00", [16 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry_ptr.39 = internal global ptr @mtty_set_irqs._entry.37, section ".printk_index", align 4
@mtty_set_irqs._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.33, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: ERR_IRQ\0A\00", [17 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry_ptr.42 = internal global ptr @mtty_set_irqs._entry.40, section ".printk_index", align 4
@mtty_set_irqs._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.33, ptr @.str.2, i32 985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016%s: REQ_IRQ\0A\00", [17 x i8] zeroinitializer }, align 32
@mtty_set_irqs._entry_ptr.45 = internal global ptr @mtty_set_irqs._entry.43, section ".printk_index", align 4
@mtty_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s: called\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mtty_reset\00", [21 x i8] zeroinitializer }, align 32
@mtty_reset._entry_ptr = internal global ptr @mtty_reset._entry, section ".printk_index", align 4
@mdev_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.48, ptr null, ptr null, ptr @mdev_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@mdev_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sample_mdev_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sample_mdev_dev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sample_mdev_dev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sample_mdev_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"This is MDEV %s\0A\00", [47 x i8] zeroinitializer }, align 32
@mdev_bus_type = external dso_local global %struct.bus_type, align 4
@mtty_device_release.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtty_device_release\00", [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtty: released\0A\00", [16 x i8] zeroinitializer }, align 32
@mtty_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @mtty_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@mdev_type_groups = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @mdev_type_group1, ptr @mdev_type_group2, ptr null], [20 x i8] zeroinitializer }, align 32
@mtty_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.54, ptr null, ptr null, ptr @mtty_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mtty_dev\00", [23 x i8] zeroinitializer }, align 32
@mtty_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sample_mtty_dev, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sample_mtty_dev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sample_mtty_dev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sample_mtty_dev\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"This is phy device\0A\00", [44 x i8] zeroinitializer }, align 32
@mdev_type_group1 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.57, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@mdev_type_group2 = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @.str.66, ptr null, ptr null, ptr @mdev_types_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@mdev_types_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @mdev_type_attr_name, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr null], [16 x i8] zeroinitializer }, align 32
@mdev_type_attr_name = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_device_api = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @device_api_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mdev_type_attr_available_instances = internal global { %struct.mdev_type_attribute, [36 x i8] } { %struct.mdev_type_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @available_instances_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@name_show.name_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.60], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Single port serial\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Dual port serial\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"device_api\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vfio-pci\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"available_instances\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@mtty_dev_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016mtty_dev: Unloaded!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtty_dev_exit\00", [18 x i8] zeroinitializer }, align 32
@mtty_dev_exit._entry_ptr = internal global ptr @mtty_dev_exit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 15211, i64 15212, i64 15213, i64 15214, i64 15215]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.71 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.72 = internal global [11 x i64] [i64 9, i64 16, i64 4, i64 6, i64 16, i64 20, i64 24, i64 28, i64 32, i64 60, i64 61]
@__sancov_gen_cov_switch_values.73 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.76 = internal global [10 x i64] [i64 8, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.78 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1349, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"mtty_dev\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 77, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1356, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1359, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [8 x i8] c"vd_fops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 149, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1366, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"mtty_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1322, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1372, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1375, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1382, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant [10 x i8] c"mdev_fops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1333, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 378, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"mdev_dev_groups\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1256, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"mdev_avail_ports\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 147, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant [13 x i8] c"mtty_dev_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1315, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 731, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 739, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1316, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 271, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 287, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1002, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1015, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 174, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 916, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 952, i32 5 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 979, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 982, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 985, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 775, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"mdev_dev_group\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1251, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1252, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"mdev_dev_attrs\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1246, i32 26 }
@___asan_gen_.244 = private unnamed_addr constant [25 x i8] c"dev_attr_sample_mdev_dev\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1244, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1239, i32 23 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1342, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"mtty_dev_groups\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1229, i32 38 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"mdev_type_groups\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1309, i32 32 }
@___asan_gen_.265 = private unnamed_addr constant [15 x i8] c"mtty_dev_group\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1224, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1225, i32 11 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"mtty_dev_attrs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1219, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant [25 x i8] c"dev_attr_sample_mtty_dev\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1217, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1214, i32 22 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"mdev_type_group1\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1299, i32 31 }
@___asan_gen_.286 = private unnamed_addr constant [17 x i8] c"mdev_type_group2\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1304, i32 31 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1300, i32 11 }
@___asan_gen_.292 = private unnamed_addr constant [17 x i8] c"mdev_types_attrs\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1292, i32 26 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c"mdev_type_attr_name\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [26 x i8] c"mdev_type_attr_device_api\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [35 x i8] c"mdev_type_attr_available_instances\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1271, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant [9 x i8] c"name_str\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1264, i32 21 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1264, i32 37 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1265, i32 9 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1267, i32 25 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1290, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1287, i32 30 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1282, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1279, i32 22 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1305, i32 11 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.341 = private constant [28 x i8] c"../samples/vfio-mdev/mtty.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1417, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_license237, ptr @__UNIQUE_ID_supported238, ptr @__UNIQUE_ID_version239, ptr @handle_pci_cfg_write._entry, ptr @handle_pci_cfg_write._entry.21, ptr @handle_pci_cfg_write._entry_ptr, ptr @handle_pci_cfg_write._entry_ptr.23, ptr @mtty_dev_exit._entry, ptr @mtty_dev_exit._entry_ptr, ptr @mtty_dev_init._entry, ptr @mtty_dev_init._entry.10, ptr @mtty_dev_init._entry.4, ptr @mtty_dev_init._entry.7, ptr @mtty_dev_init._entry_ptr, ptr @mtty_dev_init._entry_ptr.12, ptr @mtty_dev_init._entry_ptr.6, ptr @mtty_dev_init._entry_ptr.9, ptr @mtty_reset._entry, ptr @mtty_reset._entry_ptr, ptr @mtty_set_irqs._entry, ptr @mtty_set_irqs._entry.34, ptr @mtty_set_irqs._entry.37, ptr @mtty_set_irqs._entry.40, ptr @mtty_set_irqs._entry.43, ptr @mtty_set_irqs._entry_ptr, ptr @mtty_set_irqs._entry_ptr.36, ptr @mtty_set_irqs._entry_ptr.39, ptr @mtty_set_irqs._entry_ptr.42, ptr @mtty_set_irqs._entry_ptr.45, ptr @mtty_trigger_interrupt._entry, ptr @mtty_trigger_interrupt._entry.26, ptr @mtty_trigger_interrupt._entry_ptr, ptr @mtty_trigger_interrupt._entry_ptr.28, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mtty_dev, ptr @.str.3, ptr @.str.5, ptr @vd_fops, ptr @.str.8, ptr @mtty_driver, ptr @mtty_dev_init.__key, ptr @.str.11, ptr @.str.13, ptr @mdev_fops, ptr @xa_init_flags.__key, ptr @.str.14, ptr @mdev_dev_groups, ptr @mdev_avail_ports, ptr @mtty_dev_ops, ptr @mtty_probe.__key, ptr @.str.15, ptr @mtty_probe.__key.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @mdev_dev_group, ptr @.str.48, ptr @mdev_dev_attrs, ptr @dev_attr_sample_mdev_dev, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @mtty_dev_groups, ptr @mdev_type_groups, ptr @mtty_dev_group, ptr @.str.54, ptr @mtty_dev_attrs, ptr @dev_attr_sample_mtty_dev, ptr @.str.55, ptr @.str.56, ptr @mdev_type_group1, ptr @mdev_type_group2, ptr @.str.57, ptr @mdev_types_attrs, ptr @mdev_type_attr_name, ptr @mdev_type_attr_device_api, ptr @mdev_type_attr_available_instances, ptr @.str.58, ptr @name_show.name_str, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [88 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev to i32), i32 1160, i32 1472, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_driver to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_fops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_avail_ports to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pci_cfg_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @handle_pci_cfg_write._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_trigger_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_trigger_interrupt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_set_irqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_set_irqs._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_set_irqs._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_set_irqs._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_set_irqs._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sample_mdev_dev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sample_mtty_dev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_group2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_types_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_device_api to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdev_type_attr_available_instances to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @name_show.name_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtty_dev_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %0 = call ptr @memset(ptr @mtty_dev, i32 0, i32 1160)
  tail call void @__raw_spin_lock_init(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3), ptr noundef nonnull @.str.14, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  store i32 67108868, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3, i32 0, i32 2), align 8
  store i32 0, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3, i32 1), align 4
  store i32 0, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3, i32 2), align 8
  %call1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @mtty_dev, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str.3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end4, label %if.end

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %call1) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cdev_init(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 2), ptr noundef nonnull @vd_fops) #11
  %1 = load i32, ptr @mtty_dev, align 8
  %call7 = tail call i32 @cdev_add(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 2), i32 noundef %1, i32 noundef 1048576) #11
  %2 = load i32, ptr @mtty_dev, align 8
  %shr = lshr i32 %2, 20
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %shr) #14
  %call13 = tail call i32 @mdev_register_driver(ptr noundef nonnull @mtty_driver) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end15, label %if.end.err_cdev_crit_edge

if.end.err_cdev_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_cdev

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @__class_create(ptr noundef nonnull @__this_module, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtty_dev_init.__key) #11
  store ptr %call17, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 1), align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end26

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #14
  %3 = load ptr, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %3 to i32
  br label %err_driver

if.end26:                                         ; preds = %if.end15
  store ptr %call17, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4, i32 33), align 4
  store ptr @mtty_device_release, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4, i32 35), align 4
  %call27 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4), ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.3) #11
  %call28 = tail call i32 @device_register(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4)) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end26.err_class_crit_edge

if.end26.err_class_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_class

if.end31:                                         ; preds = %if.end26
  %call32 = tail call i32 @mdev_register_device(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4), ptr noundef nonnull @mdev_fops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %err_device

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err_device:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @device_unregister(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4)) #11
  br label %err_class

err_class:                                        ; preds = %err_device, %if.end26.err_class_crit_edge
  %ret.0 = phi i32 [ %call28, %if.end26.err_class_crit_edge ], [ %call32, %err_device ]
  %5 = load ptr, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 1), align 4
  tail call void @class_destroy(ptr noundef %5) #11
  br label %err_driver

err_driver:                                       ; preds = %err_class, %do.end22
  %ret.1 = phi i32 [ %4, %do.end22 ], [ %ret.0, %err_class ]
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mtty_driver) #11
  br label %err_cdev

err_cdev:                                         ; preds = %err_driver, %if.end.err_cdev_crit_edge
  %ret.2 = phi i32 [ %call13, %if.end.err_cdev_crit_edge ], [ %ret.1, %err_driver ]
  tail call void @cdev_del(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 2)) #11
  %6 = load i32, ptr @mtty_dev, align 8
  tail call void @unregister_chrdev_region(i32 noundef %6, i32 noundef 1048576) #11
  br label %cleanup

cleanup:                                          ; preds = %err_cdev, %if.end31.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ %ret.2, %err_cdev ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  store ptr null, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4, i32 5), align 8
  tail call void @mdev_unregister_device(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4)) #11
  tail call void @device_unregister(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 4)) #11
  tail call void @idr_destroy(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 3)) #11
  tail call void @mdev_unregister_driver(ptr noundef nonnull @mtty_driver) #11
  tail call void @cdev_del(ptr noundef getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 2)) #11
  %0 = load i32, ptr @mtty_dev, align 8
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #11
  %1 = load ptr, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 1), align 4
  tail call void @class_destroy(ptr noundef %1) #11
  store ptr null, ptr getelementptr inbounds (%struct.mtty_dev, ptr @mtty_dev, i32 0, i32 1), align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_register_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtty_device_release(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtty_device_release.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtty_device_release, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !186

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtty_device_release.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.53) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_register_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_driver(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtty_probe(ptr noundef %mdev) #4 align 64 {
entry:
  %avail_ports = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mdev_get_type_group_id(ptr noundef %mdev) #11
  %add = add i32 %call, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %avail_ports) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @mdev_avail_ports, i32 noundef 4) #11
  %0 = load volatile i32, ptr @mdev_avail_ports, align 4
  br label %do.body

do.body:                                          ; preds = %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge, %entry
  %storemerge = phi i32 [ %0, %entry ], [ %asmresult3.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge ]
  %1 = ptrtoint ptr %avail_ports to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %avail_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge, i32 %add)
  %cmp = icmp slt i32 %storemerge, %add
  br i1 %cmp, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %sub = sub i32 %storemerge, %add
  %call.i.i56 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mdev_avail_ports, i32 noundef 4) #11
  %call.i1.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %avail_ports, i32 noundef 4) #11
  %2 = ptrtoint ptr %avail_ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %avail_ports, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !187
  call void @llvm.prefetch.p0(ptr nonnull @mdev_avail_ports, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge, %do.cond
  %4 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mdev_avail_ports, ptr nonnull @mdev_avail_ports, i32 %3, i32 %sub, ptr nonnull elementtype(i32) @mdev_avail_ports) #11, !srcloc !188
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %4, 0
  %tobool.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i, label %do.body.i.i.i.i.do.body.i.i.i.i_crit_edge

do.body.i.i.i.i.do.body.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg.exit.i.i:                     ; preds = %do.body.i.i.i.i
  %asmresult3.i.i.i.i = extractvalue { i32, i32 } %4, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !189
  %cmp.not.i.i = icmp eq i32 %asmresult3.i.i.i.i, %3
  br i1 %cmp.not.i.i, label %do.end, label %arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge, !prof !190

arch_atomic_cmpxchg.exit.i.i.do.body_crit_edge:   ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 736) #15
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %do.end.err_nr_ports_crit_edge, label %if.end6

do.end.err_nr_ports_crit_edge:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_nr_ports

if.end6:                                          ; preds = %do.end
  call void @vfio_init_group_dev(ptr noundef nonnull %call7.i.i, ptr noundef %mdev, ptr noundef nonnull @mtty_dev_ops) #11
  %nr_ports7 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 14
  %6 = ptrtoint ptr %nr_ports7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %nr_ports7, align 4
  %irq_index = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %irq_index to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq_index, align 4
  %max_fifo_size = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 6
  %8 = ptrtoint ptr %max_fifo_size to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 16, ptr %max_fifo_size, align 1
  %max_fifo_size10 = getelementptr %struct.mdev_state, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 6
  %9 = ptrtoint ptr %max_fifo_size10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %max_fifo_size10, align 1
  %rxtx_lock = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 12
  call void @__mutex_init(ptr noundef %rxtx_lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @mtty_probe.__key) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i58 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 255) #15
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %vconfig to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i58, ptr %vconfig, align 8
  %cmp16 = icmp eq ptr %call7.i.i58, null
  br i1 %cmp16, label %if.end6.err_state_crit_edge, label %do.body19

if.end6.err_state_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_state

do.body19:                                        ; preds = %if.end6
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %ops_lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @mtty_probe.__key.16) #11
  %mdev22 = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %mdev22 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %mdev, ptr %mdev22, align 8
  %13 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vconfig, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 844317512, ptr %14, align 4
  %16 = load ptr, ptr %vconfig, align 8
  %arrayidx2.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %arrayidx2.i, align 2
  %18 = load ptr, ptr %vconfig, align 8
  %arrayidx4.i = getelementptr i8, ptr %18, i32 6
  %19 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 512, ptr %arrayidx4.i, align 2
  %20 = load ptr, ptr %vconfig, align 8
  %arrayidx6.i = getelementptr i8, ptr %20, i32 8
  %21 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 16, ptr %arrayidx6.i, align 1
  %22 = load ptr, ptr %vconfig, align 8
  %arrayidx8.i = getelementptr i8, ptr %22, i32 9
  %23 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx8.i, align 1
  %24 = load ptr, ptr %vconfig, align 8
  %arrayidx10.i = getelementptr i8, ptr %24, i32 10
  %25 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %arrayidx10.i, align 1
  %26 = load ptr, ptr %vconfig, align 8
  %arrayidx12.i = getelementptr i8, ptr %26, i32 11
  %27 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 7, ptr %arrayidx12.i, align 1
  %28 = load ptr, ptr %vconfig, align 8
  %arrayidx14.i = getelementptr i8, ptr %28, i32 16
  %29 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx14.i, align 4
  %bar_mask.i = getelementptr inbounds %struct.mdev_state, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %bar_mask.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -8, ptr %bar_mask.i, align 8
  %31 = ptrtoint ptr %nr_ports7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_ports7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp.i = icmp eq i32 %32, 2
  br i1 %cmp.i, label %if.then.i, label %do.body19.mtty_create_config_space.exit_crit_edge

do.body19.mtty_create_config_space.exit_crit_edge: ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  br label %mtty_create_config_space.exit

if.then.i:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vconfig, align 8
  %arrayidx17.i = getelementptr i8, ptr %34, i32 20
  %35 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %arrayidx17.i, align 4
  %arrayidx19.i = getelementptr %struct.mdev_state, ptr %call7.i.i, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -8, ptr %arrayidx19.i, align 4
  br label %mtty_create_config_space.exit

mtty_create_config_space.exit:                    ; preds = %if.then.i, %do.body19.mtty_create_config_space.exit_crit_edge
  %37 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vconfig, align 8
  %arrayidx21.i = getelementptr i8, ptr %38, i32 44
  %39 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 844317512, ptr %arrayidx21.i, align 4
  %40 = load ptr, ptr %vconfig, align 8
  %arrayidx23.i = getelementptr i8, ptr %40, i32 52
  %41 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %arrayidx23.i, align 1
  %42 = load ptr, ptr %vconfig, align 8
  %arrayidx25.i = getelementptr i8, ptr %42, i32 61
  %43 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %arrayidx25.i, align 1
  %44 = load ptr, ptr %vconfig, align 8
  %arrayidx27.i = getelementptr i8, ptr %44, i32 64
  %45 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 35, ptr %arrayidx27.i, align 1
  %46 = load ptr, ptr %vconfig, align 8
  %arrayidx29.i = getelementptr i8, ptr %46, i32 67
  %47 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -128, ptr %arrayidx29.i, align 1
  %48 = load ptr, ptr %vconfig, align 8
  %arrayidx31.i = getelementptr i8, ptr %48, i32 68
  %49 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 35, ptr %arrayidx31.i, align 1
  %50 = load ptr, ptr %vconfig, align 8
  %arrayidx33.i = getelementptr i8, ptr %50, i32 72
  %51 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 35, ptr %arrayidx33.i, align 1
  %52 = load ptr, ptr %vconfig, align 8
  %arrayidx35.i = getelementptr i8, ptr %52, i32 76
  %53 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 35, ptr %arrayidx35.i, align 1
  %54 = load ptr, ptr %vconfig, align 8
  %arrayidx37.i = getelementptr i8, ptr %54, i32 96
  %55 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 80, ptr %arrayidx37.i, align 1
  %56 = load ptr, ptr %vconfig, align 8
  %arrayidx39.i = getelementptr i8, ptr %56, i32 97
  %57 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 67, ptr %arrayidx39.i, align 1
  %58 = load ptr, ptr %vconfig, align 8
  %arrayidx41.i = getelementptr i8, ptr %58, i32 98
  %59 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 73, ptr %arrayidx41.i, align 1
  %60 = load ptr, ptr %vconfig, align 8
  %arrayidx43.i = getelementptr i8, ptr %60, i32 99
  %61 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 32, ptr %arrayidx43.i, align 1
  %62 = load ptr, ptr %vconfig, align 8
  %arrayidx45.i = getelementptr i8, ptr %62, i32 100
  %63 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 83, ptr %arrayidx45.i, align 1
  %64 = load ptr, ptr %vconfig, align 8
  %arrayidx47.i = getelementptr i8, ptr %64, i32 101
  %65 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 101, ptr %arrayidx47.i, align 1
  %66 = load ptr, ptr %vconfig, align 8
  %arrayidx49.i = getelementptr i8, ptr %66, i32 102
  %67 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 114, ptr %arrayidx49.i, align 1
  %68 = load ptr, ptr %vconfig, align 8
  %arrayidx51.i = getelementptr i8, ptr %68, i32 103
  %69 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 105, ptr %arrayidx51.i, align 1
  %70 = load ptr, ptr %vconfig, align 8
  %arrayidx53.i = getelementptr i8, ptr %70, i32 104
  %71 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 97, ptr %arrayidx53.i, align 1
  %72 = load ptr, ptr %vconfig, align 8
  %arrayidx55.i = getelementptr i8, ptr %72, i32 105
  %73 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 108, ptr %arrayidx55.i, align 1
  %74 = load ptr, ptr %vconfig, align 8
  %arrayidx57.i = getelementptr i8, ptr %74, i32 106
  %75 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 47, ptr %arrayidx57.i, align 1
  %76 = load ptr, ptr %vconfig, align 8
  %arrayidx59.i = getelementptr i8, ptr %76, i32 107
  %77 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 85, ptr %arrayidx59.i, align 1
  %78 = load ptr, ptr %vconfig, align 8
  %arrayidx61.i = getelementptr i8, ptr %78, i32 108
  %79 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 65, ptr %arrayidx61.i, align 1
  %80 = load ptr, ptr %vconfig, align 8
  %arrayidx63.i = getelementptr i8, ptr %80, i32 109
  %81 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 82, ptr %arrayidx63.i, align 1
  %82 = load ptr, ptr %vconfig, align 8
  %arrayidx65.i = getelementptr i8, ptr %82, i32 110
  %83 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 84, ptr %arrayidx65.i, align 1
  %call24 = call i32 @vfio_register_emulated_iommu_dev(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %if.end26, label %err_vconfig

if.end26:                                         ; preds = %mtty_create_config_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

err_vconfig:                                      ; preds = %mtty_create_config_space.exit
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %vconfig, align 8
  call void @kfree(ptr noundef %86) #11
  br label %err_state

err_state:                                        ; preds = %err_vconfig, %if.end6.err_state_crit_edge
  %ret.0 = phi i32 [ %call24, %err_vconfig ], [ -12, %if.end6.err_state_crit_edge ]
  call void @vfio_uninit_group_dev(ptr noundef nonnull %call7.i.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err_nr_ports

err_nr_ports:                                     ; preds = %err_state, %do.end.err_nr_ports_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_state ], [ -12, %do.end.err_nr_ports_crit_edge ]
  %call.i.i57 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mdev_avail_ports, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr nonnull @mdev_avail_ports, i32 1, i32 3, i32 1) #11
  %87 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mdev_avail_ports, ptr nonnull @mdev_avail_ports, i32 %add, ptr nonnull elementtype(i32) @mdev_avail_ports) #11, !srcloc !191
  br label %cleanup

cleanup:                                          ; preds = %err_nr_ports, %if.end26, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_nr_ports ], [ 0, %if.end26 ], [ -28, %do.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %avail_ports) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtty_remove(ptr nocapture noundef readonly %mdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr_ports1 = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %nr_ports1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_ports1, align 4
  tail call void @vfio_unregister_group_dev(ptr noundef %1) #11
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vconfig, align 8
  tail call void @kfree(ptr noundef %5) #11
  tail call void @vfio_uninit_group_dev(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @mdev_avail_ports, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr nonnull @mdev_avail_ports, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @mdev_avail_ports, ptr nonnull @mdev_avail_ports, i32 %3, ptr nonnull elementtype(i32) @mdev_avail_ports) #11, !srcloc !191
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mdev_get_type_group_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_init_group_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_emulated_iommu_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_uninit_group_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtty_read(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not141 = icmp eq i32 %count, 0
  br i1 %tobool.not141, label %entry.cleanup45_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !192
  %call = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val, i32 noundef 4, i64 noundef %1, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2 = icmp slt i32 %call, 1
  br i1 %cmp2, label %cleanup.thread, label %if.end59.i.i

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  br label %cleanup45

if.end59.i.i:                                     ; preds = %if.then
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.cleanup.thread110_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup.thread110_crit_edge:         ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread110

if.end.i.i:                                       ; preds = %if.end59.i.i
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 4, i32 -1226833920) #16, !srcloc !193
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %cleanup, label %if.end.i.i.cleanup.thread110_crit_edge

if.end.i.i.cleanup.thread110_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread110

cleanup.thread110:                                ; preds = %if.end.i.i.cleanup.thread110_crit_edge, %if.end59.i.i.cleanup.thread110_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val, i32 noundef 4) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool5.not = icmp eq i32 %call.i12.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  br i1 %tobool5.not, label %cleanup.cleanup42_crit_edge, label %cleanup.cleanup45_crit_edge

cleanup.cleanup45_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0142)
  %cmp8 = icmp ugt i32 %count.addr.0142, 1
  br i1 %cmp8, label %if.else.land.lhs.true9_crit_edge, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.else.land.lhs.true9_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #11
  %8 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %val13, align 2, !annotation !192
  %call14 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val13, i32 noundef 2, i64 noundef %6, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 1
  br i1 %cmp15, label %cleanup22.thread, label %if.end59.i.i84

cleanup22.thread:                                 ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #11
  br label %cleanup45

if.end59.i.i84:                                   ; preds = %if.then12
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i85, label %if.end59.i.i84.cleanup22.thread119_crit_edge, label %if.end.i.i88

if.end59.i.i84.cleanup22.thread119_crit_edge:     ; preds = %if.end59.i.i84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup22.thread119

if.end.i.i88:                                     ; preds = %if.end59.i.i84
  %9 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 2, i32 -1226833920) #16, !srcloc !193
  %asmresult.i.i86 = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %cleanup22, label %if.end.i.i88.cleanup22.thread119_crit_edge

if.end.i.i88.cleanup22.thread119_crit_edge:       ; preds = %if.end.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup22.thread119

cleanup22.thread119:                              ; preds = %if.end.i.i88.cleanup22.thread119_crit_edge, %if.end59.i.i84.cleanup22.thread119_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #11
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val13, i32 noundef 2) #11
  %call.i12.i.i90 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val13, i32 noundef 2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i90)
  %tobool19.not = icmp eq i32 %call.i12.i.i90, 0
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #11
  br i1 %tobool19.not, label %cleanup22.cleanup42_crit_edge, label %cleanup22.cleanup45_crit_edge

cleanup22.cleanup45_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #11
  %10 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %val26, align 1, !annotation !192
  %11 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %ppos, align 8
  %call27 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val26, i32 noundef 1, i64 noundef %12, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 1
  br i1 %cmp28, label %cleanup35.thread, label %if.end59.i.i97

cleanup35.thread:                                 ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #11
  br label %cleanup45

if.end59.i.i97:                                   ; preds = %if.else25
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i98 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i98, label %if.end59.i.i97.cleanup35.thread127_crit_edge, label %if.end.i.i101

if.end59.i.i97.cleanup35.thread127_crit_edge:     ; preds = %if.end59.i.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35.thread127

if.end.i.i101:                                    ; preds = %if.end59.i.i97
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0146, i32 1, i32 -1226833920) #16, !srcloc !193
  %asmresult.i.i99 = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i99)
  %cmp.i6.i100 = icmp eq i32 %asmresult.i.i99, 0
  br i1 %cmp.i6.i100, label %cleanup35, label %if.end.i.i101.cleanup35.thread127_crit_edge

if.end.i.i101.cleanup35.thread127_crit_edge:      ; preds = %if.end.i.i101
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup35.thread127

cleanup35.thread127:                              ; preds = %if.end.i.i101.cleanup35.thread127_crit_edge, %if.end59.i.i97.cleanup35.thread127_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #11
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i101
  %call.i.i.i102 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %val26, i32 noundef 1) #11
  %call.i12.i.i103 = call i32 @arm_copy_to_user(ptr noundef %buf.addr.0146, ptr noundef nonnull %val26, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i103)
  %tobool32.not = icmp eq i32 %call.i12.i.i103, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #11
  br i1 %tobool32.not, label %cleanup35.cleanup42_crit_edge, label %cleanup35.cleanup45_crit_edge

cleanup35.cleanup45_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup42.cleanup45_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %cleanup35.cleanup45_crit_edge, %cleanup35.thread127, %cleanup35.thread, %cleanup22.cleanup45_crit_edge, %cleanup22.thread119, %cleanup22.thread, %cleanup.cleanup45_crit_edge, %cleanup.thread110, %cleanup.thread, %entry.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %cleanup.thread ], [ -14, %cleanup.thread110 ], [ -14, %cleanup22.thread ], [ -14, %cleanup22.thread119 ], [ -14, %cleanup35.thread ], [ -14, %cleanup35.thread127 ], [ 0, %entry.cleanup45_crit_edge ], [ -14, %cleanup.cleanup45_crit_edge ], [ -14, %cleanup22.cleanup45_crit_edge ], [ -14, %cleanup35.cleanup45_crit_edge ], [ %add, %cleanup42.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtty_write(ptr noundef %vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %ppos) #4 align 64 {
entry:
  %val = alloca i32, align 4
  %val13 = alloca i16, align 2
  %val26 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true9

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !192
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.then.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.if.then11.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %4 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 4, i32 -1226833920) #16, !srcloc !194
  %asmresult.i.i = extractvalue { i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !190

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val, i32 noundef 4) #11
  %5 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 4
  %7 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !195
  %and.i.i.i.i = and i32 %7, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %val, ptr noundef %buf.addr.0, i32 noundef 4) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %7) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %cleanup, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !190

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.if.then11.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  br label %cleanup45

cleanup:                                          ; preds = %if.end.i.i
  %8 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %ppos, align 8
  %call4 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val, i32 noundef 4, i64 noundef %9, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  br i1 %cmp5, label %cleanup.cleanup42_crit_edge, label %cleanup.if.end39_crit_edge

cleanup.if.end39_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

cleanup.cleanup42_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.addr.0)
  %cmp8 = icmp ugt i32 %count.addr.0, 1
  br i1 %cmp8, label %if.else.land.lhs.true9_crit_edge, label %if.else.if.else25_crit_edge

if.else.if.else25_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.else.land.lhs.true9_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else25

if.then12:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val13) #11
  %13 = ptrtoint ptr %val13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %val13, align 2, !annotation !192
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i85 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i85, label %if.then12.if.then11.i.i101_crit_edge, label %land.lhs.true.i.i88

if.then12.if.then11.i.i101_crit_edge:             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i101

land.lhs.true.i.i88:                              ; preds = %if.then12
  %14 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 2, i32 -1226833920) #16, !srcloc !194
  %asmresult.i.i86 = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i86)
  %cmp.i6.i87 = icmp eq i32 %asmresult.i.i86, 0
  br i1 %cmp.i6.i87, label %if.end.i.i98, label %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, !prof !190

land.lhs.true.i.i88.if.then11.i.i101_crit_edge:   ; preds = %land.lhs.true.i.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i101

if.end.i.i98:                                     ; preds = %land.lhs.true.i.i88
  %call.i.i.i89 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val13, i32 noundef 2) #11
  %15 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i90 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i.i.i.i90 to ptr
  %cpu_domain.i.i.i.i.i91 = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 4
  %17 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i91) #7, !srcloc !195
  %and.i.i.i.i92 = and i32 %17, -13
  %or.i.i.i.i93 = or i32 %and.i.i.i.i92, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i93) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i94 = call i32 @arm_copy_from_user(ptr noundef nonnull %val13, ptr noundef %buf.addr.0, i32 noundef 2) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %17) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i94)
  %tobool4.not.i.i97 = icmp eq i32 %call1.i.i.i94, 0
  br i1 %tobool4.not.i.i97, label %cleanup22, label %if.end.i.i98.if.then11.i.i101_crit_edge, !prof !190

if.end.i.i98.if.then11.i.i101_crit_edge:          ; preds = %if.end.i.i98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i101

if.then11.i.i101:                                 ; preds = %if.end.i.i98.if.then11.i.i101_crit_edge, %land.lhs.true.i.i88.if.then11.i.i101_crit_edge, %if.then12.if.then11.i.i101_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #11
  br label %cleanup45

cleanup22:                                        ; preds = %if.end.i.i98
  %18 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %ppos, align 8
  %call18 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val13, i32 noundef 2, i64 noundef %19, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val13) #11
  br i1 %cmp19, label %cleanup22.cleanup42_crit_edge, label %cleanup22.if.end39_crit_edge

cleanup22.if.end39_crit_edge:                     ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

cleanup22.cleanup42_crit_edge:                    ; preds = %cleanup22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup42

if.else25:                                        ; preds = %land.lhs.true9.if.else25_crit_edge, %if.else.if.else25_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val26) #11
  %20 = ptrtoint ptr %val26 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -1, ptr %val26, align 1, !annotation !192
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i108 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i108, label %if.else25.if.then11.i.i124_crit_edge, label %land.lhs.true.i.i111

if.else25.if.then11.i.i124_crit_edge:             ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i124

land.lhs.true.i.i111:                             ; preds = %if.else25
  %21 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf.addr.0, i32 1, i32 -1226833920) #16, !srcloc !194
  %asmresult.i.i109 = extractvalue { i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %if.end.i.i121, label %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, !prof !190

land.lhs.true.i.i111.if.then11.i.i124_crit_edge:  ; preds = %land.lhs.true.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i124

if.end.i.i121:                                    ; preds = %land.lhs.true.i.i111
  %call.i.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %val26, i32 noundef 1) #11
  %22 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i113 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i.i113 to ptr
  %cpu_domain.i.i.i.i.i114 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 4
  %24 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i114) #7, !srcloc !195
  %and.i.i.i.i115 = and i32 %24, -13
  %or.i.i.i.i116 = or i32 %and.i.i.i.i115, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i116) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i117 = call i32 @arm_copy_from_user(ptr noundef nonnull %val26, ptr noundef %buf.addr.0, i32 noundef 1) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %24) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i117)
  %tobool4.not.i.i120 = icmp eq i32 %call1.i.i.i117, 0
  br i1 %tobool4.not.i.i120, label %cleanup35, label %if.end.i.i121.if.then11.i.i124_crit_edge, !prof !190

if.end.i.i121.if.then11.i.i124_crit_edge:         ; preds = %if.end.i.i121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i124

if.then11.i.i124:                                 ; preds = %if.end.i.i121.if.then11.i.i124_crit_edge, %land.lhs.true.i.i111.if.then11.i.i124_crit_edge, %if.else25.if.then11.i.i124_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #11
  br label %cleanup45

cleanup35:                                        ; preds = %if.end.i.i121
  %25 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %ppos, align 8
  %call31 = call fastcc i32 @mdev_access(ptr noundef %vdev, ptr noundef nonnull %val26, i32 noundef 1, i64 noundef %26, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val26) #11
  br i1 %cmp32, label %cleanup35.cleanup42_crit_edge, label %cleanup35.if.end39_crit_edge

cleanup35.if.end39_crit_edge:                     ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end39

cleanup35.cleanup42_crit_edge:                    ; preds = %cleanup35
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup45

cleanup42.while.cond_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

cleanup45:                                        ; preds = %cleanup42.cleanup45_crit_edge, %if.then11.i.i124, %if.then11.i.i101, %if.then11.i.i, %while.cond.cleanup45_crit_edge
  %retval.0 = phi i32 [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i101 ], [ -14, %if.then11.i.i124 ], [ -14, %cleanup42.cleanup45_crit_edge ], [ %done.0, %while.cond.cleanup45_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtty_ioctl(ptr noundef %vdev, i32 noundef %cmd, i32 noundef %arg) #4 align 64 {
entry:
  %info = alloca %struct.vfio_device_info, align 4
  %info12 = alloca %struct.vfio_region_info, align 8
  %info33 = alloca %struct.vfio_irq_info, align 4
  %hdr = alloca %struct.vfio_irq_set, align 4
  %data_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup80_crit_edge [
    i32 15211, label %sw.bb
    i32 15212, label %sw.bb11
    i32 15213, label %sw.bb32
    i32 15214, label %sw.bb53
    i32 15215, label %sw.bb78
  ]

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup80

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #11
  %1 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 1
  %2 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 2
  %3 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 3
  %4 = inttoptr i32 %arg to ptr
  %5 = call ptr @memset(ptr %info, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %4, i32 16, i32 -1226833920) #16
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !190

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #11
  %7 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !195
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %4, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !190

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i231 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %sw.bb.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i231
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i231)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %12)
  %cmp = icmp ult i32 %12, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end59.i.i119

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end59.i.i119:                                  ; preds = %if.end
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %1, align 4
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %2, align 4
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %3, align 4
  %dev_info = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 13
  %16 = call ptr @memcpy(ptr %dev_info, ptr %info, i32 20)
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i120 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i120, label %if.end59.i.i119.cleanup_crit_edge, label %copy_to_user.exit

if.end59.i.i119.cleanup_crit_edge:                ; preds = %if.end59.i.i119
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end59.i.i119
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i124 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #11
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %4, ptr noundef nonnull %info, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool8.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool8.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end59.i.i119.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end59.i.i119.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #11
  br label %cleanup80

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info12) #11
  %17 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 1
  %18 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 2
  %19 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 4
  %20 = getelementptr inbounds %struct.vfio_region_info, ptr %info12, i32 0, i32 5
  %21 = inttoptr i32 %arg to ptr
  %22 = call ptr @memset(ptr %info12, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i130 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i130, label %sw.bb11.if.then11.i.i146_crit_edge, label %land.lhs.true.i.i133

sw.bb11.if.then11.i.i146_crit_edge:               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i146

land.lhs.true.i.i133:                             ; preds = %sw.bb11
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 32, i32 -1226833920) #16
  %asmresult.i.i131 = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i131)
  %cmp.i6.i132 = icmp eq i32 %asmresult.i.i131, 0
  br i1 %cmp.i6.i132, label %if.end.i.i143, label %land.lhs.true.i.i133.if.then11.i.i146_crit_edge, !prof !190

land.lhs.true.i.i133.if.then11.i.i146_crit_edge:  ; preds = %land.lhs.true.i.i133
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i146

if.end.i.i143:                                    ; preds = %land.lhs.true.i.i133
  %call.i.i.i134 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info12, i32 noundef 32) #11
  %24 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i135 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i135 to ptr
  %cpu_domain.i.i.i.i.i136 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 4
  %26 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i136) #7, !srcloc !195
  %and.i.i.i.i137 = and i32 %26, -13
  %or.i.i.i.i138 = or i32 %and.i.i.i.i137, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i138) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i139 = call i32 @arm_copy_from_user(ptr noundef nonnull %info12, ptr noundef %21, i32 noundef 32) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %26) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i139)
  %tobool4.not.i.i142 = icmp eq i32 %call1.i.i.i139, 0
  br i1 %tobool4.not.i.i142, label %if.end16, label %if.end.i.i143.if.then11.i.i146_crit_edge, !prof !190

if.end.i.i143.if.then11.i.i146_crit_edge:         ; preds = %if.end.i.i143
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i146

if.then11.i.i146:                                 ; preds = %if.end.i.i143.if.then11.i.i146_crit_edge, %land.lhs.true.i.i133.if.then11.i.i146_crit_edge, %sw.bb11.if.then11.i.i146_crit_edge
  %res.0.i.i141238 = phi i32 [ %call1.i.i.i139, %if.end.i.i143.if.then11.i.i146_crit_edge ], [ 32, %sw.bb11.if.then11.i.i146_crit_edge ], [ 32, %land.lhs.true.i.i133.if.then11.i.i146_crit_edge ]
  %sub.i.i144 = sub i32 32, %res.0.i.i141238
  %add.ptr.i.i145 = getelementptr i8, ptr %info12, i32 %sub.i.i144
  %27 = call ptr @memset(ptr %add.ptr.i.i145, i32 0, i32 %res.0.i.i141238)
  br label %cleanup29

if.end16:                                         ; preds = %if.end.i.i143
  %28 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info12, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %29)
  %cmp18 = icmp ult i32 %29, 32
  br i1 %cmp18, label %if.end16.cleanup29_crit_edge, label %if.end20

if.end16.cleanup29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup29

if.end20:                                         ; preds = %if.end16
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %18, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %31)
  %cmp.i = icmp ugt i32 %31, 8
  br i1 %cmp.i, label %if.end20.cleanup29_crit_edge, label %if.end.i

if.end20.cleanup29_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup29

if.end.i:                                         ; preds = %if.end20
  %ops_lock.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %ops_lock.i, i32 noundef 0) #11
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %31, label %sw.default.i [
    i32 7, label %if.end.i.if.end59.i.i152_crit_edge
    i32 0, label %sw.bb1.i
    i32 1, label %sw.bb2.i
  ]

if.end.i.if.end59.i.i152_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i152

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i152

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %nr_ports.i = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 14
  %33 = ptrtoint ptr %nr_ports.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp3.i = icmp eq i32 %34, 2
  %spec.select.i = select i1 %cmp3.i, i32 8, i32 0
  br label %if.end59.i.i152

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i152

if.end59.i.i152:                                  ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %if.end.i.if.end59.i.i152_crit_edge
  %size.0.i = phi i32 [ 0, %sw.default.i ], [ 8, %sw.bb1.i ], [ 255, %if.end.i.if.end59.i.i152_crit_edge ], [ %spec.select.i, %sw.bb2.i ]
  %size7.i = getelementptr %struct.mdev_state, ptr %vdev, i32 0, i32 8, i32 %31, i32 2
  %35 = ptrtoint ptr %size7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %size.0.i, ptr %size7.i, align 8
  %conv.i = zext i32 %31 to i64
  %shl.i = shl nuw nsw i64 %conv.i, 40
  %vfio_offset.i = getelementptr %struct.mdev_state, ptr %vdev, i32 0, i32 8, i32 %31, i32 3
  %36 = ptrtoint ptr %vfio_offset.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %shl.i, ptr %vfio_offset.i, align 8
  %conv10.i = zext i32 %size.0.i to i64
  %37 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv10.i, ptr %19, align 8
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %shl.i, ptr %20, align 8
  %39 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %17, align 4
  call void @mutex_unlock(ptr noundef %ops_lock.i) #11
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i153 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i153, label %if.end59.i.i152.cleanup29_crit_edge, label %copy_to_user.exit161

if.end59.i.i152.cleanup29_crit_edge:              ; preds = %if.end59.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup29

copy_to_user.exit161:                             ; preds = %if.end59.i.i152
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i157 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info12, i32 noundef 32) #11
  %call.i12.i.i158 = call i32 @arm_copy_to_user(ptr noundef %21, ptr noundef nonnull %info12, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i158)
  %tobool26.not = icmp eq i32 %call.i12.i.i158, 0
  %spec.select259 = select i1 %tobool26.not, i32 0, i32 -14
  br label %cleanup29

cleanup29:                                        ; preds = %copy_to_user.exit161, %if.end59.i.i152.cleanup29_crit_edge, %if.end20.cleanup29_crit_edge, %if.end16.cleanup29_crit_edge, %if.then11.i.i146
  %retval.1 = phi i32 [ -22, %if.end16.cleanup29_crit_edge ], [ -22, %if.end20.cleanup29_crit_edge ], [ -14, %if.then11.i.i146 ], [ -14, %if.end59.i.i152.cleanup29_crit_edge ], [ %spec.select259, %copy_to_user.exit161 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info12) #11
  br label %cleanup80

sw.bb32:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info33) #11
  %40 = getelementptr inbounds %struct.vfio_irq_info, ptr %info33, i32 0, i32 1
  %41 = getelementptr inbounds %struct.vfio_irq_info, ptr %info33, i32 0, i32 2
  %42 = getelementptr inbounds %struct.vfio_irq_info, ptr %info33, i32 0, i32 3
  %43 = inttoptr i32 %arg to ptr
  %44 = call ptr @memset(ptr %info33, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i166 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i166, label %sw.bb32.if.then11.i.i182_crit_edge, label %land.lhs.true.i.i169

sw.bb32.if.then11.i.i182_crit_edge:               ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i182

land.lhs.true.i.i169:                             ; preds = %sw.bb32
  %45 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %43, i32 16, i32 -1226833920) #16
  %asmresult.i.i167 = extractvalue { i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i167)
  %cmp.i6.i168 = icmp eq i32 %asmresult.i.i167, 0
  br i1 %cmp.i6.i168, label %if.end.i.i179, label %land.lhs.true.i.i169.if.then11.i.i182_crit_edge, !prof !190

land.lhs.true.i.i169.if.then11.i.i182_crit_edge:  ; preds = %land.lhs.true.i.i169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i182

if.end.i.i179:                                    ; preds = %land.lhs.true.i.i169
  %call.i.i.i170 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info33, i32 noundef 16) #11
  %46 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i171 = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i.i171 to ptr
  %cpu_domain.i.i.i.i.i172 = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 4
  %48 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i172) #7, !srcloc !195
  %and.i.i.i.i173 = and i32 %48, -13
  %or.i.i.i.i174 = or i32 %and.i.i.i.i173, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i174) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i175 = call i32 @arm_copy_from_user(ptr noundef nonnull %info33, ptr noundef %43, i32 noundef 16) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %48) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i175)
  %tobool4.not.i.i178 = icmp eq i32 %call1.i.i.i175, 0
  br i1 %tobool4.not.i.i178, label %if.end37, label %if.end.i.i179.if.then11.i.i182_crit_edge, !prof !190

if.end.i.i179.if.then11.i.i182_crit_edge:         ; preds = %if.end.i.i179
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i182

if.then11.i.i182:                                 ; preds = %if.end.i.i179.if.then11.i.i182_crit_edge, %land.lhs.true.i.i169.if.then11.i.i182_crit_edge, %sw.bb32.if.then11.i.i182_crit_edge
  %res.0.i.i177247 = phi i32 [ %call1.i.i.i175, %if.end.i.i179.if.then11.i.i182_crit_edge ], [ 16, %sw.bb32.if.then11.i.i182_crit_edge ], [ 16, %land.lhs.true.i.i169.if.then11.i.i182_crit_edge ]
  %sub.i.i180 = sub i32 16, %res.0.i.i177247
  %add.ptr.i.i181 = getelementptr i8, ptr %info33, i32 %sub.i.i180
  %49 = call ptr @memset(ptr %add.ptr.i.i181, i32 0, i32 %res.0.i.i177247)
  br label %cleanup52

if.end37:                                         ; preds = %if.end.i.i179
  %50 = ptrtoint ptr %info33 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %info33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %51)
  %cmp39 = icmp ult i32 %51, 16
  br i1 %cmp39, label %if.end37.cleanup52_crit_edge, label %lor.lhs.false

if.end37.cleanup52_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

lor.lhs.false:                                    ; preds = %if.end37
  %52 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %41, align 4
  %num_irqs = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 13, i32 3
  %54 = ptrtoint ptr %num_irqs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp41.not = icmp ult i32 %53, %55
  br i1 %cmp41.not, label %if.end43, label %lor.lhs.false.cleanup52_crit_edge

lor.lhs.false.cleanup52_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end43:                                         ; preds = %lor.lhs.false
  %56 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %53, label %if.end43.cleanup52_crit_edge [
    i32 0, label %if.end43.if.end59.i.i188_crit_edge
    i32 1, label %if.end43.if.end59.i.i188_crit_edge261
    i32 4, label %if.end43.if.end59.i.i188_crit_edge262
  ]

if.end43.if.end59.i.i188_crit_edge262:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i188

if.end43.if.end59.i.i188_crit_edge261:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i188

if.end43.if.end59.i.i188_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59.i.i188

if.end43.cleanup52_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

if.end59.i.i188:                                  ; preds = %if.end43.if.end59.i.i188_crit_edge, %if.end43.if.end59.i.i188_crit_edge261, %if.end43.if.end59.i.i188_crit_edge262
  %57 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp.i224 = icmp eq i32 %53, 0
  %spec.select.i225 = select i1 %cmp.i224, i32 7, i32 9
  %58 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i225, ptr %40, align 4
  call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 174) #11
  %call.i.i189 = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i189, label %if.end59.i.i188.cleanup52_crit_edge, label %copy_to_user.exit197

if.end59.i.i188.cleanup52_crit_edge:              ; preds = %if.end59.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup52

copy_to_user.exit197:                             ; preds = %if.end59.i.i188
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i193 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info33, i32 noundef 16) #11
  %call.i12.i.i194 = call i32 @arm_copy_to_user(ptr noundef %43, ptr noundef nonnull %info33, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i194)
  %tobool49.not = icmp eq i32 %call.i12.i.i194, 0
  %spec.select260 = select i1 %tobool49.not, i32 0, i32 -14
  br label %cleanup52

cleanup52:                                        ; preds = %copy_to_user.exit197, %if.end59.i.i188.cleanup52_crit_edge, %if.end43.cleanup52_crit_edge, %lor.lhs.false.cleanup52_crit_edge, %if.end37.cleanup52_crit_edge, %if.then11.i.i182
  %retval.2 = phi i32 [ -22, %lor.lhs.false.cleanup52_crit_edge ], [ -22, %if.end37.cleanup52_crit_edge ], [ -22, %if.end43.cleanup52_crit_edge ], [ -14, %if.then11.i.i182 ], [ -14, %if.end59.i.i188.cleanup52_crit_edge ], [ %spec.select260, %copy_to_user.exit197 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info33) #11
  br label %cleanup80

sw.bb53:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #11
  %59 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 1
  %60 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 2
  %61 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size) #11
  %62 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %data_size, align 4
  %63 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.31, i32 noundef 156) #11
  %call.i.i202 = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i202, label %sw.bb53.if.then11.i.i218_crit_edge, label %land.lhs.true.i.i205

sw.bb53.if.then11.i.i218_crit_edge:               ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i218

land.lhs.true.i.i205:                             ; preds = %sw.bb53
  %64 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %63, i32 20, i32 -1226833920) #16, !srcloc !194
  %asmresult.i.i203 = extractvalue { i32, i32 } %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i203)
  %cmp.i6.i204 = icmp eq i32 %asmresult.i.i203, 0
  br i1 %cmp.i6.i204, label %if.end.i.i215, label %land.lhs.true.i.i205.if.then11.i.i218_crit_edge, !prof !190

land.lhs.true.i.i205.if.then11.i.i218_crit_edge:  ; preds = %land.lhs.true.i.i205
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i218

if.end.i.i215:                                    ; preds = %land.lhs.true.i.i205
  %call.i.i.i206 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 20) #11
  %65 = call i32 @llvm.read_register.i32(metadata !176) #11
  %and.i.i.i.i.i.i207 = and i32 %65, -16384
  %66 = inttoptr i32 %and.i.i.i.i.i.i207 to ptr
  %cpu_domain.i.i.i.i.i208 = getelementptr inbounds %struct.thread_info, ptr %66, i32 0, i32 4
  %67 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i208) #7, !srcloc !195
  %and.i.i.i.i209 = and i32 %67, -13
  %or.i.i.i.i210 = or i32 %and.i.i.i.i209, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i210) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  %call1.i.i.i211 = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %63, i32 noundef 20) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %67) #11, !srcloc !196
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i211)
  %tobool4.not.i.i214 = icmp eq i32 %call1.i.i.i211, 0
  br i1 %tobool4.not.i.i214, label %if.end57, label %if.end.i.i215.if.then11.i.i218_crit_edge, !prof !190

if.end.i.i215.if.then11.i.i218_crit_edge:         ; preds = %if.end.i.i215
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i218

if.then11.i.i218:                                 ; preds = %if.end.i.i215.if.then11.i.i218_crit_edge, %land.lhs.true.i.i205.if.then11.i.i218_crit_edge, %sw.bb53.if.then11.i.i218_crit_edge
  %res.0.i.i213256 = phi i32 [ %call1.i.i.i211, %if.end.i.i215.if.then11.i.i218_crit_edge ], [ 20, %sw.bb53.if.then11.i.i218_crit_edge ], [ 20, %land.lhs.true.i.i205.if.then11.i.i218_crit_edge ]
  %sub.i.i216 = sub i32 20, %res.0.i.i213256
  %add.ptr.i.i217 = getelementptr i8, ptr %hdr, i32 %sub.i.i216
  %68 = call ptr @memset(ptr %add.ptr.i.i217, i32 0, i32 %res.0.i.i213256)
  br label %cleanup74

if.end57:                                         ; preds = %if.end.i.i215
  %num_irqs59 = getelementptr inbounds %struct.mdev_state, ptr %vdev, i32 0, i32 13, i32 3
  %69 = ptrtoint ptr %num_irqs59 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_irqs59, align 4
  %call60 = call i32 @vfio_set_irqs_validate_and_prepare(ptr noundef nonnull %hdr, i32 noundef %70, i32 noundef 5, ptr noundef nonnull %data_size) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end57.cleanup74_crit_edge

if.end57.cleanup74_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup74

if.end63:                                         ; preds = %if.end57
  %71 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool64.not = icmp eq i32 %72, 0
  br i1 %tobool64.not, label %if.end63.if.end71_crit_edge, label %if.then65

if.end63.if.end71_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then65:                                        ; preds = %if.end63
  %add = add i32 %arg, 20
  %73 = inttoptr i32 %add to ptr
  %call66 = call ptr @memdup_user(ptr noundef %73, i32 noundef %72) #11
  %cmp.i228 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then68, label %if.then65.if.end71_crit_edge

if.then65.if.end71_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then68:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %call66 to i32
  br label %cleanup74

if.end71:                                         ; preds = %if.then65.if.end71_crit_edge, %if.end63.if.end71_crit_edge
  %ptr.0 = phi ptr [ %call66, %if.then65.if.end71_crit_edge ], [ null, %if.end63.if.end71_crit_edge ]
  %75 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %59, align 4
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %60, align 4
  %call73 = call fastcc i32 @mtty_set_irqs(ptr noundef %vdev, i32 noundef %76, i32 noundef %78, ptr noundef %ptr.0)
  call void @kfree(ptr noundef %ptr.0) #11
  br label %cleanup74

cleanup74:                                        ; preds = %if.end71, %if.then68, %if.end57.cleanup74_crit_edge, %if.then11.i.i218
  %retval.3 = phi i32 [ %74, %if.then68 ], [ %call73, %if.end71 ], [ %call60, %if.end57.cleanup74_crit_edge ], [ -14, %if.then11.i.i218 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #11
  br label %cleanup80

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #14
  br label %cleanup80

cleanup80:                                        ; preds = %sw.bb78, %cleanup74, %cleanup52, %cleanup29, %cleanup, %entry.cleanup80_crit_edge
  %retval.4 = phi i32 [ 0, %sw.bb78 ], [ %retval.3, %cleanup74 ], [ %retval.2, %cleanup52 ], [ %retval.1, %cleanup29 ], [ %retval.0, %cleanup ], [ -25, %entry.cleanup80_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mdev_access(ptr noundef %mdev_state, ptr noundef %buf, i32 noundef %count, i64 noundef %pos, i1 noundef zeroext %is_write) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #11
  %shr = ashr i64 %pos, 40
  %conv = trunc i64 %shr to i32
  %0 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %conv, label %if.end.accessfailed_crit_edge [
    i32 7, label %sw.bb
    i32 0, label %if.end.sw.bb5_crit_edge
    i32 1, label %if.end.sw.bb5_crit_edge78
    i32 2, label %if.end.sw.bb5_crit_edge79
    i32 3, label %if.end.sw.bb5_crit_edge80
    i32 4, label %if.end.sw.bb5_crit_edge81
    i32 5, label %if.end.sw.bb5_crit_edge82
  ]

if.end.sw.bb5_crit_edge82:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.sw.bb5_crit_edge81:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.sw.bb5_crit_edge80:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.sw.bb5_crit_edge79:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.sw.bb5_crit_edge78:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5

if.end.accessfailed_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

sw.bb:                                            ; preds = %if.end
  br i1 %is_write, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  %conv3 = trunc i64 %pos to i16
  %1 = trunc i64 %pos to i32
  %conv.i = and i32 %1, 65535
  %2 = zext i16 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i16 %conv3, label %do.end39.i [
    i16 4, label %if.then2.accessfailed_crit_edge
    i16 6, label %if.then2.accessfailed_crit_edge83
    i16 60, label %sw.bb1.i
    i16 61, label %if.then2.accessfailed_crit_edge84
    i16 32, label %if.then2.sw.bb33.i_crit_edge
    i16 28, label %if.then2.sw.bb33.i_crit_edge85
    i16 24, label %if.then2.sw.bb33.i_crit_edge86
    i16 16, label %if.then2.if.end18.i_crit_edge
    i16 20, label %if.end10.i
  ]

if.then2.if.end18.i_crit_edge:                    ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then2.sw.bb33.i_crit_edge86:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33.i

if.then2.sw.bb33.i_crit_edge85:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33.i

if.then2.sw.bb33.i_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb33.i

if.then2.accessfailed_crit_edge84:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

if.then2.accessfailed_crit_edge83:                ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

if.then2.accessfailed_crit_edge:                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

sw.bb1.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %vconfig.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %5 = ptrtoint ptr %vconfig.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vconfig.i, align 8
  %arrayidx2.i = getelementptr i8, ptr %6, i32 60
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %arrayidx2.i, align 1
  br label %accessfailed

if.end10.i:                                       ; preds = %if.then2
  %nr_ports.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 14
  %8 = ptrtoint ptr %nr_ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp11.not.i = icmp eq i32 %9, 1
  br i1 %cmp11.not.i, label %if.then15.i, label %if.end10.i.if.end18.i_crit_edge

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  %vconfig16.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %10 = ptrtoint ptr %vconfig16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vconfig16.i, align 8
  %arrayidx17.i = getelementptr i8, ptr %11, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx17.i, align 4
  br label %accessfailed

if.end18.i:                                       ; preds = %if.end10.i.if.end18.i_crit_edge, %if.then2.if.end18.i_crit_edge
  %bar_index.070.i = phi i32 [ 1, %if.end10.i.if.end18.i_crit_edge ], [ 0, %if.then2.if.end18.i_crit_edge ]
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %bar_index.070.i, i32 noundef %14) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp19.i = icmp eq i32 %14, -1
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.if.end24.i_crit_edge

if.end18.i.if.end24.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx23.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 9, i32 %bar_index.070.i
  %15 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx23.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then21.i, %if.end18.i.if.end24.i_crit_edge
  %cfg_addr.0.i = phi i32 [ %16, %if.then21.i ], [ %14, %if.end18.i.if.end24.i_crit_edge ]
  %vconfig25.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %17 = ptrtoint ptr %vconfig25.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vconfig25.i, align 8
  %arrayidx27.i = getelementptr i8, ptr %18, i32 %conv.i
  %19 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27.i, align 1
  %21 = and i8 %20, 3
  %and29.i = zext i8 %21 to i32
  %or.i = or i32 %cfg_addr.0.i, %and29.i
  store i32 %or.i, ptr %arrayidx27.i, align 4
  br label %accessfailed

sw.bb33.i:                                        ; preds = %if.then2.sw.bb33.i_crit_edge, %if.then2.sw.bb33.i_crit_edge85, %if.then2.sw.bb33.i_crit_edge86
  %vconfig34.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %22 = ptrtoint ptr %vconfig34.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vconfig34.i, align 8
  %arrayidx36.i = getelementptr i8, ptr %23, i32 %conv.i
  %24 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx36.i, align 4
  br label %accessfailed

do.end39.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #13
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %conv.i, i32 noundef %count) #14
  br label %accessfailed

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %vconfig = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %25 = ptrtoint ptr %vconfig to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vconfig, align 8
  %idx.ext = trunc i64 %pos to i32
  %add.ptr = getelementptr i8, ptr %26, i32 %idx.ext
  %27 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %count)
  br label %accessfailed

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge78, %if.end.sw.bb5_crit_edge79, %if.end.sw.bb5_crit_edge80, %if.end.sw.bb5_crit_edge81, %if.end.sw.bb5_crit_edge82
  %arrayidx = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 %conv
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %29)
  %tobool6.not = icmp eq i64 %29, 0
  br i1 %tobool6.not, label %if.then7, label %sw.bb5.if.end8_crit_edge

sw.bb5.if.end8_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %sw.bb5
  %vconfig.i49 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 5
  %arrayidx.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 0
  %size.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 0, i32 2
  %30 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.then7.for.inc.i_crit_edge, label %if.end.i

if.then7.for.inc.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i:                                         ; preds = %if.then7
  %32 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 16
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %35, -16
  %and3.i = and i32 %35, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.i)
  %cond.i = icmp eq i32 %and3.i, 4
  br i1 %cond.i, label %sw.bb.i, label %if.end.i.sw.epilog.i_crit_edge

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.i = getelementptr i8, ptr %33, i32 20
  %36 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr6.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %pos.1.i = phi i32 [ 24, %sw.bb.i ], [ 20, %if.end.i.sw.epilog.i_crit_edge ]
  %start_hi.0.i = phi i32 [ %37, %sw.bb.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ]
  %conv.i50 = zext i32 %start_hi.0.i to i64
  %shl.i = shl nuw i64 %conv.i50, 32
  %conv9.i = zext i32 %and.i to i64
  %or.i51 = or i64 %shl.i, %conv9.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %or.i51, ptr %arrayidx.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %if.then7.for.inc.i_crit_edge
  %pos.2.i = phi i32 [ %pos.1.i, %sw.epilog.i ], [ 16, %if.then7.for.inc.i_crit_edge ]
  %arrayidx.1.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 1
  %size.1.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 1, i32 2
  %39 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size.1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.1.i = icmp eq i32 %40, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %41 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.1.i = getelementptr i8, ptr %42, i32 %pos.2.i
  %43 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.1.i, align 4
  %and.1.i = and i32 %44, -16
  %and3.1.i = and i32 %44, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.1.i)
  %cond.1.i = icmp eq i32 %and3.1.i, 4
  br i1 %cond.1.i, label %sw.bb.1.i, label %if.end.1.i.sw.epilog.1.i_crit_edge

if.end.1.i.sw.epilog.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.1.i

sw.bb.1.i:                                        ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.1.i = getelementptr i8, ptr %add.ptr.1.i, i32 4
  %45 = ptrtoint ptr %add.ptr6.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr6.1.i, align 4
  %add.1.i = add nuw nsw i32 %pos.2.i, 4
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %sw.bb.1.i, %if.end.1.i.sw.epilog.1.i_crit_edge
  %pos.1.1.i = phi i32 [ %add.1.i, %sw.bb.1.i ], [ %pos.2.i, %if.end.1.i.sw.epilog.1.i_crit_edge ]
  %start_hi.0.1.i = phi i32 [ %46, %sw.bb.1.i ], [ 0, %if.end.1.i.sw.epilog.1.i_crit_edge ]
  %add8.1.i = add nuw nsw i32 %pos.1.1.i, 4
  %conv.1.i = zext i32 %start_hi.0.1.i to i64
  %shl.1.i = shl nuw i64 %conv.1.i, 32
  %conv9.1.i = zext i32 %and.1.i to i64
  %or.1.i = or i64 %shl.1.i, %conv9.1.i
  %47 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %or.1.i, ptr %arrayidx.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.epilog.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %pos.2.1.i = phi i32 [ %add8.1.i, %sw.epilog.1.i ], [ %pos.2.i, %for.inc.i.for.inc.1.i_crit_edge ]
  %arrayidx.2.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 2
  %size.2.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 2, i32 2
  %48 = ptrtoint ptr %size.2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size.2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.2.i = icmp eq i32 %49, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2.i

if.end.2.i:                                       ; preds = %for.inc.1.i
  %50 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.2.i = getelementptr i8, ptr %51, i32 %pos.2.1.i
  %52 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.2.i, align 4
  %and.2.i = and i32 %53, -16
  %and3.2.i = and i32 %53, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.2.i)
  %cond.2.i = icmp eq i32 %and3.2.i, 4
  br i1 %cond.2.i, label %sw.bb.2.i, label %if.end.2.i.sw.epilog.2.i_crit_edge

if.end.2.i.sw.epilog.2.i_crit_edge:               ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.2.i

sw.bb.2.i:                                        ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.2.i = getelementptr i8, ptr %add.ptr.2.i, i32 4
  %54 = ptrtoint ptr %add.ptr6.2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr6.2.i, align 4
  %add.2.i = add nuw nsw i32 %pos.2.1.i, 4
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %sw.bb.2.i, %if.end.2.i.sw.epilog.2.i_crit_edge
  %pos.1.2.i = phi i32 [ %add.2.i, %sw.bb.2.i ], [ %pos.2.1.i, %if.end.2.i.sw.epilog.2.i_crit_edge ]
  %start_hi.0.2.i = phi i32 [ %55, %sw.bb.2.i ], [ 0, %if.end.2.i.sw.epilog.2.i_crit_edge ]
  %add8.2.i = add nuw nsw i32 %pos.1.2.i, 4
  %conv.2.i = zext i32 %start_hi.0.2.i to i64
  %shl.2.i = shl nuw i64 %conv.2.i, 32
  %conv9.2.i = zext i32 %and.2.i to i64
  %or.2.i = or i64 %shl.2.i, %conv9.2.i
  %56 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or.2.i, ptr %arrayidx.2.i, align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.epilog.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %pos.2.2.i = phi i32 [ %add8.2.i, %sw.epilog.2.i ], [ %pos.2.1.i, %for.inc.1.i.for.inc.2.i_crit_edge ]
  %arrayidx.3.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 3
  %size.3.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 3, i32 2
  %57 = ptrtoint ptr %size.3.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %size.3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.not.3.i = icmp eq i32 %58, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3.i

if.end.3.i:                                       ; preds = %for.inc.2.i
  %59 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.3.i = getelementptr i8, ptr %60, i32 %pos.2.2.i
  %61 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.3.i, align 4
  %and.3.i = and i32 %62, -16
  %and3.3.i = and i32 %62, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.3.i)
  %cond.3.i = icmp eq i32 %and3.3.i, 4
  br i1 %cond.3.i, label %sw.bb.3.i, label %if.end.3.i.sw.epilog.3.i_crit_edge

if.end.3.i.sw.epilog.3.i_crit_edge:               ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.3.i

sw.bb.3.i:                                        ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.3.i = getelementptr i8, ptr %add.ptr.3.i, i32 4
  %63 = ptrtoint ptr %add.ptr6.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr6.3.i, align 4
  %add.3.i = add nuw nsw i32 %pos.2.2.i, 4
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %sw.bb.3.i, %if.end.3.i.sw.epilog.3.i_crit_edge
  %pos.1.3.i = phi i32 [ %add.3.i, %sw.bb.3.i ], [ %pos.2.2.i, %if.end.3.i.sw.epilog.3.i_crit_edge ]
  %start_hi.0.3.i = phi i32 [ %64, %sw.bb.3.i ], [ 0, %if.end.3.i.sw.epilog.3.i_crit_edge ]
  %add8.3.i = add nuw nsw i32 %pos.1.3.i, 4
  %conv.3.i = zext i32 %start_hi.0.3.i to i64
  %shl.3.i = shl nuw i64 %conv.3.i, 32
  %conv9.3.i = zext i32 %and.3.i to i64
  %or.3.i = or i64 %shl.3.i, %conv9.3.i
  %65 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %or.3.i, ptr %arrayidx.3.i, align 8
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %sw.epilog.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %pos.2.3.i = phi i32 [ %add8.3.i, %sw.epilog.3.i ], [ %pos.2.2.i, %for.inc.2.i.for.inc.3.i_crit_edge ]
  %arrayidx.4.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 4
  %size.4.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 4, i32 2
  %66 = ptrtoint ptr %size.4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size.4.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.4.i = icmp eq i32 %67, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4.i

if.end.4.i:                                       ; preds = %for.inc.3.i
  %68 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.4.i = getelementptr i8, ptr %69, i32 %pos.2.3.i
  %70 = ptrtoint ptr %add.ptr.4.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.4.i, align 4
  %and.4.i = and i32 %71, -16
  %and3.4.i = and i32 %71, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.4.i)
  %cond.4.i = icmp eq i32 %and3.4.i, 4
  br i1 %cond.4.i, label %sw.bb.4.i, label %if.end.4.i.sw.epilog.4.i_crit_edge

if.end.4.i.sw.epilog.4.i_crit_edge:               ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.4.i

sw.bb.4.i:                                        ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.4.i = getelementptr i8, ptr %add.ptr.4.i, i32 4
  %72 = ptrtoint ptr %add.ptr6.4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr6.4.i, align 4
  %add.4.i = add nuw nsw i32 %pos.2.3.i, 4
  br label %sw.epilog.4.i

sw.epilog.4.i:                                    ; preds = %sw.bb.4.i, %if.end.4.i.sw.epilog.4.i_crit_edge
  %pos.1.4.i = phi i32 [ %add.4.i, %sw.bb.4.i ], [ %pos.2.3.i, %if.end.4.i.sw.epilog.4.i_crit_edge ]
  %start_hi.0.4.i = phi i32 [ %73, %sw.bb.4.i ], [ 0, %if.end.4.i.sw.epilog.4.i_crit_edge ]
  %add8.4.i = add nuw nsw i32 %pos.1.4.i, 4
  %conv.4.i = zext i32 %start_hi.0.4.i to i64
  %shl.4.i = shl nuw i64 %conv.4.i, 32
  %conv9.4.i = zext i32 %and.4.i to i64
  %or.4.i = or i64 %shl.4.i, %conv9.4.i
  %74 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %or.4.i, ptr %arrayidx.4.i, align 8
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %sw.epilog.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %pos.2.4.i = phi i32 [ %add8.4.i, %sw.epilog.4.i ], [ %pos.2.3.i, %for.inc.3.i.for.inc.4.i_crit_edge ]
  %arrayidx.5.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 5
  %size.5.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 8, i32 5, i32 2
  %75 = ptrtoint ptr %size.5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %size.5.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.5.i = icmp eq i32 %76, 0
  br i1 %tobool.not.5.i, label %for.inc.4.i.if.end8_crit_edge, label %if.end.5.i

for.inc.4.i.if.end8_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.end.5.i:                                       ; preds = %for.inc.4.i
  %77 = ptrtoint ptr %vconfig.i49 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vconfig.i49, align 8
  %add.ptr.5.i = getelementptr i8, ptr %78, i32 %pos.2.4.i
  %79 = ptrtoint ptr %add.ptr.5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %add.ptr.5.i, align 4
  %and.5.i = and i32 %80, -16
  %and3.5.i = and i32 %80, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and3.5.i)
  %cond.5.i = icmp eq i32 %and3.5.i, 4
  br i1 %cond.5.i, label %sw.bb.5.i, label %if.end.5.i.sw.epilog.5.i_crit_edge

if.end.5.i.sw.epilog.5.i_crit_edge:               ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.5.i

sw.bb.5.i:                                        ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr6.5.i = getelementptr i8, ptr %add.ptr.5.i, i32 4
  %81 = ptrtoint ptr %add.ptr6.5.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr6.5.i, align 4
  br label %sw.epilog.5.i

sw.epilog.5.i:                                    ; preds = %sw.bb.5.i, %if.end.5.i.sw.epilog.5.i_crit_edge
  %start_hi.0.5.i = phi i32 [ %82, %sw.bb.5.i ], [ 0, %if.end.5.i.sw.epilog.5.i_crit_edge ]
  %conv.5.i = zext i32 %start_hi.0.5.i to i64
  %shl.5.i = shl nuw i64 %conv.5.i, 32
  %conv9.5.i = zext i32 %and.5.i to i64
  %or.5.i = or i64 %shl.5.i, %conv9.5.i
  %83 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %or.5.i, ptr %arrayidx.5.i, align 8
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.5.i, %for.inc.4.i.if.end8_crit_edge, %sw.bb5.if.end8_crit_edge
  %conv11 = trunc i64 %pos to i16
  br i1 %is_write, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.end8
  %84 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %buf, align 1
  %86 = zext i16 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.73)
  switch i16 %conv11, label %if.then10.accessfailed_crit_edge [
    i16 0, label %sw.bb.i54
    i16 1, label %sw.bb71.i
    i16 2, label %sw.bb112.i
    i16 3, label %sw.bb170.i
    i16 4, label %sw.bb191.i
    i16 7, label %sw.bb226.i
  ]

if.then10.accessfailed_crit_edge:                 ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

sw.bb.i54:                                        ; preds = %if.then10
  %arrayidx.i52 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv
  %dlab.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 2
  %87 = ptrtoint ptr %dlab.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dlab.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i53 = icmp eq i8 %88, 0
  br i1 %tobool.not.i53, label %if.end.i56, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i54
  call void @__sanitizer_cov_trace_pc() #13
  %conv1.i = zext i8 %85 to i16
  %divisor.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 4
  %89 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %divisor.i, align 2
  %or.i55 = or i16 %90, %conv1.i
  store i16 %or.i55, ptr %divisor.i, align 2
  br label %accessfailed

if.end.i56:                                       ; preds = %sw.bb.i54
  %rxtx_lock.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock.i, i32 noundef 0) #11
  %count8.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 3
  %91 = ptrtoint ptr %count8.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %count8.i, align 2
  %max_fifo_size.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 6
  %93 = ptrtoint ptr %max_fifo_size.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %max_fifo_size.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %94)
  %cmp.i = icmp ult i8 %92, %94
  br i1 %cmp.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.end.i56
  %rxtx.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1
  %head.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %95 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %head.i, align 4
  %idxprom.i = zext i8 %96 to i32
  %arrayidx21.i = getelementptr [16 x i8], ptr %rxtx.i, i32 0, i32 %idxprom.i
  %97 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %85, ptr %arrayidx21.i, align 1
  %98 = ptrtoint ptr %count8.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %count8.i, align 2
  %inc.i = add i8 %99, 1
  store i8 %inc.i, ptr %count8.i, align 2
  %100 = load i8, ptr %head.i, align 4
  %101 = add i8 %100, 1
  %102 = and i8 %101, 15
  store i8 %102, ptr %head.i, align 4
  %overrun.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 3
  %103 = ptrtoint ptr %overrun.i to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %overrun.i, align 4
  %arrayidx40.i = getelementptr [8 x i8], ptr %arrayidx.i52, i32 0, i32 1
  %104 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx40.i, align 1
  %106 = and i8 %105, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool43.not.i = icmp eq i8 %106, 0
  br i1 %tobool43.not.i, label %if.then14.i.if.end69.i_crit_edge, label %land.lhs.true.i

if.then14.i.if.end69.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

land.lhs.true.i:                                  ; preds = %if.then14.i
  %intr_trigger_level.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 7
  %107 = ptrtoint ptr %intr_trigger_level.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %intr_trigger_level.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %inc.i, i8 %108)
  %cmp52.i = icmp eq i8 %inc.i, %108
  br i1 %cmp52.i, label %land.lhs.true.i.if.end69.sink.split.i_crit_edge, label %land.lhs.true.i.if.end69.i_crit_edge

land.lhs.true.i.if.end69.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

land.lhs.true.i.if.end69.sink.split.i_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.sink.split.i

if.else.i:                                        ; preds = %if.end.i56
  %overrun58.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 3
  %109 = ptrtoint ptr %overrun58.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 1, ptr %overrun58.i, align 4
  %arrayidx62.i = getelementptr [8 x i8], ptr %arrayidx.i52, i32 0, i32 1
  %110 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx62.i, align 1
  %112 = and i8 %111, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool65.not.i = icmp eq i8 %112, 0
  br i1 %tobool65.not.i, label %if.else.i.if.end69.i_crit_edge, label %if.else.i.if.end69.sink.split.i_crit_edge

if.else.i.if.end69.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.sink.split.i

if.else.i.if.end69.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end69.i

if.end69.sink.split.i:                            ; preds = %if.else.i.if.end69.sink.split.i_crit_edge, %land.lhs.true.i.if.end69.sink.split.i_crit_edge
  tail call fastcc void @mtty_trigger_interrupt(ptr noundef %mdev_state) #11
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.end69.sink.split.i, %if.else.i.if.end69.i_crit_edge, %land.lhs.true.i.if.end69.i_crit_edge, %if.then14.i.if.end69.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxtx_lock.i) #11
  br label %accessfailed

sw.bb71.i:                                        ; preds = %if.then10
  %dlab74.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 2
  %113 = ptrtoint ptr %dlab74.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %dlab74.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool75.not.i = icmp eq i8 %114, 0
  br i1 %tobool75.not.i, label %if.else85.i, label %if.then76.i

if.then76.i:                                      ; preds = %sw.bb71.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv78.i = zext i8 %85 to i16
  %shl.i57 = shl nuw i16 %conv78.i, 8
  %divisor81.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 4
  %115 = ptrtoint ptr %divisor81.i to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %divisor81.i, align 2
  %or83.i = or i16 %116, %shl.i57
  store i16 %or83.i, ptr %divisor81.i, align 2
  br label %accessfailed

if.else85.i:                                      ; preds = %sw.bb71.i
  %arrayidx90.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 1
  %117 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %85, ptr %arrayidx90.i, align 1
  %rxtx_lock91.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock91.i, i32 noundef 0) #11
  %118 = and i8 %85, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool94.not.i = icmp eq i8 %118, 0
  br i1 %tobool94.not.i, label %if.else85.i.if.end109.i_crit_edge, label %land.lhs.true95.i

if.else85.i.if.end109.i_crit_edge:                ; preds = %if.else85.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

land.lhs.true95.i:                                ; preds = %if.else85.i
  %head99.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %119 = ptrtoint ptr %head99.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %head99.i, align 4
  %tail.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 2
  %121 = ptrtoint ptr %tail.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %tail.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %120, i8 %122)
  %cmp105.i = icmp eq i8 %120, %122
  br i1 %cmp105.i, label %if.then107.i, label %land.lhs.true95.i.if.end109.i_crit_edge

land.lhs.true95.i.if.end109.i_crit_edge:          ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end109.i

if.then107.i:                                     ; preds = %land.lhs.true95.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mtty_trigger_interrupt(ptr noundef %mdev_state) #11
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then107.i, %land.lhs.true95.i.if.end109.i_crit_edge, %if.else85.i.if.end109.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxtx_lock91.i) #11
  br label %accessfailed

sw.bb112.i:                                       ; preds = %if.then10
  %fcr.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 5
  %123 = ptrtoint ptr %fcr.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 %85, ptr %fcr.i, align 4
  %rxtx_lock115.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock115.i, i32 noundef 0) #11
  %conv116.i = zext i8 %85 to i32
  %and117.i = and i32 %conv116.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117.i)
  %tobool118.not.i = icmp eq i32 %and117.i, 0
  br i1 %tobool118.not.i, label %sw.bb112.i.if.end132.i_crit_edge, label %if.then119.i

sw.bb112.i.if.end132.i_crit_edge:                 ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end132.i

if.then119.i:                                     ; preds = %sw.bb112.i
  call void @__sanitizer_cov_trace_pc() #13
  %count123.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 3
  %124 = ptrtoint ptr %count123.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 0, ptr %count123.i, align 2
  %head127.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %125 = ptrtoint ptr %head127.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 0, ptr %head127.i, align 4
  %tail131.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 2
  %126 = ptrtoint ptr %tail131.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %tail131.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then119.i, %sw.bb112.i.if.end132.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxtx_lock115.i) #11
  %intr_trigger_level154.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 7
  %127 = ptrtoint ptr %intr_trigger_level154.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %intr_trigger_level154.i, align 2
  %and156.i = and i32 %conv116.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and156.i)
  %tobool157.not.i = icmp eq i32 %and156.i, 0
  %max_fifo_size165.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 6
  br i1 %tobool157.not.i, label %if.else162.i, label %if.then158.i

if.then158.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %max_fifo_size165.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 16, ptr %max_fifo_size165.i, align 1
  br label %accessfailed

if.else162.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #13
  %129 = ptrtoint ptr %max_fifo_size165.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 1, ptr %max_fifo_size165.i, align 1
  %130 = ptrtoint ptr %intr_trigger_level154.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %intr_trigger_level154.i, align 2
  br label %accessfailed

sw.bb170.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %85)
  %tobool173.not.i = icmp sgt i8 %85, -1
  br i1 %tobool173.not.i, label %sw.bb170.i.if.end185.i_crit_edge, label %if.then174.i

sw.bb170.i.if.end185.i_crit_edge:                 ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end185.i

if.then174.i:                                     ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #13
  %divisor180.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 4
  %131 = ptrtoint ptr %divisor180.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %divisor180.i, align 2
  br label %if.end185.i

if.end185.i:                                      ; preds = %if.then174.i, %sw.bb170.i.if.end185.i_crit_edge
  %.sink.i = phi i8 [ 1, %if.then174.i ], [ 0, %sw.bb170.i.if.end185.i_crit_edge ]
  %132 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 2
  %133 = ptrtoint ptr %132 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 %.sink.i, ptr %132, align 1
  %arrayidx190.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 3
  %134 = ptrtoint ptr %arrayidx190.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %85, ptr %arrayidx190.i, align 1
  br label %accessfailed

sw.bb191.i:                                       ; preds = %if.then10
  %arrayidx193.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv
  %arrayidx196.i = getelementptr [8 x i8], ptr %arrayidx193.i, i32 0, i32 4
  %135 = ptrtoint ptr %arrayidx196.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %85, ptr %arrayidx196.i, align 1
  %arrayidx200.i = getelementptr [8 x i8], ptr %arrayidx193.i, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx200.i, align 1
  %138 = and i8 %137, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %tobool203.not.i = icmp eq i8 %138, 0
  %139 = and i8 %85, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %tobool207.not.i = icmp eq i8 %139, 0
  %or.cond.i = select i1 %tobool203.not.i, i1 true, i1 %tobool207.not.i
  br i1 %or.cond.i, label %sw.bb191.i.if.end210.i_crit_edge, label %if.then208.i

sw.bb191.i.if.end210.i_crit_edge:                 ; preds = %sw.bb191.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i

if.then208.i:                                     ; preds = %sw.bb191.i
  %irq_index.i.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %140 = ptrtoint ptr %irq_index.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %irq_index.i.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %141, label %if.then208.i.if.else12.i.i_crit_edge [
    i32 1, label %land.lhs.true.i.i
    i32 0, label %land.lhs.true3.i.i
  ]

if.then208.i.if.else12.i.i_crit_edge:             ; preds = %if.then208.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12.i.i

land.lhs.true.i.i:                                ; preds = %if.then208.i
  %msi_evtfd.i.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  %143 = ptrtoint ptr %msi_evtfd.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %msi_evtfd.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %144, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end210.i_crit_edge, label %land.lhs.true.i.i.if.end16.i.i_crit_edge

land.lhs.true.i.i.if.end16.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i.i

land.lhs.true.i.i.if.end210.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i

land.lhs.true3.i.i:                               ; preds = %if.then208.i
  %intx_evtfd.i.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %145 = ptrtoint ptr %intx_evtfd.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %intx_evtfd.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %146, null
  br i1 %tobool4.not.i.i, label %do.end.i.i, label %land.lhs.true3.i.i.if.else12.i.i_crit_edge

land.lhs.true3.i.i.if.else12.i.i_crit_edge:       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12.i.i

do.end.i.i:                                       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #14
  br label %if.end210.i

if.else12.i.i:                                    ; preds = %land.lhs.true3.i.i.if.else12.i.i_crit_edge, %if.then208.i.if.else12.i.i_crit_edge
  %intx_evtfd13.i.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.else12.i.i, %land.lhs.true.i.i.if.end16.i.i_crit_edge
  %.sink.in.i.i = phi ptr [ %intx_evtfd13.i.i, %if.else12.i.i ], [ %msi_evtfd.i.i, %land.lhs.true.i.i.if.end16.i.i_crit_edge ]
  %147 = ptrtoint ptr %.sink.in.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %.sink.i.i = load ptr, ptr %.sink.in.i.i, align 4
  %call14.i.i = tail call i64 @eventfd_signal(ptr noundef %.sink.i.i, i64 noundef 1) #11
  %conv15.i.i = trunc i64 %call14.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i.i)
  %cmp17.not.i.i = icmp eq i32 %conv15.i.i, 1
  br i1 %cmp17.not.i.i, label %if.end16.i.i.if.end210.i_crit_edge, label %do.end22.i.i

if.end16.i.i.if.end210.i_crit_edge:               ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end210.i

do.end22.i.i:                                     ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv15.i.i) #14
  br label %if.end210.i

if.end210.i:                                      ; preds = %do.end22.i.i, %if.end16.i.i.if.end210.i_crit_edge, %do.end.i.i, %land.lhs.true.i.i.if.end210.i_crit_edge, %sw.bb191.i.if.end210.i_crit_edge
  %148 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %arrayidx200.i, align 1
  %150 = and i8 %149, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool217.not.i = icmp eq i8 %150, 0
  %151 = and i8 %85, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %tobool221.not.i = icmp eq i8 %151, 0
  %or.cond1.i = select i1 %tobool217.not.i, i1 true, i1 %tobool221.not.i
  br i1 %or.cond1.i, label %if.end210.i.accessfailed_crit_edge, label %if.then222.i

if.end210.i.accessfailed_crit_edge:               ; preds = %if.end210.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

if.then222.i:                                     ; preds = %if.end210.i
  %irq_index.i2.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %152 = ptrtoint ptr %irq_index.i2.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %irq_index.i2.i, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %153, label %if.then222.i.if.else12.i13.i_crit_edge [
    i32 1, label %land.lhs.true.i5.i
    i32 0, label %land.lhs.true3.i8.i
  ]

if.then222.i.if.else12.i13.i_crit_edge:           ; preds = %if.then222.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12.i13.i

land.lhs.true.i5.i:                               ; preds = %if.then222.i
  %msi_evtfd.i3.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  %155 = ptrtoint ptr %msi_evtfd.i3.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %msi_evtfd.i3.i, align 8
  %tobool.not.i4.i = icmp eq ptr %156, null
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.accessfailed_crit_edge, label %land.lhs.true.i5.i.if.end16.i19.i_crit_edge

land.lhs.true.i5.i.if.end16.i19.i_crit_edge:      ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i19.i

land.lhs.true.i5.i.accessfailed_crit_edge:        ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

land.lhs.true3.i8.i:                              ; preds = %if.then222.i
  %intx_evtfd.i6.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %157 = ptrtoint ptr %intx_evtfd.i6.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %intx_evtfd.i6.i, align 4
  %tobool4.not.i7.i = icmp eq ptr %158, null
  br i1 %tobool4.not.i7.i, label %do.end.i10.i, label %land.lhs.true3.i8.i.if.else12.i13.i_crit_edge

land.lhs.true3.i8.i.if.else12.i13.i_crit_edge:    ; preds = %land.lhs.true3.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12.i13.i

do.end.i10.i:                                     ; preds = %land.lhs.true3.i8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #14
  br label %accessfailed

if.else12.i13.i:                                  ; preds = %land.lhs.true3.i8.i.if.else12.i13.i_crit_edge, %if.then222.i.if.else12.i13.i_crit_edge
  %intx_evtfd13.i12.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  br label %if.end16.i19.i

if.end16.i19.i:                                   ; preds = %if.else12.i13.i, %land.lhs.true.i5.i.if.end16.i19.i_crit_edge
  %.sink.in.i14.i = phi ptr [ %intx_evtfd13.i12.i, %if.else12.i13.i ], [ %msi_evtfd.i3.i, %land.lhs.true.i5.i.if.end16.i19.i_crit_edge ]
  %159 = ptrtoint ptr %.sink.in.i14.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %.sink.i15.i = load ptr, ptr %.sink.in.i14.i, align 4
  %call14.i16.i = tail call i64 @eventfd_signal(ptr noundef %.sink.i15.i, i64 noundef 1) #11
  %conv15.i17.i = trunc i64 %call14.i16.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15.i17.i)
  %cmp17.not.i18.i = icmp eq i32 %conv15.i17.i, 1
  br i1 %cmp17.not.i18.i, label %if.end16.i19.i.accessfailed_crit_edge, label %do.end22.i21.i

if.end16.i19.i.accessfailed_crit_edge:            ; preds = %if.end16.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

do.end22.i21.i:                                   ; preds = %if.end16.i19.i
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv15.i17.i) #14
  br label %accessfailed

sw.bb226.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx231.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 7
  %160 = ptrtoint ptr %arrayidx231.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %85, ptr %arrayidx231.i, align 1
  br label %accessfailed

if.else12:                                        ; preds = %if.end8
  %161 = zext i16 %conv11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %161, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %conv11, label %if.else12.accessfailed_crit_edge [
    i16 0, label %sw.bb.i61
    i16 1, label %sw.bb59.i
    i16 2, label %sw.bb79.i
    i16 3, label %if.else12.sw.bb161.i_crit_edge
    i16 4, label %if.else12.sw.bb161.i_crit_edge87
    i16 5, label %sw.bb167.i
    i16 6, label %sw.bb213.i
    i16 7, label %sw.bb243.i
  ]

if.else12.sw.bb161.i_crit_edge87:                 ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb161.i

if.else12.sw.bb161.i_crit_edge:                   ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb161.i

if.else12.accessfailed_crit_edge:                 ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  br label %accessfailed

sw.bb.i61:                                        ; preds = %if.else12
  %dlab.i59 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 2
  %162 = ptrtoint ptr %dlab.i59 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %dlab.i59, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not.i60 = icmp eq i8 %163, 0
  br i1 %tobool.not.i60, label %if.end.i67, label %if.then.i63

if.then.i63:                                      ; preds = %sw.bb.i61
  call void @__sanitizer_cov_trace_pc() #13
  %divisor.i62 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 4
  %164 = ptrtoint ptr %divisor.i62 to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %divisor.i62, align 2
  %conv3.i = trunc i16 %165 to i8
  %166 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %conv3.i, ptr %buf, align 1
  br label %accessfailed

if.end.i67:                                       ; preds = %sw.bb.i61
  %rxtx_lock.i64 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock.i64, i32 noundef 0) #11
  %head.i65 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %167 = ptrtoint ptr %head.i65 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %head.i65, align 4
  %tail.i66 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 2
  %169 = ptrtoint ptr %tail.i66 to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %tail.i66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %168, i8 %170)
  %cmp.not.i = icmp eq i8 %168, %170
  br i1 %cmp.not.i, label %if.end.i67.if.end35.i_crit_edge, label %if.then12.i

if.end.i67.if.end35.i_crit_edge:                  ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then12.i:                                      ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i = zext i8 %170 to i32
  %rxtx.i68 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1
  %arrayidx20.i = getelementptr [16 x i8], ptr %rxtx.i68, i32 0, i32 %conv10.i
  %171 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx20.i, align 1
  %173 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %172, ptr %buf, align 1
  %count24.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 3
  %174 = ptrtoint ptr %count24.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %count24.i, align 2
  %dec.i = add i8 %175, -1
  store i8 %dec.i, ptr %count24.i, align 2
  %176 = ptrtoint ptr %tail.i66 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %tail.i66, align 1
  %178 = add i8 %177, 1
  %179 = and i8 %178, 15
  store i8 %179, ptr %tail.i66, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then12.i, %if.end.i67.if.end35.i_crit_edge
  %180 = ptrtoint ptr %head.i65 to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %head.i65, align 4
  %182 = ptrtoint ptr %tail.i66 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %tail.i66, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %181, i8 %183)
  %cmp46.i = icmp eq i8 %181, %183
  br i1 %cmp46.i, label %if.then48.i, label %if.end35.i.if.end57.i_crit_edge

if.end35.i.if.end57.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then48.i:                                      ; preds = %if.end35.i
  %arrayidx51.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 1
  %184 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx51.i, align 1
  %186 = and i8 %185, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool54.not.i = icmp eq i8 %186, 0
  br i1 %tobool54.not.i, label %if.then48.i.if.end57.i_crit_edge, label %if.then55.i

if.then48.i.if.end57.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57.i

if.then55.i:                                      ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @mtty_trigger_interrupt(ptr noundef %mdev_state) #11
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then55.i, %if.then48.i.if.end57.i_crit_edge, %if.end35.i.if.end57.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxtx_lock.i64) #11
  br label %accessfailed

sw.bb59.i:                                        ; preds = %if.else12
  %dlab62.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 2
  %187 = ptrtoint ptr %dlab62.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %dlab62.i, align 1, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %tobool63.not.i = icmp eq i8 %188, 0
  br i1 %tobool63.not.i, label %if.end70.i, label %if.then64.i

if.then64.i:                                      ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #13
  %divisor67.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 4
  %189 = ptrtoint ptr %divisor67.i to i32
  call void @__asan_load2_noabort(i32 %189)
  %190 = load i16, ptr %divisor67.i, align 2
  %191 = lshr i16 %190, 8
  %conv69.i = trunc i16 %191 to i8
  %192 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 %conv69.i, ptr %buf, align 1
  br label %accessfailed

if.end70.i:                                       ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx75.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 1
  %193 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx75.i, align 1
  %195 = and i8 %194, 15
  %196 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %195, ptr %buf, align 1
  br label %accessfailed

sw.bb79.i:                                        ; preds = %if.else12
  %arrayidx83.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 1
  %197 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %arrayidx83.i, align 1
  %199 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %buf, align 1
  %rxtx_lock84.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock84.i, i32 noundef 0) #11
  %conv85.i = zext i8 %198 to i32
  %and86.i = and i32 %conv85.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86.i)
  %tobool87.not.i = icmp eq i32 %and86.i, 0
  br i1 %tobool87.not.i, label %sw.bb79.i.if.end95.i_crit_edge, label %land.lhs.true.i70

sw.bb79.i.if.end95.i_crit_edge:                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i

land.lhs.true.i70:                                ; preds = %sw.bb79.i
  %overrun.i69 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 3
  %200 = ptrtoint ptr %overrun.i69 to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %overrun.i69, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %201)
  %tobool90.not.i = icmp eq i8 %201, 0
  br i1 %tobool90.not.i, label %land.lhs.true.i70.if.end95.i_crit_edge, label %if.then92.i

land.lhs.true.i70.if.end95.i_crit_edge:           ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i

if.then92.i:                                      ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #13
  %202 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %buf, align 1
  %204 = or i8 %203, 6
  store i8 %204, ptr %buf, align 1
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then92.i, %land.lhs.true.i70.if.end95.i_crit_edge, %sw.bb79.i.if.end95.i_crit_edge
  %and97.i = and i32 %conv85.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97.i)
  %tobool98.not.i = icmp eq i32 %and97.i, 0
  br i1 %tobool98.not.i, label %if.end95.i.if.end114.i_crit_edge, label %land.lhs.true99.i

if.end95.i.if.end114.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i

land.lhs.true99.i:                                ; preds = %if.end95.i
  %count103.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 3
  %205 = ptrtoint ptr %count103.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %count103.i, align 2
  %intr_trigger_level.i71 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 7
  %207 = ptrtoint ptr %intr_trigger_level.i71 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %intr_trigger_level.i71, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %206, i8 %208)
  %cmp108.not.i = icmp ult i8 %206, %208
  br i1 %cmp108.not.i, label %land.lhs.true99.i.if.end114.i_crit_edge, label %if.then110.i

land.lhs.true99.i.if.end114.i_crit_edge:          ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114.i

if.then110.i:                                     ; preds = %land.lhs.true99.i
  call void @__sanitizer_cov_trace_pc() #13
  %209 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %buf, align 1
  %211 = or i8 %210, 4
  store i8 %211, ptr %buf, align 1
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.then110.i, %land.lhs.true99.i.if.end114.i_crit_edge, %if.end95.i.if.end114.i_crit_edge
  %and116.i = and i32 %conv85.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116.i)
  %tobool117.not.i = icmp eq i32 %and116.i, 0
  br i1 %tobool117.not.i, label %if.end114.i.if.end135.i_crit_edge, label %land.lhs.true118.i

if.end114.i.if.end135.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135.i

land.lhs.true118.i:                               ; preds = %if.end114.i
  %head122.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %212 = ptrtoint ptr %head122.i to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %head122.i, align 4
  %tail127.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 2
  %214 = ptrtoint ptr %tail127.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %tail127.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %213, i8 %215)
  %cmp129.i = icmp eq i8 %213, %215
  br i1 %cmp129.i, label %if.end135.thread.i, label %land.lhs.true118.i.if.end135.i_crit_edge

land.lhs.true118.i.if.end135.i_crit_edge:         ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end135.i

if.end135.thread.i:                               ; preds = %land.lhs.true118.i
  call void @__sanitizer_cov_trace_pc() #13
  %216 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %buf, align 1
  %218 = or i8 %217, 2
  br label %if.end156.sink.split.i

if.end135.i:                                      ; preds = %land.lhs.true118.i.if.end135.i_crit_edge, %if.end114.i.if.end135.i_crit_edge
  %219 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %219)
  %.pr.i = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %cmp153.i = icmp eq i8 %.pr.i, 0
  br i1 %cmp153.i, label %if.end135.i.if.end156.sink.split.i_crit_edge, label %if.end135.i.if.end156.i_crit_edge

if.end135.i.if.end156.i_crit_edge:                ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.i

if.end135.i.if.end156.sink.split.i_crit_edge:     ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end156.sink.split.i

if.end156.sink.split.i:                           ; preds = %if.end135.i.if.end156.sink.split.i_crit_edge, %if.end135.thread.i
  %.sink.i72 = phi i8 [ %218, %if.end135.thread.i ], [ 1, %if.end135.i.if.end156.sink.split.i_crit_edge ]
  %220 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %.sink.i72, ptr %buf, align 1
  br label %if.end156.i

if.end156.i:                                      ; preds = %if.end156.sink.split.i, %if.end135.i.if.end156.i_crit_edge
  %221 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %buf, align 1
  %223 = or i8 %222, -64
  store i8 %223, ptr %buf, align 1
  tail call void @mutex_unlock(ptr noundef %rxtx_lock84.i) #11
  br label %accessfailed

sw.bb161.i:                                       ; preds = %if.else12.sw.bb161.i_crit_edge, %if.else12.sw.bb161.i_crit_edge87
  %224 = trunc i64 %pos to i32
  %conv.i73 = and i32 %224, 65535
  %arrayidx163.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv
  %arrayidx166.i = getelementptr [8 x i8], ptr %arrayidx163.i, i32 0, i32 %conv.i73
  %225 = ptrtoint ptr %arrayidx166.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx166.i, align 1
  %227 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %buf, align 1
  br label %accessfailed

sw.bb167.i:                                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  %rxtx_lock168.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock168.i, i32 noundef 0) #11
  %head172.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 1
  %228 = ptrtoint ptr %head172.i to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %head172.i, align 4
  %tail177.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 2
  %230 = ptrtoint ptr %tail177.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %tail177.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %229, i8 %231)
  %cmp179.not.i = icmp eq i8 %229, %231
  %not.cmp179.not.i = xor i1 %cmp179.not.i, true
  %spec.select.i = zext i1 %not.cmp179.not.i to i8
  %overrun188.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 3
  %232 = ptrtoint ptr %overrun188.i to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %overrun188.i, align 4, !range !198
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool189.not.i = icmp eq i8 %233, 0
  %234 = or i8 %spec.select.i, 2
  %lsr.1.i = select i1 %tobool189.not.i, i8 %spec.select.i, i8 %234
  %235 = or i8 %lsr.1.i, 96
  %lsr.2.i = select i1 %cmp179.not.i, i8 %235, i8 %lsr.1.i
  tail call void @mutex_unlock(ptr noundef %rxtx_lock168.i) #11
  %236 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %236)
  store i8 %lsr.2.i, ptr %buf, align 1
  br label %accessfailed

sw.bb213.i:                                       ; preds = %if.else12
  %237 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 -94, ptr %buf, align 1
  %rxtx_lock214.i = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %rxtx_lock214.i, i32 noundef 0) #11
  %arrayidx218.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 4
  %238 = ptrtoint ptr %arrayidx218.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %arrayidx218.i, align 4
  %240 = and i8 %239, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %240)
  %tobool221.not.i74 = icmp eq i8 %240, 0
  br i1 %tobool221.not.i74, label %sw.bb213.i.if.end241.sink.split.i_crit_edge, label %if.then222.i76

sw.bb213.i.if.end241.sink.split.i_crit_edge:      ; preds = %sw.bb213.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241.sink.split.i

if.then222.i76:                                   ; preds = %sw.bb213.i
  %count226.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 1, i32 3
  %241 = ptrtoint ptr %count226.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %count226.i, align 2
  %max_fifo_size.i75 = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 6
  %243 = ptrtoint ptr %max_fifo_size.i75 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %max_fifo_size.i75, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %242, i8 %244)
  %cmp231.i = icmp ult i8 %242, %244
  br i1 %cmp231.i, label %if.then222.i76.if.end241.sink.split.i_crit_edge, label %if.then222.i76.if.end241.i_crit_edge

if.then222.i76.if.end241.i_crit_edge:             ; preds = %if.then222.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241.i

if.then222.i76.if.end241.sink.split.i_crit_edge:  ; preds = %if.then222.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end241.sink.split.i

if.end241.sink.split.i:                           ; preds = %if.then222.i76.if.end241.sink.split.i_crit_edge, %sw.bb213.i.if.end241.sink.split.i_crit_edge
  %245 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %245)
  %246 = load i8, ptr %buf, align 1
  %247 = or i8 %246, 17
  store i8 %247, ptr %buf, align 1
  br label %if.end241.i

if.end241.i:                                      ; preds = %if.end241.sink.split.i, %if.then222.i76.if.end241.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %rxtx_lock214.i) #11
  br label %accessfailed

sw.bb243.i:                                       ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx248.i = getelementptr %struct.mdev_state, ptr %mdev_state, i32 0, i32 11, i32 %conv, i32 0, i32 7
  %248 = ptrtoint ptr %arrayidx248.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %arrayidx248.i, align 1
  %250 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 %249, ptr %buf, align 1
  br label %accessfailed

accessfailed:                                     ; preds = %sw.bb243.i, %if.end241.i, %sw.bb167.i, %sw.bb161.i, %if.end156.i, %if.end70.i, %if.then64.i, %if.end57.i, %if.then.i63, %if.else12.accessfailed_crit_edge, %sw.bb226.i, %do.end22.i21.i, %if.end16.i19.i.accessfailed_crit_edge, %do.end.i10.i, %land.lhs.true.i5.i.accessfailed_crit_edge, %if.end210.i.accessfailed_crit_edge, %if.end185.i, %if.else162.i, %if.then158.i, %if.end109.i, %if.then76.i, %if.end69.i, %if.then.i, %if.then10.accessfailed_crit_edge, %if.else, %do.end39.i, %sw.bb33.i, %if.end24.i, %if.then15.i, %sw.bb1.i, %if.then2.accessfailed_crit_edge, %if.then2.accessfailed_crit_edge83, %if.then2.accessfailed_crit_edge84, %if.end.accessfailed_crit_edge
  %ret.0 = phi i32 [ -1, %if.end.accessfailed_crit_edge ], [ %count, %if.else ], [ %count, %if.then2.accessfailed_crit_edge ], [ %count, %if.then2.accessfailed_crit_edge83 ], [ %count, %if.then2.accessfailed_crit_edge84 ], [ %count, %sw.bb1.i ], [ %count, %if.then15.i ], [ %count, %if.end24.i ], [ %count, %sw.bb33.i ], [ %count, %do.end39.i ], [ %count, %if.then10.accessfailed_crit_edge ], [ %count, %if.then.i ], [ %count, %if.end69.i ], [ %count, %if.then76.i ], [ %count, %if.end109.i ], [ %count, %if.then158.i ], [ %count, %if.else162.i ], [ %count, %if.end185.i ], [ %count, %if.end210.i.accessfailed_crit_edge ], [ %count, %land.lhs.true.i5.i.accessfailed_crit_edge ], [ %count, %do.end.i10.i ], [ %count, %if.end16.i19.i.accessfailed_crit_edge ], [ %count, %do.end22.i21.i ], [ %count, %sw.bb226.i ], [ %count, %if.else12.accessfailed_crit_edge ], [ %count, %if.then.i63 ], [ %count, %if.end57.i ], [ %count, %if.then64.i ], [ %count, %if.end70.i ], [ %count, %if.end156.i ], [ %count, %sw.bb161.i ], [ %count, %sw.bb167.i ], [ %count, %if.end241.i ], [ %count, %sw.bb243.i ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %accessfailed, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %accessfailed ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtty_trigger_interrupt(ptr nocapture noundef readonly %mdev_state) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_index = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %0 = ptrtoint ptr %irq_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %1, label %entry.if.else12_crit_edge [
    i32 1, label %land.lhs.true
    i32 0, label %land.lhs.true3
  ]

entry.if.else12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12

land.lhs.true:                                    ; preds = %entry
  %msi_evtfd = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  %3 = ptrtoint ptr %msi_evtfd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %msi_evtfd, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true3:                                   ; preds = %entry
  %intx_evtfd = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %5 = ptrtoint ptr %intx_evtfd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intx_evtfd, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end, label %land.lhs.true3.if.else12_crit_edge

land.lhs.true3.if.else12_crit_edge:               ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else12

do.end:                                           ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true3.if.else12_crit_edge, %entry.if.else12_crit_edge
  %intx_evtfd13 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  br label %if.end16

if.end16:                                         ; preds = %if.else12, %land.lhs.true.if.end16_crit_edge
  %.sink.in = phi ptr [ %intx_evtfd13, %if.else12 ], [ %msi_evtfd, %land.lhs.true.if.end16_crit_edge ]
  %7 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.sink = load ptr, ptr %.sink.in, align 4
  %call14 = tail call i64 @eventfd_signal(ptr noundef %.sink, i64 noundef 1) #11
  %conv15 = trunc i64 %call14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv15)
  %cmp17.not = icmp eq i32 %conv15, 1
  br i1 %cmp17.not, label %if.end16.cleanup_crit_edge, label %do.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef %conv15) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end16.cleanup_crit_edge, %do.end, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @eventfd_signal(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_set_irqs_validate_and_prepare(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtty_set_irqs(ptr noundef %mdev_state, i32 noundef %flags, i32 noundef %index, ptr nocapture noundef readonly %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #11
  %0 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %index, label %entry.sw.epilog83_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
    i32 2, label %do.end68
    i32 3, label %do.end74
    i32 4, label %do.end80
  ]

entry.sw.epilog83_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

sw.bb:                                            ; preds = %entry
  %and = and i32 %flags, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cond = icmp eq i32 %and, 32
  br i1 %cond, label %sw.bb2, label %sw.bb.sw.epilog83_crit_edge

sw.bb.sw.epilog83_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

sw.bb2:                                           ; preds = %sw.bb
  %and3 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.end7, label %do.end

do.end:                                           ; preds = %sw.bb2
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #14
  %intx_evtfd = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %1 = ptrtoint ptr %intx_evtfd to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %intx_evtfd, align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %do.end.sw.epilog83_crit_edge, label %if.then5

do.end.sw.epilog83_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @eventfd_ctx_put(ptr noundef nonnull %2) #11
  br label %sw.epilog83

if.end7:                                          ; preds = %sw.bb2
  %and8 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.sw.epilog83_crit_edge, label %if.then10

if.end7.sw.epilog83_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.then10:                                        ; preds = %if.end7
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then11, label %if.then10.sw.epilog83_crit_edge

if.then10.sw.epilog83_crit_edge:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.then11:                                        ; preds = %if.then10
  %call12 = tail call ptr @eventfd_ctx_fdget(i32 noundef %4) #11
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %call12 to i32
  br label %sw.epilog83

if.end16:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %intx_evtfd17 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 2
  %6 = ptrtoint ptr %intx_evtfd17 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call12, ptr %intx_evtfd17, align 4
  %irq_fd = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %7 = ptrtoint ptr %irq_fd to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %irq_fd, align 8
  %irq_index = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %8 = ptrtoint ptr %irq_index to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_index, align 4
  br label %sw.epilog83

sw.bb21:                                          ; preds = %entry
  %and22 = and i32 %flags, 56
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and22)
  %cond86 = icmp eq i32 %and22, 32
  br i1 %cond86, label %sw.bb24, label %sw.bb21.sw.epilog83_crit_edge

sw.bb21.sw.epilog83_crit_edge:                    ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

sw.bb24:                                          ; preds = %sw.bb21
  %and25 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end38, label %if.then27

if.then27:                                        ; preds = %sw.bb24
  %msi_evtfd = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  %9 = ptrtoint ptr %msi_evtfd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msi_evtfd, align 8
  %tobool28.not = icmp eq ptr %10, null
  br i1 %tobool28.not, label %if.then27.do.end34_crit_edge, label %if.then29

if.then27.do.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @eventfd_ctx_put(ptr noundef nonnull %10) #11
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %if.then27.do.end34_crit_edge
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33) #14
  %irq_index37 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %11 = ptrtoint ptr %irq_index37 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %irq_index37, align 4
  br label %sw.epilog83

if.end38:                                         ; preds = %sw.bb24
  %and39 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.sw.epilog83_crit_edge, label %if.then41

if.end38.sw.epilog83_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.then41:                                        ; preds = %if.end38
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp44 = icmp slt i32 %13, 1
  br i1 %cmp44, label %if.then41.sw.epilog83_crit_edge, label %if.end46

if.then41.sw.epilog83_crit_edge:                  ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.end46:                                         ; preds = %if.then41
  %msi_evtfd47 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 3
  %14 = ptrtoint ptr %msi_evtfd47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msi_evtfd47, align 8
  %tobool48.not = icmp eq ptr %15, null
  br i1 %tobool48.not, label %if.end50, label %if.end46.sw.epilog83_crit_edge

if.end46.sw.epilog83_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog83

if.end50:                                         ; preds = %if.end46
  %call51 = tail call ptr @eventfd_ctx_fdget(i32 noundef %13) #11
  %cmp.i1 = icmp ugt ptr %call51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %call51 to i32
  br label %sw.epilog83

if.end55:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %msi_evtfd47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call51, ptr %msi_evtfd47, align 8
  %irq_fd57 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 1
  %18 = ptrtoint ptr %irq_fd57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %13, ptr %irq_fd57, align 8
  %irq_index58 = getelementptr inbounds %struct.mdev_state, ptr %mdev_state, i32 0, i32 4
  %19 = ptrtoint ptr %irq_index58 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %irq_index58, align 4
  br label %sw.epilog83

do.end68:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.33) #14
  br label %sw.epilog83

do.end74:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.33) #14
  br label %sw.epilog83

do.end80:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.33) #14
  br label %sw.epilog83

sw.epilog83:                                      ; preds = %do.end80, %do.end74, %do.end68, %if.end55, %if.then53, %if.end46.sw.epilog83_crit_edge, %if.then41.sw.epilog83_crit_edge, %if.end38.sw.epilog83_crit_edge, %do.end34, %sw.bb21.sw.epilog83_crit_edge, %if.end16, %if.then14, %if.then10.sw.epilog83_crit_edge, %if.end7.sw.epilog83_crit_edge, %if.then5, %do.end.sw.epilog83_crit_edge, %sw.bb.sw.epilog83_crit_edge, %entry.sw.epilog83_crit_edge
  %ret.3 = phi i32 [ 0, %entry.sw.epilog83_crit_edge ], [ 0, %do.end80 ], [ 0, %do.end74 ], [ 0, %do.end68 ], [ 0, %do.end34 ], [ 0, %if.end38.sw.epilog83_crit_edge ], [ 0, %sw.bb21.sw.epilog83_crit_edge ], [ 0, %if.then5 ], [ 0, %do.end.sw.epilog83_crit_edge ], [ 0, %if.end7.sw.epilog83_crit_edge ], [ 0, %sw.bb.sw.epilog83_crit_edge ], [ %5, %if.then14 ], [ 0, %if.end16 ], [ 0, %if.then10.sw.epilog83_crit_edge ], [ %16, %if.then53 ], [ 0, %if.end55 ], [ 0, %if.then41.sw.epilog83_crit_edge ], [ 0, %if.end46.sw.epilog83_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #11
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @eventfd_ctx_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @eventfd_ctx_fdget(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_group_dev(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sample_mdev_dev_show(ptr noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %bus.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus.i, align 8
  %cmp.i = icmp ne ptr %1, @mdev_bus_type
  %tobool.not6 = icmp eq ptr %dev, null
  %tobool.not = or i1 %tobool.not6, %cmp.i
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.dev_name.exit_crit_edge

if.then.dev_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.then.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.50, ptr noundef %retval.0.i)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 2560, ptr %buf, align 1
  br label %return

return:                                           ; preds = %if.end, %dev_name.exit
  %retval.0 = phi i32 [ %call2, %dev_name.exit ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sample_mtty_dev_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.56, i32 20)
  ret i32 19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr noundef %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #11
  %arrayidx = getelementptr [2 x ptr], ptr @name_show.name_str, i32 0, i32 %call
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, ptr noundef %1) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtype_get_type_group_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @device_api_show(ptr nocapture noundef readnone %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.63)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @available_instances_show(ptr noundef %mtype, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mtype_get_type_group_id(ptr noundef %mtype) #11
  %add = add i32 %call, 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @mdev_avail_ports, i32 noundef 4) #11
  %0 = load volatile i32, ptr @mdev_avail_ports, align 4
  %div = udiv i32 %0, %add
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.65, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mdev_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 88)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !36, !37, !39, !41, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !115, !117, !119, !121, !122, !123, !125, !127, !129, !131, !133, !135, !136, !138, !140, !142, !144, !146, !148, !149, !151, !153, !155, !157, !159, !160, !162, !164, !165, !167, !169, !171, !173, !174, !175}
!llvm.named.register.sp = !{!176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_license237, !1, !"__UNIQUE_ID_license237", i1 false, i1 false}
!1 = !{!"../samples/vfio-mdev/mtty.c", i32 1423, i32 1}
!2 = !{ptr @__UNIQUE_ID_supported238, !3, !"__UNIQUE_ID_supported238", i1 false, i1 false}
!3 = !{!"../samples/vfio-mdev/mtty.c", i32 1424, i32 1}
!4 = !{ptr @__UNIQUE_ID_version239, !5, !"__UNIQUE_ID_version239", i1 false, i1 false}
!5 = !{!"../samples/vfio-mdev/mtty.c", i32 1425, i32 1}
!6 = !{ptr @__UNIQUE_ID_author240, !7, !"__UNIQUE_ID_author240", i1 false, i1 false}
!7 = !{!"../samples/vfio-mdev/mtty.c", i32 1426, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../samples/vfio-mdev/mtty.c", i32 1349, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @mtty_dev_init._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @mtty_dev_init._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../samples/vfio-mdev/mtty.c", i32 1356, i32 7}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../samples/vfio-mdev/mtty.c", i32 1359, i32 3}
!18 = !{ptr @mtty_dev_init._entry.4, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @mtty_dev_init._entry_ptr.6, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../samples/vfio-mdev/mtty.c", i32 1366, i32 2}
!22 = !{ptr @mtty_dev_init._entry.7, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtty_dev_init._entry_ptr.9, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mtty_dev_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../samples/vfio-mdev/mtty.c", i32 1372, i32 22}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../samples/vfio-mdev/mtty.c", i32 1375, i32 3}
!28 = !{ptr @mtty_dev_init._entry.10, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mtty_dev_init._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../samples/vfio-mdev/mtty.c", i32 1382, i32 30}
!32 = !{ptr @mtty_dev, !33, !"mtty_dev", i1 false, i1 false}
!33 = !{!"../samples/vfio-mdev/mtty.c", i32 77, i32 3}
!34 = !{ptr @xa_init_flags.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @vd_fops, !38, !"vd_fops", i1 false, i1 false}
!38 = !{!"../samples/vfio-mdev/mtty.c", i32 149, i32 37}
!39 = !{ptr @mtty_driver, !40, !"mtty_driver", i1 false, i1 false}
!40 = !{!"../samples/vfio-mdev/mtty.c", i32 1322, i32 27}
!41 = !{ptr @mtty_probe.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../samples/vfio-mdev/mtty.c", i32 731, i32 2}
!43 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @mtty_probe.__key.16, !45, !"__key", i1 false, i1 false}
!45 = !{!"../samples/vfio-mdev/mtty.c", i32 739, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mdev_avail_ports, !48, !"mdev_avail_ports", i1 false, i1 false}
!48 = !{!"../samples/vfio-mdev/mtty.c", i32 147, i32 17}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../samples/vfio-mdev/mtty.c", i32 1316, i32 10}
!51 = !{ptr @mtty_dev_ops, !52, !"mtty_dev_ops", i1 false, i1 false}
!52 = !{!"../samples/vfio-mdev/mtty.c", i32 1315, i32 37}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../samples/vfio-mdev/mtty.c", i32 271, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @handle_pci_cfg_write._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @handle_pci_cfg_write._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../samples/vfio-mdev/mtty.c", i32 287, i32 3}
!60 = !{ptr @handle_pci_cfg_write._entry.21, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @handle_pci_cfg_write._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../samples/vfio-mdev/mtty.c", i32 1002, i32 3}
!64 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @mtty_trigger_interrupt._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @mtty_trigger_interrupt._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../samples/vfio-mdev/mtty.c", i32 1015, i32 3}
!69 = !{ptr @mtty_trigger_interrupt._entry.26, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @mtty_trigger_interrupt._entry_ptr.28, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!73 = distinct !{null, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../samples/vfio-mdev/mtty.c", i32 916, i32 5}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mtty_set_irqs._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @mtty_set_irqs._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../samples/vfio-mdev/mtty.c", i32 952, i32 5}
!85 = !{ptr @mtty_set_irqs._entry.34, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @mtty_set_irqs._entry_ptr.36, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../samples/vfio-mdev/mtty.c", i32 979, i32 3}
!89 = !{ptr @mtty_set_irqs._entry.37, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @mtty_set_irqs._entry_ptr.39, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../samples/vfio-mdev/mtty.c", i32 982, i32 3}
!93 = !{ptr @mtty_set_irqs._entry.40, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @mtty_set_irqs._entry_ptr.42, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../samples/vfio-mdev/mtty.c", i32 985, i32 3}
!97 = !{ptr @mtty_set_irqs._entry.43, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mtty_set_irqs._entry_ptr.45, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../samples/vfio-mdev/mtty.c", i32 775, i32 2}
!101 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mtty_reset._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @mtty_reset._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @mdev_dev_groups, !105, !"mdev_dev_groups", i1 false, i1 false}
!105 = !{!"../samples/vfio-mdev/mtty.c", i32 1256, i32 38}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../samples/vfio-mdev/mtty.c", i32 1252, i32 11}
!108 = !{ptr @mdev_dev_group, !109, !"mdev_dev_group", i1 false, i1 false}
!109 = !{!"../samples/vfio-mdev/mtty.c", i32 1251, i32 37}
!110 = !{ptr @mdev_dev_attrs, !111, !"mdev_dev_attrs", i1 false, i1 false}
!111 = !{!"../samples/vfio-mdev/mtty.c", i32 1246, i32 26}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../samples/vfio-mdev/mtty.c", i32 1244, i32 8}
!114 = !{ptr @dev_attr_sample_mdev_dev, !113, !"dev_attr_sample_mdev_dev", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../samples/vfio-mdev/mtty.c", i32 1239, i32 23}
!117 = distinct !{null, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../samples/vfio-mdev/mtty.c", i32 1241, i32 22}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../samples/vfio-mdev/mtty.c", i32 1342, i32 2}
!121 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @mtty_device_release.__UNIQUE_ID_ddebug236, !120, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!123 = !{ptr @mdev_fops, !124, !"mdev_fops", i1 false, i1 false}
!124 = !{!"../samples/vfio-mdev/mtty.c", i32 1333, i32 37}
!125 = !{ptr @mtty_dev_groups, !126, !"mtty_dev_groups", i1 false, i1 false}
!126 = !{!"../samples/vfio-mdev/mtty.c", i32 1229, i32 38}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../samples/vfio-mdev/mtty.c", i32 1225, i32 11}
!129 = !{ptr @mtty_dev_group, !130, !"mtty_dev_group", i1 false, i1 false}
!130 = !{!"../samples/vfio-mdev/mtty.c", i32 1224, i32 37}
!131 = !{ptr @mtty_dev_attrs, !132, !"mtty_dev_attrs", i1 false, i1 false}
!132 = !{!"../samples/vfio-mdev/mtty.c", i32 1219, i32 26}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../samples/vfio-mdev/mtty.c", i32 1217, i32 8}
!135 = !{ptr @dev_attr_sample_mtty_dev, !134, !"dev_attr_sample_mtty_dev", i1 false, i1 false}
!136 = !{ptr @.str.56, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../samples/vfio-mdev/mtty.c", i32 1214, i32 22}
!138 = !{ptr @mdev_type_groups, !139, !"mdev_type_groups", i1 false, i1 false}
!139 = !{!"../samples/vfio-mdev/mtty.c", i32 1309, i32 32}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../samples/vfio-mdev/mtty.c", i32 1300, i32 11}
!142 = !{ptr @mdev_type_group1, !143, !"mdev_type_group1", i1 false, i1 false}
!143 = !{!"../samples/vfio-mdev/mtty.c", i32 1299, i32 31}
!144 = !{ptr @mdev_types_attrs, !145, !"mdev_types_attrs", i1 false, i1 false}
!145 = !{!"../samples/vfio-mdev/mtty.c", i32 1292, i32 26}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../samples/vfio-mdev/mtty.c", i32 1271, i32 8}
!148 = !{ptr @mdev_type_attr_name, !147, !"mdev_type_attr_name", i1 false, i1 false}
!149 = !{ptr @.str.59, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../samples/vfio-mdev/mtty.c", i32 1264, i32 37}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../samples/vfio-mdev/mtty.c", i32 1265, i32 9}
!153 = !{ptr @name_show.name_str, !154, !"name_str", i1 false, i1 false}
!154 = !{!"../samples/vfio-mdev/mtty.c", i32 1264, i32 21}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../samples/vfio-mdev/mtty.c", i32 1267, i32 25}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../samples/vfio-mdev/mtty.c", i32 1290, i32 8}
!159 = !{ptr @mdev_type_attr_device_api, !158, !"mdev_type_attr_device_api", i1 false, i1 false}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../samples/vfio-mdev/mtty.c", i32 1287, i32 30}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../samples/vfio-mdev/mtty.c", i32 1282, i32 8}
!164 = !{ptr @mdev_type_attr_available_instances, !163, !"mdev_type_attr_available_instances", i1 false, i1 false}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../samples/vfio-mdev/mtty.c", i32 1279, i32 22}
!167 = !{ptr @.str.66, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../samples/vfio-mdev/mtty.c", i32 1305, i32 11}
!169 = !{ptr @mdev_type_group2, !170, !"mdev_type_group2", i1 false, i1 false}
!170 = !{!"../samples/vfio-mdev/mtty.c", i32 1304, i32 31}
!171 = !{ptr @.str.67, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../samples/vfio-mdev/mtty.c", i32 1417, i32 2}
!173 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @mtty_dev_exit._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @mtty_dev_exit._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{!"sp"}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 2148983780, i64 2148983785, i64 2148983798, i64 2148983842, i64 2148983876, i64 2148983897}
!187 = !{i64 2148484734}
!188 = !{i64 867420, i64 867444, i64 867465, i64 867482, i64 867499}
!189 = !{i64 2148484960}
!190 = !{!"branch_weights", i32 2000, i32 1}
!191 = !{i64 2148382887, i64 2148382913, i64 2148382942, i64 2148382976, i64 2148383007, i64 2148383030}
!192 = !{!"auto-init"}
!193 = !{i64 2152674375, i64 2152674400}
!194 = !{i64 2152673694, i64 2152673719}
!195 = !{i64 5169249}
!196 = !{i64 5169446}
!197 = !{i64 2152654679}
!198 = !{i8 0, i8 2}
