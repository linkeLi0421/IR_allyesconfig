; ModuleID = '/llk/IR_all_yes/drivers/vdpa/ifcvf/ifcvf_main.c_pt.bc'
source_filename = "../drivers/vdpa/ifcvf/ifcvf_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.vdpa_mgmtdev_ops = type { ptr, ptr }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.99 = type { ptr }
%struct.vdpa_mgmt_dev = type { ptr, ptr, ptr, i64, %struct.list_head, i64, i32 }
%struct.ifcvf_vdpa_mgmt_dev = type { %struct.vdpa_mgmt_dev, ptr, ptr }
%struct.ifcvf_adapter = type { %struct.vdpa_device, ptr, %struct.ifcvf_hw }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.ifcvf_hw = type { ptr, ptr, i16, i8, ptr, i32, i32, i64, i64, i32, ptr, ptr, [17 x %struct.vring_info], ptr, [256 x i8], %struct.vdpa_callback, i32, i32 }
%struct.vring_info = type { i64, i64, i64, i16, i16, i8, ptr, i32, i32, %struct.vdpa_callback, [256 x i8] }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vdpa_notification_area = type { i32, i32 }
%struct.virtio_pci_common_cfg = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_ifcvf__363_676_ifcvf_driver_init6 = internal global ptr @ifcvf_driver_init, section ".initcall6.init", align 4
@ifcvf_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @ifcvf_pci_ids, ptr @ifcvf_probe, ptr @ifcvf_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ifcvf_driver_exit = internal global ptr @ifcvf_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file364 = internal constant [36 x i8] c"ifcvf.file=drivers/vdpa/ifcvf/ifcvf\00", section ".modinfo", align 1
@__UNIQUE_ID_license365 = internal constant [21 x i8] c"ifcvf.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ifcvf\00", [26 x i8] zeroinitializer }, align 32
@ifcvf_pci_ids = internal global { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 6900, i32 4161, i32 32902, i32 26, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6900, i32 1000, i32 32902, i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 6900, i32 1001, i32 32902, i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 575, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to alloc memory for the vDPA management device\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifcvf_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/vdpa/ifcvf/ifcvf_main.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr = internal global ptr @ifcvf_probe._entry, section ".printk_index", align 4
@id_table_net = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 1, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@id_table_blk = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 2, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 588, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VIRTIO ID %u not supported\0A\00", [36 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.8 = internal global ptr @ifcvf_probe._entry.6, section ".printk_index", align 4
@ifcvf_vdpa_mgmt_dev_ops = internal constant { %struct.vdpa_mgmtdev_ops, [24 x i8] } { %struct.vdpa_mgmtdev_ops { ptr @ifcvf_vdpa_dev_add, ptr @ifcvf_vdpa_dev_del }, [24 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to enable device\0A\00", [39 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.11 = internal global ptr @ifcvf_probe._entry.9, section ".printk_index", align 4
@ifcvf_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to request MMIO region\0A\00", [33 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.14 = internal global ptr @ifcvf_probe._entry.12, section ".printk_index", align 4
@ifcvf_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 612, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No usable DMA configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.17 = internal global ptr @ifcvf_probe._entry.15, section ".printk_index", align 4
@ifcvf_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 619, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed for adding devres for freeing irq vectors\0A\00", [46 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.20 = internal global ptr @ifcvf_probe._entry.18, section ".printk_index", align 4
@ifcvf_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 628, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to initialize the management interfaces\0A\00", [48 x i8] zeroinitializer }, align 32
@ifcvf_probe._entry_ptr.23 = internal global ptr @ifcvf_probe._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ifc_vdpa_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @ifcvf_vdpa_set_vq_address, ptr @ifcvf_vdpa_set_vq_num, ptr @ifcvf_vdpa_kick_vq, ptr @ifcvf_vdpa_set_vq_cb, ptr @ifcvf_vdpa_set_vq_ready, ptr @ifcvf_vdpa_get_vq_ready, ptr @ifcvf_vdpa_set_vq_state, ptr @ifcvf_vdpa_get_vq_state, ptr @ifcvf_get_vq_notification, ptr @ifcvf_vdpa_get_vq_irq, ptr @ifcvf_vdpa_get_vq_align, ptr @ifcvf_vdpa_get_device_features, ptr @ifcvf_vdpa_set_driver_features, ptr @ifcvf_vdpa_get_driver_features, ptr @ifcvf_vdpa_set_config_cb, ptr @ifcvf_vdpa_get_vq_num_max, ptr null, ptr @ifcvf_vdpa_get_device_id, ptr @ifcvf_vdpa_get_vendor_id, ptr @ifcvf_vdpa_get_status, ptr @ifcvf_vdpa_set_status, ptr @ifcvf_vdpa_reset, ptr @ifcvf_vdpa_get_config_size, ptr @ifcvf_vdpa_get_config, ptr @ifcvf_vdpa_set_config, ptr @ifcvf_vdpa_get_generation, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_dev_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate vDPA structure\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ifcvf_vdpa_dev_add\00", [45 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_dev_add._entry_ptr = internal global ptr @ifcvf_vdpa_dev_add._entry, section ".printk_index", align 4
@ifcvf_vdpa_dev_add._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 528, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to init IFCVF hw\0A\00", [39 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_dev_add._entry_ptr.28 = internal global ptr @ifcvf_vdpa_dev_add._entry.26, section ".printk_index", align 4
@ifcvf_vdpa_dev_add._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register to vDPA bus\00", [33 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_dev_add._entry_ptr.31 = internal global ptr @ifcvf_vdpa_dev_add._entry.29, section ".printk_index", align 4
@ifcvf_vdpa_get_device_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.32, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ifcvf_vdpa_get_device_features\00", [33 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_get_device_features._entry_ptr = internal global ptr @ifcvf_vdpa_get_device_features._entry, section ".printk_index", align 4
@ifcvf_vdpa_set_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set ifcvf vdpa  status %u\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ifcvf_vdpa_set_status\00", [42 x i8] zeroinitializer }, align 32
@ifcvf_vdpa_set_status._entry_ptr = internal global ptr @ifcvf_vdpa_set_status._entry, section ".printk_index", align 4
@ifcvf_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 74, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to alloc IRQ vectors\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifcvf_request_irq\00", [46 x i8] zeroinitializer }, align 32
@ifcvf_request_irq._entry_ptr = internal global ptr @ifcvf_request_irq._entry, section ".printk_index", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ifcvf[%s]-config\0A\00", [46 x i8] zeroinitializer }, align 32
@ifcvf_request_irq._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 86, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request config irq\0A\00", [34 x i8] zeroinitializer }, align 32
@ifcvf_request_irq._entry_ptr.40 = internal global ptr @ifcvf_request_irq._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifcvf[%s]-%d\0A\00", [18 x i8] zeroinitializer }, align 32
@ifcvf_request_irq._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to request irq for vq %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ifcvf_request_irq._entry_ptr.44 = internal global ptr @ifcvf_request_irq._entry.42, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"ifcvf_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 669, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 676, i32 1 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"ifcvf_pci_ids\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 648, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 575, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"id_table_net\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 463, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"id_table_blk\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 468, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 588, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"ifcvf_vdpa_mgmt_dev_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 561, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 599, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 606, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 612, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 618, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 627, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"ifc_vdpa_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 435, i32 37 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 512, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 528, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 541, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 184, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 243, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 74, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 78, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 86, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 91, i32 41 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [35 x i8] c"../drivers/vdpa/ifcvf/ifcvf_main.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 100, i32 4 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_file364, ptr @__UNIQUE_ID_license365, ptr @__exitcall_ifcvf_driver_exit, ptr @__initcall__kmod_ifcvf__363_676_ifcvf_driver_init6, ptr @ifcvf_driver_exit, ptr @ifcvf_probe._entry, ptr @ifcvf_probe._entry.12, ptr @ifcvf_probe._entry.15, ptr @ifcvf_probe._entry.18, ptr @ifcvf_probe._entry.21, ptr @ifcvf_probe._entry.6, ptr @ifcvf_probe._entry.9, ptr @ifcvf_probe._entry_ptr, ptr @ifcvf_probe._entry_ptr.11, ptr @ifcvf_probe._entry_ptr.14, ptr @ifcvf_probe._entry_ptr.17, ptr @ifcvf_probe._entry_ptr.20, ptr @ifcvf_probe._entry_ptr.23, ptr @ifcvf_probe._entry_ptr.8, ptr @ifcvf_request_irq._entry, ptr @ifcvf_request_irq._entry.38, ptr @ifcvf_request_irq._entry.42, ptr @ifcvf_request_irq._entry_ptr, ptr @ifcvf_request_irq._entry_ptr.40, ptr @ifcvf_request_irq._entry_ptr.44, ptr @ifcvf_vdpa_dev_add._entry, ptr @ifcvf_vdpa_dev_add._entry.26, ptr @ifcvf_vdpa_dev_add._entry.29, ptr @ifcvf_vdpa_dev_add._entry_ptr, ptr @ifcvf_vdpa_dev_add._entry_ptr.28, ptr @ifcvf_vdpa_dev_add._entry_ptr.31, ptr @ifcvf_vdpa_get_device_features._entry, ptr @ifcvf_vdpa_get_device_features._entry_ptr, ptr @ifcvf_vdpa_set_status._entry, ptr @ifcvf_vdpa_set_status._entry_ptr, ptr @ifcvf_driver, ptr @.str, ptr @ifcvf_pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @id_table_net, ptr @id_table_blk, ptr @.str.7, ptr @ifcvf_vdpa_mgmt_dev_ops, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @ifc_vdpa_ops, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_pci_ids to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_net to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table_blk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_mgmt_dev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifc_vdpa_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_dev_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_dev_add._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_dev_add._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_get_device_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_vdpa_set_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_request_irq._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifcvf_request_irq._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @ifcvf_driver, ptr noundef null, ptr noundef nonnull @.str) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @ifcvf_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 56) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %1 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4160, i16 %2)
  %cmp.i = icmp ult i16 %2, 4160
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 10
  %3 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %subsystem_device.i, align 2
  %conv2.i = zext i16 %4 to i32
  br label %get_dev_type.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %2 to i32
  %sub.i = add nsw i32 %conv.i, -4160
  br label %get_dev_type.exit

get_dev_type.exit:                                ; preds = %if.else.i, %if.then.i
  %dev_type.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %sub.i, %if.else.i ]
  %5 = zext i32 %dev_type.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dev_type.0.i, label %do.end9 [
    i32 1, label %get_dev_type.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb4
  ]

get_dev_type.exit.sw.epilog_crit_edge:            ; preds = %get_dev_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb4:                                           ; preds = %get_dev_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.end9:                                          ; preds = %get_dev_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %dev_type.0.i) #15
  br label %err

sw.epilog:                                        ; preds = %sw.bb4, %get_dev_type.exit.sw.epilog_crit_edge
  %id_table_blk.sink = phi ptr [ @id_table_blk, %sw.bb4 ], [ @id_table_net, %get_dev_type.exit.sw.epilog_crit_edge ]
  %id_table6 = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %id_table6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %id_table_blk.sink, ptr %id_table6, align 8
  %ops = getelementptr inbounds %struct.vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ifcvf_vdpa_mgmt_dev_ops, ptr %ops, align 4
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call7.i.i, align 8
  %pdev13 = getelementptr inbounds %struct.ifcvf_vdpa_mgmt_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %pdev13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev13, align 4
  %call14 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %do.end19

do.end19:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #15
  br label %err

if.end21:                                         ; preds = %sw.epilog
  %call22 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 21, ptr noundef nonnull @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #15
  br label %err

if.end29:                                         ; preds = %if.end21
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i86 = icmp eq i32 %call.i, 0
  br i1 %cmp.i86, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #15
  br label %err

if.end37:                                         ; preds = %if.end29
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef -1) #11
  %call.i88 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ifcvf_free_irq_vectors, ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #15
  br label %err

if.end45:                                         ; preds = %if.end37
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %call47 = tail call i32 @vdpa_mgmtdev_register(ptr noundef nonnull %call7.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end45.cleanup_crit_edge, label %do.end52

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #15
  br label %err

err:                                              ; preds = %do.end52, %do.end43, %do.end35, %do.end27, %do.end19, %do.end9
  %ret.0 = phi i32 [ -95, %do.end9 ], [ %call14, %do.end19 ], [ %call22, %do.end27 ], [ %call.i, %do.end35 ], [ %call.i88, %do.end43 ], [ %call47, %do.end52 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end45.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %do.end ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @vdpa_mgmtdev_unregister(ptr noundef %1) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_free_irq_vectors(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_free_irq_vectors(ptr noundef %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_mgmtdev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_dev_add(ptr noundef %mdev, ptr noundef %name, ptr nocapture noundef readnone %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.ifcvf_vdpa_mgmt_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.ifcvf_vdpa_mgmt_dev, ptr %mdev, i32 0, i32 2
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call = tail call ptr @__vdpa_alloc_device(ptr noundef %dev3, ptr noundef nonnull @ifc_vdpa_ops, i32 noundef 6696, ptr noundef %name, i1 noundef zeroext false) #11
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.24) #15
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %adapter1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %adapter1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mdev, ptr %driver_data.i.i, align 4
  %vf13 = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2
  %device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %device.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %device.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4160, i16 %8)
  %cmp.i85 = icmp ult i16 %8, 4160
  br i1 %cmp.i85, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %subsystem_device.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %subsystem_device.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %subsystem_device.i, align 2
  %conv2.i = zext i16 %10 to i32
  br label %get_dev_type.exit

if.else.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %8 to i32
  %sub.i = add nsw i32 %conv.i, -4160
  br label %get_dev_type.exit

get_dev_type.exit:                                ; preds = %if.else.i, %if.then.i
  %dev_type.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %sub.i, %if.else.i ]
  %dev_type = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %dev_type.0.i, ptr %dev_type, align 8
  %call15 = tail call ptr @pcim_iomap_table(ptr noundef %3) #11
  %base = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 13
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call15, ptr %base, align 8
  %pdev16 = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %pdev16 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %3, ptr %pdev16, align 8
  %dma_dev = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev3, ptr %dma_dev, align 8
  %call18 = tail call i32 @ifcvf_init_hw(ptr noundef %vf13, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.cond.preheader, label %get_dev_type.exit.err_crit_edge

get_dev_type.exit.err_crit_edge:                  ; preds = %get_dev_type.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.cond.preheader:                               ; preds = %get_dev_type.exit
  %nr_vring = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nr_vring, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp87.not = icmp eq i16 %16, 0
  br i1 %cmp87.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.088 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %irq = getelementptr %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 12, i32 %i.088, i32 8
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -22, ptr %irq, align 8
  %inc = add nuw nsw i32 %i.088, 1
  %18 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %nr_vring, align 8
  %conv = zext i16 %19 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call27 = tail call i64 @ifcvf_get_hw_features(ptr noundef %vf13) #11
  %hw_features = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 8
  %20 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call27, ptr %hw_features, align 8
  %call28 = tail call i32 @ifcvf_get_config_size(ptr noundef %vf13) #11
  %config_size = getelementptr inbounds %struct.ifcvf_adapter, ptr %call, i32 0, i32 2, i32 17
  %21 = ptrtoint ptr %config_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call28, ptr %config_size, align 8
  %mdev31 = getelementptr inbounds %struct.vdpa_device, ptr %call, i32 0, i32 9
  %22 = ptrtoint ptr %mdev31 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %mdev, ptr %mdev31, align 4
  %23 = ptrtoint ptr %nr_vring to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %nr_vring, align 8
  %conv34 = zext i16 %24 to i32
  %call35 = tail call i32 @_vdpa_register_device(ptr noundef %call, i32 noundef %conv34) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %for.end.cleanup_crit_edge, label %for.end.err_crit_edge

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

err:                                              ; preds = %for.end.err_crit_edge, %get_dev_type.exit.err_crit_edge
  %.str.30.sink = phi ptr [ @.str.27, %get_dev_type.exit.err_crit_edge ], [ @.str.30, %for.end.err_crit_edge ]
  %ret.0 = phi i32 [ %call18, %get_dev_type.exit.err_crit_edge ], [ %call35, %for.end.err_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull %.str.30.sink) #15
  tail call void @put_device(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %do.end ], [ %ret.0, %err ], [ -95, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_vdpa_dev_del(ptr nocapture noundef writeonly %mdev, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_vdpa_unregister_device(ptr noundef %dev) #11
  %adapter = getelementptr inbounds %struct.ifcvf_vdpa_mgmt_dev, ptr %mdev, i32 0, i32 1
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %adapter, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vdpa_alloc_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ifcvf_init_hw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ifcvf_get_hw_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ifcvf_get_config_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ifcvf_vdpa_set_vq_address(ptr nocapture noundef writeonly %vdpa_dev, i16 noundef zeroext %qid, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %arrayidx = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %desc_area, ptr %arrayidx, align 8
  %avail = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 1
  %1 = ptrtoint ptr %avail to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %driver_area, ptr %avail, align 8
  %used = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %used to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %device_area, ptr %used, align 8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ifcvf_vdpa_set_vq_num(ptr nocapture noundef writeonly %vdpa_dev, i16 noundef zeroext %qid, i32 noundef %num) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %num to i16
  %idxprom = zext i16 %qid to i32
  %size = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 3
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %conv, ptr %size, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_vdpa_kick_vq(ptr noundef %vdpa_dev, i16 noundef zeroext %qid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  tail call void @ifcvf_notify_queue(ptr noundef %vf.i, i16 noundef zeroext %qid) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ifcvf_vdpa_set_vq_cb(ptr nocapture noundef writeonly %vdpa_dev, i16 noundef zeroext %qid, ptr nocapture noundef readonly %cb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %cb1 = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 9
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %cb, align 4
  %2 = ptrtoint ptr %cb1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %cb1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @ifcvf_vdpa_set_vq_ready(ptr nocapture noundef writeonly %vdpa_dev, i16 noundef zeroext %qid, i1 noundef zeroext %ready) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %ready to i8
  %idxprom = zext i16 %qid to i32
  %ready1 = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 5
  %0 = ptrtoint ptr %ready1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %ready1, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ifcvf_vdpa_get_vq_ready(ptr nocapture noundef readonly %vdpa_dev, i16 noundef zeroext %qid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %ready = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 5
  %0 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ready, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool = icmp ne i8 %1, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_set_vq_state(ptr noundef %vdpa_dev, i16 noundef zeroext %qid, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %state, align 2
  %call1 = tail call i32 @ifcvf_set_vq_state(ptr noundef %vf.i, i16 noundef zeroext %qid, i16 noundef zeroext %1) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_get_vq_state(ptr noundef %vdpa_dev, i16 noundef zeroext %qid, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call1 = tail call zeroext i16 @ifcvf_get_vq_state(ptr noundef %vf.i, i16 noundef zeroext %qid) #11
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 %call1, ptr %state, align 2
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ifcvf_get_vq_notification(ptr noalias nocapture writeonly sret(%struct.vdpa_notification_area) align 4 %agg.result, ptr nocapture noundef readonly %vdpa_dev, i16 noundef zeroext %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.vdpa_notification_area, ptr %agg.result, i32 0, i32 1
  %idxprom = zext i16 %idx to i32
  %notify_pa = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 7
  %1 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %notify_pa, align 4
  %3 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %agg.result, align 4
  %notify_off_multiplier = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 6
  %4 = ptrtoint ptr %notify_off_multiplier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_off_multiplier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 4096, i32 %5
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifcvf_vdpa_get_vq_irq(ptr nocapture noundef readonly %vdpa_dev, i16 noundef zeroext %qid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %idxprom = zext i16 %qid to i32
  %irq = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %idxprom, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifcvf_vdpa_get_vq_align(ptr nocapture noundef readnone %vdpa_dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @ifcvf_vdpa_get_device_features(ptr noundef %vdpa_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 8
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call4 = tail call i64 @ifcvf_get_features(ptr noundef %vf.i) #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pdev2 = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %features.0 = phi i64 [ %call4, %if.then ], [ 0, %if.else ]
  ret i64 %features.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_set_driver_features(ptr noundef %vdpa_dev, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call1 = tail call i32 @ifcvf_verify_min_features(ptr noundef %vf.i, i64 noundef %features) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %req_features = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %req_features to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %features, ptr %req_features, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @ifcvf_vdpa_get_driver_features(ptr nocapture noundef readonly %vdpa_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %req_features = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 7
  %0 = ptrtoint ptr %req_features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %req_features, align 8
  ret i64 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ifcvf_vdpa_set_config_cb(ptr nocapture noundef writeonly %vdpa_dev, ptr nocapture noundef readonly %cb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %config_cb = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 15
  %2 = ptrtoint ptr %config_cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %config_cb, align 4
  %private = getelementptr inbounds %struct.vdpa_callback, ptr %cb, i32 0, i32 1
  %3 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private, align 4
  %private3 = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 15, i32 1
  %5 = ptrtoint ptr %private3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %private3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ifcvf_vdpa_get_vq_num_max(ptr nocapture noundef readnone %vdpa_dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 -32768
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifcvf_vdpa_get_device_id(ptr nocapture noundef readonly %vdpa_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_type = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 9
  %0 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_type, align 8
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifcvf_vdpa_get_vendor_id(ptr nocapture noundef readonly %vdpa_dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %subsystem_vendor, align 4
  %conv = zext i16 %3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ifcvf_vdpa_get_status(ptr noundef %vdpa_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call1 = tail call zeroext i8 @ifcvf_get_status(ptr noundef %vf.i) #11
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_vdpa_set_status(ptr noundef %vdpa_dev, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call2 = tail call zeroext i8 @ifcvf_get_status(ptr noundef %vf.i) #11
  %conv3 = zext i8 %status to i32
  call void @__sanitizer_cov_trace_cmp1(i8 %call2, i8 %status)
  %cmp = icmp eq i8 %call2, %status
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %conv3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %0 = and i8 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool8.not = icmp eq i8 %0, 0
  %or.cond = select i1 %tobool.not, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.then9, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then9:                                         ; preds = %if.end
  %pdev1.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pdev1.i, align 8
  %nr_vring.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 2
  %3 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nr_vring.i, align 8
  %add.i = add i16 %4, 1
  %conv4.i = zext i16 %add.i to i32
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %2, i32 noundef %conv4.i, i32 noundef %conv4.i, i32 noundef 4, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35) #15
  br label %if.then12

if.end.i:                                         ; preds = %if.then9
  %config_msix_name.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 14
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.i.pci_name.exit.i_crit_edge

if.end.i.pci_name.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %8, %if.end.i.i.i ], [ %6, %if.end.i.pci_name.exit.i_crit_edge ]
  %call8.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %config_msix_name.i, i32 noundef 256, ptr noundef nonnull @.str.37, ptr noundef %retval.0.i.i.i) #11
  %call9.i = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef 0) #11
  %config_irq.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 16
  %9 = ptrtoint ptr %config_irq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call9.i, ptr %config_irq.i, align 4
  %dev10.i = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call.i92.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev10.i, i32 noundef %call9.i, ptr noundef nonnull @ifcvf_config_changed, ptr noundef null, i32 noundef 0, ptr noundef %config_msix_name.i, ptr noundef %vf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.end18.i

for.cond.preheader.i:                             ; preds = %pci_name.exit.i
  %10 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nr_vring.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp23103.not.i = icmp eq i16 %11, 0
  br i1 %cmp23103.not.i, label %for.cond.preheader.i.if.end16_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end16_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

do.end18.i:                                       ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.39) #15
  br label %if.then12

for.body.i:                                       ; preds = %if.end44.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0104.i = phi i32 [ %add28.i, %if.end44.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.0104.i
  %msix_name.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.0104.i, i32 10
  %12 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i94.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i94.i, label %if.end.i.i96.i, label %for.body.i.pci_name.exit98.i_crit_edge

for.body.i.pci_name.exit98.i_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit98.i

if.end.i.i96.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev10.i, align 4
  br label %pci_name.exit98.i

pci_name.exit98.i:                                ; preds = %if.end.i.i96.i, %for.body.i.pci_name.exit98.i_crit_edge
  %retval.0.i.i97.i = phi ptr [ %15, %if.end.i.i96.i ], [ %13, %for.body.i.pci_name.exit98.i_crit_edge ]
  %call27.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %msix_name.i, i32 noundef 256, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i.i97.i, i32 noundef %i.0104.i) #11
  %add28.i = add nuw nsw i32 %i.0104.i, 1
  %call29.i = tail call i32 @pci_irq_vector(ptr noundef %2, i32 noundef %add28.i) #11
  %call.i99.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev10.i, i32 noundef %call29.i, ptr noundef nonnull @ifcvf_intr_handler, ptr noundef null, i32 noundef 0, ptr noundef %msix_name.i, ptr noundef %arrayidx.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99.i)
  %tobool38.not.i = icmp eq i32 %call.i99.i, 0
  br i1 %tobool38.not.i, label %if.end44.i, label %do.end42.i

do.end42.i:                                       ; preds = %pci_name.exit98.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.43, i32 noundef %i.0104.i) #15
  %16 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0104.i)
  %cmp20.i.not.i = icmp eq i32 %i.0104.i, 0
  br i1 %cmp20.i.not.i, label %do.end42.i.ifcvf_request_irq.exit_crit_edge, label %for.body.lr.ph.i.i

do.end42.i.ifcvf_request_irq.exit_crit_edge:      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_request_irq.exit

for.body.lr.ph.i.i:                               ; preds = %do.end42.i
  %dev.i100.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.021.i.i
  %irq.i.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.021.i.i, i32 8
  %18 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq.i.i, align 8
  tail call void @devm_free_irq(ptr noundef %dev.i100.i, i32 noundef %19, ptr noundef %arrayidx.i.i) #11
  %20 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -22, ptr %irq.i.i, align 8
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %i.0104.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.ifcvf_request_irq.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.ifcvf_request_irq.exit_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_request_irq.exit

if.end44.i:                                       ; preds = %pci_name.exit98.i
  %irq47.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.0104.i, i32 8
  %21 = ptrtoint ptr %irq47.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call29.i, ptr %irq47.i, align 8
  %22 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nr_vring.i, align 8
  %conv22.i = zext i16 %23 to i32
  %cmp23.i = icmp ult i32 %add28.i, %conv22.i
  br i1 %cmp23.i, label %if.end44.i.for.body.i_crit_edge, label %if.end44.i.if.end16_crit_edge

if.end44.i.if.end16_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.end44.i.for.body.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

ifcvf_request_irq.exit:                           ; preds = %for.body.i.i.ifcvf_request_irq.exit_crit_edge, %do.end42.i.ifcvf_request_irq.exit_crit_edge
  %dev8.i.i = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %24 = ptrtoint ptr %config_irq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %config_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev8.i.i, i32 noundef %25, ptr noundef %vf.i) #11
  tail call void @pci_free_irq_vectors(ptr noundef %17) #11
  br label %if.then12

if.then12:                                        ; preds = %ifcvf_request_irq.exit, %do.end18.i, %do.end.i
  %call13 = tail call zeroext i8 @ifcvf_get_status(ptr noundef %vf.i) #11
  %26 = or i8 %call13, -128
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end44.i.if.end16_crit_edge, %for.cond.preheader.i.if.end16_crit_edge
  %call.i = tail call i32 @ifcvf_start_hw(ptr noundef %vf.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i39 = icmp slt i32 %call.i, 0
  br i1 %cmp.i39, label %do.end, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call zeroext i8 @ifcvf_get_status(ptr noundef %vf.i) #11
  %27 = or i8 %call2.i, -128
  tail call void @ifcvf_set_status(ptr noundef %vf.i, i8 noundef zeroext %27) #11
  %28 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdev1.i, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv3) #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end16.cleanup.sink.split_crit_edge, %if.then12, %if.end.cleanup.sink.split_crit_edge
  %status.sink = phi i8 [ %26, %if.then12 ], [ %status, %if.end16.cleanup.sink.split_crit_edge ], [ %status, %do.end ], [ %status, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @ifcvf_set_status(ptr noundef %vf.i, i8 noundef zeroext %status.sink) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_reset(ptr noundef %vdpa_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %call2 = tail call zeroext i8 @ifcvf_get_status(ptr noundef %vf.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call2)
  %cmp = icmp eq i8 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i8 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %nr_vring.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nr_vring.i, align 8
  %conv.i = zext i16 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp1.not.i = icmp eq i16 %2, 0
  br i1 %cmp1.not.i, label %if.then5.ifcvf_stop_datapath.exit_crit_edge, label %if.then5.for.body.i_crit_edge

if.then5.for.body.i_crit_edge:                    ; preds = %if.then5
  br label %for.body.i

if.then5.ifcvf_stop_datapath.exit_crit_edge:      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_stop_datapath.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then5.for.body.i_crit_edge
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then5.for.body.i_crit_edge ]
  %cb.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.02.i, i32 9
  %3 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cb.i, align 4
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.body.i.ifcvf_stop_datapath.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.ifcvf_stop_datapath.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_stop_datapath.exit

ifcvf_stop_datapath.exit:                         ; preds = %for.body.i.ifcvf_stop_datapath.exit_crit_edge, %if.then5.ifcvf_stop_datapath.exit_crit_edge
  tail call void @ifcvf_stop_hw(ptr noundef %vf.i) #11
  %4 = ptrtoint ptr %nr_vring.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nr_vring.i, align 8
  %conv7 = zext i16 %5 to i32
  %pdev1.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 1
  %6 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp20.i.not = icmp eq i16 %5, 0
  br i1 %cmp20.i.not, label %ifcvf_stop_datapath.exit.ifcvf_free_irq.exit_crit_edge, label %for.body.lr.ph.i

ifcvf_stop_datapath.exit.ifcvf_free_irq.exit_crit_edge: ; preds = %ifcvf_stop_datapath.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_free_irq.exit

for.body.lr.ph.i:                                 ; preds = %ifcvf_stop_datapath.exit
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  br label %for.body.i18

for.body.i18:                                     ; preds = %for.body.i18.for.body.i18_crit_edge, %for.body.lr.ph.i
  %i.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i16, %for.body.i18.for.body.i18_crit_edge ]
  %arrayidx.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.021.i
  %irq.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.021.i, i32 8
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 8
  tail call void @devm_free_irq(ptr noundef %dev.i, i32 noundef %9, ptr noundef %arrayidx.i) #11
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -22, ptr %irq.i, align 8
  %inc.i16 = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, %conv7
  br i1 %exitcond.not.i17, label %for.body.i18.ifcvf_free_irq.exit_crit_edge, label %for.body.i18.for.body.i18_crit_edge

for.body.i18.for.body.i18_crit_edge:              ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i18

for.body.i18.ifcvf_free_irq.exit_crit_edge:       ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_free_irq.exit

ifcvf_free_irq.exit:                              ; preds = %for.body.i18.ifcvf_free_irq.exit_crit_edge, %ifcvf_stop_datapath.exit.ifcvf_free_irq.exit_crit_edge
  %dev8.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %config_irq.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 16
  %11 = ptrtoint ptr %config_irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev8.i, i32 noundef %12, ptr noundef %vf.i) #11
  tail call void @pci_free_irq_vectors(ptr noundef %7) #11
  br label %if.end8

if.end8:                                          ; preds = %ifcvf_free_irq.exit, %if.end.if.end8_crit_edge
  %nr_vring.i19 = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %nr_vring.i19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %nr_vring.i19, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp33.not.i = icmp eq i16 %14, 0
  br i1 %cmp33.not.i, label %if.end8.ifcvf_reset_vring.exit_crit_edge, label %if.end8.for.body.i24_crit_edge

if.end8.for.body.i24_crit_edge:                   ; preds = %if.end8
  br label %for.body.i24

if.end8.ifcvf_reset_vring.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_reset_vring.exit

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %if.end8.for.body.i24_crit_edge
  %i.034.i = phi i32 [ %inc.i22, %for.body.i24.for.body.i24_crit_edge ], [ 0, %if.end8.for.body.i24_crit_edge ]
  %arrayidx.i20 = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.034.i
  %last_avail_idx.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.034.i, i32 4
  %15 = ptrtoint ptr %last_avail_idx.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %last_avail_idx.i, align 2
  %ready.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.034.i, i32 5
  %16 = ptrtoint ptr %ready.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ready.i, align 4
  %cb.i21 = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.034.i, i32 9
  %17 = ptrtoint ptr %cb.i21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cb.i21, align 4
  %private.i = getelementptr %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 12, i32 %i.034.i, i32 9, i32 1
  %18 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %private.i, align 4
  %inc.i22 = add nuw nsw i32 %i.034.i, 1
  %19 = call ptr @memset(ptr %arrayidx.i20, i32 0, i32 24)
  %20 = ptrtoint ptr %nr_vring.i19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %nr_vring.i19, align 8
  %conv.i23 = zext i16 %21 to i32
  %cmp.i = icmp ult i32 %inc.i22, %conv.i23
  br i1 %cmp.i, label %for.body.i24.for.body.i24_crit_edge, label %for.body.i24.ifcvf_reset_vring.exit_crit_edge

for.body.i24.ifcvf_reset_vring.exit_crit_edge:    ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %ifcvf_reset_vring.exit

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i24

ifcvf_reset_vring.exit:                           ; preds = %for.body.i24.ifcvf_reset_vring.exit_crit_edge, %if.end8.ifcvf_reset_vring.exit_crit_edge
  tail call void @ifcvf_reset(ptr noundef %vf.i) #11
  br label %cleanup

cleanup:                                          ; preds = %ifcvf_reset_vring.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ifcvf_vdpa_get_config_size(ptr nocapture noundef readonly %vdpa_dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config_size = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 17
  %0 = ptrtoint ptr %config_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_size, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_vdpa_get_config(ptr noundef %vdpa_dev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %conv = zext i32 %offset to i64
  tail call void @ifcvf_read_dev_config(ptr noundef %vf.i, i64 noundef %conv, ptr noundef %buf, i32 noundef %len) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ifcvf_vdpa_set_config(ptr noundef %vdpa_dev, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vf.i = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2
  %conv = zext i32 %offset to i64
  tail call void @ifcvf_write_dev_config(ptr noundef %vf.i, i64 noundef %conv, ptr noundef %buf, i32 noundef %len) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_vdpa_get_generation(ptr nocapture noundef readonly %vdpa_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %common_cfg = getelementptr inbounds %struct.ifcvf_adapter, ptr %vdpa_dev, i32 0, i32 2, i32 10
  %0 = ptrtoint ptr %common_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common_cfg, align 4
  %config_generation = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 7
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %config_generation) #11, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !101
  %conv = zext i8 %2 to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_notify_queue(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ifcvf_set_vq_state(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ifcvf_get_vq_state(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ifcvf_get_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ifcvf_verify_min_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ifcvf_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_config_changed(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb = getelementptr inbounds %struct.ifcvf_hw, ptr %arg, i32 0, i32 15
  %0 = ptrtoint ptr %config_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.ifcvf_hw, ptr %arg, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 %1(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ifcvf_intr_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.vring_info, ptr %arg, i32 0, i32 9
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.vring_info, ptr %arg, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %call = tail call i32 %1(ptr noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ifcvf_start_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_stop_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_read_dev_config(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ifcvf_write_dev_config(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_vdpa_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_mgmtdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !9, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !83, !84, !86, !88, !89}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_ifcvf__363_676_ifcvf_driver_init6, !1, !"__initcall__kmod_ifcvf__363_676_ifcvf_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 676, i32 1}
!2 = !{ptr @__exitcall_ifcvf_driver_exit, !1, !"__exitcall_ifcvf_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file364, !4, !"__UNIQUE_ID_file364", i1 false, i1 false}
!4 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 678, i32 1}
!5 = !{ptr @__UNIQUE_ID_license365, !4, !"__UNIQUE_ID_license365", i1 false, i1 false}
!6 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ifcvf_driver, !8, !"ifcvf_driver", i1 false, i1 false}
!8 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 669, i32 26}
!9 = !{ptr @ifcvf_pci_ids, !10, !"ifcvf_pci_ids", i1 false, i1 false}
!10 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 648, i32 29}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 575, i32 3}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ifcvf_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @ifcvf_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 588, i32 3}
!21 = !{ptr @ifcvf_probe._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @ifcvf_probe._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 599, i32 3}
!25 = !{ptr @ifcvf_probe._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @ifcvf_probe._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 606, i32 3}
!29 = !{ptr @ifcvf_probe._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @ifcvf_probe._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 612, i32 3}
!33 = !{ptr @ifcvf_probe._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @ifcvf_probe._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 618, i32 3}
!37 = !{ptr @ifcvf_probe._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ifcvf_probe._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 627, i32 3}
!41 = !{ptr @ifcvf_probe._entry.21, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ifcvf_probe._entry_ptr.23, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @id_table_net, !44, !"id_table_net", i1 false, i1 false}
!44 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 463, i32 32}
!45 = !{ptr @id_table_blk, !46, !"id_table_blk", i1 false, i1 false}
!46 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 468, i32 32}
!47 = !{ptr @ifcvf_vdpa_mgmt_dev_ops, !48, !"ifcvf_vdpa_mgmt_dev_ops", i1 false, i1 false}
!48 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 561, i32 38}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 512, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ifcvf_vdpa_dev_add._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ifcvf_vdpa_dev_add._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 528, i32 3}
!56 = !{ptr @ifcvf_vdpa_dev_add._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ifcvf_vdpa_dev_add._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 541, i32 3}
!60 = !{ptr @ifcvf_vdpa_dev_add._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ifcvf_vdpa_dev_add._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @ifc_vdpa_ops, !63, !"ifc_vdpa_ops", i1 false, i1 false}
!63 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 435, i32 37}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 184, i32 3}
!66 = !{ptr @ifcvf_vdpa_get_device_features._entry, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @ifcvf_vdpa_get_device_features._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 243, i32 4}
!70 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @ifcvf_vdpa_set_status._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @ifcvf_vdpa_set_status._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 74, i32 3}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ifcvf_request_irq._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ifcvf_request_irq._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 78, i32 38}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 86, i32 3}
!82 = !{ptr @ifcvf_request_irq._entry.38, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ifcvf_request_irq._entry_ptr.40, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 91, i32 41}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/vdpa/ifcvf/ifcvf_main.c", i32 100, i32 4}
!88 = !{ptr @ifcvf_request_irq._entry.42, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @ifcvf_request_irq._entry_ptr.44, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 4212263}
!101 = !{i64 2151751608}
