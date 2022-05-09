; ModuleID = '/llk/IR_all_yes/drivers/vdpa/virtio_pci/vp_vdpa.c_pt.bc'
source_filename = "../drivers/vdpa/virtio_pci/vp_vdpa.c"
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vdpa_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.99, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.vp_vdpa = type { %struct.vdpa_device, %struct.virtio_pci_modern_device, ptr, %struct.vdpa_callback, [256 x i8], i32, i32, i32 }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.virtio_device_id }
%struct.virtio_device_id = type { i32, i32 }
%struct.vdpa_callback = type { ptr, ptr }
%struct.vp_vring = type { ptr, [256 x i8], %struct.vdpa_callback, i32, i32 }
%struct.vdpa_notification_area = type { i32, i32 }
%struct.virtio_pci_common_cfg = type { i32, i32, i32, i32, i16, i16, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_vp_vdpa__363_547_vp_vdpa_driver_init6 = internal global ptr @vp_vdpa_driver_init, section ".initcall6.init", align 4
@vp_vdpa_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.3, ptr null, ptr @vp_vdpa_probe, ptr @vp_vdpa_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_vp_vdpa_driver_exit = internal global ptr @vp_vdpa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author364 = internal constant [48 x i8] c"vp_vdpa.author=Jason Wang <jasowang@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description365 = internal constant [28 x i8] c"vp_vdpa.description=vp-vdpa\00", section ".modinfo", align 1
@__UNIQUE_ID_file366 = internal constant [45 x i8] c"vp_vdpa.file=drivers/vdpa/virtio_pci/vp_vdpa\00", section ".modinfo", align 1
@__UNIQUE_ID_license367 = internal constant [20 x i8] c"vp_vdpa.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version368 = internal constant [18 x i8] c"vp_vdpa.version=1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vp_vdpa\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vp-vdpa\00", [24 x i8] zeroinitializer }, align 32
@vp_vdpa_ops = internal constant { %struct.vdpa_config_ops, [36 x i8] } { %struct.vdpa_config_ops { ptr @vp_vdpa_set_vq_address, ptr @vp_vdpa_set_vq_num, ptr @vp_vdpa_kick_vq, ptr @vp_vdpa_set_vq_cb, ptr @vp_vdpa_set_vq_ready, ptr @vp_vdpa_get_vq_ready, ptr @vp_vdpa_set_vq_state, ptr @vp_vdpa_get_vq_state, ptr @vp_vdpa_get_vq_notification, ptr @vp_vdpa_get_vq_irq, ptr @vp_vdpa_get_vq_align, ptr @vp_vdpa_get_device_features, ptr @vp_vdpa_set_driver_features, ptr @vp_vdpa_get_driver_features, ptr @vp_vdpa_set_config_cb, ptr @vp_vdpa_get_vq_num_max, ptr null, ptr @vp_vdpa_get_device_id, ptr @vp_vdpa_get_vendor_id, ptr @vp_vdpa_get_status, ptr @vp_vdpa_set_status, ptr @vp_vdpa_reset, ptr @vp_vdpa_get_config_size, ptr @vp_vdpa_get_config, ptr @vp_vdpa_set_config, ptr @vp_vdpa_get_generation, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 471, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"vp_vdpa: Failed to allocate vDPA structure\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vp_vdpa_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/vdpa/virtio_pci/vp_vdpa.c\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr = internal global ptr @vp_vdpa_probe._entry, section ".printk_index", align 4
@vp_vdpa_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 480, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to probe modern PCI device\0A\00", [61 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr.11 = internal global ptr @vp_vdpa_probe._entry.9, section ".printk_index", align 4
@vp_vdpa_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 493, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Failed for adding devres for freeing irq vectors\0A\00", [46 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr.14 = internal global ptr @vp_vdpa_probe._entry.12, section ".printk_index", align 4
@vp_vdpa_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.6, i32 502, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Fail to allocate virtqueues\0A\00", [35 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr.17 = internal global ptr @vp_vdpa_probe._entry.15, section ".printk_index", align 4
@vp_vdpa_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 513, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Fail to map vq notify %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr.21 = internal global ptr @vp_vdpa_probe._entry.18, section ".printk_index", align 4
@vp_vdpa_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 521, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register to vdpa bus\0A\00", [32 x i8] zeroinitializer }, align 32
@vp_vdpa_probe._entry_ptr.24 = internal global ptr @vp_vdpa_probe._entry.22, section ".printk_index", align 4
@vp_vdpa_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.6, i32 156, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"vp_vdpa: fail to allocate irq vectors want %d but %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vp_vdpa_request_irq\00", [44 x i8] zeroinitializer }, align 32
@vp_vdpa_request_irq._entry_ptr = internal global ptr @vp_vdpa_request_irq._entry, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vp-vdpa[%s]-%d\0A\00", [16 x i8] zeroinitializer }, align 32
@vp_vdpa_request_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.6, i32 172, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vp_vdpa: fail to request irq for vq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@vp_vdpa_request_irq._entry_ptr.30 = internal global ptr @vp_vdpa_request_irq._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vp-vdpa[%s]-config\0A\00", [44 x i8] zeroinitializer }, align 32
@vp_vdpa_request_irq._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.26, ptr @.str.6, i32 186, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@vp_vdpa_request_irq._entry_ptr.33 = internal global ptr @vp_vdpa_request_irq._entry.32, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"vp_vdpa_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 540, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 552, i32 1 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 541, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"vp_vdpa_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 424, i32 37 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 471, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 480, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 492, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 502, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 513, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 521, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 154, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 164, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 171, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 179, i32 50 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private constant [37 x i8] c"../drivers/vdpa/virtio_pci/vp_vdpa.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 185, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author364, ptr @__UNIQUE_ID_description365, ptr @__UNIQUE_ID_file366, ptr @__UNIQUE_ID_license367, ptr @__UNIQUE_ID_version368, ptr @__exitcall_vp_vdpa_driver_exit, ptr @__initcall__kmod_vp_vdpa__363_547_vp_vdpa_driver_init6, ptr @__modver_attr, ptr @vp_vdpa_driver_exit, ptr @vp_vdpa_probe._entry, ptr @vp_vdpa_probe._entry.12, ptr @vp_vdpa_probe._entry.15, ptr @vp_vdpa_probe._entry.18, ptr @vp_vdpa_probe._entry.22, ptr @vp_vdpa_probe._entry.9, ptr @vp_vdpa_probe._entry_ptr, ptr @vp_vdpa_probe._entry_ptr.11, ptr @vp_vdpa_probe._entry_ptr.14, ptr @vp_vdpa_probe._entry_ptr.17, ptr @vp_vdpa_probe._entry_ptr.21, ptr @vp_vdpa_probe._entry_ptr.24, ptr @vp_vdpa_request_irq._entry, ptr @vp_vdpa_request_irq._entry.28, ptr @vp_vdpa_request_irq._entry.32, ptr @vp_vdpa_request_irq._entry_ptr, ptr @vp_vdpa_request_irq._entry_ptr.30, ptr @vp_vdpa_request_irq._entry_ptr.33, ptr @vp_vdpa_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @vp_vdpa_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_request_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_vdpa_request_irq._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vp_vdpa_driver, ptr noundef null, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_unregister_driver(ptr noundef nonnull @vp_vdpa_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 @pcim_enable_device(ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__vdpa_alloc_device(ptr noundef %dev1, ptr noundef nonnull @vp_vdpa_ops, i32 noundef 1384, ptr noundef null, i1 noundef zeroext false) #11
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4) #14
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %mdev7 = getelementptr inbounds %struct.vp_vdpa, ptr %call2, i32 0, i32 1
  %1 = ptrtoint ptr %mdev7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %mdev7, align 4
  %call8 = tail call i32 @vp_modern_probe(ptr noundef %mdev7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end15, label %do.end13

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #14
  br label %err

if.end15:                                         ; preds = %if.end6
  tail call void @pci_set_master(ptr noundef %pdev) #11
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %driver_data.i.i, align 4
  %dma_dev = getelementptr inbounds %struct.vdpa_device, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %dma_dev to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dma_dev, align 8
  %call17 = tail call zeroext i16 @vp_modern_get_num_queues(ptr noundef %mdev7) #11
  %conv = zext i16 %call17 to i32
  %queues = getelementptr inbounds %struct.vp_vdpa, ptr %call2, i32 0, i32 6
  %4 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %queues, align 4
  %call.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @vp_vdpa_free_irq_vectors, ptr noundef %pdev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #14
  br label %err

if.end25:                                         ; preds = %if.end15
  %5 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %queues, align 4
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 276) #11
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !76

devm_kcalloc.exit.thread:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %vring119 = getelementptr inbounds %struct.vp_vdpa, ptr %call2, i32 0, i32 2
  %9 = ptrtoint ptr %vring119 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %vring119, align 4
  br label %if.then31

devm_kcalloc.exit:                                ; preds = %if.end25
  %10 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %10, i32 noundef 3520) #11
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %call2, i32 0, i32 2
  %11 = ptrtoint ptr %vring to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %vring, align 4
  %tobool30.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool30.not, label %devm_kcalloc.exit.if.then31_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.if.then31_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then31

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %12 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp123 = icmp sgt i32 %13, 0
  br i1 %cmp123, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

if.then31:                                        ; preds = %devm_kcalloc.exit.if.then31_crit_edge, %devm_kcalloc.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16) #14
  br label %err

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0124 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vring, align 4
  %irq = getelementptr %struct.vp_vring, ptr %15, i32 %i.0124, i32 4
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 65535, ptr %irq, align 4
  %conv40 = trunc i32 %i.0124 to i16
  %17 = load ptr, ptr %vring, align 4
  %notify_pa = getelementptr %struct.vp_vring, ptr %17, i32 %i.0124, i32 3
  %call43 = tail call ptr @vp_modern_map_vq_notify(ptr noundef %mdev7, i16 noundef zeroext %conv40, ptr noundef %notify_pa) #11
  %18 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vring, align 4
  %arrayidx45 = getelementptr %struct.vp_vring, ptr %19, i32 %i.0124
  %20 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call43, ptr %arrayidx45, align 4
  %21 = load ptr, ptr %vring, align 4
  %arrayidx47 = getelementptr %struct.vp_vring, ptr %21, i32 %i.0124
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx47, align 4
  %tobool49.not = icmp eq ptr %23, null
  br i1 %tobool49.not, label %if.then50, label %for.inc

if.then50:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %i.0124) #14
  br label %err

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0124, 1
  %24 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queues, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ %13, %for.cond.preheader.for.end_crit_edge ], [ %25, %for.inc.for.end_crit_edge ]
  %config_irq = getelementptr inbounds %struct.vp_vdpa, ptr %call2, i32 0, i32 5
  %26 = ptrtoint ptr %config_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 65535, ptr %config_irq, align 8
  %call58 = tail call i32 @vdpa_register_device(ptr noundef %call2, i32 noundef %.lcssa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %for.end.cleanup_crit_edge, label %do.end63

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end63:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #14
  br label %err

err:                                              ; preds = %do.end63, %if.then50, %if.then31, %do.end23, %do.end13
  %ret.0 = phi i32 [ %call8, %do.end13 ], [ %call.i, %do.end23 ], [ -22, %if.then50 ], [ %call58, %do.end63 ], [ -12, %if.then31 ]
  tail call void @put_device(ptr noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %for.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %do.end ], [ %ret.0, %err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mdev = getelementptr inbounds %struct.vp_vdpa, ptr %1, i32 0, i32 1
  tail call void @vp_modern_remove(ptr noundef %mdev) #11
  tail call void @vdpa_unregister_device(ptr noundef %1) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__vdpa_alloc_device(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_get_num_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_free_irq_vectors(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_free_irq_vectors(ptr noundef %data) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_modern_map_vq_notify(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_set_vq_address(ptr noundef %vdpa, i16 noundef zeroext %qid, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  tail call void @vp_modern_queue_address(ptr noundef %mdev.i, i16 noundef zeroext %qid, i64 noundef %desc_area, i64 noundef %driver_area, i64 noundef %device_area) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_set_vq_num(ptr noundef %vdpa, i16 noundef zeroext %qid, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %conv = trunc i32 %num to i16
  tail call void @vp_modern_set_queue_size(ptr noundef %mdev.i, i16 noundef zeroext %qid, i16 noundef zeroext %conv) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_kick_vq(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %qid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 2
  %0 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vring, align 4
  %idxprom = zext i16 %qid to i32
  %arrayidx = getelementptr %struct.vp_vring, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @arm_heavy_mb() #11
  %4 = tail call i16 @llvm.bswap.i16(i16 %qid) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %3, i16 %4) #11, !srcloc !78
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vp_vdpa_set_vq_cb(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %qid, ptr nocapture noundef readonly %cb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 2
  %0 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vring, align 4
  %idxprom = zext i16 %qid to i32
  %cb1 = getelementptr %struct.vp_vring, ptr %1, i32 %idxprom, i32 2
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %cb, align 4
  %4 = ptrtoint ptr %cb1 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %cb1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_set_vq_ready(ptr noundef %vdpa, i16 noundef zeroext %qid, i1 noundef zeroext %ready) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  tail call void @vp_modern_set_queue_enable(ptr noundef %mdev.i, i16 noundef zeroext %qid, i1 noundef zeroext %ready) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vp_vdpa_get_vq_ready(ptr noundef %vdpa, i16 noundef zeroext %qid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %mdev.i, i16 noundef zeroext %qid) #11
  ret i1 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_set_vq_state(ptr noundef %vdpa, i16 noundef zeroext %qid, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev.i) #11
  %0 = and i8 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %mdev.i, i16 noundef zeroext %qid) #11
  br i1 %call2, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call i64 @vp_modern_get_driver_features(ptr noundef %mdev.i) #11
  %and4 = and i64 %call3, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and4)
  %tobool5.not = icmp eq i64 %and4, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %state to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %bf.load.i = load i32, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147450880, i32 %bf.load.i)
  %2 = icmp eq i32 %bf.load.i, -2147450880
  %retval.0.i = select i1 %2, i32 0, i32 -95
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %state, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp.i = icmp eq i16 %4, 0
  %..i = select i1 %cmp.i, i32 0, i32 -95
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %if.then6 ], [ %..i, %if.else ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_vq_state(ptr nocapture noundef readnone %vdpa, i16 noundef zeroext %qid, ptr nocapture noundef readnone %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vp_vdpa_get_vq_notification(ptr noalias nocapture writeonly sret(%struct.vdpa_notification_area) align 4 %agg.result, ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %qid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.vdpa_notification_area, ptr %agg.result, i32 0, i32 1
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 2
  %1 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vring, align 4
  %idxprom = zext i16 %qid to i32
  %notify_pa = getelementptr %struct.vp_vring, ptr %2, i32 %idxprom, i32 3
  %3 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %notify_pa, align 4
  %5 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %agg.result, align 4
  %notify_offset_multiplier = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 9
  %6 = ptrtoint ptr %notify_offset_multiplier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %notify_offset_multiplier, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_vq_irq(ptr nocapture noundef readonly %vdpa, i16 noundef zeroext %idx) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 2
  %0 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vring, align 4
  %idxprom = zext i16 %idx to i32
  %irq1 = getelementptr %struct.vp_vring, ptr %1, i32 %idxprom, i32 4
  %2 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %3)
  %cmp = icmp eq i32 %3, 65535
  %. = select i1 %cmp, i32 -22, i32 %3
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_vq_align(ptr nocapture noundef readnone %vdpa) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 4096
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vp_vdpa_get_device_features(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call i64 @vp_modern_get_features(ptr noundef %mdev.i) #11
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_set_driver_features(ptr noundef %vdpa, i64 noundef %features) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  tail call void @vp_modern_set_features(ptr noundef %mdev.i, i64 noundef %features) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vp_vdpa_get_driver_features(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call i64 @vp_modern_get_driver_features(ptr noundef %mdev.i) #11
  ret i64 %call1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vp_vdpa_set_config_cb(ptr nocapture noundef writeonly %vdpa, ptr nocapture noundef readonly %cb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 3
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %cb, align 4
  %2 = ptrtoint ptr %config_cb to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %1, ptr %config_cb, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @vp_vdpa_get_vq_num_max(ptr nocapture noundef readnone %vdpa) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i16 256
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_device_id(ptr nocapture noundef readonly %vdpa) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 11
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_vendor_id(ptr nocapture noundef readonly %vdpa) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vendor = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 11, i32 1
  %0 = ptrtoint ptr %vendor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vendor, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vp_vdpa_get_status(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev.i) #11
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_set_status(ptr noundef %vdpa, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1.i = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev.i.i) #11
  %0 = and i8 %status, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp ne i8 %0, 0
  %1 = and i8 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool5.not = icmp eq i8 %1, 0
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %mdev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdev.i.i, align 4
  %queues2.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 6
  %4 = ptrtoint ptr %queues2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queues2.i, align 4
  %add.i = add i32 %5, 1
  %call.i.i = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %3, i32 noundef %add.i, i32 noundef %add.i, i32 noundef 4, ptr noundef null) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i)
  %cmp.not.i = icmp eq i32 %call.i.i, %add.i
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.25, i32 noundef %add.i, i32 noundef %call.i.i) #14
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %vectors3.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 7
  %6 = ptrtoint ptr %vectors3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.i, ptr %vectors3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp410.i = icmp sgt i32 %5, 0
  br i1 %cmp410.i, label %for.body.lr.ph.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %vring.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 2
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end21.i.for.body.i_crit_edge ]
  %7 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vring.i, align 4
  %msix_name.i = getelementptr %struct.vp_vring, ptr %8, i32 %i.011.i, i32 1
  %9 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %for.body.i.pci_name.exit.i_crit_edge

for.body.i.pci_name.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i.i, align 4
  br label %pci_name.exit.i

pci_name.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.pci_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %12, %if.end.i.i.i ], [ %10, %for.body.i.pci_name.exit.i_crit_edge ]
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %msix_name.i, i32 noundef 256, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i.i, i32 noundef %i.011.i) #11
  %call7.i = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %i.011.i) #11
  %13 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vring.i, align 4
  %arrayidx10.i = getelementptr %struct.vp_vring, ptr %14, i32 %i.011.i
  %msix_name11.i = getelementptr %struct.vp_vring, ptr %14, i32 %i.011.i, i32 1
  %call.i1.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev.i.i, i32 noundef %call7.i, ptr noundef nonnull @vp_vdpa_vq_handler, ptr noundef null, i32 noundef 0, ptr noundef %msix_name11.i, ptr noundef %arrayidx10.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i, label %if.end21.i, label %do.end19.i

do.end19.i:                                       ; preds = %pci_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %i.011.i) #14
  br label %err.i

if.end21.i:                                       ; preds = %pci_name.exit.i
  %conv.i = trunc i32 %i.011.i to i16
  %call23.i = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %mdev.i.i, i16 noundef zeroext %conv.i, i16 noundef zeroext %conv.i) #11
  %15 = ptrtoint ptr %vring.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vring.i, align 4
  %irq26.i = getelementptr %struct.vp_vring, ptr %16, i32 %i.011.i, i32 4
  %17 = ptrtoint ptr %irq26.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call7.i, ptr %irq26.i, align 4
  %inc.i = add nuw nsw i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end21.i.for.end.i_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end21.i.for.end.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %if.end21.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.for.end.i_crit_edge ], [ %5, %if.end21.i.for.end.i_crit_edge ]
  %msix_name27.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 4
  %init_name.i.i2.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %18 = ptrtoint ptr %init_name.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i.i2.i, align 8
  %tobool.not.i.i3.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i3.i, label %if.end.i.i5.i, label %for.end.i.pci_name.exit7.i_crit_edge

for.end.i.pci_name.exit7.i_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit7.i

if.end.i.i5.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i4.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %20 = ptrtoint ptr %dev.i4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i4.i, align 4
  br label %pci_name.exit7.i

pci_name.exit7.i:                                 ; preds = %if.end.i.i5.i, %for.end.i.pci_name.exit7.i_crit_edge
  %retval.0.i.i6.i = phi ptr [ %21, %if.end.i.i5.i ], [ %19, %for.end.i.pci_name.exit7.i_crit_edge ]
  %call30.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %msix_name27.i, i32 noundef 256, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i.i6.i) #11
  %call31.i = tail call i32 @pci_irq_vector(ptr noundef %3, i32 noundef %5) #11
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i8.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev32.i, i32 noundef %call31.i, ptr noundef nonnull @vp_vdpa_config_handler, ptr noundef null, i32 noundef 0, ptr noundef %msix_name27.i, ptr noundef %vdpa) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %tobool36.not.i = icmp eq i32 %call.i8.i, 0
  br i1 %tobool36.not.i, label %if.end42.i, label %do.end40.i

do.end40.i:                                       ; preds = %pci_name.exit7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.29, i32 noundef %i.0.lcssa.i) #14
  br label %err.i

if.end42.i:                                       ; preds = %pci_name.exit7.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv43.i = trunc i32 %5 to i16
  %call44.i = tail call zeroext i16 @vp_modern_config_vector(ptr noundef %mdev.i.i, i16 noundef zeroext %conv43.i) #11
  %config_irq.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 5
  %22 = ptrtoint ptr %config_irq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call31.i, ptr %config_irq.i, align 8
  br label %if.end

err.i:                                            ; preds = %do.end40.i, %do.end19.i
  tail call fastcc void @vp_vdpa_free_irq(ptr noundef %vdpa) #11
  br label %if.end

if.end:                                           ; preds = %err.i, %if.end42.i, %do.end.i, %entry.if.end_crit_edge
  tail call void @vp_modern_set_status(ptr noundef %mdev.i.i, i8 noundef zeroext %status) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_reset(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1.i = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev1) #11
  tail call void @vp_modern_set_status(ptr noundef %mdev1, i8 noundef zeroext 0) #11
  %0 = and i8 %call1.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @vp_vdpa_free_irq(ptr noundef %vdpa)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vp_vdpa_get_config_size(ptr nocapture noundef readonly %vdpa) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %device_len = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %device_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %device_len, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_get_config(ptr nocapture noundef readonly %vdpa, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp15.not = icmp eq i32 %len, 0
  %device = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %for.end.do.body_crit_edge, %entry
  %0 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common, align 4
  %config_generation = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %1, i32 0, i32 7
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %config_generation) #11, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !80
  br i1 %cmp15.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %p.016 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %buf, %do.body.for.body_crit_edge ]
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %offset
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %i.017
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #11, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !80
  %incdec.ptr = getelementptr i8, ptr %p.016, i32 1
  %6 = ptrtoint ptr %p.016 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %p.016, align 1
  %inc = add nuw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %7 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common, align 4
  %config_generation6 = getelementptr inbounds %struct.virtio_pci_common_cfg, ptr %8, i32 0, i32 7
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %config_generation6) #11, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !80
  %cmp9.not = icmp eq i8 %2, %9
  br i1 %cmp9.not, label %do.end, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_vdpa_set_config(ptr nocapture noundef readonly %vdpa, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp5.not = icmp eq i32 %len, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %device = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %p.06 = phi ptr [ %buf, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i8, ptr %p.06, i32 1
  %0 = ptrtoint ptr %p.06 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %p.06, align 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %offset
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %i.07
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2, i8 %1) #11, !srcloc !82
  %inc = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_get_generation(ptr noundef %vdpa) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev.i = getelementptr inbounds %struct.vp_vdpa, ptr %vdpa, i32 0, i32 1
  %call1 = tail call i32 @vp_modern_generation(ptr noundef %mdev.i) #11
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_queue_address(ptr noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_enable(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_modern_get_queue_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp_modern_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_modern_get_driver_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_modern_get_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_features(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_vq_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.vp_vring, ptr %arg, i32 0, i32 2
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
  %private = getelementptr inbounds %struct.vp_vring, ptr %arg, i32 0, i32 2, i32 1
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
declare dso_local zeroext i16 @vp_modern_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_vdpa_config_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config_cb = getelementptr inbounds %struct.vp_vdpa, ptr %arg, i32 0, i32 3
  %0 = ptrtoint ptr %config_cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_cb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private = getelementptr inbounds %struct.vp_vdpa, ptr %arg, i32 0, i32 3, i32 1
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
declare dso_local zeroext i16 @vp_modern_config_vector(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vp_vdpa_free_irq(ptr noundef %vp_vdpa) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.vp_vdpa, ptr %vp_vdpa, i32 0, i32 1
  %0 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev1, align 4
  %queues = getelementptr inbounds %struct.vp_vdpa, ptr %vp_vdpa, i32 0, i32 6
  %2 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43 = icmp sgt i32 %3, 0
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vring = getelementptr inbounds %struct.vp_vdpa, ptr %vp_vdpa, i32 0, i32 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vring, align 4
  %irq = getelementptr %struct.vp_vring, ptr %5, i32 %i.044, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %7)
  %cmp2.not = icmp eq i32 %7, 65535
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %i.044 to i16
  %call = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %mdev1, i16 noundef zeroext %conv, i16 noundef zeroext -1) #11
  %8 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vring, align 4
  %arrayidx4 = getelementptr %struct.vp_vring, ptr %9, i32 %i.044
  %irq5 = getelementptr %struct.vp_vring, ptr %9, i32 %i.044, i32 4
  %10 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq5, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %11, ptr noundef %arrayidx4) #11
  %12 = ptrtoint ptr %vring to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vring, align 4
  %irq10 = getelementptr %struct.vp_vring, ptr %13, i32 %i.044, i32 4
  %14 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 65535, ptr %irq10, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.044, 1
  %15 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queues, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %config_irq = getelementptr inbounds %struct.vp_vdpa, ptr %vp_vdpa, i32 0, i32 5
  %17 = ptrtoint ptr %config_irq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %18)
  %cmp11.not = icmp eq i32 %18, 65535
  br i1 %cmp11.not, label %for.end.if.end18_crit_edge, label %if.then13

for.end.if.end18_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call14 = tail call zeroext i16 @vp_modern_config_vector(ptr noundef %mdev1, i16 noundef zeroext -1) #11
  %dev15 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %19 = ptrtoint ptr %config_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config_irq, align 8
  tail call void @devm_free_irq(ptr noundef %dev15, i32 noundef %20, ptr noundef %vp_vdpa) #11
  %21 = ptrtoint ptr %config_irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 65535, ptr %config_irq, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then13, %for.end.if.end18_crit_edge
  %vectors = getelementptr inbounds %struct.vp_vdpa, ptr %vp_vdpa, i32 0, i32 7
  %22 = ptrtoint ptr %vectors to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vectors, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %if.end18.if.end21_crit_edge, label %if.then19

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then19:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @pci_free_irq_vectors(ptr noundef %1) #11
  %24 = ptrtoint ptr %vectors to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %vectors, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end18.if.end21_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_generation(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_vp_vdpa__363_547_vp_vdpa_driver_init6, !1, !"__initcall__kmod_vp_vdpa__363_547_vp_vdpa_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 547, i32 1}
!2 = !{ptr @__exitcall_vp_vdpa_driver_exit, !1, !"__exitcall_vp_vdpa_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author364, !4, !"__UNIQUE_ID_author364", i1 false, i1 false}
!4 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 549, i32 1}
!5 = !{ptr @__UNIQUE_ID_description365, !6, !"__UNIQUE_ID_description365", i1 false, i1 false}
!6 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 550, i32 1}
!7 = !{ptr @__UNIQUE_ID_file366, !8, !"__UNIQUE_ID_file366", i1 false, i1 false}
!8 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 551, i32 1}
!9 = !{ptr @__UNIQUE_ID_license367, !8, !"__UNIQUE_ID_license367", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version368, !11, !"__UNIQUE_ID_version368", i1 false, i1 false}
!11 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 552, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 541, i32 11}
!18 = !{ptr @vp_vdpa_driver, !19, !"vp_vdpa_driver", i1 false, i1 false}
!19 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 540, i32 26}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 471, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vp_vdpa_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @vp_vdpa_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 480, i32 3}
!30 = !{ptr @vp_vdpa_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @vp_vdpa_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 492, i32 3}
!34 = !{ptr @vp_vdpa_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @vp_vdpa_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 502, i32 3}
!38 = !{ptr @vp_vdpa_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @vp_vdpa_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 513, i32 4}
!42 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @vp_vdpa_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @vp_vdpa_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 521, i32 3}
!47 = !{ptr @vp_vdpa_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vp_vdpa_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @vp_vdpa_ops, !50, !"vp_vdpa_ops", i1 false, i1 false}
!50 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 424, i32 37}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 154, i32 3}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vp_vdpa_request_irq._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @vp_vdpa_request_irq._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 164, i32 4}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 171, i32 4}
!60 = !{ptr @vp_vdpa_request_irq._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @vp_vdpa_request_irq._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 179, i32 50}
!64 = !{ptr @vp_vdpa_request_irq._entry.32, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/vdpa/virtio_pci/vp_vdpa.c", i32 185, i32 3}
!66 = !{ptr @vp_vdpa_request_irq._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2151751433}
!78 = !{i64 4209241}
!79 = !{i64 4210059}
!80 = !{i64 2151749404}
!81 = !{i64 2151751009}
!82 = !{i64 4209664}
