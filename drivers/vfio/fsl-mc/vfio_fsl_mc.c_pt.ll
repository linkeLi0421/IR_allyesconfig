; ModuleID = '/llk/IR_all_yes/drivers/vfio/fsl-mc/vfio_fsl_mc.c_pt.bc'
source_filename = "../drivers/vfio/fsl-mc/vfio_fsl_mc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fsl_mc_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vfio_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.vfio_fsl_mc_device = type { %struct.vfio_device, ptr, %struct.notifier_block, ptr, %struct.mutex, ptr }
%struct.vfio_device = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.refcount_struct, i32, %struct.completion, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fsl_mc_device = type { %struct.device, i64, i16, i32, i16, ptr, %struct.fsl_mc_obj_desc, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_mc_obj_desc = type { [16 x i8], i32, i16, i16, i16, i8, i8, i32, [16 x i8], i16 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.vfio_fsl_mc_region = type { i32, i32, i64, i32, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vfio_device_info = type { i32, i32, i32, i32, i32 }
%struct.vfio_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.vfio_irq_info = type { i32, i32, i32, i32 }
%struct.vfio_irq_set = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }

@vfio_fsl_mc_driver = internal global { %struct.fsl_mc_driver, [60 x i8] } { %struct.fsl_mc_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr @vfio_fsl_mc_probe, ptr @vfio_fsl_mc_remove, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_vfio_fsl_mc__232_603_vfio_fsl_mc_driver_init6 = internal global ptr @vfio_fsl_mc_driver_init, section ".initcall6.init", align 4
@__exitcall_vfio_fsl_mc_driver_exit = internal global ptr @vfio_fsl_mc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file233 = internal constant [49 x i8] c"vfio_fsl_mc.file=drivers/vfio/fsl-mc/vfio-fsl-mc\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [33 x i8] c"vfio_fsl_mc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description235 = internal constant [73 x i8] c"vfio_fsl_mc.description=VFIO for FSL-MC devices - User Level meta-driver\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vfio-fsl-mc\00", [20 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_ops = internal constant { %struct.vfio_device_ops, [60 x i8] } { %struct.vfio_device_ops { ptr @.str, ptr @vfio_fsl_mc_open_device, ptr @vfio_fsl_mc_close_device, ptr @vfio_fsl_mc_read, ptr @vfio_fsl_mc_write, ptr @vfio_fsl_mc_ioctl, ptr @vfio_fsl_mc_mmap, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&vdev->igate\00", [19 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 548, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VFIO_FSL_MC: Failed to add to vfio group\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vfio_fsl_mc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/vfio/fsl-mc/vfio_fsl_mc.c\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_probe._entry_ptr = internal global ptr @vfio_fsl_mc_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vfio_fsl_mc_close_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 113, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VFIO_FLS_MC: reset device has failed (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vfio_fsl_mc_close_device\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_close_device._entry_ptr = internal global ptr @vfio_fsl_mc_close_device._entry, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_mc_bus_dprc_type = external dso_local global %struct.device_type, align 4
@fsl_mc_bus_type = external dso_local global %struct.bus_type, align 4
@vfio_fsl_mc_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 483, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"VFIO_FSL_MC: Failed to setup DPRC (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vfio_fsl_mc_init_device\00", [40 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_init_device._entry_ptr = internal global ptr @vfio_fsl_mc_init_device._entry, section ".printk_index", align 4
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_bus_notifier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 446, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"VFIO_FSL_MC: Setting driver override for device in dprc %s failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"vfio_fsl_mc_bus_notifier\00", [39 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_bus_notifier._entry_ptr = internal global ptr @vfio_fsl_mc_bus_notifier._entry, section ".printk_index", align 4
@vfio_fsl_mc_bus_notifier._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 449, ptr @.str.20, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"VFIO_FSL_MC: Setting driver override for device in dprc %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_bus_notifier._entry_ptr.21 = internal global ptr @vfio_fsl_mc_bus_notifier._entry.18, section ".printk_index", align 4
@vfio_fsl_mc_bus_notifier._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.4, i32 456, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"VFIO_FSL_MC: Object %s bound to driver %s while DPRC bound to vfio-fsl-mc\0A\00", [53 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_bus_notifier._entry_ptr.24 = internal global ptr @vfio_fsl_mc_bus_notifier._entry.22, section ".printk_index", align 4
@vfio_fsl_mc_scan_container._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VFIO_FSL_MC: Container scanning failed (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vfio_fsl_mc_scan_container\00", [37 x i8] zeroinitializer }, align 32
@vfio_fsl_mc_scan_container._entry_ptr = internal global ptr @vfio_fsl_mc_scan_container._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 15211, i64 15212, i64 15213, i64 15214, i64 15215]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"vfio_fsl_mc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 584, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 588, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"vfio_fsl_mc_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 421, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 533, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 548, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 112, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 174, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 483, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 442, i32 51 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 445, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 448, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 455, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [37 x i8] c"../drivers/vfio/fsl-mc/vfio_fsl_mc.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 502, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_description235, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_vfio_fsl_mc_driver_exit, ptr @__initcall__kmod_vfio_fsl_mc__232_603_vfio_fsl_mc_driver_init6, ptr @vfio_fsl_mc_bus_notifier._entry, ptr @vfio_fsl_mc_bus_notifier._entry.18, ptr @vfio_fsl_mc_bus_notifier._entry.22, ptr @vfio_fsl_mc_bus_notifier._entry_ptr, ptr @vfio_fsl_mc_bus_notifier._entry_ptr.21, ptr @vfio_fsl_mc_bus_notifier._entry_ptr.24, ptr @vfio_fsl_mc_close_device._entry, ptr @vfio_fsl_mc_close_device._entry_ptr, ptr @vfio_fsl_mc_driver_exit, ptr @vfio_fsl_mc_init_device._entry, ptr @vfio_fsl_mc_init_device._entry_ptr, ptr @vfio_fsl_mc_probe._entry, ptr @vfio_fsl_mc_probe._entry_ptr, ptr @vfio_fsl_mc_scan_container._entry, ptr @vfio_fsl_mc_scan_container._entry_ptr, ptr @vfio_fsl_mc_driver, ptr @.str, ptr @vfio_fsl_mc_ops, ptr @vfio_fsl_mc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_driver to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_close_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_bus_notifier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_bus_notifier._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_bus_notifier._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfio_fsl_mc_scan_container._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vfio_fsl_mc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @fsl_mc_driver_unregister(ptr noundef nonnull @vfio_fsl_mc_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__fsl_mc_driver_register(ptr noundef nonnull @vfio_fsl_mc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_probe(ptr noundef %mc_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @vfio_init_group_dev(ptr noundef nonnull %call7.i.i, ptr noundef %mc_dev, ptr noundef nonnull @vfio_fsl_mc_ops) #9
  %mc_dev3 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %mc_dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mc_dev, ptr %mc_dev3, align 8
  %igate = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %igate, ptr noundef nonnull @.str.1, ptr noundef nonnull @vfio_fsl_mc_probe.__key) #9
  %type.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %3, @fsl_mc_bus_dprc_type
  br i1 %cmp.i, label %if.end.if.end12_crit_edge, label %if.else

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end.if.end12_crit_edge
  %.sink = phi ptr [ %5, %if.else ], [ %mc_dev, %if.end.if.end12_crit_edge ]
  %call11 = tail call i32 @vfio_assign_device_set(ptr noundef nonnull %call7.i.i, ptr noundef %.sink) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.out_uninit_crit_edge

if.end12.out_uninit_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit

if.end15:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %mc_dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_dev3, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %9, @fsl_mc_bus_dprc_type
  br i1 %cmp.i.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %parent.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent.i, align 8
  %mc_io.i = getelementptr inbounds %struct.fsl_mc_device, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %mc_io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_io.i, align 4
  %mc_io2.i = getelementptr inbounds %struct.fsl_mc_device, ptr %7, i32 0, i32 5
  %14 = ptrtoint ptr %mc_io2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mc_io2.i, align 4
  br label %if.end19

if.end.i:                                         ; preds = %if.end15
  %nb.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %nb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vfio_fsl_mc_bus_notifier, ptr %nb.i, align 4
  %call4.i = tail call i32 @bus_register_notifier(ptr noundef nonnull @fsl_mc_bus_type, ptr noundef %nb.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.out_uninit_crit_edge

if.end.i.out_uninit_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = tail call i32 @dprc_setup(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end19_crit_edge, label %do.end.i

if.end6.i.if.end19_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.13, i32 noundef %call7.i) #13
  br label %out_uninit.sink.split

if.end19:                                         ; preds = %if.end6.i.if.end19_crit_edge, %if.then.i
  %call21 = tail call i32 @vfio_register_group_dev(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end27, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.2) #13
  br label %out_device

if.end27:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type.i, align 4
  %cmp.i.i60 = icmp eq ptr %17, @fsl_mc_bus_dprc_type
  br i1 %cmp.i.i60, label %if.end.i62, label %if.end27.if.end31_crit_edge

if.end27.if.end31_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end.i62:                                       ; preds = %if.end27
  %call1.i = tail call i32 @dprc_scan_container(ptr noundef %mc_dev, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i61 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i61, label %if.end.i62.if.end31_crit_edge, label %out_group_dev

if.end.i62.if.end31_crit_edge:                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.end.i62.if.end31_crit_edge, %if.end27.if.end31_crit_edge
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

out_group_dev:                                    ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %mc_dev, ptr noundef nonnull @.str.25, i32 noundef %call1.i) #13
  tail call void @dprc_remove_devices(ptr noundef %mc_dev, ptr noundef null, i32 noundef 0) #9
  tail call void @vfio_unregister_group_dev(ptr noundef nonnull %call7.i.i) #9
  br label %out_device

out_device:                                       ; preds = %out_group_dev, %do.end26
  %ret.1 = phi i32 [ %call21, %do.end26 ], [ %call1.i, %out_group_dev ]
  %19 = ptrtoint ptr %mc_dev3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_dev3, align 8
  %type.i.i66 = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %type.i.i66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %type.i.i66, align 4
  %cmp.i.i67 = icmp eq ptr %22, @fsl_mc_bus_dprc_type
  br i1 %cmp.i.i67, label %if.end.i69, label %out_device.out_uninit_crit_edge

out_device.out_uninit_crit_edge:                  ; preds = %out_device
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_uninit

if.end.i69:                                       ; preds = %out_device
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @dprc_cleanup(ptr noundef %20) #9
  %nb.i68 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %call7.i.i, i32 0, i32 2
  br label %out_uninit.sink.split

out_uninit.sink.split:                            ; preds = %if.end.i69, %do.end.i
  %nb.i68.sink = phi ptr [ %nb.i68, %if.end.i69 ], [ %nb.i, %do.end.i ]
  %ret.2.ph = phi i32 [ %ret.1, %if.end.i69 ], [ %call7.i, %do.end.i ]
  %call3.i = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @fsl_mc_bus_type, ptr noundef %nb.i68.sink) #9
  br label %out_uninit

out_uninit:                                       ; preds = %out_uninit.sink.split, %out_device.out_uninit_crit_edge, %if.end.i.out_uninit_crit_edge, %if.end12.out_uninit_crit_edge
  %ret.2 = phi i32 [ %call11, %if.end12.out_uninit_crit_edge ], [ %call4.i, %if.end.i.out_uninit_crit_edge ], [ %ret.1, %out_device.out_uninit_crit_edge ], [ %ret.2.ph, %out_uninit.sink.split ]
  tail call void @vfio_uninit_group_dev(ptr noundef nonnull %call7.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_uninit, %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_uninit ], [ 0, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_remove(ptr noundef %mc_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %mc_dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @vfio_unregister_group_dev(ptr noundef %1) #9
  %igate = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %1, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %igate) #9
  tail call void @dprc_remove_devices(ptr noundef %mc_dev, ptr noundef null, i32 noundef 0) #9
  %mc_dev1.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_dev1.i, align 4
  %type.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @fsl_mc_bus_dprc_type
  br i1 %cmp.i.i, label %if.end.i, label %entry.vfio_fsl_uninit_device.exit_crit_edge

entry.vfio_fsl_uninit_device.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfio_fsl_uninit_device.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2.i = tail call i32 @dprc_cleanup(ptr noundef %3) #9
  %nb.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %1, i32 0, i32 2
  %call3.i = tail call i32 @bus_unregister_notifier(ptr noundef nonnull @fsl_mc_bus_type, ptr noundef %nb.i) #9
  br label %vfio_fsl_uninit_device.exit

vfio_fsl_uninit_device.exit:                      ; preds = %if.end.i, %entry.vfio_fsl_uninit_device.exit_crit_edge
  tail call void @vfio_uninit_group_dev(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_init_group_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_assign_device_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_register_group_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_unregister_group_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_uninit_group_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_open_device(ptr nocapture noundef %core_vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 6
  %2 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %region_count, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 24
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %4, i32 noundef 3520) #14
  %regions = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %5 = ptrtoint ptr %regions to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i, ptr %regions, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp83.not = icmp eq i8 %3, 0
  br i1 %cmp83.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regions4 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 7
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end48.for.body_crit_edge, %for.body.lr.ph
  %i.084 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end48.for.body_crit_edge ]
  %6 = ptrtoint ptr %regions4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regions4, align 4
  %arrayidx = getelementptr %struct.resource, ptr %7, i32 %i.084
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %9, @fsl_mc_bus_dprc_type
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %conv7 = zext i32 %11 to i64
  %12 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regions, align 4
  %addr = getelementptr %struct.vfio_fsl_mc_region, ptr %13, i32 %i.084, i32 2
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv7, ptr %addr, align 8
  %end.i = getelementptr %struct.resource, ptr %7, i32 %i.084, i32 1
  %15 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %end.i, align 4
  %17 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %16, 1
  %add.i = sub i32 %sub.i, %17
  %18 = load ptr, ptr %regions, align 4
  %size = getelementptr %struct.vfio_fsl_mc_region, ptr %18, i32 %i.084, i32 3
  %19 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add.i, ptr %size, align 8
  %20 = load ptr, ptr %regions4, align 4
  %flags = getelementptr %struct.resource, ptr %20, i32 %i.084, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 255
  %23 = load ptr, ptr %regions, align 4
  %type = getelementptr %struct.vfio_fsl_mc_region, ptr %23, i32 %i.084, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %type, align 4
  br i1 %cmp.i, label %for.body.if.end33_crit_edge, label %land.lhs.true

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true:                                    ; preds = %for.body
  %25 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regions, align 4
  %arrayidx19 = getelementptr %struct.vfio_fsl_mc_region, ptr %26, i32 %i.084
  %addr20 = getelementptr %struct.vfio_fsl_mc_region, ptr %26, i32 %i.084, i32 2
  %27 = ptrtoint ptr %addr20 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %addr20, align 8
  %and21 = and i64 %28, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true23, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.lhs.true23:                                  ; preds = %land.lhs.true
  %size26 = getelementptr %struct.vfio_fsl_mc_region, ptr %26, i32 %i.084, i32 3
  %29 = ptrtoint ptr %size26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %size26, align 8
  %and27 = and i32 %30, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true23.if.end33_crit_edge

land.lhs.true23.if.end33_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then29:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx19, align 8
  %or = or i32 %32, 4
  store i32 %or, ptr %arrayidx19, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then29, %land.lhs.true23.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %for.body.if.end33_crit_edge
  %33 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regions, align 4
  %arrayidx35 = getelementptr %struct.vfio_fsl_mc_region, ptr %34, i32 %i.084
  %35 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx35, align 8
  %or37 = or i32 %36, 1
  store i32 %or37, ptr %arrayidx35, align 8
  %37 = ptrtoint ptr %regions4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regions4, align 4
  %flags40 = getelementptr %struct.resource, ptr %38, i32 %i.084, i32 3
  %39 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags40, align 4
  %and41 = and i32 %40, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.then43, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then43:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regions, align 4
  %arrayidx45 = getelementptr %struct.vfio_fsl_mc_region, ptr %42, i32 %i.084
  %43 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx45, align 8
  %or47 = or i32 %44, 2
  store i32 %or47, ptr %arrayidx45, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end33.if.end48_crit_edge
  %inc = add nuw nsw i32 %i.084, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %if.end48.cleanup_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end48.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vfio_fsl_mc_close_device(ptr noundef %core_vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %flags = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi ptr [ %6, %cond.false ], [ %1, %entry.cond.end_crit_edge ]
  %region_count.i = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 6
  %7 = ptrtoint ptr %region_count.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %region_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp9.not.i = icmp eq i8 %8, 0
  br i1 %cmp9.not.i, label %cond.end.vfio_fsl_mc_regions_cleanup.exit_crit_edge, label %for.body.lr.ph.i

cond.end.vfio_fsl_mc_regions_cleanup.exit_crit_edge: ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfio_fsl_mc_regions_cleanup.exit

for.body.lr.ph.i:                                 ; preds = %cond.end
  %regions.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %regions.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regions.i, align 4
  %ioaddr.i = getelementptr %struct.vfio_fsl_mc_region, ptr %10, i32 %i.010.i, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  tail call void @iounmap(ptr noundef %12) #9
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %13 = ptrtoint ptr %region_count.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %region_count.i, align 1
  %conv.i = zext i8 %14 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vfio_fsl_mc_regions_cleanup.exit_crit_edge

for.body.i.vfio_fsl_mc_regions_cleanup.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vfio_fsl_mc_regions_cleanup.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

vfio_fsl_mc_regions_cleanup.exit:                 ; preds = %for.body.i.vfio_fsl_mc_regions_cleanup.exit_crit_edge, %cond.end.vfio_fsl_mc_regions_cleanup.exit_crit_edge
  %regions3.i = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %15 = ptrtoint ptr %regions3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regions3.i, align 4
  tail call void @kfree(ptr noundef %16) #9
  %call = tail call fastcc i32 @vfio_fsl_mc_reset_device(ptr noundef %core_vdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool10.not = icmp eq i32 %call, 0
  br i1 %tobool10.not, label %vfio_fsl_mc_regions_cleanup.exit.if.end37_crit_edge, label %do.end, !prof !75

vfio_fsl_mc_regions_cleanup.exit.if.end37_crit_edge: ; preds = %vfio_fsl_mc_regions_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

do.end:                                           ; preds = %vfio_fsl_mc_regions_cleanup.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 111, i32 noundef 9, ptr noundef null) #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %cond, ptr noundef nonnull @.str.7, i32 noundef %call) #13
  br label %if.end37

if.end37:                                         ; preds = %do.end, %vfio_fsl_mc_regions_cleanup.exit.if.end37_crit_edge
  tail call void @vfio_fsl_mc_irqs_cleanup(ptr noundef %core_vdev) #9
  tail call void @fsl_mc_cleanup_irq_pool(ptr noundef %cond) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_read(ptr nocapture noundef readonly %core_vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #2 align 64 {
entry:
  %data = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %shr = ashr i64 %1, 40
  %conv = trunc i64 %shr to i32
  %and = and i64 %1, 1099511627775
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %2 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #9
  %4 = call ptr @memset(ptr %data, i32 255, i32 64)
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %3, i32 0, i32 6, i32 6
  %5 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %region_count, align 1
  %conv2 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv2)
  %cmp.not = icmp ult i32 %conv, %conv2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %7 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %and4 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ioaddr = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 4
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %addr = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %addr, align 8
  %conv9 = trunc i64 %14 to i32
  %size = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv9, i32 noundef %16) #9
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %ioaddr, align 4
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp16.not = icmp eq i32 %count, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp18.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp16.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end15.for.body_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end15.for.body_crit_edge
  %i.053 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ 7, %if.end15.for.body_crit_edge ]
  %18 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioaddr, align 4
  %mul = shl i32 %i.053, 3
  %add.ptr25 = getelementptr i8, ptr %19, i32 %mul
  %add.ptr.i = getelementptr i32, ptr %add.ptr25, i32 1
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !77
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !78
  %22 = zext i32 %20 to i64
  %23 = zext i32 %21 to i64
  %24 = shl nuw i64 %23, 32
  %25 = or i64 %24, %22
  %26 = tail call i64 @llvm.bswap.i64(i64 %25) #9
  %arrayidx27 = getelementptr [8 x i64], ptr %data, i32 0, i32 %i.053
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %arrayidx27, align 8
  %dec = add nsw i32 %i.053, -1
  %cmp22.not = icmp eq i32 %i.053, 0
  br i1 %cmp22.not, label %if.end59.i.i, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end59.i.i:                                     ; preds = %for.body
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.cleanup_crit_edge, label %if.end.i.i

if.end59.i.i.cleanup_crit_edge:                   ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end59.i.i
  %28 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 64, i32 -1226833920) #15, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %data, i32 noundef 64) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef nonnull %data, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool29.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool29.not, i32 64, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end.i.i.cleanup_crit_edge, %if.end59.i.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -14, %if.end59.i.i.cleanup_crit_edge ], [ -14, %if.end.i.i.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_write(ptr nocapture noundef readonly %core_vdev, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef readonly %ppos) #2 align 64 {
entry:
  %data = alloca [8 x i64], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %ppos, align 8
  %shr = ashr i64 %1, 40
  %conv = trunc i64 %shr to i32
  %and = and i64 %1, 1099511627775
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %2 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_dev1, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #9
  %4 = call ptr @memset(ptr %data, i32 255, i32 64)
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %3, i32 0, i32 6, i32 6
  %5 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %region_count, align 1
  %conv2 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv2)
  %cmp.not = icmp ult i32 %conv, %conv2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %regions = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %7 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 8
  %and4 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ioaddr = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 4
  %11 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %if.then8, label %if.end6.if.end15_crit_edge

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8:                                         ; preds = %if.end6
  %addr = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 2
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %addr, align 8
  %conv9 = trunc i64 %14 to i32
  %size = getelementptr %struct.vfio_fsl_mc_region, ptr %8, i32 %conv, i32 3
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 8
  %call = tail call ptr @ioremap(i32 noundef %conv9, i32 noundef %16) #9
  %17 = ptrtoint ptr %ioaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %ioaddr, align 4
  %tobool12.not = icmp eq ptr %call, null
  br i1 %tobool12.not, label %if.then8.cleanup_crit_edge, label %if.then8.if.end15_crit_edge

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.then8.if.end15_crit_edge, %if.end6.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %count)
  %cmp16.not = icmp eq i32 %count, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp18.not = icmp eq i64 %and, 0
  %or.cond = select i1 %cmp16.not, i1 %cmp18.not, i1 false
  br i1 %or.cond, label %if.end59.i.i, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i:                                     ; preds = %if.end15
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %18 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 64, i32 -1226833920) #15, !srcloc !80
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !75

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %data, i32 noundef 64) #9
  %19 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !81
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %data, ptr noundef %buf, i32 noundef 64) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end25, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !75

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i51 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 64, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 64, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 64, %res.0.i.i51
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i51)
  br label %cleanup

if.end25:                                         ; preds = %if.end.i.i
  %23 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioaddr, align 4
  %arrayidx.i = getelementptr inbounds i64, ptr %data, i32 7
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 56
  %shr.i.i = lshr i64 %26, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %27 = call i32 @llvm.bswap.i32(i32 %conv.i.i) #9
  %add.ptr.i.i48 = getelementptr i8, ptr %24, i32 60
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %27) #9, !srcloc !84
  %conv1.i.i = trunc i64 %26 to i32
  %28 = call i32 @llvm.bswap.i32(i32 %conv1.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #9, !srcloc !84
  %arrayidx.1.i = getelementptr inbounds i64, ptr %data, i32 6
  %29 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx.1.i, align 8
  %add.ptr.1.i = getelementptr i8, ptr %24, i32 48
  %shr.i.1.i = lshr i64 %30, 32
  %conv.i.1.i = trunc i64 %shr.i.1.i to i32
  %31 = call i32 @llvm.bswap.i32(i32 %conv.i.1.i) #9
  %add.ptr.i.1.i = getelementptr i8, ptr %24, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.1.i, i32 %31) #9, !srcloc !84
  %conv1.i.1.i = trunc i64 %30 to i32
  %32 = call i32 @llvm.bswap.i32(i32 %conv1.i.1.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %32) #9, !srcloc !84
  %arrayidx.2.i = getelementptr inbounds i64, ptr %data, i32 5
  %33 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx.2.i, align 8
  %add.ptr.2.i = getelementptr i8, ptr %24, i32 40
  %shr.i.2.i = lshr i64 %34, 32
  %conv.i.2.i = trunc i64 %shr.i.2.i to i32
  %35 = call i32 @llvm.bswap.i32(i32 %conv.i.2.i) #9
  %add.ptr.i.2.i = getelementptr i8, ptr %24, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.2.i, i32 %35) #9, !srcloc !84
  %conv1.i.2.i = trunc i64 %34 to i32
  %36 = call i32 @llvm.bswap.i32(i32 %conv1.i.2.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %36) #9, !srcloc !84
  %arrayidx.3.i = getelementptr inbounds i64, ptr %data, i32 4
  %37 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx.3.i, align 8
  %add.ptr.3.i = getelementptr i8, ptr %24, i32 32
  %shr.i.3.i = lshr i64 %38, 32
  %conv.i.3.i = trunc i64 %shr.i.3.i to i32
  %39 = call i32 @llvm.bswap.i32(i32 %conv.i.3.i) #9
  %add.ptr.i.3.i = getelementptr i8, ptr %24, i32 36
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.3.i, i32 %39) #9, !srcloc !84
  %conv1.i.3.i = trunc i64 %38 to i32
  %40 = call i32 @llvm.bswap.i32(i32 %conv1.i.3.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.3.i, i32 %40) #9, !srcloc !84
  %arrayidx.4.i = getelementptr inbounds i64, ptr %data, i32 3
  %41 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx.4.i, align 8
  %add.ptr.4.i = getelementptr i8, ptr %24, i32 24
  %shr.i.4.i = lshr i64 %42, 32
  %conv.i.4.i = trunc i64 %shr.i.4.i to i32
  %43 = call i32 @llvm.bswap.i32(i32 %conv.i.4.i) #9
  %add.ptr.i.4.i = getelementptr i8, ptr %24, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.4.i, i32 %43) #9, !srcloc !84
  %conv1.i.4.i = trunc i64 %42 to i32
  %44 = call i32 @llvm.bswap.i32(i32 %conv1.i.4.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.4.i, i32 %44) #9, !srcloc !84
  %arrayidx.5.i = getelementptr inbounds i64, ptr %data, i32 2
  %45 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx.5.i, align 8
  %add.ptr.5.i = getelementptr i8, ptr %24, i32 16
  %shr.i.5.i = lshr i64 %46, 32
  %conv.i.5.i = trunc i64 %shr.i.5.i to i32
  %47 = call i32 @llvm.bswap.i32(i32 %conv.i.5.i) #9
  %add.ptr.i.5.i = getelementptr i8, ptr %24, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.5.i, i32 %47) #9, !srcloc !84
  %conv1.i.5.i = trunc i64 %46 to i32
  %48 = call i32 @llvm.bswap.i32(i32 %conv1.i.5.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.5.i, i32 %48) #9, !srcloc !84
  %arrayidx.6.i = getelementptr inbounds i64, ptr %data, i32 1
  %49 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx.6.i, align 8
  %add.ptr.6.i = getelementptr i8, ptr %24, i32 8
  %shr.i.6.i = lshr i64 %50, 32
  %conv.i.6.i = trunc i64 %shr.i.6.i to i32
  %51 = call i32 @llvm.bswap.i32(i32 %conv.i.6.i) #9
  %add.ptr.i.6.i = getelementptr i8, ptr %24, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.6.i, i32 %51) #9, !srcloc !84
  %conv1.i.6.i = trunc i64 %50 to i32
  %52 = call i32 @llvm.bswap.i32(i32 %conv1.i.6.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.6.i, i32 %52) #9, !srcloc !84
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %data, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !85
  call void @arm_heavy_mb() #9
  %shr.i22.i = lshr i64 %54, 32
  %conv.i23.i = trunc i64 %shr.i22.i to i32
  %55 = call i32 @llvm.bswap.i32(i32 %conv.i23.i) #9
  %add.ptr.i24.i = getelementptr i8, ptr %24, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %55) #9, !srcloc !84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !86
  call void @arm_heavy_mb() #9
  %conv3.i.i = trunc i64 %54 to i32
  %56 = call i32 @llvm.bswap.i32(i32 %conv3.i.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %56) #9, !srcloc !84
  br label %for.cond2.i

for.cond2.i:                                      ; preds = %if.end.i.for.cond2.i_crit_edge, %if.end25
  %timeout_usecs.0.i = phi i32 [ 5000000, %if.end25 ], [ %sub.i, %if.end.i.for.cond2.i_crit_edge ]
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24.i) #9, !srcloc !76
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #9, !srcloc !76
  %59 = and i32 %58, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %59)
  %cmp4.not.i = icmp eq i32 %59, 256
  br i1 %cmp4.not.i, label %if.end.i, label %for.cond2.i.cleanup_crit_edge

for.cond2.i.cleanup_crit_edge:                    ; preds = %for.cond2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %for.cond2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %60(i32 noundef 107374000) #9
  %sub.i = add nsw i32 %timeout_usecs.0.i, -500
  %cmp6.i = icmp eq i32 %sub.i, 0
  br i1 %cmp6.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.cond2.i_crit_edge

if.end.i.for.cond2.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.cleanup_crit_edge, %for.cond2.i.cleanup_crit_edge, %if.then11.i.i, %if.end15.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.then8.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ 64, %for.cond2.i.cleanup_crit_edge ], [ -110, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_ioctl(ptr noundef %core_vdev, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %info = alloca %struct.vfio_device_info, align 4
  %info13 = alloca %struct.vfio_region_info, align 8
  %info46 = alloca %struct.vfio_irq_info, align 4
  %hdr = alloca %struct.vfio_irq_set, align 4
  %data_size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup104_crit_edge [
    i32 15211, label %sw.bb
    i32 15212, label %sw.bb12
    i32 15213, label %sw.bb45
    i32 15214, label %sw.bb70
    i32 15215, label %sw.bb102
  ]

entry.cleanup104_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup104

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info) #9
  %3 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 1
  %4 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 2
  %5 = getelementptr inbounds %struct.vfio_device_info, ptr %info, i32 0, i32 3
  %6 = inttoptr i32 %arg to ptr
  %7 = call ptr @memset(ptr %info, i32 255, i32 20)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %sw.bb.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb.if.then11.i.i_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 16, i32 -1226833920) #15
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !75

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info, i32 noundef 16) #9
  %9 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !81
  %and.i.i.i.i = and i32 %11, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info, ptr noundef %6, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !75

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb.if.then11.i.i_crit_edge
  %res.0.i.i251 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 16, %sw.bb.if.then11.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 16, %res.0.i.i251
  %add.ptr.i.i = getelementptr i8, ptr %info, i32 %sub.i.i
  %12 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i251)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %14)
  %cmp = icmp ult i32 %14, 16
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %16, @fsl_mc_bus_dprc_type
  %spec.store.select = select i1 %cmp.i, i32 65, i32 64
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %3, align 4
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %region_count, align 1
  %conv = zext i8 %19 to i32
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %4, align 4
  %irq_count = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %irq_count to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %irq_count, align 2
  %conv9 = zext i8 %22 to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv9, ptr %5, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #9
  %call.i.i147 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i147, label %if.end3.cleanup_crit_edge, label %copy_to_user.exit

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit:                                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i151 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info, i32 noundef 16) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %info, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool11.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %copy_to_user.exit, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.end3.cleanup_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info) #9
  br label %cleanup104

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %info13) #9
  %24 = getelementptr inbounds %struct.vfio_region_info, ptr %info13, i32 0, i32 1
  %25 = getelementptr inbounds %struct.vfio_region_info, ptr %info13, i32 0, i32 2
  %26 = getelementptr inbounds %struct.vfio_region_info, ptr %info13, i32 0, i32 4
  %27 = getelementptr inbounds %struct.vfio_region_info, ptr %info13, i32 0, i32 5
  %28 = inttoptr i32 %arg to ptr
  %29 = call ptr @memset(ptr %info13, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i157 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i157, label %sw.bb12.if.then11.i.i173_crit_edge, label %land.lhs.true.i.i160

sw.bb12.if.then11.i.i173_crit_edge:               ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i173

land.lhs.true.i.i160:                             ; preds = %sw.bb12
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %28, i32 32, i32 -1226833920) #15
  %asmresult.i.i158 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i158)
  %cmp.i6.i159 = icmp eq i32 %asmresult.i.i158, 0
  br i1 %cmp.i6.i159, label %if.end.i.i170, label %land.lhs.true.i.i160.if.then11.i.i173_crit_edge, !prof !75

land.lhs.true.i.i160.if.then11.i.i173_crit_edge:  ; preds = %land.lhs.true.i.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i173

if.end.i.i170:                                    ; preds = %land.lhs.true.i.i160
  %call.i.i.i161 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info13, i32 noundef 32) #9
  %31 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i162 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i162 to ptr
  %cpu_domain.i.i.i.i.i163 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 4
  %33 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i163) #8, !srcloc !81
  %and.i.i.i.i164 = and i32 %33, -13
  %or.i.i.i.i165 = or i32 %and.i.i.i.i164, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i165) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i166 = call i32 @arm_copy_from_user(ptr noundef nonnull %info13, ptr noundef %28, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %33) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i166)
  %tobool4.not.i.i169 = icmp eq i32 %call1.i.i.i166, 0
  br i1 %tobool4.not.i.i169, label %if.end17, label %if.end.i.i170.if.then11.i.i173_crit_edge, !prof !75

if.end.i.i170.if.then11.i.i173_crit_edge:         ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i173

if.then11.i.i173:                                 ; preds = %if.end.i.i170.if.then11.i.i173_crit_edge, %land.lhs.true.i.i160.if.then11.i.i173_crit_edge, %sw.bb12.if.then11.i.i173_crit_edge
  %res.0.i.i168258 = phi i32 [ %call1.i.i.i166, %if.end.i.i170.if.then11.i.i173_crit_edge ], [ 32, %sw.bb12.if.then11.i.i173_crit_edge ], [ 32, %land.lhs.true.i.i160.if.then11.i.i173_crit_edge ]
  %sub.i.i171 = sub i32 32, %res.0.i.i168258
  %add.ptr.i.i172 = getelementptr i8, ptr %info13, i32 %sub.i.i171
  %34 = call ptr @memset(ptr %add.ptr.i.i172, i32 0, i32 %res.0.i.i168258)
  br label %cleanup44

if.end17:                                         ; preds = %if.end.i.i170
  %35 = ptrtoint ptr %info13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %36)
  %cmp19 = icmp ult i32 %36, 32
  br i1 %cmp19, label %if.end17.cleanup44_crit_edge, label %if.end22

if.end17.cleanup44_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end22:                                         ; preds = %if.end17
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %25, align 8
  %region_count24 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 6
  %39 = ptrtoint ptr %region_count24 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %region_count24, align 1
  %conv25 = zext i8 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv25)
  %cmp26.not = icmp ult i32 %38, %conv25
  br i1 %cmp26.not, label %if.end59.i.i179, label %if.end22.cleanup44_crit_edge

if.end22.cleanup44_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end59.i.i179:                                  ; preds = %if.end22
  %conv31 = zext i32 %38 to i64
  %shl = shl i64 %conv31, 40
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %shl, ptr %27, align 8
  %regions = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %42 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regions, align 4
  %size = getelementptr %struct.vfio_fsl_mc_region, ptr %43, i32 %38, i32 3
  %44 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %size, align 8
  %conv33 = zext i32 %45 to i64
  %46 = ptrtoint ptr %26 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv33, ptr %26, align 8
  %arrayidx37 = getelementptr %struct.vfio_fsl_mc_region, ptr %43, i32 %38
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx37, align 8
  %49 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %24, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #9
  %call.i.i180 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i180, label %if.end59.i.i179.cleanup44_crit_edge, label %copy_to_user.exit188

if.end59.i.i179.cleanup44_crit_edge:              ; preds = %if.end59.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

copy_to_user.exit188:                             ; preds = %if.end59.i.i179
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i184 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info13, i32 noundef 32) #9
  %call.i12.i.i185 = call i32 @arm_copy_to_user(ptr noundef %28, ptr noundef nonnull %info13, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i185)
  %tobool41.not = icmp eq i32 %call.i12.i.i185, 0
  %spec.select275 = select i1 %tobool41.not, i32 0, i32 -14
  br label %cleanup44

cleanup44:                                        ; preds = %copy_to_user.exit188, %if.end59.i.i179.cleanup44_crit_edge, %if.end22.cleanup44_crit_edge, %if.end17.cleanup44_crit_edge, %if.then11.i.i173
  %retval.1 = phi i32 [ -22, %if.end17.cleanup44_crit_edge ], [ -22, %if.end22.cleanup44_crit_edge ], [ -14, %if.then11.i.i173 ], [ -14, %if.end59.i.i179.cleanup44_crit_edge ], [ %spec.select275, %copy_to_user.exit188 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %info13) #9
  br label %cleanup104

sw.bb45:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info46) #9
  %50 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 1
  %51 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 2
  %52 = getelementptr inbounds %struct.vfio_irq_info, ptr %info46, i32 0, i32 3
  %53 = inttoptr i32 %arg to ptr
  %54 = call ptr @memset(ptr %info46, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i193 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i193, label %sw.bb45.if.then11.i.i209_crit_edge, label %land.lhs.true.i.i196

sw.bb45.if.then11.i.i209_crit_edge:               ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

land.lhs.true.i.i196:                             ; preds = %sw.bb45
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %53, i32 16, i32 -1226833920) #15
  %asmresult.i.i194 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i194)
  %cmp.i6.i195 = icmp eq i32 %asmresult.i.i194, 0
  br i1 %cmp.i6.i195, label %if.end.i.i206, label %land.lhs.true.i.i196.if.then11.i.i209_crit_edge, !prof !75

land.lhs.true.i.i196.if.then11.i.i209_crit_edge:  ; preds = %land.lhs.true.i.i196
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

if.end.i.i206:                                    ; preds = %land.lhs.true.i.i196
  %call.i.i.i197 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info46, i32 noundef 16) #9
  %56 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i198 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i198 to ptr
  %cpu_domain.i.i.i.i.i199 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i199) #8, !srcloc !81
  %and.i.i.i.i200 = and i32 %58, -13
  %or.i.i.i.i201 = or i32 %and.i.i.i.i200, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i201) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i202 = call i32 @arm_copy_from_user(ptr noundef nonnull %info46, ptr noundef %53, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i202)
  %tobool4.not.i.i205 = icmp eq i32 %call1.i.i.i202, 0
  br i1 %tobool4.not.i.i205, label %if.end50, label %if.end.i.i206.if.then11.i.i209_crit_edge, !prof !75

if.end.i.i206.if.then11.i.i209_crit_edge:         ; preds = %if.end.i.i206
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i209

if.then11.i.i209:                                 ; preds = %if.end.i.i206.if.then11.i.i209_crit_edge, %land.lhs.true.i.i196.if.then11.i.i209_crit_edge, %sw.bb45.if.then11.i.i209_crit_edge
  %res.0.i.i204265 = phi i32 [ %call1.i.i.i202, %if.end.i.i206.if.then11.i.i209_crit_edge ], [ 16, %sw.bb45.if.then11.i.i209_crit_edge ], [ 16, %land.lhs.true.i.i196.if.then11.i.i209_crit_edge ]
  %sub.i.i207 = sub i32 16, %res.0.i.i204265
  %add.ptr.i.i208 = getelementptr i8, ptr %info46, i32 %sub.i.i207
  %59 = call ptr @memset(ptr %add.ptr.i.i208, i32 0, i32 %res.0.i.i204265)
  br label %cleanup69

if.end50:                                         ; preds = %if.end.i.i206
  %60 = ptrtoint ptr %info46 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %info46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %61)
  %cmp52 = icmp ult i32 %61, 16
  br i1 %cmp52, label %if.end50.cleanup69_crit_edge, label %if.end55

if.end50.cleanup69_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

if.end55:                                         ; preds = %if.end50
  %62 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %51, align 4
  %irq_count58 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 5
  %64 = ptrtoint ptr %irq_count58 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %irq_count58, align 2
  %conv59 = zext i8 %65 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %conv59)
  %cmp60.not = icmp ult i32 %63, %conv59
  br i1 %cmp60.not, label %if.end59.i.i215, label %if.end55.cleanup69_crit_edge

if.end55.cleanup69_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

if.end59.i.i215:                                  ; preds = %if.end55
  %66 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1, ptr %50, align 4
  %67 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %52, align 4
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #9
  %call.i.i216 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i216, label %if.end59.i.i215.cleanup69_crit_edge, label %copy_to_user.exit224

if.end59.i.i215.cleanup69_crit_edge:              ; preds = %if.end59.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup69

copy_to_user.exit224:                             ; preds = %if.end59.i.i215
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i220 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info46, i32 noundef 16) #9
  %call.i12.i.i221 = call i32 @arm_copy_to_user(ptr noundef %53, ptr noundef nonnull %info46, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i221)
  %tobool66.not = icmp eq i32 %call.i12.i.i221, 0
  %spec.select276 = select i1 %tobool66.not, i32 0, i32 -14
  br label %cleanup69

cleanup69:                                        ; preds = %copy_to_user.exit224, %if.end59.i.i215.cleanup69_crit_edge, %if.end55.cleanup69_crit_edge, %if.end50.cleanup69_crit_edge, %if.then11.i.i209
  %retval.2 = phi i32 [ -22, %if.end50.cleanup69_crit_edge ], [ -22, %if.end55.cleanup69_crit_edge ], [ -14, %if.then11.i.i209 ], [ -14, %if.end59.i.i215.cleanup69_crit_edge ], [ %spec.select276, %copy_to_user.exit224 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info46) #9
  br label %cleanup104

sw.bb70:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %hdr) #9
  %68 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 1
  %69 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 2
  %70 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 3
  %71 = getelementptr inbounds %struct.vfio_irq_set, ptr %hdr, i32 0, i32 4
  %72 = call ptr @memset(ptr %hdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size) #9
  %73 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %data_size, align 4
  %74 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #9
  %call.i.i229 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i229, label %sw.bb70.if.then11.i.i245_crit_edge, label %land.lhs.true.i.i232

sw.bb70.if.then11.i.i245_crit_edge:               ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i245

land.lhs.true.i.i232:                             ; preds = %sw.bb70
  %75 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %74, i32 20, i32 -1226833920) #15, !srcloc !80
  %asmresult.i.i230 = extractvalue { i32, i32 } %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i230)
  %cmp.i6.i231 = icmp eq i32 %asmresult.i.i230, 0
  br i1 %cmp.i6.i231, label %if.end.i.i242, label %land.lhs.true.i.i232.if.then11.i.i245_crit_edge, !prof !75

land.lhs.true.i.i232.if.then11.i.i245_crit_edge:  ; preds = %land.lhs.true.i.i232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i245

if.end.i.i242:                                    ; preds = %land.lhs.true.i.i232
  %call.i.i.i233 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %hdr, i32 noundef 20) #9
  %76 = call i32 @llvm.read_register.i32(metadata !65) #9
  %and.i.i.i.i.i.i234 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i.i.i.i234 to ptr
  %cpu_domain.i.i.i.i.i235 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 4
  %78 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i235) #8, !srcloc !81
  %and.i.i.i.i236 = and i32 %78, -13
  %or.i.i.i.i237 = or i32 %and.i.i.i.i236, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i237) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  %call1.i.i.i238 = call i32 @arm_copy_from_user(ptr noundef nonnull %hdr, ptr noundef %74, i32 noundef 20) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %78) #9, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i238)
  %tobool4.not.i.i241 = icmp eq i32 %call1.i.i.i238, 0
  br i1 %tobool4.not.i.i241, label %if.end74, label %if.end.i.i242.if.then11.i.i245_crit_edge, !prof !75

if.end.i.i242.if.then11.i.i245_crit_edge:         ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i245

if.then11.i.i245:                                 ; preds = %if.end.i.i242.if.then11.i.i245_crit_edge, %land.lhs.true.i.i232.if.then11.i.i245_crit_edge, %sw.bb70.if.then11.i.i245_crit_edge
  %res.0.i.i240272 = phi i32 [ %call1.i.i.i238, %if.end.i.i242.if.then11.i.i245_crit_edge ], [ 20, %sw.bb70.if.then11.i.i245_crit_edge ], [ 20, %land.lhs.true.i.i232.if.then11.i.i245_crit_edge ]
  %sub.i.i243 = sub i32 20, %res.0.i.i240272
  %add.ptr.i.i244 = getelementptr i8, ptr %hdr, i32 %sub.i.i243
  %79 = call ptr @memset(ptr %add.ptr.i.i244, i32 0, i32 %res.0.i.i240272)
  br label %cleanup98

if.end74:                                         ; preds = %if.end.i.i242
  %irq_count76 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 5
  %80 = ptrtoint ptr %irq_count76 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %irq_count76, align 2
  %conv77 = zext i8 %81 to i32
  %call81 = call i32 @vfio_set_irqs_validate_and_prepare(ptr noundef nonnull %hdr, i32 noundef %conv77, i32 noundef %conv77, ptr noundef nonnull %data_size) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end74.cleanup98_crit_edge

if.end74.cleanup98_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup98

if.end84:                                         ; preds = %if.end74
  %82 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool85.not = icmp eq i32 %83, 0
  br i1 %tobool85.not, label %if.end84.if.end92_crit_edge, label %if.then86

if.end84.if.end92_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then86:                                        ; preds = %if.end84
  %add = add i32 %arg, 20
  %84 = inttoptr i32 %add to ptr
  %call87 = call ptr @memdup_user(ptr noundef %84, i32 noundef %83) #9
  %cmp.i248 = icmp ugt ptr %call87, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %if.then89, label %if.then86.if.end92_crit_edge

if.then86.if.end92_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %call87 to i32
  br label %cleanup98

if.end92:                                         ; preds = %if.then86.if.end92_crit_edge, %if.end84.if.end92_crit_edge
  %data.0 = phi ptr [ %call87, %if.then86.if.end92_crit_edge ], [ null, %if.end84.if.end92_crit_edge ]
  %igate = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %igate, i32 noundef 0) #9
  %86 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %68, align 4
  %88 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %69, align 4
  %90 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %70, align 4
  %92 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %71, align 4
  %call96 = call i32 @vfio_fsl_mc_set_irqs_ioctl(ptr noundef %core_vdev, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, ptr noundef %data.0) #9
  call void @mutex_unlock(ptr noundef %igate) #9
  call void @kfree(ptr noundef %data.0) #9
  br label %cleanup98

cleanup98:                                        ; preds = %if.end92, %if.then89, %if.end74.cleanup98_crit_edge, %if.then11.i.i245
  %retval.3 = phi i32 [ %85, %if.then89 ], [ %call96, %if.end92 ], [ %call81, %if.end74.cleanup98_crit_edge ], [ -14, %if.then11.i.i245 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %hdr) #9
  br label %cleanup104

sw.bb102:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call103 = tail call fastcc i32 @vfio_fsl_mc_reset_device(ptr noundef %core_vdev)
  br label %cleanup104

cleanup104:                                       ; preds = %sw.bb102, %cleanup98, %cleanup69, %cleanup44, %cleanup, %entry.cleanup104_crit_edge
  %retval.4 = phi i32 [ %call103, %sw.bb102 ], [ %retval.3, %cleanup98 ], [ %retval.2, %cleanup69 ], [ %retval.1, %cleanup44 ], [ %retval.0, %cleanup ], [ -25, %entry.cleanup104_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_mmap(ptr nocapture noundef readonly %core_vdev, ptr noundef %vma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %shr = lshr i32 %3, 28
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %4 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vm_end, align 4
  %6 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vma, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp uge i32 %5, %7
  %8 = or i32 %7, %5
  %9 = and i32 %8, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  %11 = and i1 %cmp, %10
  br i1 %11, label %if.end9, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %12 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_flags, align 4
  %and10 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %region_count = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 6
  %14 = ptrtoint ptr %region_count to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %region_count, align 1
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %conv)
  %cmp14.not = icmp ult i32 %shr, %conv
  br i1 %cmp14.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %regions = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %core_vdev, i32 0, i32 3
  %16 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regions, align 4
  %arrayidx = getelementptr %struct.vfio_fsl_mc_region, ptr %17, i32 %shr
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 8
  %and18 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %and25 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp ne i32 %and25, 0
  %and28 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %or.cond = select i1 %tobool26.not, i1 true, i1 %tobool29.not
  br i1 %or.cond, label %if.end31, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %and35 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp ne i32 %and35, 0
  %and39 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond72 = select i1 %tobool36.not, i1 true, i1 %tobool40.not
  br i1 %or.cond72, label %if.end42, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end42:                                         ; preds = %if.end31
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 15
  %20 = ptrtoint ptr %vm_private_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %1, ptr %vm_private_data, align 4
  %21 = ptrtoint ptr %regions to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regions, align 4
  %arrayidx44 = getelementptr %struct.vfio_fsl_mc_region, ptr %22, i32 %shr
  %23 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %23)
  %.unpack = load i64, ptr %arrayidx44, align 8
  %.elt66 = getelementptr inbounds [3 x i64], ptr %arrayidx44, i32 0, i32 1
  %24 = ptrtoint ptr %.elt66 to i32
  call void @__asan_load8_noabort(i32 %24)
  %.unpack67 = load i64, ptr %.elt66, align 8
  %.elt68 = getelementptr inbounds [3 x i64], ptr %arrayidx44, i32 0, i32 2
  %25 = ptrtoint ptr %.elt68 to i32
  call void @__asan_load8_noabort(i32 %25)
  %.unpack69 = load i64, ptr %.elt68, align 8
  %sub.i = sub i32 %5, %7
  %and.i = and i32 %3, 268435455
  call void @__sanitizer_cov_trace_const_cmp8(i64 17592186044416, i64 %.unpack69)
  %cmp.i = icmp ult i64 %.unpack69, 17592186044416
  br i1 %cmp.i, label %if.end42.cleanup_crit_edge, label %lor.lhs.false.i

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end42
  %region.sroa.5.16.extract.shift.i = lshr i64 %.unpack69, 32
  %conv1.i = zext i32 %and.i to i64
  %shl.i = shl nuw nsw i64 %conv1.i, 12
  %conv.i = zext i32 %sub.i to i64
  %add.i = add nuw nsw i64 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %region.sroa.5.16.extract.shift.i)
  %cmp6.i = icmp ugt i64 %add.i, %region.sroa.5.16.extract.shift.i
  br i1 %cmp6.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %26 = and i64 %.unpack, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 3, i64 %26)
  %27 = icmp eq i64 %26, 3
  br i1 %27, label %if.end.i.if.end17.i_crit_edge, label %if.then14.i

if.end.i.if.end17.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %vm_page_prot.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %28 = ptrtoint ptr %vm_page_prot.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vm_page_prot.i, align 4
  %and15.i = and i32 %29, -61
  store i32 %and15.i, ptr %vm_page_prot.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then14.i, %if.end.i.if.end17.i_crit_edge
  %shr.i = lshr i64 %.unpack67, 12
  %30 = trunc i64 %shr.i to i32
  %conv19.i = add i32 %and.i, %30
  %31 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv19.i, ptr %vm_pgoff, align 4
  %vm_page_prot24.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %32 = ptrtoint ptr %vm_page_prot24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vm_page_prot24.i, align 4
  %call.i = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %7, i32 noundef %conv19.i, i32 noundef %sub.i, i32 noundef %33) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.end17.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ %call.i, %if.end17.i ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end42.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vfio_fsl_mc_reset_device(ptr nocapture noundef readonly %vdev) unnamed_addr #2 align 64 {
entry:
  %token = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mc_dev1 = getelementptr inbounds %struct.vfio_fsl_mc_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %mc_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc_dev1, align 4
  %type.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %3, @fsl_mc_bus_dprc_type
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mc_io = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %mc_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_io, align 4
  %mc_handle = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mc_handle to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mc_handle, align 8
  %id = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 8
  %call3 = tail call i32 @dprc_reset_container(ptr noundef %5, i32 noundef 0, i16 noundef zeroext %7, i32 noundef %9, i32 noundef 1) #9
  br label %cleanup20

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %token) #9
  %10 = ptrtoint ptr %token to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %token, align 2, !annotation !87
  %mc_io4 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %mc_io4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_io4, align 4
  %obj_desc5 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6
  %id6 = getelementptr inbounds %struct.fsl_mc_device, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id6, align 8
  %call8 = call i32 @fsl_mc_obj_open(ptr noundef %12, i32 noundef 0, i32 noundef %14, ptr noundef %obj_desc5, ptr noundef nonnull %token) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %mc_io4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mc_io4, align 4
  %17 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %token, align 2
  %call11 = call i32 @fsl_mc_obj_reset(ptr noundef %16, i32 noundef 0, i16 noundef zeroext %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  %19 = ptrtoint ptr %mc_io4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mc_io4, align 4
  %21 = ptrtoint ptr %token to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %token, align 2
  %call18 = call i32 @fsl_mc_obj_close(ptr noundef %20, i32 noundef 0, i16 noundef zeroext %22) #9
  %call18.call11 = select i1 %tobool12.not, i32 %call18, i32 %call11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.cleanup_crit_edge
  %ret.0 = phi i32 [ %call8, %if.else.cleanup_crit_edge ], [ %call18.call11, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %token) #9
  br label %cleanup20

cleanup20:                                        ; preds = %cleanup, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ %ret.0, %cleanup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfio_fsl_mc_irqs_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_mc_cleanup_irq_pool(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_reset_container(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_obj_open(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_obj_reset(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_mc_obj_close(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_set_irqs_validate_and_prepare(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vfio_fsl_mc_set_irqs_ioctl(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vfio_fsl_mc_bus_notifier(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %action, label %entry.if.end39_crit_edge [
    i32 1, label %land.lhs.true
    i32 5, label %land.lhs.true21
  ]

entry.if.end39_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %entry
  %mc_dev8 = getelementptr i8, ptr %nb, i32 -4
  %3 = ptrtoint ptr %mc_dev8 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc_dev8, align 4
  %cmp9 = icmp eq ptr %4, %1
  br i1 %cmp9, label %if.then, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then:                                          ; preds = %land.lhs.true
  %call = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str) #9
  %driver_override = getelementptr inbounds %struct.fsl_mc_device, ptr %data, i32 0, i32 11
  %5 = ptrtoint ptr %driver_override to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %driver_override, align 4
  %tobool.not = icmp eq ptr %call, null
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %do.end16

do.end:                                           ; preds = %if.then
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %data, ptr noundef nonnull @.str.16, ptr noundef %retval.0.i) #13
  br label %if.end39

do.end16:                                         ; preds = %if.then
  br i1 %tobool.not.i, label %if.end.i57, label %do.end16.dev_name.exit59_crit_edge

do.end16.dev_name.exit59_crit_edge:               ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit59

if.end.i57:                                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  br label %dev_name.exit59

dev_name.exit59:                                  ; preds = %if.end.i57, %do.end16.dev_name.exit59_crit_edge
  %retval.0.i58 = phi ptr [ %11, %if.end.i57 ], [ %7, %do.end16.dev_name.exit59_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %data, ptr noundef nonnull @.str.19, ptr noundef %retval.0.i58) #13
  br label %if.end39

land.lhs.true21:                                  ; preds = %entry
  %mc_dev22 = getelementptr i8, ptr %nb, i32 -4
  %12 = ptrtoint ptr %mc_dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mc_dev22, align 4
  %cmp23 = icmp eq ptr %13, %1
  br i1 %cmp23, label %if.then24, label %land.lhs.true21.if.end39_crit_edge

land.lhs.true21.if.end39_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then24:                                        ; preds = %land.lhs.true21
  %driver = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 6
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %tobool28.not = icmp eq ptr %15, null
  %cmp30.not = icmp eq ptr %15, @vfio_fsl_mc_driver
  %or.cond = or i1 %tobool28.not, %cmp30.not
  br i1 %or.cond, label %if.then24.if.end39_crit_edge, label %do.end34

if.then24.if.end39_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end34:                                         ; preds = %if.then24
  %init_name.i60 = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i60 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i60, align 8
  %tobool.not.i61 = icmp eq ptr %17, null
  br i1 %tobool.not.i61, label %if.end.i62, label %do.end34.dev_name.exit64_crit_edge

do.end34.dev_name.exit64_crit_edge:               ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit64

if.end.i62:                                       ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  br label %dev_name.exit64

dev_name.exit64:                                  ; preds = %if.end.i62, %do.end34.dev_name.exit64_crit_edge
  %retval.0.i63 = phi ptr [ %19, %if.end.i62 ], [ %17, %do.end34.dev_name.exit64_crit_edge ]
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %data, ptr noundef nonnull @.str.23, ptr noundef %retval.0.i63, ptr noundef %21) #13
  br label %if.end39

if.end39:                                         ; preds = %dev_name.exit64, %if.then24.if.end39_crit_edge, %land.lhs.true21.if.end39_crit_edge, %dev_name.exit59, %dev_name.exit, %land.lhs.true.if.end39_crit_edge, %entry.if.end39_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_unregister_notifier(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_scan_container(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dprc_remove_devices(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dprc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fsl_mc_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !32, !34, !35, !37, !39, !41, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.named.register.sp = !{!65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @__initcall__kmod_vfio_fsl_mc__232_603_vfio_fsl_mc_driver_init6, !1, !"__initcall__kmod_vfio_fsl_mc__232_603_vfio_fsl_mc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 603, i32 1}
!2 = !{ptr @__exitcall_vfio_fsl_mc_driver_exit, !3, !"__exitcall_vfio_fsl_mc_driver_exit", i1 false, i1 false}
!3 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 604, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 606, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description235, !8, !"__UNIQUE_ID_description235", i1 false, i1 false}
!8 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 607, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 588, i32 11}
!11 = !{ptr @vfio_fsl_mc_driver, !12, !"vfio_fsl_mc_driver", i1 false, i1 false}
!12 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 584, i32 29}
!13 = !{ptr @vfio_fsl_mc_probe.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 533, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 548, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vfio_fsl_mc_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @vfio_fsl_mc_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @vfio_fsl_mc_ops, !25, !"vfio_fsl_mc_ops", i1 false, i1 false}
!25 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 421, i32 37}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 112, i32 3}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vfio_fsl_mc_close_device._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @vfio_fsl_mc_close_device._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!34 = distinct !{null, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 483, i32 3}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @vfio_fsl_mc_init_device._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @vfio_fsl_mc_init_device._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 442, i32 51}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 445, i32 4}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vfio_fsl_mc_bus_notifier._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @vfio_fsl_mc_bus_notifier._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 448, i32 4}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vfio_fsl_mc_bus_notifier._entry.18, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @vfio_fsl_mc_bus_notifier._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 455, i32 4}
!58 = !{ptr @vfio_fsl_mc_bus_notifier._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vfio_fsl_mc_bus_notifier._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/vfio/fsl-mc/vfio_fsl_mc.c", i32 502, i32 3}
!62 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @vfio_fsl_mc_scan_container._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @vfio_fsl_mc_scan_container._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{!"sp"}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{!"branch_weights", i32 2000, i32 1}
!76 = !{i64 6244592}
!77 = !{i64 2154332751}
!78 = !{i64 2154333173}
!79 = !{i64 2153240731, i64 2153240756}
!80 = !{i64 2153240050, i64 2153240075}
!81 = !{i64 5735605}
!82 = !{i64 5735802}
!83 = !{i64 2153221035}
!84 = !{i64 6244174}
!85 = !{i64 2154333553}
!86 = !{i64 2154333938}
!87 = !{!"auto-init"}
