; ModuleID = '/llk/IR_all_yes/drivers/edac/synopsys_edac.c_pt.bc'
source_filename = "../drivers/edac/synopsys_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.synps_platform_data = type { ptr, ptr, ptr, ptr, i32 }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.synps_edac_priv = type { ptr, [256 x i8], %struct.synps_ecc_status, ptr, i32, i32, i32, [18 x i32], [14 x i32], [3 x i32], [2 x i32], [1 x i32] }
%struct.synps_ecc_status = type { i32, i32, %struct.ecc_error_info, %struct.ecc_error_info }
%struct.ecc_error_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@__initcall__kmod_synopsys_edac__236_1443_synps_edac_mc_driver_init6 = internal global ptr @synps_edac_mc_driver_init, section ".initcall6.init", align 4
@synps_edac_mc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mc_probe, ptr @mc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @synps_edac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_synps_edac_mc_driver_exit = internal global ptr @synps_edac_mc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [32 x i8] c"synopsys_edac.author=Xilinx Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [50 x i8] c"synopsys_edac.description=Synopsys DDR ECC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [46 x i8] c"synopsys_edac.file=drivers/edac/synopsys_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [29 x i8] c"synopsys_edac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"synopsys-edac\00", [18 x i8] zeroinitializer }, align 32
@synps_edac_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynq-ddrc-a05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynq_edac_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,zynqmp-ddrc-2.40a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @zynqmp_edac_def }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"snps,ddrc-3.80a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @synopsys_edac_def }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016EDAC MC: ECC not enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mc_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/edac/synopsys_edac.c\00", [35 x i8] zeroinitializer }, align 32
@mc_probe._entry_ptr = internal global ptr @mc_probe._entry, section ".printk_index", align 4
@mc_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013EDAC MC: Failed memory allocation for mc instance\0A\00", [43 x i8] zeroinitializer }, align 32
@mc_probe._entry_ptr.6 = internal global ptr @mc_probe._entry.4, section ".printk_index", align 4
@mc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013EDAC MC: Failed to register with EDAC core\0A\00", [50 x i8] zeroinitializer }, align 32
@mc_probe._entry_ptr.9 = internal global ptr @mc_probe._entry.7, section ".printk_index", align 4
@mc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC MC: Failed to create sysfs entries\0A\00", [53 x i8] zeroinitializer }, align 32
@mc_probe._entry_ptr.12 = internal global ptr @mc_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"synps_ddr_controller\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"synps_edac\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@edac_op_state = external dso_local local_unnamed_addr global i32, align 4
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@check_errors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017EDAC DEBUG: %s: Total error count CE %d UE %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"check_errors\00", [19 x i8] zeroinitializer }, align 32
@check_errors._entry_ptr = internal global ptr @check_errors._entry, section ".printk_index", align 4
@.str.18 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"DDR ECC error type:%s Row %d Bank %d BankGroup Number %d Block Number %d Bit Position: %d Data: 0x%08x\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CE\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"DDR ECC error type:%s Row %d Bank %d Col %d Bit Position: %d Data: 0x%08x\00", [54 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"DDR ECC error type :%s Row %d Bank %d BankGroup Number %d Block Number %d\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"UE\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"DDR ECC error type :%s Row %d Bank %d Col %d \00", [50 x i8] zeroinitializer }, align 32
@setup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 875, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013EDAC MC: No IRQ %d in DT\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"setup_irq\00", [22 x i8] zeroinitializer }, align 32
@setup_irq._entry_ptr = internal global ptr @setup_irq._entry, section ".printk_index", align 4
@setup_irq._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 882, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013EDAC MC: Failed to request IRQ\0A\00", [62 x i8] zeroinitializer }, align 32
@setup_irq._entry_ptr.29 = internal global ptr @setup_irq._entry.27, section ".printk_index", align 4
@intr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.30, ptr @.str.3, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"intr_handler\00", [19 x i8] zeroinitializer }, align 32
@intr_handler._entry_ptr = internal global ptr @intr_handler._entry, section ".printk_index", align 4
@dev_attr_inject_data_error = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inject_data_error_show, ptr @inject_data_error_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_data_poison = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @inject_data_poison_show, ptr @inject_data_poison_store }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"inject_data_error\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Poison0 Addr: 0x%08x\0A\0DPoison1 Addr: 0x%08x\0A\0DError injection Address: 0x%lx\0A\0D\00", [51 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"inject_data_poison\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Data Poisoning: %s\0A\0D\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Correctable Error\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"UnCorrectable Error\00", [44 x i8] zeroinitializer }, align 32
@zynq_edac_def = internal constant { %struct.synps_platform_data, [44 x i8] } { %struct.synps_platform_data { ptr @zynq_get_error_info, ptr @zynq_get_mtype, ptr @zynq_get_dtype, ptr @zynq_get_ecc_state, i32 0 }, [44 x i8] zeroinitializer }, align 32
@zynqmp_edac_def = internal constant { %struct.synps_platform_data, [44 x i8] } { %struct.synps_platform_data { ptr @zynqmp_get_error_info, ptr @zynqmp_get_mtype, ptr @zynqmp_get_dtype, ptr @zynqmp_get_ecc_state, i32 3 }, [44 x i8] zeroinitializer }, align 32
@synopsys_edac_def = internal constant { %struct.synps_platform_data, [44 x i8] } { %struct.synps_platform_data { ptr @zynqmp_get_error_info, ptr @zynqmp_get_mtype, ptr @zynqmp_get_dtype, ptr @zynqmp_get_ecc_state, i32 7 }, [44 x i8] zeroinitializer }, align 32
@zynq_get_error_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017EDAC DEBUG: %s: CE bit position: %d data: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zynq_get_error_info\00", [44 x i8] zeroinitializer }, align 32
@zynq_get_error_info._entry_ptr = internal global ptr @zynq_get_error_info._entry, section ".printk_index", align 4
@zynqmp_get_error_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017EDAC DEBUG: %s: ECCCSYN0: 0x%08X ECCCSYN1: 0x%08X ECCCSYN2: 0x%08X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zynqmp_get_error_info\00", [42 x i8] zeroinitializer }, align 32
@zynqmp_get_error_info._entry_ptr = internal global ptr @zynqmp_get_error_info._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"synps_edac_mc_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1434, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1436, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"synps_edac_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 924, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1342, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1356, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1375, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1384, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 831, i32 18 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 832, i32 18 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 833, i32 18 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 591, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 487, i32 6 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 488, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 493, i32 6 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 500, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 507, i32 6 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 508, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 512, i32 6 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 874, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 882, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 560, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [27 x i8] c"dev_attr_inject_data_error\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [28 x i8] c"dev_attr_inject_data_poison\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1065, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1014, i32 23 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1066, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1043, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1045, i32 7 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1045, i32 31 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"zynq_edac_def\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 891, i32 41 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"zynqmp_edac_def\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 899, i32 41 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"synopsys_edac_def\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 911, i32 41 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 388, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [32 x i8] c"../drivers/edac/synopsys_edac.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 446, i32 2 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_synps_edac_mc_driver_exit, ptr @__initcall__kmod_synopsys_edac__236_1443_synps_edac_mc_driver_init6, ptr @check_errors._entry, ptr @check_errors._entry_ptr, ptr @intr_handler._entry, ptr @intr_handler._entry_ptr, ptr @mc_probe._entry, ptr @mc_probe._entry.10, ptr @mc_probe._entry.4, ptr @mc_probe._entry.7, ptr @mc_probe._entry_ptr, ptr @mc_probe._entry_ptr.12, ptr @mc_probe._entry_ptr.6, ptr @mc_probe._entry_ptr.9, ptr @setup_irq._entry, ptr @setup_irq._entry.27, ptr @setup_irq._entry_ptr, ptr @setup_irq._entry_ptr.29, ptr @synps_edac_mc_driver_exit, ptr @zynq_get_error_info._entry, ptr @zynq_get_error_info._entry_ptr, ptr @zynqmp_get_error_info._entry, ptr @zynqmp_get_error_info._entry_ptr, ptr @synps_edac_mc_driver, ptr @.str, ptr @synps_edac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @dev_attr_inject_data_error, ptr @dev_attr_inject_data_poison, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @zynq_edac_def, ptr @zynqmp_edac_def, ptr @synopsys_edac_def, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synps_edac_mc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synps_edac_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_errors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_irq._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_data_error to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_data_poison to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_edac_def to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_edac_def to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @synopsys_edac_def to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynq_get_error_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zynqmp_get_error_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @synps_edac_mc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @synps_edac_mc_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @synps_edac_mc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @synps_edac_mc_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %inf.i.i.i = alloca %struct.sysinfo, align 4
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #8
  %0 = call ptr @memset(ptr %layers, i32 255, i32 24)
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %get_ecc_state = getelementptr inbounds %struct.synps_platform_data, ptr %call5, i32 0, i32 3
  %2 = ptrtoint ptr %get_ecc_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_ecc_state, align 4
  %call8 = tail call zeroext i1 %3(ptr noundef %call1) #8
  br i1 %call8, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %4 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %6 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx14 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx14, align 4
  %size17 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %size17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %size17, align 4
  %is_virt_csrow19 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %is_virt_csrow19 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_virt_csrow19, align 4
  %call20 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 492) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %cleanup

if.end28:                                         ; preds = %if.end11
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 26
  %10 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pvt_info, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call1, ptr %11, align 4
  %p_data30 = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 3
  %13 = ptrtoint ptr %p_data30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5, ptr %p_data30, align 4
  %pdev1.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 22
  %14 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %pdev1.i, align 8
  %15 = load ptr, ptr %pvt_info, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20, ptr %driver_data.i.i.i, align 4
  %mtype_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 4
  %17 = ptrtoint ptr %mtype_cap.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 34816, ptr %mtype_cap.i, align 8
  %edac_ctl_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 5
  %18 = ptrtoint ptr %edac_ctl_cap.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 34, ptr %edac_ctl_cap.i, align 4
  %scrub_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 7
  %19 = ptrtoint ptr %scrub_cap.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 7, ptr %scrub_cap.i, align 4
  %scrub_mode.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 8
  %20 = ptrtoint ptr %scrub_mode.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %scrub_mode.i, align 8
  %edac_cap.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 6
  %21 = ptrtoint ptr %edac_cap.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %edac_cap.i, align 8
  %ctl_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 24
  %22 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.13, ptr %ctl_name.i, align 8
  %dev_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 25
  %23 = ptrtoint ptr %dev_name.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.14, ptr %dev_name.i, align 4
  %mod_name.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 23
  %24 = ptrtoint ptr %mod_name.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.15, ptr %mod_name.i, align 4
  %p_data.i = getelementptr inbounds %struct.synps_edac_priv, ptr %15, i32 0, i32 3
  %25 = ptrtoint ptr %p_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_data.i, align 4
  %quirks.i = getelementptr inbounds %struct.synps_platform_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 2, ptr @edac_op_state, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 0, ptr @edac_op_state, align 4
  %edac_check.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 11
  %29 = ptrtoint ptr %edac_check.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @check_errors, ptr %edac_check.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ctl_page_to_phys.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 12
  %30 = ptrtoint ptr %ctl_page_to_phys.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %ctl_page_to_phys.i, align 8
  %31 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pvt_info, align 8
  %nr_csrows.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 15
  %33 = ptrtoint ptr %nr_csrows.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_csrows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp31.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp31.not.i.i, label %if.end.i.mc_init.exit_crit_edge, label %for.body.lr.ph.i.i

if.end.i.mc_init.exit_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_init.exit

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %p_data1.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %32, i32 0, i32 3
  %35 = ptrtoint ptr %p_data1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %p_data1.i.i, align 4
  %csrows.i.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call20, i32 0, i32 14
  %totalram.i.i.i = getelementptr inbounds %struct.sysinfo, ptr %inf.i.i.i, i32 0, i32 2
  %mem_unit.i.i.i = getelementptr inbounds %struct.sysinfo, ptr %inf.i.i.i, i32 0, i32 12
  %get_mtype.i.i = getelementptr inbounds %struct.synps_platform_data, ptr %36, i32 0, i32 1
  %get_dtype.i.i = getelementptr inbounds %struct.synps_platform_data, ptr %36, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc11.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %row.032.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc12.i.i, %for.inc11.i.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %csrows.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %csrows.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %row.032.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %inf.i.i.i) #8
  %41 = call ptr @memset(ptr %inf.i.i.i, i32 255, i32 64)
  call void @si_meminfo(ptr noundef nonnull %inf.i.i.i) #8
  %42 = ptrtoint ptr %totalram.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %totalram.i.i.i, align 4
  %44 = ptrtoint ptr %mem_unit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mem_unit.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %inf.i.i.i) #8
  %nr_channels.i.i = getelementptr inbounds %struct.csrow_info, ptr %40, i32 0, i32 8
  %46 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp329.not.i.i = icmp eq i32 %47, 0
  br i1 %cmp329.not.i.i, label %for.body.i.i.for.inc11.i.i_crit_edge, label %for.body4.lr.ph.i.i

for.body.i.i.for.inc11.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc11.i.i

for.body4.lr.ph.i.i:                              ; preds = %for.body.i.i
  %mul.i.i.i = mul i32 %45, %43
  %channels.i.i = getelementptr inbounds %struct.csrow_info, ptr %40, i32 0, i32 9
  %shr.i.i = lshr i32 %mul.i.i.i, 12
  br label %for.body4.i.i

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.body4.lr.ph.i.i
  %j.030.i.i = phi i32 [ 0, %for.body4.lr.ph.i.i ], [ %inc.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ]
  %48 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %channels.i.i, align 8
  %arrayidx5.i.i = getelementptr ptr, ptr %49, i32 %j.030.i.i
  %50 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx5.i.i, align 4
  %dimm6.i.i = getelementptr inbounds %struct.rank_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %dimm6.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dimm6.i.i, align 4
  %edac_mode.i.i = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %edac_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 5, ptr %edac_mode.i.i, align 8
  %55 = ptrtoint ptr %get_mtype.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %get_mtype.i.i, align 4
  %57 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %32, align 4
  %call7.i.i = call i32 %56(ptr noundef %58) #8
  %mtype.i.i = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 7
  %59 = ptrtoint ptr %mtype.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %call7.i.i, ptr %mtype.i.i, align 4
  %60 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_channels.i.i, align 4
  %div.i.i = udiv i32 %shr.i.i, %61
  %nr_pages.i.i = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 9
  %62 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div.i.i, ptr %nr_pages.i.i, align 4
  %grain.i.i = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 5
  %63 = ptrtoint ptr %grain.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %grain.i.i, align 4
  %64 = ptrtoint ptr %get_dtype.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %get_dtype.i.i, align 4
  %66 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %32, align 4
  %call10.i.i = call i32 %65(ptr noundef %67) #8
  %dtype.i.i = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 6
  %68 = ptrtoint ptr %dtype.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call10.i.i, ptr %dtype.i.i, align 8
  %inc.i.i = add nuw i32 %j.030.i.i, 1
  %69 = ptrtoint ptr %nr_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_channels.i.i, align 4
  %cmp3.i.i = icmp ult i32 %inc.i.i, %70
  br i1 %cmp3.i.i, label %for.body4.i.i.for.body4.i.i_crit_edge, label %for.body4.i.i.for.inc11.i.i_crit_edge

for.body4.i.i.for.inc11.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc11.i.i

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body4.i.i

for.inc11.i.i:                                    ; preds = %for.body4.i.i.for.inc11.i.i_crit_edge, %for.body.i.i.for.inc11.i.i_crit_edge
  %inc12.i.i = add nuw i32 %row.032.i.i, 1
  %71 = ptrtoint ptr %nr_csrows.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_csrows.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc12.i.i, %72
  br i1 %cmp.i.i, label %for.inc11.i.i.for.body.i.i_crit_edge, label %for.inc11.i.i.mc_init.exit_crit_edge

for.inc11.i.i.mc_init.exit_crit_edge:             ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mc_init.exit

for.inc11.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc11.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

mc_init.exit:                                     ; preds = %for.inc11.i.i.mc_init.exit_crit_edge, %if.end.i.mc_init.exit_crit_edge
  %73 = ptrtoint ptr %p_data30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %p_data30, align 4
  %quirks = getelementptr inbounds %struct.synps_platform_data, ptr %74, i32 0, i32 4
  %75 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %quirks, align 4
  %and = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %mc_init.exit.if.end38_crit_edge, label %if.then33

mc_init.exit.if.end38_crit_edge:                  ; preds = %mc_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then33:                                        ; preds = %mc_init.exit
  %77 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pvt_info, align 8
  %call.i = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i111 = icmp slt i32 %call.i, 0
  br i1 %cmp.i111, label %do.end.i, label %if.end.i113

do.end.i:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %call.i) #11
  br label %free_edac_mc

if.end.i113:                                      ; preds = %if.then33
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %79 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i113.dev_name.exit.i_crit_edge

if.end.i113.dev_name.exit.i_crit_edge:            ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end.i113
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end.i113.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %82, %if.end.i.i ], [ %80, %if.end.i113.dev_name.exit.i_crit_edge ]
  %call.i.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i, ptr noundef nonnull @intr_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %call20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %do.end9.i, label %if.end12.i

do.end9.i:                                        ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call11.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #11
  br label %free_edac_mc

if.end12.i:                                       ; preds = %dev_name.exit.i
  %p_data.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %78, i32 0, i32 3
  %83 = ptrtoint ptr %p_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %p_data.i.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.synps_platform_data, ptr %84, i32 0, i32 4
  %85 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %86, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i22.i = icmp eq i32 %and.i.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  %87 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %78, align 4
  br i1 %tobool.not.i22.i, label %do.body1.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 196608) #8, !srcloc !111
  br label %if.end38

do.body1.i.i:                                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr4.i.i = getelementptr i8, ptr %88, i32 131592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 100663296) #8, !srcloc !111
  br label %if.end38

if.end38:                                         ; preds = %do.body1.i.i, %do.body.i.i, %mc_init.exit.if.end38_crit_edge
  %call39 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call20, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %free_edac_mc

if.end47:                                         ; preds = %if.end38
  %89 = ptrtoint ptr %p_data30 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %p_data30, align 4
  %quirks49 = getelementptr inbounds %struct.synps_platform_data, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %quirks49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %quirks49, align 4
  %and50 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end47.if.end62_crit_edge, label %if.then52

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then52:                                        ; preds = %if.end47
  %call.i114 = call i32 @device_create_file(ptr noundef %call20, ptr noundef nonnull @dev_attr_inject_data_error) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %cmp.i115 = icmp slt i32 %call.i114, 0
  br i1 %cmp.i115, label %if.then52.do.end58_crit_edge, label %edac_create_sysfs_attributes.exit

if.then52.do.end58_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

edac_create_sysfs_attributes.exit:                ; preds = %if.then52
  %call2.i = call i32 @device_create_file(ptr noundef %call20, ptr noundef nonnull @dev_attr_inject_data_poison) #8
  %93 = call i32 @llvm.smin.i32(i32 %call2.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %tobool54.not = icmp sgt i32 %call2.i, -1
  br i1 %tobool54.not, label %edac_create_sysfs_attributes.exit.if.end62_crit_edge, label %edac_create_sysfs_attributes.exit.do.end58_crit_edge

edac_create_sysfs_attributes.exit.do.end58_crit_edge: ; preds = %edac_create_sysfs_attributes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58

edac_create_sysfs_attributes.exit.if.end62_crit_edge: ; preds = %edac_create_sysfs_attributes.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end58:                                         ; preds = %edac_create_sysfs_attributes.exit.do.end58_crit_edge, %if.then52.do.end58_crit_edge
  %retval.0.i117127 = phi i32 [ %93, %edac_create_sysfs_attributes.exit.do.end58_crit_edge ], [ %call.i114, %if.then52.do.end58_crit_edge ]
  %call60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %free_edac_mc

if.end62:                                         ; preds = %edac_create_sysfs_attributes.exit.if.end62_crit_edge, %if.end47.if.end62_crit_edge
  %94 = ptrtoint ptr %p_data30 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %p_data30, align 4
  %quirks64 = getelementptr inbounds %struct.synps_platform_data, ptr %95, i32 0, i32 4
  %96 = ptrtoint ptr %quirks64 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %quirks64, align 4
  %and65 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end62.if.end68_crit_edge, label %if.then67

if.end62.if.end68_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then67:                                        ; preds = %if.end62
  %98 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %11, align 4
  %add.ptr.i = getelementptr i8, ptr %99, i32 512
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %101 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %11, align 4
  %add.ptr.1.i = getelementptr i8, ptr %102, i32 516
  %103 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %104 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %11, align 4
  %add.ptr.2.i = getelementptr i8, ptr %105, i32 520
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2.i) #8, !srcloc !112
  %107 = call i32 @llvm.bswap.i32(i32 %106) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %108 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %11, align 4
  %add.ptr.3.i = getelementptr i8, ptr %109, i32 524
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3.i) #8, !srcloc !112
  %111 = call i32 @llvm.bswap.i32(i32 %110) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %11, align 4
  %add.ptr.4.i = getelementptr i8, ptr %113, i32 528
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.4.i) #8, !srcloc !112
  %115 = call i32 @llvm.bswap.i32(i32 %114) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %116 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %11, align 4
  %add.ptr.5.i = getelementptr i8, ptr %117, i32 532
  %118 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.5.i) #8, !srcloc !112
  %119 = call i32 @llvm.bswap.i32(i32 %118) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %120 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %11, align 4
  %add.ptr.6.i = getelementptr i8, ptr %121, i32 536
  %122 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.6.i) #8, !srcloc !112
  %123 = call i32 @llvm.bswap.i32(i32 %122) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %124 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %11, align 4
  %add.ptr.7.i = getelementptr i8, ptr %125, i32 540
  %126 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.7.i) #8, !srcloc !112
  %127 = call i32 @llvm.bswap.i32(i32 %126) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %128 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %11, align 4
  %add.ptr.8.i = getelementptr i8, ptr %129, i32 544
  %130 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.8.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %131 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %11, align 4
  %add.ptr.9.i = getelementptr i8, ptr %132, i32 548
  %133 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.9.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %134 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %11, align 4
  %add.ptr.10.i = getelementptr i8, ptr %135, i32 552
  %136 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.10.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %137 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %11, align 4
  %add.ptr.11.i = getelementptr i8, ptr %138, i32 556
  %139 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.11.i) #8, !srcloc !112
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !113
  %and.i.i118 = and i32 %119, 15
  %add.i.i = add nuw nsw i32 %and.i.i118, 6
  %row_shift.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 7
  %140 = ptrtoint ptr %row_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %add.i.i, ptr %row_shift.i.i, align 4
  %shr.i.i119 = lshr i32 %119, 8
  %and3.i.i = and i32 %shr.i.i119, 15
  %add4.i.i = add nuw nsw i32 %and3.i.i, 7
  %arrayidx6.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 1
  %141 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add4.i.i, ptr %arrayidx6.i.i, align 4
  %shr8.i.i = lshr i32 %119, 16
  %and9.i.i = and i32 %shr8.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and9.i.i)
  %cmp.not.i.i = icmp eq i32 %and9.i.i, 15
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then67.setup_row_address_map.exit.i_crit_edge

if.then67.setup_row_address_map.exit.i_crit_edge: ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_row_address_map.exit.i

if.else.i.i:                                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %142 = lshr i32 %139, 24
  %143 = call i32 @llvm.bswap.i32(i32 %136) #8
  %144 = call i32 @llvm.bswap.i32(i32 %133) #8
  %and16.i.i = and i32 %144, 15
  %shr21.i.i = lshr i32 %144, 8
  %and22.i.i = and i32 %shr21.i.i, 15
  %shr27.i.i = lshr i32 %144, 16
  %and28.i.i = and i32 %shr27.i.i, 15
  %shr33.i.i = lshr i32 %144, 24
  %and34.i.i = and i32 %shr33.i.i, 15
  %and39.i.i = and i32 %143, 15
  %shr44.i.i = lshr i32 %143, 8
  %and45.i.i = and i32 %shr44.i.i, 15
  %shr50.i.i = lshr i32 %143, 16
  %and51.i.i = and i32 %shr50.i.i, 15
  %shr56.i.i = lshr i32 %143, 24
  %and57.i.i = and i32 %shr56.i.i, 15
  %and62.i.i = and i32 %142, 15
  br label %setup_row_address_map.exit.i

setup_row_address_map.exit.i:                     ; preds = %if.else.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge
  %add12.i.sink.in.i = phi i32 [ %and16.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.1.i.sink.in.i = phi i32 [ %and22.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.2.i.sink.in.i = phi i32 [ %and28.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.3.i.sink.in.i = phi i32 [ %and34.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.4.i.sink.in.i = phi i32 [ %and39.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.5.i.sink.in.i = phi i32 [ %and45.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.6.i.sink.in.i = phi i32 [ %and51.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.7.i.sink.in.i = phi i32 [ %and57.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %and9.sink.i.i = phi i32 [ %and62.i.i, %if.else.i.i ], [ %and9.i.i, %if.then67.setup_row_address_map.exit.i_crit_edge ]
  %add12.7.i.sink.i = add nuw nsw i32 %add12.7.i.sink.in.i, 15
  %add12.6.i.sink.i = add nuw nsw i32 %add12.6.i.sink.in.i, 14
  %add12.5.i.sink.i = add nuw nsw i32 %add12.5.i.sink.in.i, 13
  %add12.4.i.sink.i = add nuw nsw i32 %add12.4.i.sink.in.i, 12
  %add12.3.i.sink.i = add nuw nsw i32 %add12.3.i.sink.in.i, 11
  %add12.2.i.sink.i = add nuw nsw i32 %add12.2.i.sink.in.i, 10
  %add12.1.i.sink.i = add nuw nsw i32 %add12.1.i.sink.in.i, 9
  %add12.i.sink.i = add nuw nsw i32 %add12.i.sink.in.i, 8
  %145 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 2
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add12.i.sink.i, ptr %145, align 4
  %147 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 3
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add12.1.i.sink.i, ptr %147, align 4
  %149 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add12.2.i.sink.i, ptr %149, align 4
  %151 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 5
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %add12.3.i.sink.i, ptr %151, align 4
  %153 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 6
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %add12.4.i.sink.i, ptr %153, align 4
  %155 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 7
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add12.5.i.sink.i, ptr %155, align 4
  %157 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 8
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add12.6.i.sink.i, ptr %157, align 4
  %159 = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 9
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add12.7.i.sink.i, ptr %159, align 4
  %add12.8.i.i = or i32 %and9.sink.i.i, 16
  %arrayidx14.8.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 10
  %161 = ptrtoint ptr %arrayidx14.8.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %add12.8.i.i, ptr %arrayidx14.8.i.i, align 4
  %shr67.i.i = lshr i32 %119, 24
  %and68.i.i = and i32 %shr67.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and68.i.i)
  %cmp69.i.i = icmp eq i32 %and68.i.i, 15
  %add73.i.i = add nuw nsw i32 %and68.i.i, 17
  %spec.select.i.i = select i1 %cmp69.i.i, i32 0, i32 %add73.i.i
  %arrayidx75.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 11
  %162 = ptrtoint ptr %arrayidx75.i.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %spec.select.i.i, ptr %arrayidx75.i.i, align 4
  %and77.i.i = and i32 %123, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and77.i.i)
  %cmp78.i.i = icmp eq i32 %and77.i.i, 15
  %add83.i.i = add nuw nsw i32 %and77.i.i, 18
  %cond85.i.i = select i1 %cmp78.i.i, i32 0, i32 %add83.i.i
  %arrayidx87.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 12
  %163 = ptrtoint ptr %arrayidx87.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %cond85.i.i, ptr %arrayidx87.i.i, align 4
  %shr89.i.i = lshr i32 %123, 8
  %and90.i.i = and i32 %shr89.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and90.i.i)
  %cmp91.i.i = icmp eq i32 %and90.i.i, 15
  %add97.i.i = add nuw nsw i32 %and90.i.i, 19
  %cond99.i.i = select i1 %cmp91.i.i, i32 0, i32 %add97.i.i
  %arrayidx101.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 13
  %164 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %cond99.i.i, ptr %arrayidx101.i.i, align 4
  %shr103.i.i = lshr i32 %123, 16
  %and104.i.i = and i32 %shr103.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and104.i.i)
  %cmp105.i.i = icmp eq i32 %and104.i.i, 15
  %add111.i.i = add nuw nsw i32 %and104.i.i, 20
  %cond113.i.i = select i1 %cmp105.i.i, i32 0, i32 %add111.i.i
  %arrayidx115.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 14
  %165 = ptrtoint ptr %arrayidx115.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %cond113.i.i, ptr %arrayidx115.i.i, align 4
  %shr117.i.i = lshr i32 %123, 24
  %and118.i.i = and i32 %shr117.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and118.i.i)
  %cmp119.i.i = icmp eq i32 %and118.i.i, 15
  %add125.i.i = add nuw nsw i32 %and118.i.i, 21
  %cond127.i.i = select i1 %cmp119.i.i, i32 0, i32 %add125.i.i
  %arrayidx129.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 15
  %166 = ptrtoint ptr %arrayidx129.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %cond127.i.i, ptr %arrayidx129.i.i, align 4
  %and131.i.i = and i32 %127, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and131.i.i)
  %cmp132.i.i = icmp eq i32 %and131.i.i, 15
  %add137.i.i = add nuw nsw i32 %and131.i.i, 22
  %cond139.i.i = select i1 %cmp132.i.i, i32 0, i32 %add137.i.i
  %arrayidx141.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 16
  %167 = ptrtoint ptr %arrayidx141.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %cond139.i.i, ptr %arrayidx141.i.i, align 4
  %shr143.i.i = lshr i32 %127, 8
  %and144.i.i = and i32 %shr143.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and144.i.i)
  %cmp145.i.i = icmp eq i32 %and144.i.i, 15
  %add151.i.i = add nuw nsw i32 %and144.i.i, 23
  %cond153.i.i = select i1 %cmp145.i.i, i32 0, i32 %add151.i.i
  %arrayidx155.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 7, i32 17
  %168 = ptrtoint ptr %arrayidx155.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %cond153.i.i, ptr %arrayidx155.i.i, align 4
  %169 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %11, align 4
  %171 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %170) #8, !srcloc !112
  %172 = call i32 @llvm.bswap.i32(i32 %171) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !114
  %and.i14.i = lshr i32 %172, 12
  %shr.i15.i = and i32 %and.i14.i, 3
  %col_shift.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 8
  %173 = ptrtoint ptr %col_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 0, ptr %col_shift.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 1
  %174 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %arrayidx3.i.i, align 4
  %and5.i.i = and i32 %107, 15
  %add.i16.i = add nuw nsw i32 %and5.i.i, 2
  %arrayidx7.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 2
  %175 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add.i16.i, ptr %arrayidx7.i.i, align 4
  %shr9.i.i = lshr i32 %107, 8
  %and10.i.i = and i32 %shr9.i.i, 15
  %add11.i.i = add nuw nsw i32 %and10.i.i, 3
  %arrayidx13.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 3
  %176 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %add11.i.i, ptr %arrayidx13.i.i, align 4
  %shr15.i.i = lshr i32 %107, 16
  %and16.i17.i = and i32 %shr15.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and16.i17.i)
  %cmp.i.i120 = icmp eq i32 %and16.i17.i, 15
  %add20.i.i = add nuw nsw i32 %and16.i17.i, 4
  %spec.select.i18.i = select i1 %cmp.i.i120, i32 0, i32 %add20.i.i
  %arrayidx22.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 4
  %177 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %spec.select.i18.i, ptr %arrayidx22.i.i, align 4
  %shr24.i.i = lshr i32 %107, 24
  %and25.i.i = and i32 %shr24.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and25.i.i)
  %cmp26.i.i = icmp eq i32 %and25.i.i, 15
  %add32.i.i = add nuw nsw i32 %and25.i.i, 5
  %cond34.i.i = select i1 %cmp26.i.i, i32 0, i32 %add32.i.i
  %arrayidx36.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 5
  %178 = ptrtoint ptr %arrayidx36.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %cond34.i.i, ptr %arrayidx36.i.i, align 4
  %and38.i.i = and i32 %111, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and38.i.i)
  %cmp39.i.i = icmp eq i32 %and38.i.i, 15
  %add44.i.i = add nuw nsw i32 %and38.i.i, 6
  %cond46.i.i = select i1 %cmp39.i.i, i32 0, i32 %add44.i.i
  %arrayidx48.i20.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 6
  %179 = ptrtoint ptr %arrayidx48.i20.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %cond46.i.i, ptr %arrayidx48.i20.i, align 4
  %shr50.i21.i = lshr i32 %111, 8
  %and51.i22.i = and i32 %shr50.i21.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and51.i22.i)
  %cmp52.i.i = icmp eq i32 %and51.i22.i, 15
  %add58.i23.i = add nuw nsw i32 %and51.i22.i, 7
  %cond60.i.i = select i1 %cmp52.i.i, i32 0, i32 %add58.i23.i
  %arrayidx62.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 7
  %180 = ptrtoint ptr %arrayidx62.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %cond60.i.i, ptr %arrayidx62.i.i, align 4
  %shr64.i.i = lshr i32 %111, 16
  %and65.i.i = and i32 %shr64.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and65.i.i)
  %cmp66.i.i = icmp eq i32 %and65.i.i, 15
  %add72.i.i = add nuw nsw i32 %and65.i.i, 8
  %cond74.i.i = select i1 %cmp66.i.i, i32 0, i32 %add72.i.i
  %arrayidx76.i24.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 8
  %181 = ptrtoint ptr %arrayidx76.i24.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %cond74.i.i, ptr %arrayidx76.i24.i, align 4
  %shr78.i.i = lshr i32 %111, 24
  %and79.i.i = and i32 %shr78.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and79.i.i)
  %cmp80.i.i = icmp eq i32 %and79.i.i, 15
  %add86.i.i = add nuw nsw i32 %and79.i.i, 9
  %cond88.i.i = select i1 %cmp80.i.i, i32 0, i32 %add86.i.i
  %arrayidx90.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 9
  %182 = ptrtoint ptr %arrayidx90.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %cond88.i.i, ptr %arrayidx90.i.i, align 4
  %183 = zext i32 %shr.i15.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i15.i, label %if.else206.i.i [
    i32 0, label %if.then.i.i
    i32 1, label %if.then148.i.i
  ]

if.then.i.i:                                      ; preds = %setup_row_address_map.exit.i
  %and92.i.i = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i.i)
  %tobool.not.i.i121 = icmp eq i32 %and92.i.i, 0
  %and121.i.i = and i32 %115, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and121.i.i)
  %cmp122.i.i = icmp eq i32 %and121.i.i, 15
  %add127.i.i = add nuw nsw i32 %and121.i.i, 10
  %spec.select371.i.i = select i1 %cmp122.i.i, i32 0, i32 %add127.i.i
  br i1 %tobool.not.i.i121, label %if.else.i25.i, label %if.then93.i.i

if.then93.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx105.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 10
  %184 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.select371.i.i, ptr %arrayidx105.i.i, align 4
  %shr107.i.i = lshr i32 %115, 8
  %and108.i.i = and i32 %shr107.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and108.i.i)
  %cmp109.i.i = icmp eq i32 %and108.i.i, 15
  %add115.i.i = add nuw nsw i32 %and108.i.i, 11
  %cond117.i.i = select i1 %cmp109.i.i, i32 0, i32 %add115.i.i
  %arrayidx119.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %185 = ptrtoint ptr %arrayidx119.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %cond117.i.i, ptr %arrayidx119.i.i, align 4
  br label %setup_address_map.exit

if.else.i25.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx131.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %186 = ptrtoint ptr %arrayidx131.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %spec.select371.i.i, ptr %arrayidx131.i.i, align 4
  %shr133.i.i = lshr i32 %115, 8
  %and134.i.i = and i32 %shr133.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and134.i.i)
  %cmp135.i.i = icmp eq i32 %and134.i.i, 15
  %add141.i.i = add nuw nsw i32 %and134.i.i, 11
  %cond143.i.i = select i1 %cmp135.i.i, i32 0, i32 %add141.i.i
  %arrayidx145.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 13
  %187 = ptrtoint ptr %arrayidx145.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %cond143.i.i, ptr %arrayidx145.i.i, align 4
  br label %setup_address_map.exit

if.then148.i.i:                                   ; preds = %setup_row_address_map.exit.i
  %and149.i.i = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and149.i.i)
  %tobool150.not.i.i = icmp eq i32 %and149.i.i, 0
  br i1 %tobool150.not.i.i, label %if.else178.i.i, label %if.then151.i.i

if.then151.i.i:                                   ; preds = %if.then148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx165.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 10
  %188 = ptrtoint ptr %arrayidx165.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %cond88.i.i, ptr %arrayidx165.i.i, align 4
  %and167.i.i = and i32 %115, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and167.i.i)
  %cmp168.i.i = icmp eq i32 %and167.i.i, 15
  %add173.i.i = add nuw nsw i32 %and167.i.i, 10
  %cond175.i.i = select i1 %cmp168.i.i, i32 0, i32 %add173.i.i
  %arrayidx177.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %189 = ptrtoint ptr %arrayidx177.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %cond175.i.i, ptr %arrayidx177.i.i, align 4
  br label %for.body.i.i122.preheader

if.else178.i.i:                                   ; preds = %if.then148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx192.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %190 = ptrtoint ptr %arrayidx192.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %cond88.i.i, ptr %arrayidx192.i.i, align 4
  %and194.i.i = and i32 %115, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and194.i.i)
  %cmp195.i.i = icmp eq i32 %and194.i.i, 15
  %add200.i.i = add nuw nsw i32 %and194.i.i, 10
  %cond202.i.i = select i1 %cmp195.i.i, i32 0, i32 %add200.i.i
  %arrayidx204.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 13
  %191 = ptrtoint ptr %arrayidx204.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %cond202.i.i, ptr %arrayidx204.i.i, align 4
  br label %for.body.i.i122.preheader

if.else206.i.i:                                   ; preds = %setup_row_address_map.exit.i
  %and207.i.i = and i32 %172, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i.i)
  %tobool208.not.i.i = icmp eq i32 %and207.i.i, 0
  br i1 %tobool208.not.i.i, label %if.else250.i.i, label %if.then209.i.i

if.then209.i.i:                                   ; preds = %if.else206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx223.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 10
  %192 = ptrtoint ptr %arrayidx223.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 %cond74.i.i, ptr %arrayidx223.i.i, align 4
  %arrayidx237.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %193 = ptrtoint ptr %arrayidx237.i.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %cond88.i.i, ptr %arrayidx237.i.i, align 4
  %and239.i.i = and i32 %115, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %and239.i.i)
  %cmp240.i.i = icmp eq i32 %and239.i.i, 15
  %add245.i.i = add nuw nsw i32 %and239.i.i, 10
  %cond247.i.i = select i1 %cmp240.i.i, i32 0, i32 %add245.i.i
  %arrayidx249.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 13
  %194 = ptrtoint ptr %arrayidx249.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %cond247.i.i, ptr %arrayidx249.i.i, align 4
  br label %for.body.i.i122.preheader

if.else250.i.i:                                   ; preds = %if.else206.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx264.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 11
  %195 = ptrtoint ptr %arrayidx264.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %cond74.i.i, ptr %arrayidx264.i.i, align 4
  %arrayidx278.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 13
  %196 = ptrtoint ptr %arrayidx278.i.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %cond88.i.i, ptr %arrayidx278.i.i, align 4
  br label %for.body.i.i122.preheader

for.body.i.i122.preheader:                        ; preds = %if.else250.i.i, %if.then209.i.i, %if.else178.i.i, %if.then151.i.i
  br label %for.body.i.i122

for.body.i.i122:                                  ; preds = %for.body.i.i122.for.body.i.i122_crit_edge, %for.body.i.i122.preheader
  %index.0377.i.i = phi i32 [ %dec.i.i, %for.body.i.i122.for.body.i.i122_crit_edge ], [ 9, %for.body.i.i122.preheader ]
  %sub.i.i = sub i32 %index.0377.i.i, %shr.i15.i
  %arrayidx286.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 %sub.i.i
  %197 = ptrtoint ptr %arrayidx286.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx286.i.i, align 4
  %arrayidx288.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 8, i32 %index.0377.i.i
  %199 = ptrtoint ptr %arrayidx288.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 %198, ptr %arrayidx288.i.i, align 4
  store i32 0, ptr %arrayidx286.i.i, align 4
  %dec.i.i = add nsw i32 %index.0377.i.i, -1
  %cmp284.i.i = icmp ugt i32 %dec.i.i, %shr.i15.i
  br i1 %cmp284.i.i, label %for.body.i.i122.for.body.i.i122_crit_edge, label %for.body.i.i122.setup_address_map.exit_crit_edge

for.body.i.i122.setup_address_map.exit_crit_edge: ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %setup_address_map.exit

for.body.i.i122.for.body.i.i122_crit_edge:        ; preds = %for.body.i.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i122

setup_address_map.exit:                           ; preds = %for.body.i.i122.setup_address_map.exit_crit_edge, %if.else.i25.i, %if.then93.i.i
  %200 = call i32 @llvm.bswap.i32(i32 %130) #8
  %201 = call i32 @llvm.bswap.i32(i32 %103) #8
  %202 = lshr i32 %100, 24
  %and.i27.i = and i32 %201, 31
  %add.i28.i = add nuw nsw i32 %and.i27.i, 2
  %bank_shift.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 9
  %203 = ptrtoint ptr %bank_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %add.i28.i, ptr %bank_shift.i.i, align 4
  %shr.i29.i = lshr i32 %201, 8
  %and3.i30.i = and i32 %shr.i29.i, 31
  %add4.i31.i = add nuw nsw i32 %and3.i30.i, 3
  %arrayidx6.i32.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 9, i32 1
  %204 = ptrtoint ptr %arrayidx6.i32.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add4.i31.i, ptr %arrayidx6.i32.i, align 4
  %shr8.i33.i = lshr i32 %201, 16
  %and9.i34.i = and i32 %shr8.i33.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and9.i34.i)
  %cmp.i35.i = icmp eq i32 %and9.i34.i, 31
  %add13.i.i = add nuw nsw i32 %and9.i34.i, 4
  %spec.select.i36.i = select i1 %cmp.i35.i, i32 0, i32 %add13.i.i
  %arrayidx15.i37.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 9, i32 2
  %205 = ptrtoint ptr %arrayidx15.i37.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %spec.select.i36.i, ptr %arrayidx15.i37.i, align 4
  %and.i39.i = and i32 %200, 31
  %add.i40.i = add nuw nsw i32 %and.i39.i, 2
  %bankgrp_shift.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 10
  %206 = ptrtoint ptr %bankgrp_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %add.i40.i, ptr %bankgrp_shift.i.i, align 4
  %shr.i41.i = lshr i32 %200, 8
  %and3.i42.i = and i32 %shr.i41.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and3.i42.i)
  %cmp.i43.i = icmp eq i32 %and3.i42.i, 31
  %add7.i.i = add nuw nsw i32 %and3.i42.i, 3
  %spec.select.i44.i = select i1 %cmp.i43.i, i32 0, i32 %add7.i.i
  %arrayidx9.i.i = getelementptr %struct.synps_edac_priv, ptr %11, i32 0, i32 10, i32 1
  %207 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %spec.select.i44.i, ptr %arrayidx9.i.i, align 4
  %and.i45.i = and i32 %202, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %and.i45.i)
  %cmp.i46.i = icmp eq i32 %and.i45.i, 31
  %add.i47.i = add nuw nsw i32 %and.i45.i, 6
  %spec.select.i48.i = select i1 %cmp.i46.i, i32 0, i32 %add.i47.i
  %rank_shift.i.i = getelementptr inbounds %struct.synps_edac_priv, ptr %11, i32 0, i32 11
  %208 = ptrtoint ptr %rank_shift.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %spec.select.i48.i, ptr %rank_shift.i.i, align 4
  br label %if.end68

if.end68:                                         ; preds = %setup_address_map.exit, %if.end62.if.end68_crit_edge
  %209 = ptrtoint ptr %p_data30 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %p_data30, align 4
  %quirks70 = getelementptr inbounds %struct.synps_platform_data, ptr %210, i32 0, i32 4
  %211 = ptrtoint ptr %quirks70 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %quirks70, align 4
  %and71 = and i32 %212, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %do.body74, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !115
  call void @arm_heavy_mb() #8
  %add.ptr = getelementptr i8, ptr %call1, i32 196
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !111
  br label %cleanup

free_edac_mc:                                     ; preds = %do.end58, %do.end44, %do.end9.i, %do.end.i
  %rc.1 = phi i32 [ %call39, %do.end44 ], [ %retval.0.i117127, %do.end58 ], [ %call.i, %do.end.i ], [ %call.i.i, %do.end9.i ]
  call void @edac_mc_free(ptr noundef nonnull %call20) #8
  br label %cleanup

cleanup:                                          ; preds = %free_edac_mc, %do.body74, %if.end68.cleanup_crit_edge, %do.end25, %do.end, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %rc.1, %free_edac_mc ], [ -12, %do.end25 ], [ -6, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %do.body74 ], [ 0, %if.end68.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 8
  %p_data = getelementptr inbounds %struct.synps_edac_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data, align 4
  %quirks = getelementptr inbounds %struct.synps_platform_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !116
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 131596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 100663296) #8, !srcloc !111
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p_data, align 4
  %quirks2 = getelementptr inbounds %struct.synps_platform_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %quirks2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks2, align 4
  %and3 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_inject_data_error) #8
  tail call void @device_remove_file(ptr noundef %1, ptr noundef nonnull @dev_attr_inject_data_poison) #8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call7 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #8
  tail call void @edac_mc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_errors(ptr noundef %mci) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %p_data1 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %p_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_data1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call = tail call i32 %5(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stat = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stat, align 4
  %ce_cnt2 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %ce_cnt2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ce_cnt2, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %ce_cnt2, align 4
  %ue_cnt = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ue_cnt, align 4
  %ue_cnt4 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %ue_cnt4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ue_cnt4, align 4
  %add5 = add i32 %13, %11
  store i32 %add5, ptr %ue_cnt4, align 4
  tail call fastcc void @handle_error(ptr noundef %mci, ptr noundef %stat)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %14 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp = icmp sgt i32 %14, 2
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %ce_cnt2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ce_cnt2, align 4
  %17 = ptrtoint ptr %ue_cnt4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ue_cnt4, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %16, i32 noundef %18) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @handle_error(ptr noundef %mci, ptr nocapture noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  %ceinfo = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2
  %p_data = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %p_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p_data, align 4
  %quirks = getelementptr inbounds %struct.synps_platform_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %message3 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ceinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ceinfo, align 4
  %bank6 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %bank6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bank6, align 4
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bankgrpnr = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 5
  %12 = ptrtoint ptr %bankgrpnr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bankgrpnr, align 4
  %blknr = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %blknr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blknr, align 4
  %bitpos = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %bitpos to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bitpos, align 4
  %data = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %message3, i32 noundef 256, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19)
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %col = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %col to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %col, align 4
  %bitpos7 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 3
  %22 = ptrtoint ptr %bitpos7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bitpos7, align 4
  %data8 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 2, i32 4
  %24 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data8, align 4
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %message3, i32 noundef 256, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19, i32 noundef %9, i32 noundef %11, i32 noundef %21, i32 noundef %23, i32 noundef %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %26 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p, align 4
  %conv = trunc i32 %27 to i16
  %message11 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 1
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %mci, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %message11, ptr noundef nonnull @.str.21) #8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %entry.if.end13_crit_edge
  %ue_cnt = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 1
  %28 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool14.not = icmp eq i32 %29, 0
  br i1 %tobool14.not, label %if.end13.if.end40_crit_edge, label %if.then15

if.end13.if.end40_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then15:                                        ; preds = %if.end13
  %ueinfo = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 3
  %p_data16 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %p_data16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_data16, align 4
  %quirks17 = getelementptr inbounds %struct.synps_platform_data, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %quirks17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks17, align 4
  %and18 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  %message29 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %ueinfo to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ueinfo, align 4
  %bank32 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 3, i32 2
  %36 = ptrtoint ptr %bank32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %bank32, align 4
  br i1 %tobool19.not, label %if.else28, label %if.then20

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %bankgrpnr25 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 3, i32 5
  %38 = ptrtoint ptr %bankgrpnr25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bankgrpnr25, align 4
  %blknr26 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 3, i32 6
  %40 = ptrtoint ptr %blknr26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %blknr26, align 4
  %call27 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %message29, i32 noundef 256, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i32 noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef %41)
  br label %if.end35

if.else28:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %col33 = getelementptr inbounds %struct.synps_ecc_status, ptr %p, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %col33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %col33, align 4
  %call34 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %message29, i32 noundef 256, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %35, i32 noundef %37, i32 noundef %43)
  br label %if.end35

if.end35:                                         ; preds = %if.else28, %if.then20
  %44 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %ue_cnt, align 4
  %conv37 = trunc i32 %45 to i16
  %message38 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 1
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %mci, i16 noundef zeroext %conv37, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %message38, ptr noundef nonnull @.str.21) #8
  br label %if.end40

if.end40:                                         ; preds = %if.end35, %if.end13.if.end40_crit_edge
  %46 = call ptr @memset(ptr %p, i32 0, i32 64)
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intr_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %p_data1 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %p_data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p_data1, align 4
  %quirks = getelementptr inbounds %struct.synps_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %quirks, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 131584
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !117
  %and4 = and i32 %9, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool6.not = icmp eq i32 %and4, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %regval.0 = phi i32 [ -1, %entry.if.end8_crit_edge ], [ %and4, %if.then.if.end8_crit_edge ]
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call9 = tail call i32 %11(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %stat = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat, align 4
  %ce_cnt13 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ce_cnt13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ce_cnt13, align 4
  %add = add i32 %15, %13
  store i32 %add, ptr %ce_cnt13, align 4
  %ue_cnt = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ue_cnt, align 4
  %ue_cnt15 = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %ue_cnt15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ue_cnt15, align 4
  %add16 = add i32 %19, %17
  store i32 %add16, ptr %ue_cnt15, align 4
  tail call fastcc void @handle_error(ptr noundef %dev_id, ptr noundef %stat)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %20 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp sgt i32 %20, 2
  br i1 %cmp, label %do.end, label %if.end12.do.end26_crit_edge

if.end12.do.end26_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end26

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %ce_cnt13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ce_cnt13, align 4
  %23 = ptrtoint ptr %ue_cnt15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ue_cnt15, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.30, i32 noundef %22, i32 noundef %24) #11
  br label %do.end26

do.end26:                                         ; preds = %do.end, %if.end12.do.end26_crit_edge
  %25 = ptrtoint ptr %p_data1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %p_data1, align 4
  %quirks28 = getelementptr inbounds %struct.synps_platform_data, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %quirks28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %quirks28, align 4
  %and29 = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body32, label %do.end26.cleanup_crit_edge

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %regval.0)
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr36 = getelementptr i8, ptr %31, i32 131584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %29) #8, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %do.body32, %do.end26.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ 1, %do.body32 ], [ 1, %do.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_data_error_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 184
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !112
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !119
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr7 = getelementptr i8, ptr %7, i32 188
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !112
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %poison_addr = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %poison_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %poison_addr, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.32, i32 noundef %5, i32 noundef %9, i32 noundef %11)
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_data_error_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %poison_addr = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 6
  %call.i = tail call i32 @_kstrtoul(ptr noundef %data, i32 noundef 0, ptr noundef %poison_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %poison_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poison_addr, align 4
  %shr.i = lshr i32 %3, 3
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %if.end
  %index.0130.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %row.0129.i = phi i32 [ 0, %if.end ], [ %or.i, %if.then.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 7, i32 %index.0130.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %for.body.i.for.end.i_crit_edge, label %if.then.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.then.i:                                        ; preds = %for.body.i
  %shr3.i = lshr i32 %shr.i, %5
  %and.i = and i32 %shr3.i, 1
  %shl.i = shl nuw nsw i32 %and.i, %index.0130.i
  %or.i = or i32 %shl.i, %row.0129.i
  %inc.i = add nuw nsw i32 %index.0130.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 18
  br i1 %exitcond.not.i, label %if.then.i.for.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.then.i.for.end.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.then.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %row.0.lcssa.i = phi i32 [ %row.0129.i, %for.body.i.for.end.i_crit_edge ], [ %or.i, %if.then.i.for.end.i_crit_edge ]
  br label %for.body6.i

for.body6.i:                                      ; preds = %if.then10.i.for.body6.i_crit_edge, %for.end.i
  %index.1132.i = phi i32 [ 0, %for.end.i ], [ %inc20.i, %if.then10.i.for.body6.i_crit_edge ]
  %col.0131.i = phi i32 [ 0, %for.end.i ], [ %or16.i, %if.then10.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 8, i32 %index.1132.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not.i = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index.1132.i)
  %cmp9.i = icmp ult i32 %index.1132.i, 3
  %or.cond.i = select i1 %tobool8.not.i, i1 true, i1 %cmp9.i
  br i1 %or.cond.i, label %if.then10.i, label %for.body6.i.for.end21.i_crit_edge

for.body6.i.for.end21.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

if.then10.i:                                      ; preds = %for.body6.i
  %shr13.i = lshr i32 %shr.i, %7
  %and14.i = and i32 %shr13.i, 1
  %shl15.i = shl nuw nsw i32 %and14.i, %index.1132.i
  %or16.i = or i32 %shl15.i, %col.0131.i
  %inc20.i = add nuw nsw i32 %index.1132.i, 1
  %exitcond137.not.i = icmp eq i32 %inc20.i, 14
  br i1 %exitcond137.not.i, label %if.then10.i.for.end21.i_crit_edge, label %if.then10.i.for.body6.i_crit_edge

if.then10.i.for.body6.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i

if.then10.i.for.end21.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end21.i

for.end21.i:                                      ; preds = %if.then10.i.for.end21.i_crit_edge, %for.body6.i.for.end21.i_crit_edge
  %col.0.lcssa.i = phi i32 [ %col.0131.i, %for.body6.i.for.end21.i_crit_edge ], [ %or16.i, %if.then10.i.for.end21.i_crit_edge ]
  %arrayidx25.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 9, i32 0
  %8 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool26.not.i = icmp eq i32 %9, 0
  br i1 %tobool26.not.i, label %for.end21.i.for.end38.i_crit_edge, label %if.then27.i

for.end21.i.for.end38.i_crit_edge:                ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i

if.then27.i:                                      ; preds = %for.end21.i
  %shr30.i = lshr i32 %shr.i, %9
  %and31.i = and i32 %shr30.i, 1
  %arrayidx25.1.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx25.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool26.not.1.i = icmp eq i32 %11, 0
  br i1 %tobool26.not.1.i, label %if.then27.i.for.end38.i_crit_edge, label %if.then27.1.i

if.then27.i.for.end38.i_crit_edge:                ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i

if.then27.1.i:                                    ; preds = %if.then27.i
  %shr30.1.i = lshr i32 %shr.i, %11
  %and31.1.i = shl nuw i32 %shr30.1.i, 1
  %shl32.1.i = and i32 %and31.1.i, 2
  %or33.1.i = or i32 %shl32.1.i, %and31.i
  %arrayidx25.2.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 9, i32 2
  %12 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool26.not.2.i = icmp eq i32 %13, 0
  br i1 %tobool26.not.2.i, label %if.then27.1.i.for.end38.i_crit_edge, label %if.then27.2.i

if.then27.1.i.for.end38.i_crit_edge:              ; preds = %if.then27.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end38.i

if.then27.2.i:                                    ; preds = %if.then27.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr30.2.i = lshr i32 %shr.i, %13
  %and31.2.i = shl i32 %shr30.2.i, 2
  %shl32.2.i = and i32 %and31.2.i, 4
  %or33.2.i = or i32 %shl32.2.i, %or33.1.i
  br label %for.end38.i

for.end38.i:                                      ; preds = %if.then27.2.i, %if.then27.1.i.for.end38.i_crit_edge, %if.then27.i.for.end38.i_crit_edge, %for.end21.i.for.end38.i_crit_edge
  %bank.0.lcssa.i = phi i32 [ 0, %for.end21.i.for.end38.i_crit_edge ], [ %and31.i, %if.then27.i.for.end38.i_crit_edge ], [ %or33.1.i, %if.then27.1.i.for.end38.i_crit_edge ], [ %or33.2.i, %if.then27.2.i ]
  %arrayidx42.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 10, i32 0
  %14 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool43.not.i = icmp eq i32 %15, 0
  br i1 %tobool43.not.i, label %for.end38.i.ddr_poison_setup.exit_crit_edge, label %if.then44.i

for.end38.i.ddr_poison_setup.exit_crit_edge:      ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ddr_poison_setup.exit

if.then44.i:                                      ; preds = %for.end38.i
  %shr47.i = lshr i32 %shr.i, %15
  %and48.i = and i32 %shr47.i, 1
  %arrayidx42.1.i = getelementptr %struct.synps_edac_priv, ptr %1, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx42.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx42.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool43.not.1.i = icmp eq i32 %17, 0
  br i1 %tobool43.not.1.i, label %if.then44.i.ddr_poison_setup.exit_crit_edge, label %if.then44.1.i

if.then44.i.ddr_poison_setup.exit_crit_edge:      ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ddr_poison_setup.exit

if.then44.1.i:                                    ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #10
  %shr47.1.i = lshr i32 %shr.i, %17
  %and48.1.i = shl nuw i32 %shr47.1.i, 1
  %shl49.1.i = and i32 %and48.1.i, 2
  %or50.1.i = or i32 %shl49.1.i, %and48.i
  br label %ddr_poison_setup.exit

ddr_poison_setup.exit:                            ; preds = %if.then44.1.i, %if.then44.i.ddr_poison_setup.exit_crit_edge, %for.end38.i.ddr_poison_setup.exit_crit_edge
  %bankgrp.0.lcssa.i = phi i32 [ 0, %for.end38.i.ddr_poison_setup.exit_crit_edge ], [ %and48.i, %if.then44.i.ddr_poison_setup.exit_crit_edge ], [ %or50.1.i, %if.then44.1.i ]
  %rank_shift.i = getelementptr inbounds %struct.synps_edac_priv, ptr %1, i32 0, i32 11
  %18 = ptrtoint ptr %rank_shift.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rank_shift.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool57.not.i = icmp eq i32 %19, 0
  %shr61.i = lshr i32 %shr.i, %19
  %and62.i = shl i32 %shr61.i, 24
  %phi.bo.i = and i32 %and62.i, 16777216
  %rank.0.i = select i1 %tobool57.not.i, i32 0, i32 %phi.bo.i
  %and67.i = and i32 %col.0.lcssa.i, 4095
  %or68.i = or i32 %rank.0.i, %and67.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %or68.i) #8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #8, !srcloc !111
  %shl69.i = shl nsw i32 %bankgrp.0.lcssa.i, 28
  %and70.i = and i32 %shl69.i, 805306368
  %shl71.i = shl nsw i32 %bank.0.lcssa.i, 24
  %and72.i = and i32 %shl71.i, 117440512
  %and75.i = and i32 %row.0.lcssa.i, 262143
  %or73.i = or i32 %and72.i, %and75.i
  %or76.i = or i32 %or73.i, %and70.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %or76.i) #8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr81.i = getelementptr i8, ptr %25, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %23) #8, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %ddr_poison_setup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %ddr_poison_setup.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_data_poison_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %5 = and i32 %4, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 50331648, i32 %5)
  %cmp = icmp eq i32 %5, 50331648
  %cond = select i1 %cmp, ptr @.str.35, ptr @.str.36
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inject_data_poison_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef readonly %data, i32 noundef returned %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #8, !srcloc !111
  %call = tail call i32 @strncmp(ptr noundef %data, ptr noundef nonnull dereferenceable(3) @.str.19, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 116
  br i1 %cmp, label %do.body2, label %do.body7

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 50331648) #8, !srcloc !111
  br label %do.body12

do.body7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #8, !srcloc !111
  br label %do.body12

do.body12:                                        ; preds = %do.body7, %do.body2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr16 = getelementptr i8, ptr %7, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 16777216) #8, !srcloc !111
  ret i32 %count
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_get_error_info(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stat = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %and = lshr i32 %3, 8
  %shr = and i32 %and, 255
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %stat, align 4
  %and2 = and i32 %3, 255
  %ue_cnt = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and2, ptr %ue_cnt, align 4
  %add.ptr5 = getelementptr i8, ptr %1, i32 200
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !112
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  %8 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end.ue_err_crit_edge, label %if.end14

if.end.ue_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ue_err

if.end14:                                         ; preds = %if.end
  %and15 = lshr i32 %7, 1
  %shr16 = and i32 %and15, 127
  %ceinfo = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2
  %bitpos = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 3
  %10 = ptrtoint ptr %bitpos to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %shr16, ptr %bitpos, align 4
  %add.ptr19 = getelementptr i8, ptr %1, i32 204
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !112
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %and23 = lshr i32 %12, 12
  %shr24 = and i32 %and23, 65535
  %13 = ptrtoint ptr %ceinfo to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr24, ptr %ceinfo, align 4
  %and26 = and i32 %12, 4095
  %col = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 1
  %14 = ptrtoint ptr %col to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and26, ptr %col, align 4
  %and28 = lshr i32 %12, 28
  %shr29 = and i32 %and28, 7
  %bank = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 2
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr29, ptr %bank, align 4
  %add.ptr33 = getelementptr i8, ptr %1, i32 208
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !112
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  %data = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %19 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp sgt i32 %19, 2
  br i1 %cmp, label %do.end, label %if.end14.ue_err_crit_edge

if.end14.ue_err_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %ue_err

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %bitpos to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bitpos, align 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef %21, i32 noundef %17) #11
  br label %ue_err

ue_err:                                           ; preds = %do.end, %if.end14.ue_err_crit_edge, %if.end.ue_err_crit_edge
  %clearval.0 = phi i32 [ 0, %if.end.ue_err_crit_edge ], [ 2, %do.end ], [ 2, %if.end14.ue_err_crit_edge ]
  %add.ptr51 = getelementptr i8, ptr %1, i32 220
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  %23 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool56.not = icmp eq i32 %24, 0
  %25 = and i32 %22, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not = icmp eq i32 %25, 0
  %or.cond132 = select i1 %tobool56.not, i1 true, i1 %tobool59.not
  br i1 %or.cond132, label %ue_err.do.body86_crit_edge, label %if.end61

ue_err.do.body86_crit_edge:                       ; preds = %ue_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

if.end61:                                         ; preds = %ue_err
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr64 = getelementptr i8, ptr %1, i32 224
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #8, !srcloc !112
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %and68 = lshr i32 %27, 12
  %shr69 = and i32 %and68, 65535
  %ueinfo = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3
  %28 = ptrtoint ptr %ueinfo to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr69, ptr %ueinfo, align 4
  %and71 = and i32 %27, 4095
  %col73 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 1
  %29 = ptrtoint ptr %col73 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and71, ptr %col73, align 4
  %and74 = lshr i32 %27, 28
  %shr75 = and i32 %and74, 7
  %bank77 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 2
  %30 = ptrtoint ptr %bank77 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %shr75, ptr %bank77, align 4
  %add.ptr80 = getelementptr i8, ptr %1, i32 228
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr80) #8, !srcloc !112
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %data85 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 4
  %33 = ptrtoint ptr %data85 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %data85, align 4
  %or = or i32 %clearval.0, 1
  br label %do.body86

do.body86:                                        ; preds = %if.end61, %ue_err.do.body86_crit_edge
  %clearval.1 = phi i32 [ %or, %if.end61 ], [ %clearval.0, %ue_err.do.body86_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %34 = tail call i32 @llvm.bswap.i32(i32 %clearval.1)
  %add.ptr89 = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %34) #8, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 0) #8, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %do.body86, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body86 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_get_mtype(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %base, i32 164
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %1 = and i32 %0, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 11, i32 15
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynq_get_dtype(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !112
  %1 = lshr i32 %0, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %switch.selectcmp = icmp eq i32 %and, 0
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %switch.selectcmp4 = icmp eq i32 %and, 1
  %switch.select5 = select i1 %switch.selectcmp4, i32 2, i32 %switch.select
  ret i32 %switch.select5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @zynq_get_ecc_state(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !112
  %1 = lshr i32 %0, 26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %and.i = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %switch.selectcmp.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %switch.selectcmp4.i = icmp eq i32 %and.i, 1
  %cmp = xor i1 %switch.selectcmp4.i, %switch.selectcmp.i
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %base, i32 244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  %3 = and i32 %2, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %3)
  %cmp3 = icmp eq i32 %3, 67108864
  %or.cond = select i1 %cmp3, i1 %switch.selectcmp4.i, i1 false
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ %or.cond, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_get_error_info(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 120
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %stat = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2
  %and = lshr i32 %3, 8
  %shr = and i32 %and, 15
  %4 = ptrtoint ptr %stat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %stat, align 4
  %and2 = lshr i32 %3, 16
  %shr3 = and i32 %and2, 15
  %ue_cnt = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr3, ptr %ue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr)
  %tobool5.not = icmp eq i32 %shr, 0
  br i1 %tobool5.not, label %if.end.ue_err_crit_edge, label %if.end7

if.end.ue_err_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ue_err

if.end7:                                          ; preds = %if.end
  %and8 = and i32 %3, 127
  %ceinfo = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2
  %bitpos = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 3
  %6 = ptrtoint ptr %bitpos to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and8, ptr %bitpos, align 4
  %add.ptr11 = getelementptr i8, ptr %1, i32 132
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  %8 = and i32 %7, -64768
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %ceinfo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ceinfo, align 4
  %add.ptr19 = getelementptr i8, ptr %1, i32 136
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #8, !srcloc !112
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  %and23 = lshr i32 %12, 16
  %shr24 = and i32 %and23, 7
  %bank = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 2
  %13 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr24, ptr %bank, align 4
  %and26 = lshr i32 %12, 24
  %shr27 = and i32 %and26, 3
  %bankgrpnr = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 5
  %14 = ptrtoint ptr %bankgrpnr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr27, ptr %bankgrpnr, align 4
  %and29 = and i32 %12, 4095
  %blknr = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 6
  %15 = ptrtoint ptr %blknr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and29, ptr %blknr, align 4
  %add.ptr33 = getelementptr i8, ptr %1, i32 140
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !112
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %data = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 2, i32 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %data, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %19 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp = icmp sgt i32 %19, 1
  br i1 %cmp, label %do.end, label %if.end7.ue_errthread-pre-split_crit_edge

if.end7.ue_errthread-pre-split_crit_edge:         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %ue_errthread-pre-split

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !112
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %add.ptr49 = getelementptr i8, ptr %1, i32 144
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #8, !srcloc !112
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %add.ptr55 = getelementptr i8, ptr %1, i32 148
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #8, !srcloc !112
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %21, i32 noundef %23, i32 noundef %25) #11
  br label %ue_errthread-pre-split

ue_errthread-pre-split:                           ; preds = %do.end, %if.end7.ue_errthread-pre-split_crit_edge
  %26 = ptrtoint ptr %ue_cnt to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pr = load i32, ptr %ue_cnt, align 4
  br label %ue_err

ue_err:                                           ; preds = %ue_errthread-pre-split, %if.end.ue_err_crit_edge
  %27 = phi i32 [ %.pr, %ue_errthread-pre-split ], [ %shr3, %if.end.ue_err_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool64.not = icmp eq i32 %27, 0
  br i1 %tobool64.not, label %ue_err.out_crit_edge, label %if.end66

ue_err.out_crit_edge:                             ; preds = %ue_err
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end66:                                         ; preds = %ue_err
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr69 = getelementptr i8, ptr %1, i32 164
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  %29 = and i32 %28, -64768
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %ueinfo = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3
  %31 = ptrtoint ptr %ueinfo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ueinfo, align 4
  %add.ptr77 = getelementptr i8, ptr %1, i32 168
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #8, !srcloc !112
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %and81 = lshr i32 %33, 24
  %shr82 = and i32 %and81, 3
  %bankgrpnr84 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 5
  %34 = ptrtoint ptr %bankgrpnr84 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shr82, ptr %bankgrpnr84, align 4
  %and85 = lshr i32 %33, 16
  %shr86 = and i32 %and85, 7
  %bank88 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 2
  %35 = ptrtoint ptr %bank88 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %shr86, ptr %bank88, align 4
  %and89 = and i32 %33, 4095
  %blknr91 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 6
  %36 = ptrtoint ptr %blknr91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and89, ptr %blknr91, align 4
  %add.ptr94 = getelementptr i8, ptr %1, i32 172
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #8, !srcloc !112
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %data99 = getelementptr inbounds %struct.synps_edac_priv, ptr %priv, i32 0, i32 2, i32 3, i32 4
  %39 = ptrtoint ptr %data99 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %data99, align 4
  br label %out

out:                                              ; preds = %if.end66, %ue_err.out_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  tail call void @arm_heavy_mb() #8
  %add.ptr103 = getelementptr i8, ptr %1, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 251658240) #8, !srcloc !111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103, i32 0) #8, !srcloc !111
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_get_mtype(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !112
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  %2 = and i32 %1, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %entry
  %and4 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else7, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %4 = and i32 %1, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  %spec.select = select i1 %5, i32 0, i32 19
  br label %if.end16

if.end16:                                         ; preds = %if.else7, %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %mt.0 = phi i32 [ 15, %entry.if.end16_crit_edge ], [ 13, %if.else.if.end16_crit_edge ], [ %spec.select, %if.else7 ]
  ret i32 %mt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zynqmp_get_dtype(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !112
  %1 = lshr i32 %0, 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %and = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %.not = icmp eq i32 %and, 3
  %switch.offset = sub nuw nsw i32 4, %and
  %dt.0 = select i1 %.not, i32 0, i32 %switch.offset
  ret i32 %dt.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @zynqmp_get_ecc_state(ptr noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %1 = and i32 %0, 3145728
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %1)
  %switch.not = icmp eq i32 %1, 3145728
  br i1 %switch.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %base, i32 112
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %3 = and i32 %2, 117440512
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108864, i32 %3)
  %cmp3 = icmp eq i32 %3, 67108864
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp3, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @__initcall__kmod_synopsys_edac__236_1443_synps_edac_mc_driver_init6, !1, !"__initcall__kmod_synopsys_edac__236_1443_synps_edac_mc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/synopsys_edac.c", i32 1443, i32 1}
!2 = !{ptr @__exitcall_synps_edac_mc_driver_exit, !1, !"__exitcall_synps_edac_mc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author237, !4, !"__UNIQUE_ID_author237", i1 false, i1 false}
!4 = !{!"../drivers/edac/synopsys_edac.c", i32 1445, i32 1}
!5 = !{ptr @__UNIQUE_ID_description238, !6, !"__UNIQUE_ID_description238", i1 false, i1 false}
!6 = !{!"../drivers/edac/synopsys_edac.c", i32 1446, i32 1}
!7 = !{ptr @__UNIQUE_ID_file239, !8, !"__UNIQUE_ID_file239", i1 false, i1 false}
!8 = !{!"../drivers/edac/synopsys_edac.c", i32 1447, i32 1}
!9 = !{ptr @__UNIQUE_ID_license240, !8, !"__UNIQUE_ID_license240", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/synopsys_edac.c", i32 1436, i32 14}
!12 = !{ptr @synps_edac_mc_driver, !13, !"synps_edac_mc_driver", i1 false, i1 false}
!13 = !{!"../drivers/edac/synopsys_edac.c", i32 1434, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/synopsys_edac.c", i32 1342, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @mc_probe._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @mc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/edac/synopsys_edac.c", i32 1356, i32 3}
!22 = !{ptr @mc_probe._entry.4, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @mc_probe._entry_ptr.6, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/edac/synopsys_edac.c", i32 1375, i32 3}
!26 = !{ptr @mc_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mc_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/edac/synopsys_edac.c", i32 1384, i32 4}
!30 = !{ptr @mc_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mc_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/edac/synopsys_edac.c", i32 831, i32 18}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/synopsys_edac.c", i32 832, i32 18}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/edac/synopsys_edac.c", i32 833, i32 18}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/synopsys_edac.c", i32 591, i32 2}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @check_errors._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @check_errors._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/synopsys_edac.c", i32 487, i32 6}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/edac/synopsys_edac.c", i32 488, i32 6}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/edac/synopsys_edac.c", i32 493, i32 6}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/edac/synopsys_edac.c", i32 500, i32 25}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/edac/synopsys_edac.c", i32 507, i32 6}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/edac/synopsys_edac.c", i32 508, i32 6}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/edac/synopsys_edac.c", i32 512, i32 6}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/edac/synopsys_edac.c", i32 874, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @setup_irq._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @setup_irq._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/synopsys_edac.c", i32 882, i32 3}
!64 = !{ptr @setup_irq._entry.27, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @setup_irq._entry_ptr.29, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/synopsys_edac.c", i32 560, i32 2}
!68 = !{ptr @intr_handler._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @intr_handler._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/synopsys_edac.c", i32 1065, i32 8}
!72 = !{ptr @dev_attr_inject_data_error, !71, !"dev_attr_inject_data_error", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/edac/synopsys_edac.c", i32 1014, i32 23}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/edac/synopsys_edac.c", i32 1066, i32 8}
!77 = !{ptr @dev_attr_inject_data_poison, !76, !"dev_attr_inject_data_poison", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/edac/synopsys_edac.c", i32 1043, i32 23}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/edac/synopsys_edac.c", i32 1045, i32 7}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/edac/synopsys_edac.c", i32 1045, i32 31}
!84 = !{ptr @synps_edac_match, !85, !"synps_edac_match", i1 false, i1 false}
!85 = !{!"../drivers/edac/synopsys_edac.c", i32 924, i32 34}
!86 = !{ptr @zynq_edac_def, !87, !"zynq_edac_def", i1 false, i1 false}
!87 = !{!"../drivers/edac/synopsys_edac.c", i32 891, i32 41}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/edac/synopsys_edac.c", i32 388, i32 2}
!90 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @zynq_get_error_info._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @zynq_get_error_info._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @zynqmp_edac_def, !94, !"zynqmp_edac_def", i1 false, i1 false}
!94 = !{!"../drivers/edac/synopsys_edac.c", i32 899, i32 41}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/synopsys_edac.c", i32 446, i32 2}
!97 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @zynqmp_get_error_info._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @zynqmp_get_error_info._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @synopsys_edac_def, !101, !"synopsys_edac_def", i1 false, i1 false}
!101 = !{!"../drivers/edac/synopsys_edac.c", i32 911, i32 41}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{i64 5700325}
!112 = !{i64 5700743}
!113 = !{i64 2154728016}
!114 = !{i64 2154727085}
!115 = !{i64 2154735640}
!116 = !{i64 2154710245}
!117 = !{i64 2154700577}
!118 = !{i64 2154702969}
!119 = !{i64 2154717093}
!120 = !{i64 2154717600}
!121 = !{i64 2154714745}
!122 = !{i64 2154715196}
!123 = !{i64 2154720514}
!124 = !{i64 2154721939}
!125 = !{i64 2154723148}
!126 = !{i64 2154685778}
!127 = !{i64 2154686259}
!128 = !{i64 2154686737}
!129 = !{i64 2154687237}
!130 = !{i64 2154689802}
!131 = !{i64 2154690273}
!132 = !{i64 2154690773}
!133 = !{i64 2154690995}
!134 = !{i64 2154691392}
!135 = !{i64 2154707593}
!136 = !{i64 2154705688}
!137 = !{i64 2154706643}
!138 = !{i64 2154692028}
!139 = !{i64 2154692519}
!140 = !{i64 2154692994}
!141 = !{i64 2154693491}
!142 = !{i64 2154696464}
!143 = !{i64 2154696931}
!144 = !{i64 2154697398}
!145 = !{i64 2154697865}
!146 = !{i64 2154698340}
!147 = !{i64 2154698837}
!148 = !{i64 2154699227}
!149 = !{i64 2154699624}
!150 = !{i64 2154708059}
!151 = !{i64 2154706160}
!152 = !{i64 2154707118}
