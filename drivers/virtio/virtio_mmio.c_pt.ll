; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_mmio.c_pt.bc'
source_filename = "../drivers/virtio/virtio_mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_mmio_device = type { %struct.virtio_device, ptr, ptr, i32, %struct.spinlock, %struct.list_head }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_mmio_vq_info = type { ptr, %struct.list_head }
%struct.virtio_shm_region = type { i64, i64 }

@__param_str_device = internal constant [19 x i8] c"virtio_mmio.device\00", align 1
@vm_cmdline_param_ops = internal constant { %struct.kernel_param_ops, [16 x i8] } { %struct.kernel_param_ops { i32 0, ptr @vm_cmdline_set, ptr @vm_cmdline_get, ptr null }, [16 x i8] zeroinitializer }, align 32
@__param_device = internal constant %struct.kernel_param { ptr @__param_str_device, ptr null, ptr @vm_cmdline_param_ops, i16 256, i8 6, i8 0, %union.anon.65 zeroinitializer }, section "__param", align 4
@virtio_mmio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @virtio_mmio_probe, ptr @virtio_mmio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.7, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @virtio_mmio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_virtio_mmio__249_802_virtio_mmio_init6 = internal global ptr @virtio_mmio_init, section ".initcall6.init", align 4
@__exitcall_virtio_mmio_exit = internal global ptr @virtio_mmio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author250 = internal constant [51 x i8] c"virtio_mmio.author=Pawel Moll <pawel.moll@arm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [77 x i8] c"virtio_mmio.description=Platform bus driver for memory mapped virtio devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [44 x i8] c"virtio_mmio.file=drivers/virtio/virtio_mmio\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [24 x i8] c"virtio_mmio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"@%lli:%u%n:%d%n\00", [16 x i8] zeroinitializer }, align 32
@vm_cmdline_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@vm_cmdline_parent_registered = internal global { i1, [31 x i8] } zeroinitializer, align 32
@vm_cmdline_parent = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.8, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@vm_cmdline_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013virtio-mmio: Failed to register parent device!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vm_cmdline_set\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/virtio/virtio_mmio.c\00", [35 x i8] zeroinitializer }, align 32
@vm_cmdline_set._entry_ptr = internal global ptr @vm_cmdline_set._entry, section ".printk_index", align 4
@vm_cmdline_set._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016virtio-mmio: Registering device virtio-mmio.%d at 0x%llx-0x%llx, IRQ %d.\0A\00", [52 x i8] zeroinitializer }, align 32
@vm_cmdline_set._entry_ptr.6 = internal global ptr @vm_cmdline_set._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"virtio-mmio\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"virtio-mmio-cmdline\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"0x%llx@0x%llx:%llu:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@virtio_mmio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"virtio,mmio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@virtio_mmio_config_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr null, ptr @vm_get, ptr @vm_set, ptr @vm_generation, ptr @vm_get_status, ptr @vm_set_status, ptr @vm_reset, ptr @vm_find_vqs, ptr @vm_del_vqs, ptr @vm_get_features, ptr @vm_finalize_features, ptr @vm_bus_name, ptr null, ptr null, ptr @vm_get_shm_region }, [36 x i8] zeroinitializer }, align 32
@virtio_mmio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vm_dev->lock\00", [18 x i8] zeroinitializer }, align 32
@virtio_mmio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 583, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wrong magic value 0x%08lx!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virtio_mmio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtio_mmio_probe._entry_ptr = internal global ptr @virtio_mmio_probe._entry, section ".printk_index", align 4
@virtio_mmio_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.3, i32 591, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Version %ld not supported!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@virtio_mmio_probe._entry_ptr.18 = internal global ptr @virtio_mmio_probe._entry.15, section ".printk_index", align 4
@virtio_mmio_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 622, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Failed to enable 64-bit or 32-bit DMA.  Trying to continue, but this might not work.\0A\00", [42 x i8] zeroinitializer }, align 32
@virtio_mmio_probe._entry_ptr.21 = internal global ptr @virtio_mmio_probe._entry.19, section ".printk_index", align 4
@vm_setup_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 406, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"platform bug: legacy virtio-mmio must not be used with RAM above 0x%llxGB\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vm_setup_vq\00", [20 x i8] zeroinitializer }, align 32
@vm_setup_vq._entry_ptr = internal global ptr @vm_setup_vq._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vm_finalize_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 132, ptr @.str.17, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"New virtio-mmio devices (version 2) must provide VIRTIO_F_VERSION_1 feature!\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vm_finalize_features\00", [43 x i8] zeroinitializer }, align 32
@vm_finalize_features._entry_ptr = internal global ptr @vm_finalize_features._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"vm_cmdline_param_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 732, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [19 x i8] c"virtio_mmio_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 781, i32 31 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 669, i32 26 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"vm_cmdline_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 652, i32 12 }
@___asan_gen_.39 = private unnamed_addr constant [29 x i8] c"vm_cmdline_parent_registered\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"vm_cmdline_parent\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 647, i32 22 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 691, i32 4 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 697, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 704, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 648, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 716, i32 42 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"virtio_mmio_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 767, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"virtio_mmio_config_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 531, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 574, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 583, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 590, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 622, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 404, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [32 x i8] c"../drivers/virtio/virtio_mmio.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 132, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__exitcall_virtio_mmio_exit, ptr @__initcall__kmod_virtio_mmio__249_802_virtio_mmio_init6, ptr @__param_device, ptr @virtio_mmio_exit, ptr @virtio_mmio_probe._entry, ptr @virtio_mmio_probe._entry.15, ptr @virtio_mmio_probe._entry.19, ptr @virtio_mmio_probe._entry_ptr, ptr @virtio_mmio_probe._entry_ptr.18, ptr @virtio_mmio_probe._entry_ptr.21, ptr @vm_cmdline_set._entry, ptr @vm_cmdline_set._entry.4, ptr @vm_cmdline_set._entry_ptr, ptr @vm_cmdline_set._entry_ptr.6, ptr @vm_finalize_features._entry, ptr @vm_finalize_features._entry_ptr, ptr @vm_setup_vq._entry, ptr @vm_setup_vq._entry_ptr, ptr @vm_cmdline_param_ops, ptr @virtio_mmio_driver, ptr @.str, ptr @vm_cmdline_id, ptr @vm_cmdline_parent_registered, ptr @vm_cmdline_parent, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @virtio_mmio_match, ptr @virtio_mmio_config_ops, ptr @virtio_mmio_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_param_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_parent_registered to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_parent to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_cmdline_set._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_config_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_mmio_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_setup_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_finalize_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_mmio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @virtio_mmio_driver) #12
  %.b.i = load i1, ptr @vm_cmdline_parent_registered, align 4
  br i1 %.b.i, label %if.then.i, label %entry.vm_unregister_cmdline_devices.exit_crit_edge

entry.vm_unregister_cmdline_devices.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vm_unregister_cmdline_devices.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @device_for_each_child(ptr noundef nonnull @vm_cmdline_parent, ptr noundef null, ptr noundef nonnull @vm_unregister_cmdline_device) #12
  tail call void @device_unregister(ptr noundef nonnull @vm_cmdline_parent) #12
  store i1 false, ptr @vm_cmdline_parent_registered, align 4
  br label %vm_unregister_cmdline_devices.exit

vm_unregister_cmdline_devices.exit:               ; preds = %if.then.i, %entry.vm_unregister_cmdline_devices.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_mmio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @virtio_mmio_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_cmdline_set(ptr noundef %device, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  %resources = alloca [2 x %struct.resource], align 4
  %str = alloca ptr, align 4
  %base = alloca i64, align 8
  %irq = alloca i32, align 4
  %consumed = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %resources) #12
  %0 = getelementptr inbounds i8, ptr %resources, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %str) #12
  %2 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %str, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %base) #12
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %base, align 8, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq) #12
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq, align 4, !annotation !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed) #12
  %5 = ptrtoint ptr %consumed to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %consumed, align 4
  %call = call i64 @memparse(ptr noundef %device, ptr noundef nonnull %str) #12
  %6 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %str, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %7, ptr noundef nonnull @.str, ptr noundef nonnull %base, ptr noundef nonnull %irq, ptr noundef nonnull %consumed, ptr noundef nonnull @vm_cmdline_id, ptr noundef nonnull %consumed)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp = icmp slt i32 %call1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %8 = ptrtoint ptr %str to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %str, align 4
  %10 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %consumed, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %lor.lhs.false2, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp3 = icmp eq i32 %15, 0
  br i1 %cmp3, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %flags = getelementptr inbounds %struct.resource, ptr %resources, i32 0, i32 3
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 512, ptr %flags, align 4
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %base, align 8
  %conv6 = trunc i64 %18 to i32
  %19 = ptrtoint ptr %resources to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv6, ptr %resources, align 4
  %add = add i64 %18, %call
  %20 = trunc i64 %add to i32
  %conv8 = add i32 %20, -1
  %end = getelementptr inbounds %struct.resource, ptr %resources, i32 0, i32 1
  %21 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv8, ptr %end, align 4
  %arrayidx10 = getelementptr inbounds [2 x %struct.resource], ptr %resources, i32 0, i32 1
  %flags11 = getelementptr inbounds [2 x %struct.resource], ptr %resources, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %flags11 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1024, ptr %flags11, align 4
  %end13 = getelementptr inbounds [2 x %struct.resource], ptr %resources, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %end13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %15, ptr %end13, align 4
  %24 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %15, ptr %arrayidx10, align 4
  %.b = load i1, ptr @vm_cmdline_parent_registered, align 4
  br i1 %.b, label %if.end.do.end26_crit_edge, label %if.then17

if.end.do.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26

if.then17:                                        ; preds = %if.end
  %call18 = call i32 @device_register(ptr noundef nonnull @vm_cmdline_parent) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %do.end

do.end:                                           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #15
  br label %cleanup

if.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vm_cmdline_parent_registered, align 4
  br label %do.end26

do.end26:                                         ; preds = %if.end22, %if.end.do.end26_crit_edge
  %25 = load i32, ptr @vm_cmdline_id, align 4
  %26 = ptrtoint ptr %resources to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %resources, align 4
  %conv30 = zext i32 %27 to i64
  %28 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end, align 4
  %conv33 = zext i32 %29 to i64
  %30 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx10, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %25, i64 noundef %conv30, i64 noundef %conv33, i32 noundef %31) #15
  %32 = load i32, ptr @vm_cmdline_id, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr @vm_cmdline_id, align 4
  %call37 = call fastcc ptr @platform_device_register_resndata(i32 noundef %32, ptr noundef nonnull %resources)
  %cmp.i.i = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  %33 = ptrtoint ptr %call37 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %33, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.end26, %do.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.end26 ], [ %call18, %do.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %base) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %str) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resources) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_cmdline_get(ptr noundef %buffer, ptr nocapture noundef readnone %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buffer, align 1
  %call = tail call i32 @device_for_each_child(ptr noundef nonnull @vm_cmdline_parent, ptr noundef %buffer, ptr noundef nonnull @vm_cmdline_get_device) #12
  %call1 = tail call i32 @strlen(ptr noundef %buffer) #16
  %add = add i32 %call1, 1
  ret i32 %add
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_resndata(i32 noundef %id, ptr noundef %res) unnamed_addr #6 align 64 {
entry:
  %pdevinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #12
  %0 = getelementptr inbounds i8, ptr %pdevinfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @vm_cmdline_parent, ptr %pdevinfo, align 8
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 2
  %4 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %of_node_reused, align 8
  %name2 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.7, ptr %name2, align 4
  %id3 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %id3, align 8
  %res4 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5
  %7 = ptrtoint ptr %res4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %res, ptr %res4, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 6
  %8 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_res, align 8
  %data5 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7
  %9 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %data5, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8
  %10 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %size_data, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9
  %11 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dma_mask, align 8
  %properties = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 10
  %12 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %properties, align 8
  %call = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #12
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_cmdline_get_device(ptr nocapture noundef readonly %dev, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %data) #16
  %add.ptr1 = getelementptr i8, ptr %data, i32 %call
  %sub = sub i32 4096, %call
  %resource = getelementptr i8, ptr %dev, i32 952
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 8
  %end = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub4 = sub i32 %3, %5
  %conv = zext i32 %sub4 to i64
  %add = add nuw nsw i64 %conv, 1
  %conv8 = zext i32 %5 to i64
  %arrayidx10 = getelementptr %struct.resource, ptr %1, i32 1
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 4
  %conv12 = zext i32 %7 to i64
  %id = getelementptr i8, ptr %dev, i32 -12
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr1, i32 noundef %sub, ptr noundef nonnull @.str.9, i64 noundef %add, i64 noundef %conv8, i64 noundef %conv12, i32 noundef %9)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_mmio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1128, i32 noundef 3520) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 6
  %parent = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 6, i32 35
  %1 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @virtio_mmio_release_dev, ptr %release, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @virtio_mmio_config_ops, ptr %config, align 8
  %pdev6 = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %pdev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev6, align 8
  %virtqueues = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %virtqueues to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %virtqueues, ptr %virtqueues, align 4
  %prev.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %virtqueues, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @virtio_mmio_probe.__key, i16 noundef signext 3) #12
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call8) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 1986622068, i32 %8)
  %cmp.not = icmp eq i32 %8, 1986622068
  br i1 %cmp.not, label %if.end23, label %do.end21

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %9) #15
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr27 = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #12, !srcloc !85
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !87
  %version = getelementptr inbounds %struct.virtio_mmio_device, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp32 = icmp eq i32 %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp34 = icmp ugt i32 %13, 2
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %13) #15
  br label %cleanup

if.end41:                                         ; preds = %if.end23
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr45 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #12, !srcloc !85
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !88
  %id = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 7
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp53 = icmp eq i32 %17, 0
  br i1 %cmp53, label %if.end41.cleanup_crit_edge, label %if.end55

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end55:                                         ; preds = %if.end41
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr59 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #12, !srcloc !85
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !89
  %vendor = getelementptr inbounds %struct.virtio_device, ptr %call.i, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %vendor to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %vendor, align 4
  %25 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp66 = icmp eq i32 %26, 1
  br i1 %cmp66, label %do.body68, label %if.else

do.body68:                                        ; preds = %if.end55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !90
  tail call void @arm_heavy_mb() #12
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr72 = getelementptr i8, ptr %28, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 1048576) #12, !srcloc !91
  %call74 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then76, label %do.body68.if.then84_crit_edge

do.body68.if.then84_crit_edge:                    ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

if.then76:                                        ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #14
  %call78 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 17592186044415) #12
  br label %if.end94

if.else:                                          ; preds = %if.end55
  %call.i146 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp.i147 = icmp eq i32 %call.i146, 0
  br i1 %cmp.i147, label %if.then.i, label %if.else.if.then84_crit_edge

if.else.if.then84_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef -1) #12
  br label %if.end94

if.then84:                                        ; preds = %if.else.if.then84_crit_edge, %do.body68.if.then84_crit_edge
  %call.i148 = tail call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i148)
  %cmp.i149 = icmp eq i32 %call.i148, 0
  br i1 %cmp.i149, label %dma_set_mask_and_coherent.exit152.thread, label %do.end92

dma_set_mask_and_coherent.exit152.thread:         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i150 = tail call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #12
  br label %if.end94

do.end92:                                         ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #15
  br label %if.end94

if.end94:                                         ; preds = %do.end92, %dma_set_mask_and_coherent.exit152.thread, %if.then.i, %if.then76
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call96 = tail call i32 @register_virtio_device(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %if.end94.cleanup_crit_edge, label %if.then98

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %dev2) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %if.end94.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %do.end38, %do.end21, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then11 ], [ -19, %do.end21 ], [ -6, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ %call96, %if.then98 ], [ 0, %if.end94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_mmio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_virtio_device(ptr noundef %1) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_mmio_release_dev(ptr noundef %_d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %_d, i32 -96
  %pdev4 = getelementptr i8, ptr %_d, i32 968
  %0 = ptrtoint ptr %pdev4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev4, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_get(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 256
  %version = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 3
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp368.not = icmp eq i32 %len, 0
  br i1 %cmp368.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %offset
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.069 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %i.069
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5) #12, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !93
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.069
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.069, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 4, label %sw.bb21
    i32 8, label %sw.bb28
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr10 = getelementptr i8, ptr %add.ptr2, i32 %offset
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr10) #12, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !94
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %buf, align 1
  br label %cleanup

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr17 = getelementptr i8, ptr %add.ptr2, i32 %offset
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr17) #12, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !96
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %9, ptr %buf, align 1
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr24 = getelementptr i8, ptr %add.ptr2, i32 %offset
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !97
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %buf, align 1
  br label %cleanup

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr31 = getelementptr i8, ptr %add.ptr2, i32 %offset
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !98
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %buf, align 1
  %add.ptr36 = getelementptr i8, ptr %add.ptr31, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !99
  %add.ptr38 = getelementptr i8, ptr %buf, i32 4
  %16 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %15, ptr %add.ptr38, align 1
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 185, 0\0A.popsection", ""() #12, !srcloc !100
  unreachable

cleanup:                                          ; preds = %sw.bb28, %sw.bb21, %sw.bb14, %sw.bb, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_set(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 256
  %version = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 3
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp365.not = icmp eq i32 %len, 0
  br i1 %cmp365.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.lr.ph:                                    ; preds = %for.cond.preheader
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %offset
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.066 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !101
  tail call void @arm_heavy_mb() #12
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.066
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %add.ptr5 = getelementptr i8, ptr %add.ptr4, i32 %i.066
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr5, i8 %5) #12, !srcloc !102
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %len, label %do.body31 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 4, label %sw.bb15
    i32 8, label %sw.bb20
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %b.0.copyload = load i8, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !103
  tail call void @arm_heavy_mb() #12
  %add.ptr9 = getelementptr i8, ptr %add.ptr2, i32 %offset
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %b.0.copyload) #12, !srcloc !102
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %w.0.copyload = load i16, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !104
  tail call void @arm_heavy_mb() #12
  %add.ptr14 = getelementptr i8, ptr %add.ptr2, i32 %offset
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 %w.0.copyload) #12, !srcloc !105
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %l.0.copyload = load i32, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !106
  tail call void @arm_heavy_mb() #12
  %add.ptr19 = getelementptr i8, ptr %add.ptr2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %l.0.copyload) #12, !srcloc !91
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %l.0.copyload44 = load i32, ptr %buf, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !107
  tail call void @arm_heavy_mb() #12
  %add.ptr24 = getelementptr i8, ptr %add.ptr2, i32 %offset
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %l.0.copyload44) #12, !srcloc !91
  %add.ptr25 = getelementptr i8, ptr %buf, i32 4
  %11 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %l.0.copyload46 = load i32, ptr %add.ptr25, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !108
  tail call void @arm_heavy_mb() #12
  %add.ptr30 = getelementptr i8, ptr %add.ptr24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %l.0.copyload46) #12, !srcloc !91
  br label %cleanup

do.body31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 228, 0\0A.popsection", ""() #12, !srcloc !109
  unreachable

cleanup:                                          ; preds = %sw.bb20, %sw.bb15, %sw.bb10, %sw.bb, %do.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_generation(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 252
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #12, !srcloc !85
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !110
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.else ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vm_get_status(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #12, !srcloc !85
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !111
  %conv = trunc i32 %3 to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_set_status(ptr nocapture noundef readonly %vdev, i8 noundef zeroext %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %cmp = icmp eq i8 %status, 0
  br i1 %cmp, label %do.body3, label %do.body9, !prof !112

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_mmio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 254, 0\0A.popsection", ""() #12, !srcloc !113
  unreachable

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv = zext i8 %status to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !114
  tail call void @arm_heavy_mb() #12
  %0 = shl nuw i32 %conv, 24
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %2, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %0) #12, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_reset(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void @arm_heavy_mb() #12
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #12, !srcloc !91
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr nocapture noundef %vqs, ptr nocapture noundef readonly %callbacks, ptr nocapture noundef readonly %names, ptr noundef readonly %ctx, ptr nocapture noundef readnone %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %if.end.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @vm_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef %vdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nvqs)
  %cmp553.not = icmp eq i32 %nvqs, 0
  br i1 %cmp553.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tobool12.not = icmp eq ptr %ctx, null
  %base.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %version.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 3
  %lock.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 4
  %virtqueues.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %queue_idx.056 = phi i32 [ 0, %for.body.lr.ph ], [ %queue_idx.1, %for.inc.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %names, i32 %i.054
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx8 = getelementptr ptr, ptr %vqs, i32 %i.054
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx8, align 4
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %inc = add i32 %queue_idx.056, 1
  %arrayidx10 = getelementptr ptr, ptr %callbacks, i32 %i.054
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx10, align 4
  br i1 %tobool12.not, label %if.end9.do.body.i_crit_edge, label %cond.true

if.end9.do.body.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx13 = getelementptr i8, ptr %ctx, i32 %i.054
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx13, align 1, !range !116
  %13 = zext i8 %12 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %cond.true, %if.end9.do.body.i_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ 0, %if.end9.do.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool15 = icmp ne i32 %cond, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !117
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %queue_idx.056) #12
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %14) #12, !srcloc !91
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp eq i32 %20, 1
  %cond.i = select i1 %cmp.i, i32 64, i32 68
  %add.ptr3.i = getelementptr i8, ptr %18, i32 %cond.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !118
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool6.not.i = icmp eq i32 %21, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %do.body.i.error_available.i_crit_edge

do.body.i.error_available.i_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_available.i

if.end8.i:                                        ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 12) #17
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %if.end8.i.error_available.i_crit_edge, label %if.end12.i

if.end8.i.error_available.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_available.i

if.end12.i:                                       ; preds = %if.end8.i
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !119
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp20.i = icmp eq i32 %25, 0
  br i1 %cmp20.i, label %if.end12.i.error_new_virtqueue.i_crit_edge, label %if.end22.i

if.end12.i.error_new_virtqueue.i_crit_edge:       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_new_virtqueue.i

if.end22.i:                                       ; preds = %if.end12.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #12
  %call24.i = tail call ptr @vring_create_virtqueue(i32 noundef %queue_idx.056, i32 noundef %26, i32 noundef 4096, ptr noundef %vdev, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %tobool15, ptr noundef nonnull @vm_notify, ptr noundef %10, ptr noundef nonnull %7) #12
  %tobool25.not.i = icmp eq ptr %call24.i, null
  br i1 %tobool25.not.i, label %if.end22.i.error_new_virtqueue.i_crit_edge, label %do.body28.i

if.end22.i.error_new_virtqueue.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_new_virtqueue.i

do.body28.i:                                      ; preds = %if.end22.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !120
  tail call void @arm_heavy_mb() #12
  %call31.i = tail call i32 @virtqueue_get_vring_size(ptr noundef nonnull %call24.i) #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %call31.i) #12
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %27) #12, !srcloc !91
  %30 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp35.i = icmp eq i32 %31, 1
  %call37.i = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %call24.i) #12
  br i1 %cmp35.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  %shr.i = lshr i32 %call37.i, 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void @arm_heavy_mb() #12
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 1048576) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !122
  tail call void @arm_heavy_mb() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %shr.i) #12
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr55.i = getelementptr i8, ptr %36, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %34) #12, !srcloc !91
  br label %if.end106.i

if.else.i:                                        ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !123
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %call37.i) #12
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr63.i = getelementptr i8, ptr %39, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %37) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !124
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr70.i = getelementptr i8, ptr %41, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 0) #12, !srcloc !91
  %call71.i = tail call i32 @virtqueue_get_avail_addr(ptr noundef nonnull %call24.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !125
  tail call void @arm_heavy_mb() #12
  %42 = tail call i32 @llvm.bswap.i32(i32 %call71.i) #12
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr78.i = getelementptr i8, ptr %44, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78.i, i32 %42) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !126
  tail call void @arm_heavy_mb() #12
  %45 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i, align 4
  %add.ptr85.i = getelementptr i8, ptr %46, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 0) #12, !srcloc !91
  %call86.i = tail call i32 @virtqueue_get_used_addr(ptr noundef nonnull %call24.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !127
  tail call void @arm_heavy_mb() #12
  %47 = tail call i32 @llvm.bswap.i32(i32 %call86.i) #12
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i, align 4
  %add.ptr93.i = getelementptr i8, ptr %49, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %47) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !128
  tail call void @arm_heavy_mb() #12
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr100.i = getelementptr i8, ptr %51, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100.i, i32 0) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !129
  tail call void @arm_heavy_mb() #12
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr105.i = getelementptr i8, ptr %53, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 16777216) #12, !srcloc !91
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.else.i, %if.then36.i
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %call24.i, i32 0, i32 6
  %54 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call7.i.i, ptr %priv.i, align 4
  %55 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call24.i, ptr %call7.i.i, align 8
  %call114.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %virtqueues.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %virtqueues.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %virtqueues.i, ptr noundef %57) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end106.i.list_add.exit.i_crit_edge

if.end106.i.list_add.exit.i_crit_edge:            ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %59 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %57, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %call7.i.i, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %virtqueues.i, ptr %prev3.i.i.i, align 8
  %61 = ptrtoint ptr %virtqueues.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %node.i, ptr %virtqueues.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end106.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call114.i) #12
  br label %vm_setup_vq.exit

error_new_virtqueue.i:                            ; preds = %if.end22.i.error_new_virtqueue.i_crit_edge, %if.end12.i.error_new_virtqueue.i_crit_edge
  %err.1.i = phi i32 [ -2, %if.end12.i.error_new_virtqueue.i_crit_edge ], [ -12, %if.end22.i.error_new_virtqueue.i_crit_edge ]
  %62 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp121.i = icmp eq i32 %63, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  br i1 %cmp121.i, label %do.body124.i, label %do.body130.i

do.body124.i:                                     ; preds = %error_new_virtqueue.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr128.i = getelementptr i8, ptr %65, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128.i, i32 0) #12, !srcloc !91
  br label %if.end168.i

do.body130.i:                                     ; preds = %error_new_virtqueue.i
  %add.ptr134.i = getelementptr i8, ptr %65, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr134.i, i32 0) #12, !srcloc !91
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr138.i = getelementptr i8, ptr %67, i32 68
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138.i) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool142.not.i = icmp eq i32 %68, 0
  br i1 %tobool142.not.i, label %do.body130.i.if.end168.i_crit_edge, label %do.end154.i, !prof !131

do.body130.i.if.end168.i_crit_edge:               ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end168.i

do.end154.i:                                      ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 450, i32 noundef 9, ptr noundef null) #12
  br label %if.end168.i

if.end168.i:                                      ; preds = %do.end154.i, %do.body130.i.if.end168.i_crit_edge, %do.body124.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %error_available.i

error_available.i:                                ; preds = %if.end168.i, %if.end8.i.error_available.i_crit_edge, %do.body.i.error_available.i_crit_edge
  %err.2.i = phi i32 [ %err.1.i, %if.end168.i ], [ -2, %do.body.i.error_available.i_crit_edge ], [ -12, %if.end8.i.error_available.i_crit_edge ]
  %69 = inttoptr i32 %err.2.i to ptr
  br label %vm_setup_vq.exit

vm_setup_vq.exit:                                 ; preds = %error_available.i, %list_add.exit.i
  %retval.0.i51 = phi ptr [ %69, %error_available.i ], [ %call24.i, %list_add.exit.i ]
  %arrayidx17 = getelementptr ptr, ptr %vqs, i32 %i.054
  %70 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %retval.0.i51, ptr %arrayidx17, align 4
  %cmp.i52 = icmp ugt ptr %retval.0.i51, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i52, label %if.then20, label %vm_setup_vq.exit.for.inc_crit_edge

vm_setup_vq.exit.for.inc_crit_edge:               ; preds = %vm_setup_vq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then20:                                        ; preds = %vm_setup_vq.exit
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17.le = getelementptr ptr, ptr %vqs, i32 %i.054
  tail call void @vm_del_vqs(ptr noundef %vdev)
  %71 = ptrtoint ptr %arrayidx17.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx17.le, align 4
  %73 = ptrtoint ptr %72 to i32
  br label %cleanup

for.inc:                                          ; preds = %vm_setup_vq.exit.for.inc_crit_edge, %if.then7
  %queue_idx.1 = phi i32 [ %inc, %vm_setup_vq.exit.for.inc_crit_edge ], [ %queue_idx.056, %if.then7 ]
  %inc24 = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc24, %nvqs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20, %for.cond.preheader.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %73, %if.then20 ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %dev_name.exit.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vm_del_vqs(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vqs = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vqs, align 8
  %cmp.not22 = icmp eq ptr %1, %vqs
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %vm_del_vq.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %vq.023 = phi ptr [ %n.0, %vm_del_vq.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %vq.023 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %vq.023, align 4
  %vdev.i = getelementptr inbounds %struct.virtqueue, ptr %vq.023, i32 0, i32 3
  %3 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vdev.i, align 4
  %priv.i = getelementptr inbounds %struct.virtqueue, ptr %vq.023, i32 0, i32 6
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 4
  %index1.i = getelementptr inbounds %struct.virtqueue, ptr %vq.023, i32 0, i32 4
  %7 = ptrtoint ptr %index1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index1.i, align 4
  %lock.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %4, i32 0, i32 4
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %node.i = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %6, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.list_del.exit.i_crit_edge

for.body.list_del.exit.i_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virtio_mmio_vq_info, ptr %6, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !132
  tail call void @arm_heavy_mb() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %8) #12
  %base.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %4, i32 0, i32 2
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %17) #12, !srcloc !91
  %version.i = getelementptr inbounds %struct.virtio_mmio_device, ptr %4, i32 0, i32 3
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp12.i = icmp eq i32 %21, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  br i1 %cmp12.i, label %do.body14.i, label %do.body19.i

do.body14.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr18.i = getelementptr i8, ptr %23, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 0) #12, !srcloc !91
  br label %vm_del_vq.exit

do.body19.i:                                      ; preds = %list_del.exit.i
  %add.ptr23.i = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 0) #12, !srcloc !91
  %24 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %25, i32 68
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %do.body19.i.vm_del_vq.exit_crit_edge, label %do.end40.i, !prof !131

do.body19.i.vm_del_vq.exit_crit_edge:             ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vm_del_vq.exit

do.end40.i:                                       ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 329, i32 noundef 9, ptr noundef null) #12
  br label %vm_del_vq.exit

vm_del_vq.exit:                                   ; preds = %do.end40.i, %do.body19.i.vm_del_vq.exit_crit_edge, %do.body14.i
  tail call void @vring_del_virtqueue(ptr noundef %vq.023) #12
  tail call void @kfree(ptr noundef %6) #12
  %cmp.not = icmp eq ptr %n.0, %vqs
  br i1 %cmp.not, label %vm_del_vq.exit.for.end_crit_edge, label %vm_del_vq.exit.for.body_crit_edge

vm_del_vq.exit.for.body_crit_edge:                ; preds = %vm_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

vm_del_vq.exit.for.end_crit_edge:                 ; preds = %vm_del_vq.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %vm_del_vq.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %pdev = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 1
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 8
  %call = tail call i32 @platform_get_irq(ptr noundef %28, i32 noundef 0) #12
  %call15 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %vdev) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vm_get_features(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !134
  tail call void @arm_heavy_mb() #12
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #12, !srcloc !91
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !136
  tail call void @arm_heavy_mb() #12
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 0) #12, !srcloc !91
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %10 = zext i32 %4 to i64
  %11 = zext i32 %9 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  ret i64 %14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_finalize_features(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vring_transport_features(ptr noundef %vdev) #12
  %version = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %land.lhs.true, label %entry.do.body1_crit_edge

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

land.lhs.true:                                    ; preds = %entry
  %features.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i, align 8
  %and.i = and i64 %3, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool13.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool13.i.not, label %do.end, label %land.lhs.true.do.body1_crit_edge

land.lhs.true.do.body1_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #15
  br label %cleanup

do.body1:                                         ; preds = %land.lhs.true.do.body1_crit_edge, %entry.do.body1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !138
  tail call void @arm_heavy_mb() #12
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @arm_heavy_mb() #12
  %features = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %6 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features, align 8
  %shr = lshr i64 %7, 32
  %conv = trunc i64 %shr to i32
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %8) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !140
  tail call void @arm_heavy_mb() #12
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #12, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !141
  tail call void @arm_heavy_mb() #12
  %13 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features, align 8
  %conv19 = trunc i64 %14 to i32
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv19)
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %15) #12, !srcloc !91
  br label %cleanup

cleanup:                                          ; preds = %do.body1, %do.end
  %retval.0 = phi i32 [ 0, %do.body1 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @vm_bus_name(ptr nocapture noundef readonly %vdev) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vm_get_shm_region(ptr nocapture noundef readonly %vdev, ptr nocapture noundef writeonly %region, i8 noundef zeroext %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !142
  tail call void @arm_heavy_mb() #12
  %conv = zext i8 %id to i32
  %0 = shl nuw i32 %conv, 24
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %vdev, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %2, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %0) #12, !srcloc !91
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %4, i32 176
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !143
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %7, i32 180
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %9 = zext i32 %8 to i64
  %10 = zext i32 %5 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or i64 %11, %9
  %13 = tail call i64 @llvm.bswap.i64(i64 %12)
  %len15 = getelementptr inbounds %struct.virtio_shm_region, ptr %region, i32 0, i32 1
  %14 = ptrtoint ptr %len15 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %len15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %12)
  %cmp = icmp eq i64 %12, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 184
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !145
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr28 = getelementptr i8, ptr %19, i32 188
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #12, !srcloc !85
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !146
  %21 = zext i32 %20 to i64
  %22 = zext i32 %17 to i64
  %23 = shl nuw i64 %22, 32
  %24 = or i64 %23, %21
  %25 = tail call i64 @llvm.bswap.i64(i64 %24)
  %26 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %region, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %27 = xor i1 %cmp, true
  ret i1 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_interrupt(i32 noundef %irq, ptr noundef %opaque) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %opaque, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 96
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #12, !srcloc !85
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !148
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #12, !srcloc !91
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !prof !131

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @virtio_config_changed(ptr noundef %opaque) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and6 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end38_crit_edge, label %do.body16, !prof !112

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

do.body16:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.virtio_mmio_device, ptr %opaque, i32 0, i32 4
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %virtqueues = getelementptr inbounds %struct.virtio_mmio_device, ptr %opaque, i32 0, i32 5
  %6 = ptrtoint ptr %virtqueues to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn50 = load ptr, ptr %virtqueues, align 4
  %cmp27.not51 = icmp eq ptr %.pn50, %virtqueues
  br i1 %cmp27.not51, label %do.body16.for.end_crit_edge, label %do.body16.for.body_crit_edge

do.body16.for.body_crit_edge:                     ; preds = %do.body16
  br label %for.body

do.body16.for.end_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body16.for.body_crit_edge
  %.pn53 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn50, %do.body16.for.body_crit_edge ]
  %ret.152 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ %ret.0, %do.body16.for.body_crit_edge ]
  %info.0 = getelementptr i8, ptr %.pn53, i32 -4
  %7 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info.0, align 4
  %call31 = tail call i32 @vring_interrupt(i32 noundef %irq, ptr noundef %8) #12
  %or = or i32 %call31, %ret.152
  %9 = ptrtoint ptr %.pn53 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn53, align 4
  %cmp27.not = icmp eq ptr %.pn, %virtqueues
  br i1 %cmp27.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body16.for.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.0, %do.body16.for.end_crit_edge ], [ %or, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call19) #12
  br label %if.end38

if.end38:                                         ; preds = %for.end, %if.end.if.end38_crit_edge
  %ret.2 = phi i32 [ %ret.1.lcssa, %for.end ], [ %ret.0, %if.end.if.end38_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_config_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vring_interrupt(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vm_notify(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !149
  tail call void @arm_heavy_mb() #12
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %base = getelementptr inbounds %struct.virtio_mmio_device, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %4) #12, !srcloc !91
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_avail_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_used_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vm_unregister_cmdline_device(ptr noundef %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__param_device, !1, !"__param_device", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_mmio.c", i32 737, i32 1}
!2 = !{ptr @__initcall__kmod_virtio_mmio__249_802_virtio_mmio_init6, !3, !"__initcall__kmod_virtio_mmio__249_802_virtio_mmio_init6", i1 false, i1 false}
!3 = !{!"../drivers/virtio/virtio_mmio.c", i32 802, i32 1}
!4 = !{ptr @__exitcall_virtio_mmio_exit, !5, !"__exitcall_virtio_mmio_exit", i1 false, i1 false}
!5 = !{!"../drivers/virtio/virtio_mmio.c", i32 803, i32 1}
!6 = !{ptr @__UNIQUE_ID_author250, !7, !"__UNIQUE_ID_author250", i1 false, i1 false}
!7 = !{!"../drivers/virtio/virtio_mmio.c", i32 805, i32 1}
!8 = !{ptr @__UNIQUE_ID_description251, !9, !"__UNIQUE_ID_description251", i1 false, i1 false}
!9 = !{!"../drivers/virtio/virtio_mmio.c", i32 806, i32 1}
!10 = !{ptr @__UNIQUE_ID_file252, !11, !"__UNIQUE_ID_file252", i1 false, i1 false}
!11 = !{!"../drivers/virtio/virtio_mmio.c", i32 807, i32 1}
!12 = !{ptr @__UNIQUE_ID_license253, !11, !"__UNIQUE_ID_license253", i1 false, i1 false}
!13 = !{ptr @__param_str_device, !1, !"__param_str_device", i1 false, i1 false}
!14 = !{ptr @vm_cmdline_param_ops, !15, !"vm_cmdline_param_ops", i1 false, i1 false}
!15 = !{!"../drivers/virtio/virtio_mmio.c", i32 732, i32 38}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/virtio/virtio_mmio.c", i32 669, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/virtio/virtio_mmio.c", i32 691, i32 4}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vm_cmdline_set._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @vm_cmdline_set._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/virtio/virtio_mmio.c", i32 697, i32 2}
!26 = !{ptr @vm_cmdline_set._entry.4, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vm_cmdline_set._entry_ptr.6, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/virtio/virtio_mmio.c", i32 704, i32 4}
!30 = !{ptr @vm_cmdline_id, !31, !"vm_cmdline_id", i1 false, i1 false}
!31 = !{!"../drivers/virtio/virtio_mmio.c", i32 652, i32 12}
!32 = distinct !{null, !33, !"vm_cmdline_parent_registered", i1 false, i1 false}
!33 = !{!"../drivers/virtio/virtio_mmio.c", i32 651, i32 12}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/virtio/virtio_mmio.c", i32 648, i32 15}
!36 = !{ptr @vm_cmdline_parent, !37, !"vm_cmdline_parent", i1 false, i1 false}
!37 = !{!"../drivers/virtio/virtio_mmio.c", i32 647, i32 22}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/virtio/virtio_mmio.c", i32 716, i32 42}
!40 = !{ptr @virtio_mmio_driver, !41, !"virtio_mmio_driver", i1 false, i1 false}
!41 = !{!"../drivers/virtio/virtio_mmio.c", i32 781, i32 31}
!42 = !{ptr @virtio_mmio_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/virtio/virtio_mmio.c", i32 574, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/virtio/virtio_mmio.c", i32 583, i32 3}
!47 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @virtio_mmio_probe._entry, !46, !"_entry", i1 false, i1 false}
!51 = !{ptr @virtio_mmio_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/virtio/virtio_mmio.c", i32 590, i32 3}
!54 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @virtio_mmio_probe._entry.15, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @virtio_mmio_probe._entry_ptr.18, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/virtio/virtio_mmio.c", i32 622, i32 3}
!59 = !{ptr @virtio_mmio_probe._entry.19, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @virtio_mmio_probe._entry_ptr.21, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @virtio_mmio_config_ops, !62, !"virtio_mmio_config_ops", i1 false, i1 false}
!62 = !{!"../drivers/virtio/virtio_mmio.c", i32 531, i32 39}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/virtio/virtio_mmio.c", i32 404, i32 4}
!65 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @vm_setup_vq._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @vm_setup_vq._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/virtio/virtio_mmio.c", i32 132, i32 3}
!70 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vm_finalize_features._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @vm_finalize_features._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @virtio_mmio_match, !74, !"virtio_mmio_match", i1 false, i1 false}
!74 = !{!"../drivers/virtio/virtio_mmio.c", i32 767, i32 34}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{!"auto-init"}
!85 = !{i64 6890108}
!86 = !{i64 2154967056}
!87 = !{i64 2154969213}
!88 = !{i64 2154971383}
!89 = !{i64 2154971890}
!90 = !{i64 2154972187}
!91 = !{i64 6889690}
!92 = !{i64 6889888}
!93 = !{i64 2154904781}
!94 = !{i64 2154905005}
!95 = !{i64 6889270}
!96 = !{i64 2154906038}
!97 = !{i64 2154907083}
!98 = !{i64 2154908128}
!99 = !{i64 2154422967}
!100 = !{i64 2154908560, i64 2154909053, i64 2154908597, i64 2154908653, i64 2154908687, i64 2154908711, i64 2154908752, i64 2154908773, i64 2154908801, i64 2154908835}
!101 = !{i64 2154911327}
!102 = !{i64 6889493}
!103 = !{i64 2154911591}
!104 = !{i64 2154912029}
!105 = !{i64 6889070}
!106 = !{i64 2154912777}
!107 = !{i64 2154913525}
!108 = !{i64 2154914284}
!109 = !{i64 2154914904, i64 2154915397, i64 2154914941, i64 2154914997, i64 2154915031, i64 2154915055, i64 2154915096, i64 2154915117, i64 2154915145, i64 2154915179}
!110 = !{i64 2154917952}
!111 = !{i64 2154919747}
!112 = !{!"branch_weights", i32 1, i32 2000}
!113 = !{i64 2154921390, i64 2154921883, i64 2154921427, i64 2154921483, i64 2154921517, i64 2154921541, i64 2154921582, i64 2154921603, i64 2154921631, i64 2154921665}
!114 = !{i64 2154922869}
!115 = !{i64 2154924568}
!116 = !{i8 0, i8 2}
!117 = !{i64 2154946836}
!118 = !{i64 2154947666}
!119 = !{i64 2154948356}
!120 = !{i64 2154948679}
!121 = !{i64 2154951358}
!122 = !{i64 2154951803}
!123 = !{i64 2154952216}
!124 = !{i64 2154952649}
!125 = !{i64 2154953098}
!126 = !{i64 2154953531}
!127 = !{i64 2154953980}
!128 = !{i64 2154954413}
!129 = !{i64 2154954854}
!130 = !{i64 2154957056}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{i64 2154933151}
!133 = !{i64 2154935007}
!134 = !{i64 2154896552}
!135 = !{i64 2154897228}
!136 = !{i64 2154897449}
!137 = !{i64 2154898125}
!138 = !{i64 2154901725}
!139 = !{i64 2154902144}
!140 = !{i64 2154902615}
!141 = !{i64 2154903026}
!142 = !{i64 2154961534}
!143 = !{i64 2154962213}
!144 = !{i64 2154962717}
!145 = !{i64 2154963221}
!146 = !{i64 2154963725}
!147 = !{i64 2154927008}
!148 = !{i64 2154927234}
!149 = !{i64 2154926308}
