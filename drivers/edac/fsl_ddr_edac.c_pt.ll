; ModuleID = '/llk/IR_all_yes/drivers/edac/fsl_ddr_edac.c_pt.bc'
source_filename = "../drivers/edac/fsl_ddr_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.fsl_mc_pdata = type { ptr, i32, ptr, i32 }
%struct.csrow_info = type { %struct.device, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.rank_info = type { i32, ptr, ptr, i32 }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@edac_mc_idx = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fsl_mc_err\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@little_endian = internal global { i8, [31 x i8] } zeroinitializer, align 32
@fsl_mc_err_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 518, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Unable to get resource for MC err regs\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fsl_mc_err_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/edac/fsl_ddr_edac.c\00", [36 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr = internal global ptr @fsl_mc_err_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@fsl_mc_err_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Error while requesting mem region\0A\00", [55 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.7 = internal global ptr @fsl_mc_err_probe._entry.5, section ".printk_index", align 4
@fsl_mc_err_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Unable to setup MC err regs\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.10 = internal global ptr @fsl_mc_err_probe._entry.8, section ".printk_index", align 4
@fsl_mc_err_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: No ECC DIMMs discovered\0A\00", [33 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.13 = internal global ptr @fsl_mc_err_probe._entry.11, section ".printk_index", align 4
@edac_debug_level = external dso_local local_unnamed_addr global i32, align 4
@fsl_mc_err_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017EDAC DEBUG: %s: init mci\0A\00", [36 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.16 = internal global ptr @fsl_mc_err_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_ddr_edac\00", [19 x i8] zeroinitializer }, align 32
@edac_op_state = external dso_local local_unnamed_addr global i32, align 4
@orig_ddr_err_disable = internal global { i32, [28 x i8] } zeroinitializer, align 32
@fsl_ddr_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @fsl_ddr_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017EDAC DEBUG: %s: failed edac_mc_add_mc()\0A\00", [53 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.20 = internal global ptr @fsl_mc_err_probe._entry.18, section ".printk_index", align 4
@orig_ddr_err_sbe = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[EDAC] MC err\00", [18 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: Unable to request irq %d for FSL DDR DRAM ERR\0A\00", [43 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.24 = internal global ptr @fsl_mc_err_probe._entry.22, section ".printk_index", align 4
@fsl_mc_err_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016fsl_ddr_edac acquired irq %d for MC\0A\00", [57 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.27 = internal global ptr @fsl_mc_err_probe._entry.25, section ".printk_index", align 4
@fsl_mc_err_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017EDAC DEBUG: %s: success\0A\00", [37 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.30 = internal global ptr @fsl_mc_err_probe._entry.28, section ".printk_index", align 4
@fsl_mc_err_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016fsl_ddr_edac MC err registered\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_mc_err_probe._entry_ptr.33 = internal global ptr @fsl_mc_err_probe._entry.31, section ".printk_index", align 4
@fsl_mc_err_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017EDAC DEBUG: %s: \0A\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_mc_err_remove\00", [46 x i8] zeroinitializer }, align 32
@fsl_mc_err_remove._entry_ptr = internal global ptr @fsl_mc_err_remove._entry, section ".printk_index", align 4
@fsl_mc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013EDAC FSL_DDR MC%d: Err Detect Register: %#8.8x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl_mc_check\00", [19 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr = internal global ptr @fsl_mc_check._entry, section ".printk_index", align 4
@fsl_mc_check._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013EDAC FSL_DDR MC%d: Faulty Data bit: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.40 = internal global ptr @fsl_mc_check._entry.38, section ".printk_index", align 4
@fsl_mc_check._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.4, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013EDAC FSL_DDR MC%d: Faulty ECC bit: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.43 = internal global ptr @fsl_mc_check._entry.41, section ".printk_index", align 4
@fsl_mc_check._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013EDAC FSL_DDR MC%d: Expected Data / ECC:\09%#8.8x_%08x / %#2.2x\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.46 = internal global ptr @fsl_mc_check._entry.44, section ".printk_index", align 4
@fsl_mc_check._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.4, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013EDAC FSL_DDR MC%d: Captured Data / ECC:\09%#8.8x_%08x / %#2.2x\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.49 = internal global ptr @fsl_mc_check._entry.47, section ".printk_index", align 4
@fsl_mc_check._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.37, ptr @.str.4, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013EDAC FSL_DDR MC%d: Err addr: %#8.8llx\0A\00", [55 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.52 = internal global ptr @fsl_mc_check._entry.50, section ".printk_index", align 4
@fsl_mc_check._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.37, ptr @.str.4, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013EDAC FSL_DDR MC%d: PFN: %#8.8x\0A\00", [62 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.55 = internal global ptr @fsl_mc_check._entry.53, section ".printk_index", align 4
@fsl_mc_check._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.37, ptr @.str.4, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013EDAC FSL_DDR MC%d: PFN out of range!\0A\00", [56 x i8] zeroinitializer }, align 32
@fsl_mc_check._entry_ptr.58 = internal global ptr @fsl_mc_check._entry.56, section ".printk_index", align 4
@.str.59 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ecc_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -267394786, i32 -1019473929, i32 16711935, i32 16773375, i32 252645135, i32 252706560, i32 286339891, i32 2004287503, i32 572671044, i32 -2004344273, i32 1145342088, i32 -48063, i32 -2004287489, i32 286361730, i32 -61167, i32 572657940], [32 x i8] zeroinitializer }, align 32
@fsl_ddr_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fsl_ddr_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fsl_ddr_dev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_inject_data_hi, ptr @dev_attr_inject_data_lo, ptr @dev_attr_inject_ctrl, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_inject_data_hi = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fsl_mc_inject_data_hi_show, ptr @fsl_mc_inject_data_hi_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_data_lo = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fsl_mc_inject_data_lo_show, ptr @fsl_mc_inject_data_lo_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_inject_ctrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fsl_mc_inject_ctrl_show, ptr @fsl_mc_inject_ctrl_store }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inject_data_hi\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%08x\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inject_data_lo\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_ctrl\00", [20 x i8] zeroinitializer }, align 32
@switch.table.fsl_mc_err_probe = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 9, i32 13, i32 2, i32 20, i32 2, i32 16], [40 x i8] zeroinitializer }, align 32
@switch.table.fsl_mc_err_probe.64 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 8, i32 11, i32 2, i32 19, i32 2, i32 15], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"edac_mc_idx\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 35, i32 12 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 502, i32 16 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 513, i32 57 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"little_endian\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 39, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 517, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 524, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 532, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 540, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 545, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 552, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"orig_ddr_err_disable\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 37, i32 12 }
@___asan_gen_.119 = private unnamed_addr constant [19 x i8] c"fsl_ddr_dev_groups\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 572, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"orig_ddr_err_sbe\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 38, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 592, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 594, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 600, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 605, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 606, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 623, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 296, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 338, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 341, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 344, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 351, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 354, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 355, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 359, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 365, i32 25 }
@___asan_gen_.221 = private unnamed_addr constant [10 x i8] c"ecc_table\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 176, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant [18 x i8] c"fsl_ddr_dev_group\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 166, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"fsl_ddr_dev_attrs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 157, i32 26 }
@___asan_gen_.230 = private unnamed_addr constant [24 x i8] c"dev_attr_inject_data_hi\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [24 x i8] c"dev_attr_inject_data_lo\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [21 x i8] c"dev_attr_inject_ctrl\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 149, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 65, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 151, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [31 x i8] c"../drivers/edac/fsl_ddr_edac.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 153, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant [30 x i8] c"switch.table.fsl_mc_err_probe\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [33 x i8] c"switch.table.fsl_mc_err_probe.64\00", align 1
@llvm.compiler.used = appending global [83 x ptr] [ptr @fsl_mc_check._entry, ptr @fsl_mc_check._entry.38, ptr @fsl_mc_check._entry.41, ptr @fsl_mc_check._entry.44, ptr @fsl_mc_check._entry.47, ptr @fsl_mc_check._entry.50, ptr @fsl_mc_check._entry.53, ptr @fsl_mc_check._entry.56, ptr @fsl_mc_check._entry_ptr, ptr @fsl_mc_check._entry_ptr.40, ptr @fsl_mc_check._entry_ptr.43, ptr @fsl_mc_check._entry_ptr.46, ptr @fsl_mc_check._entry_ptr.49, ptr @fsl_mc_check._entry_ptr.52, ptr @fsl_mc_check._entry_ptr.55, ptr @fsl_mc_check._entry_ptr.58, ptr @fsl_mc_err_probe._entry, ptr @fsl_mc_err_probe._entry.11, ptr @fsl_mc_err_probe._entry.14, ptr @fsl_mc_err_probe._entry.18, ptr @fsl_mc_err_probe._entry.22, ptr @fsl_mc_err_probe._entry.25, ptr @fsl_mc_err_probe._entry.28, ptr @fsl_mc_err_probe._entry.31, ptr @fsl_mc_err_probe._entry.5, ptr @fsl_mc_err_probe._entry.8, ptr @fsl_mc_err_probe._entry_ptr, ptr @fsl_mc_err_probe._entry_ptr.10, ptr @fsl_mc_err_probe._entry_ptr.13, ptr @fsl_mc_err_probe._entry_ptr.16, ptr @fsl_mc_err_probe._entry_ptr.20, ptr @fsl_mc_err_probe._entry_ptr.24, ptr @fsl_mc_err_probe._entry_ptr.27, ptr @fsl_mc_err_probe._entry_ptr.30, ptr @fsl_mc_err_probe._entry_ptr.33, ptr @fsl_mc_err_probe._entry_ptr.7, ptr @fsl_mc_err_remove._entry, ptr @fsl_mc_err_remove._entry_ptr, ptr @edac_mc_idx, ptr @.str, ptr @.str.1, ptr @little_endian, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @orig_ddr_err_disable, ptr @fsl_ddr_dev_groups, ptr @.str.19, ptr @orig_ddr_err_sbe, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @ecc_table, ptr @fsl_ddr_dev_group, ptr @fsl_ddr_dev_attrs, ptr @dev_attr_inject_data_hi, ptr @dev_attr_inject_data_lo, ptr @dev_attr_inject_ctrl, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @switch.table.fsl_mc_err_probe, ptr @switch.table.fsl_mc_err_probe.64], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edac_mc_idx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @little_endian to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_ddr_err_disable to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @orig_ddr_err_sbe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_err_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_mc_check._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_ddr_dev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_data_hi to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_data_lo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_mc_err_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fsl_mc_err_probe.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_err_probe(ptr noundef %op) #0 align 64 {
entry:
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  %r = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #8
  %0 = getelementptr inbounds i8, ptr %layers, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %r) #8
  %2 = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 1
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %3 = call ptr @memset(ptr %r, i32 255, i32 32)
  %call = tail call ptr @devres_open_group(ptr noundef %dev, ptr noundef nonnull @fsl_mc_err_probe, i32 noundef 3264) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %6 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx3 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %arrayidx3, align 4
  %size6 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %size6, align 4
  %is_virt_csrow8 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %is_virt_csrow8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %is_virt_csrow8, align 4
  %10 = load i32, ptr @edac_mc_idx, align 4
  %call9 = call ptr @edac_mc_alloc(i32 noundef %10, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 16) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call13 = call i32 @devres_release_group(ptr noundef %dev, ptr noundef nonnull @fsl_mc_err_probe) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 26
  %11 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pvt_info, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %12, align 4
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 22
  %14 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %pdev, align 8
  %15 = load i32, ptr @edac_mc_idx, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr @edac_mc_idx, align 4
  %edac_idx = getelementptr inbounds %struct.fsl_mc_pdata, ptr %12, i32 0, i32 1
  %16 = ptrtoint ptr %edac_idx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %edac_idx, align 4
  %17 = load ptr, ptr %pdev, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call9, ptr %driver_data.i, align 4
  %19 = load ptr, ptr %12, align 4
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 24
  %20 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ctl_name, align 8
  %21 = load ptr, ptr %12, align 4
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 25
  %22 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev_name, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %23 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %24, ptr noundef nonnull @.str.1, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %frombool = zext i1 %tobool.i to i8
  store i8 %frombool, ptr @little_endian, align 1
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call23 = call i32 @of_address_to_resource(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %r) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end27, label %do.end

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #11
  br label %err

if.end27:                                         ; preds = %if.end14
  %27 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %r, align 4
  %29 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %12, align 4
  %call31 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %add.i, ptr noundef %32) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.3) #11
  br label %err

if.end39:                                         ; preds = %if.end27
  %33 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %r, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %2, align 4
  %sub.i203 = sub i32 1, %34
  %add.i204 = add i32 %sub.i203, %36
  %call43 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %34, i32 noundef %add.i204) #8
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %12, i32 0, i32 2
  %37 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call43, ptr %mc_vbase, align 4
  %tobool45.not = icmp eq ptr %call43, null
  br i1 %tobool45.not, label %do.end49, label %if.end52

do.end49:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3) #11
  br label %err

if.end52:                                         ; preds = %if.end39
  %add.ptr = getelementptr i8, ptr %call43, i32 272
  %38 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %40 = call i32 @llvm.bswap.i32(i32 %39) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %40, %cond.true.i ], [ %39, %cond.false.i ]
  %and = and i32 %cond.i, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool55.not = icmp eq i32 %and, 0
  br i1 %tobool55.not, label %do.end59, label %do.body63

do.end59:                                         ; preds = %ddr_in32.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3) #11
  br label %err

do.body63:                                        ; preds = %ddr_in32.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %41 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp = icmp sgt i32 %41, 2
  br i1 %cmp, label %do.end67, label %do.body63.do.end72_crit_edge

do.body63.do.end72_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end72

do.end67:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.3) #11
  br label %do.end72

do.end72:                                         ; preds = %do.end67, %do.body63.do.end72_crit_edge
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 4
  %42 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1682176, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 5
  %43 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 34, ptr %edac_ctl_cap, align 4
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 6
  %44 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 32, ptr %edac_cap, align 8
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 23
  %45 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.17, ptr %mod_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %46 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp73 = icmp eq i32 %46, 0
  br i1 %cmp73, label %if.then74, label %do.end72.if.end75_crit_edge

do.end72.if.end75_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

if.then74:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #10
  %edac_check = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 11
  %47 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @fsl_mc_check, ptr %edac_check, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %do.end72.if.end75_crit_edge
  %ctl_page_to_phys = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 12
  %48 = ptrtoint ptr %ctl_page_to_phys to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ctl_page_to_phys, align 8
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 8
  %49 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %scrub_mode, align 8
  %50 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pvt_info, align 8
  %mc_vbase.i = getelementptr inbounds %struct.fsl_mc_pdata, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %mc_vbase.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mc_vbase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %53, i32 272
  %54 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i.i = icmp eq i8 %54, 0
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %56 = call i32 @llvm.bswap.i32(i32 %55) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit.i

cond.false.i.i:                                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit.i

ddr_in32.exit.i:                                  ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %56, %cond.true.i.i ], [ %55, %cond.false.i.i ]
  %and.i = and i32 %cond.i.i, 117440512
  %57 = add nsw i32 %and.i, -33554432
  %58 = lshr exact i32 %57, 24
  %trunc.i = trunc i32 %58 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %trunc.i)
  %59 = icmp ult i8 %trunc.i, 6
  br i1 %59, label %if.end.i.sink.split, label %ddr_in32.exit.i.if.end.i_crit_edge

ddr_in32.exit.i.if.end.i_crit_edge:               ; preds = %ddr_in32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i.sink.split:                              ; preds = %ddr_in32.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %and1.i = and i32 %cond.i.i, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not.i205 = icmp eq i32 %and1.i, 0
  %switch.table.fsl_mc_err_probe.64.switch.table.fsl_mc_err_probe = select i1 %tobool.not.i205, ptr @switch.table.fsl_mc_err_probe.64, ptr @switch.table.fsl_mc_err_probe
  %60 = ashr exact i32 %57, 24
  %switch.gep229 = getelementptr inbounds [6 x i32], ptr %switch.table.fsl_mc_err_probe.64.switch.table.fsl_mc_err_probe, i32 0, i32 %60
  %61 = ptrtoint ptr %switch.gep229 to i32
  call void @__asan_load4_noabort(i32 %61)
  %switch.load230 = load i32, ptr %switch.gep229, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.sink.split, %ddr_in32.exit.i.if.end.i_crit_edge
  %mtype.0.i = phi i32 [ %switch.load230, %if.end.i.sink.split ], [ 2, %ddr_in32.exit.i.if.end.i_crit_edge ]
  %nr_csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 15
  %62 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_csrows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp60.not.i = icmp eq i32 %63, 0
  br i1 %cmp60.not.i, label %if.end.i.fsl_ddr_init_csrows.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.fsl_ddr_init_csrows.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_ddr_init_csrows.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %csrows.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 14
  %and24.i = and i32 %cond.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %spec.select.i = select i1 %tobool25.not.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.061.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i_crit_edge ]
  %64 = ptrtoint ptr %csrows.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %csrows.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %65, i32 %index.061.i
  %66 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i, align 4
  %channels.i = getelementptr inbounds %struct.csrow_info, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channels.i, align 8
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %dimm12.i = getelementptr inbounds %struct.rank_info, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %dimm12.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dimm12.i, align 4
  %74 = ptrtoint ptr %mc_vbase.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mc_vbase.i, align 4
  %mul.i = shl i32 %index.061.i, 3
  %add.ptr15.i = getelementptr i8, ptr %75, i32 %mul.i
  %76 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool.not.i55.i = icmp eq i8 %76, 0
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #8
  br i1 %tobool.not.i55.i, label %cond.false.i57.i, label %cond.true.i56.i

cond.true.i56.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = call i32 @llvm.bswap.i32(i32 %77) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit59.i

cond.false.i57.i:                                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit59.i

ddr_in32.exit59.i:                                ; preds = %cond.false.i57.i, %cond.true.i56.i
  %cond.i58.i = phi i32 [ %78, %cond.true.i56.i ], [ %77, %cond.false.i57.i ]
  %shr.i = lshr i32 %cond.i58.i, 16
  %and18.i = and i32 %cond.i58.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and18.i)
  %cmp19.i = icmp eq i32 %shr.i, %and18.i
  br i1 %cmp19.i, label %ddr_in32.exit59.i.cleanup.i_crit_edge, label %if.end21.i

ddr_in32.exit59.i.cleanup.i_crit_edge:            ; preds = %ddr_in32.exit59.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end21.i:                                       ; preds = %ddr_in32.exit59.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw nsw i32 %shr.i, 12
  %shl22.i = shl nuw nsw i32 %and18.i, 12
  %or.i = or i32 %shl22.i, 4095
  %first_page.i = getelementptr inbounds %struct.csrow_info, ptr %67, i32 0, i32 1
  %79 = ptrtoint ptr %first_page.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shl.i, ptr %first_page.i, align 8
  %last_page.i = getelementptr inbounds %struct.csrow_info, ptr %67, i32 0, i32 2
  %80 = ptrtoint ptr %last_page.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or.i, ptr %last_page.i, align 4
  %add.i206 = add nuw nsw i32 %shl22.i, 4096
  %sub.i207 = sub nsw i32 %add.i206, %shl.i
  %nr_pages.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 9
  %81 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %sub.i207, ptr %nr_pages.i, align 4
  %grain.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 5
  %82 = ptrtoint ptr %grain.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 8, ptr %grain.i, align 4
  %mtype23.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 7
  %83 = ptrtoint ptr %mtype23.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %mtype.0.i, ptr %mtype23.i, align 4
  %dtype.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 6
  %84 = ptrtoint ptr %dtype.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %spec.select.i, ptr %dtype.i, align 8
  %edac_mode.i = getelementptr inbounds %struct.dimm_info, ptr %73, i32 0, i32 8
  %85 = ptrtoint ptr %edac_mode.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 5, ptr %edac_mode.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end21.i, %ddr_in32.exit59.i.cleanup.i_crit_edge
  %inc.i = add nuw i32 %index.061.i, 1
  %86 = ptrtoint ptr %nr_csrows.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr_csrows.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %87
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.fsl_ddr_init_csrows.exit_crit_edge

cleanup.i.fsl_ddr_init_csrows.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %fsl_ddr_init_csrows.exit

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

fsl_ddr_init_csrows.exit:                         ; preds = %cleanup.i.fsl_ddr_init_csrows.exit_crit_edge, %if.end.i.fsl_ddr_init_csrows.exit_crit_edge
  %88 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mc_vbase, align 4
  %add.ptr77 = getelementptr i8, ptr %89, i32 3652
  %90 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i208 = icmp eq i8 %90, 0
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr77) #8
  br i1 %tobool.not.i208, label %cond.false.i210, label %cond.true.i209

cond.true.i209:                                   ; preds = %fsl_ddr_init_csrows.exit
  call void @__sanitizer_cov_trace_pc() #10
  %92 = call i32 @llvm.bswap.i32(i32 %91) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit212

cond.false.i210:                                  ; preds = %fsl_ddr_init_csrows.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit212

ddr_in32.exit212:                                 ; preds = %cond.false.i210, %cond.true.i209
  %cond.i211 = phi i32 [ %92, %cond.true.i209 ], [ %91, %cond.false.i210 ]
  store i32 %cond.i211, ptr @orig_ddr_err_disable, align 4
  %93 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mc_vbase, align 4
  %add.ptr80 = getelementptr i8, ptr %94, i32 3652
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 0) #8
  %95 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mc_vbase, align 4
  %add.ptr82 = getelementptr i8, ptr %96, i32 3648
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82, i32 -1) #8
  %call83 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call9, ptr noundef nonnull @fsl_ddr_dev_groups) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end97, label %do.body86

do.body86:                                        ; preds = %ddr_in32.exit212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %97 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp87 = icmp sgt i32 %97, 2
  br i1 %cmp87, label %do.end91, label %do.body86.err_crit_edge

do.body86.err_crit_edge:                          ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #10
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3) #11
  br label %err

if.end97:                                         ; preds = %ddr_in32.exit212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %98 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %98)
  %cmp98 = icmp eq i32 %98, 2
  br i1 %cmp98, label %if.then99, label %if.end97.if.end127_crit_edge

if.end97.if.end127_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end127

if.then99:                                        ; preds = %if.end97
  %99 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %mc_vbase, align 4
  %add.ptr101 = getelementptr i8, ptr %100, i32 3656
  call fastcc void @ddr_out32(ptr noundef %add.ptr101, i32 noundef 12)
  %101 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mc_vbase, align 4
  %add.ptr103 = getelementptr i8, ptr %102, i32 3672
  %103 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i221 = icmp eq i8 %103, 0
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #8
  br i1 %tobool.not.i221, label %cond.false.i223, label %cond.true.i222

cond.true.i222:                                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  %105 = call i32 @llvm.bswap.i32(i32 %104) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit225

cond.false.i223:                                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit225

ddr_in32.exit225:                                 ; preds = %cond.false.i223, %cond.true.i222
  %cond.i224 = phi i32 [ %105, %cond.true.i222 ], [ %104, %cond.false.i223 ]
  %and105 = and i32 %cond.i224, 16711680
  store i32 %and105, ptr @orig_ddr_err_sbe, align 4
  %106 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mc_vbase, align 4
  %add.ptr107 = getelementptr i8, ptr %107, i32 3672
  call fastcc void @ddr_out32(ptr noundef %add.ptr107, i32 noundef 65536)
  %call108 = call i32 @platform_get_irq(ptr noundef %op, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.fsl_mc_pdata, ptr %12, i32 0, i32 3
  %108 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %call108, ptr %irq, align 4
  %call.i226 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call108, ptr noundef nonnull @fsl_mc_isr, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.21, ptr noundef nonnull %call9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp112 = icmp slt i32 %call.i226, 0
  %109 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq, align 4
  br i1 %cmp112, label %do.end116, label %do.end123

do.end116:                                        ; preds = %ddr_in32.exit225
  call void @__sanitizer_cov_trace_pc() #10
  %call119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.3, i32 noundef %110) #11
  %call146 = call ptr @edac_mc_del_mc(ptr noundef %dev) #8
  br label %err

do.end123:                                        ; preds = %ddr_in32.exit225
  call void @__sanitizer_cov_trace_pc() #10
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %110) #11
  br label %if.end127

if.end127:                                        ; preds = %do.end123, %if.end97.if.end127_crit_edge
  call void @devres_remove_group(ptr noundef %dev, ptr noundef nonnull @fsl_mc_err_probe) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %111 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp130 = icmp sgt i32 %111, 2
  br i1 %cmp130, label %do.end134, label %if.end127.do.end142_crit_edge

if.end127.do.end142_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end142

do.end134:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #10
  %call136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3) #11
  br label %do.end142

do.end142:                                        ; preds = %do.end134, %if.end127.do.end142_crit_edge
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %cleanup

err:                                              ; preds = %do.end116, %do.end91, %do.body86.err_crit_edge, %do.end59, %do.end49, %do.end36, %do.end
  %res.0 = phi i32 [ %call23, %do.end ], [ %call83, %do.end91 ], [ %call83, %do.body86.err_crit_edge ], [ -19, %do.end116 ], [ -19, %do.end59 ], [ -12, %do.end49 ], [ -16, %do.end36 ]
  %call148 = call i32 @devres_release_group(ptr noundef %dev, ptr noundef nonnull @fsl_mc_err_probe) #8
  call void @edac_mc_free(ptr noundef nonnull %call9) #8
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end142, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %do.end142 ], [ -12, %if.then11 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %r) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_mc_check(ptr noundef %mci) #0 align 64 {
entry:
  %bad_data_bit = alloca i32, align 4
  %bad_ecc_bit = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_data_bit) #8
  %2 = ptrtoint ptr %bad_data_bit to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bad_data_bit, align 4, !annotation !128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bad_ecc_bit) #8
  %3 = ptrtoint ptr %bad_ecc_bit to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bad_ecc_bit, align 4, !annotation !128
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mc_vbase, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 3648
  %6 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %8, %cond.true.i ], [ %7, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  br i1 %tobool.not, label %ddr_in32.exit.cleanup_crit_edge, label %do.end

ddr_in32.exit.cleanup_crit_edge:                  ; preds = %ddr_in32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %ddr_in32.exit
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %9 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mc_idx, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %10, i32 noundef %cond.i) #11
  %and = and i32 %cond.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %11 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mc_vbase, align 4
  br i1 %tobool2.not, label %if.then3, label %if.end6

if.then3:                                         ; preds = %do.end
  %add.ptr5 = getelementptr i8, ptr %12, i32 3648
  %13 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i189 = icmp eq i8 %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i189, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %14) #8, !srcloc !129
  br label %cleanup

do.body.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %cond.i) #8, !srcloc !129
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %add.ptr8 = getelementptr i8, ptr %12, i32 3624
  %15 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i190 = icmp eq i8 %15, 0
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8
  br i1 %tobool.not.i190, label %cond.false.i192, label %cond.true.i191

cond.true.i191:                                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit194

cond.false.i192:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit194

ddr_in32.exit194:                                 ; preds = %cond.false.i192, %cond.true.i191
  %cond.i193 = phi i32 [ %17, %cond.true.i191 ], [ %16, %cond.false.i192 ]
  %18 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mc_vbase, align 4
  %add.ptr11 = getelementptr i8, ptr %19, i32 272
  %20 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i195 = icmp eq i8 %20, 0
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #8
  br i1 %tobool.not.i195, label %cond.false.i197, label %cond.true.i196

cond.true.i196:                                   ; preds = %ddr_in32.exit194
  call void @__sanitizer_cov_trace_pc() #10
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit199

cond.false.i197:                                  ; preds = %ddr_in32.exit194
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit199

ddr_in32.exit199:                                 ; preds = %cond.false.i197, %cond.true.i196
  %cond.i198 = phi i32 [ %22, %cond.true.i196 ], [ %21, %cond.false.i197 ]
  %and13 = and i32 %cond.i198, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %syndrome.0.v = select i1 %tobool14.not, i32 255, i32 65535
  %syndrome.0 = and i32 %syndrome.0.v, %cond.i193
  %23 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mc_vbase, align 4
  %add.ptr20 = getelementptr i8, ptr %24, i32 3668
  %25 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i200 = icmp eq i8 %25, 0
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8
  br i1 %tobool.not.i200, label %cond.false.i202, label %cond.true.i201

cond.true.i201:                                   ; preds = %ddr_in32.exit199
  call void @__sanitizer_cov_trace_pc() #10
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit204

cond.false.i202:                                  ; preds = %ddr_in32.exit199
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit204

ddr_in32.exit204:                                 ; preds = %cond.false.i202, %cond.true.i201
  %cond.i203 = phi i32 [ %27, %cond.true.i201 ], [ %26, %cond.false.i202 ]
  %conv = zext i32 %cond.i203 to i64
  %shl = shl nuw i64 %conv, 32
  %28 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mc_vbase, align 4
  %add.ptr23 = getelementptr i8, ptr %29, i32 3664
  %30 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i205 = icmp eq i8 %30, 0
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8
  br i1 %tobool.not.i205, label %cond.false.i207, label %cond.true.i206

cond.true.i206:                                   ; preds = %ddr_in32.exit204
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit209

cond.false.i207:                                  ; preds = %ddr_in32.exit204
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit209

ddr_in32.exit209:                                 ; preds = %cond.false.i207, %cond.true.i206
  %cond.i208 = phi i32 [ %32, %cond.true.i206 ], [ %31, %cond.false.i207 ]
  %conv25 = zext i32 %cond.i208 to i64
  %or = or i64 %shl, %conv25
  %shr = lshr i64 %or, 12
  %conv26 = trunc i64 %shr to i32
  %nr_csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 15
  %33 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp27220.not = icmp eq i32 %34, 0
  br i1 %cmp27220.not, label %ddr_in32.exit209.for.end_crit_edge, label %for.body.lr.ph

ddr_in32.exit209.for.end_crit_edge:               ; preds = %ddr_in32.exit209
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %ddr_in32.exit209
  %csrows = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 14
  %35 = ptrtoint ptr %csrows to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %csrows, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %row_index.0221 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %36, i32 %row_index.0221
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %first_page = getelementptr inbounds %struct.csrow_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %first_page to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %first_page, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv26)
  %cmp29.not = icmp ugt i32 %40, %conv26
  br i1 %cmp29.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %last_page = getelementptr inbounds %struct.csrow_info, ptr %38, i32 0, i32 2
  %41 = ptrtoint ptr %last_page to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %conv26)
  %cmp31.not = icmp ult i32 %42, %conv26
  br i1 %cmp31.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.for.end_crit_edge

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %row_index.0221, 1
  %exitcond.not = icmp eq i32 %inc, %34
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %ddr_in32.exit209.for.end_crit_edge
  %row_index.0.lcssa = phi i32 [ 0, %ddr_in32.exit209.for.end_crit_edge ], [ %row_index.0221, %land.lhs.true.for.end_crit_edge ], [ %34, %for.inc.for.end_crit_edge ]
  %43 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mc_vbase, align 4
  %add.ptr36 = getelementptr i8, ptr %44, i32 3616
  %45 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i210 = icmp eq i8 %45, 0
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #8
  br i1 %tobool.not.i210, label %cond.false.i212, label %cond.true.i211

cond.true.i211:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit214

cond.false.i212:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit214

ddr_in32.exit214:                                 ; preds = %cond.false.i212, %cond.true.i211
  %cond.i213 = phi i32 [ %47, %cond.true.i211 ], [ %46, %cond.false.i212 ]
  %48 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mc_vbase, align 4
  %add.ptr39 = getelementptr i8, ptr %49, i32 3620
  %50 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i215 = icmp eq i8 %50, 0
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8
  br i1 %tobool.not.i215, label %cond.false.i217, label %cond.true.i216

cond.true.i216:                                   ; preds = %ddr_in32.exit214
  call void @__sanitizer_cov_trace_pc() #10
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit219

cond.false.i217:                                  ; preds = %ddr_in32.exit214
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit219

ddr_in32.exit219:                                 ; preds = %cond.false.i217, %cond.true.i216
  %cond.i218 = phi i32 [ %52, %cond.true.i216 ], [ %51, %cond.false.i217 ]
  %and41 = and i32 %cond.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %tobool14.not.not = xor i1 %tobool14.not, true
  %brmerge = select i1 %tobool42.not, i1 true, i1 %tobool14.not.not
  br i1 %brmerge, label %ddr_in32.exit219.do.end81_crit_edge, label %if.then46

ddr_in32.exit219.do.end81_crit_edge:              ; preds = %ddr_in32.exit219
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

if.then46:                                        ; preds = %ddr_in32.exit219
  call fastcc void @sbe_ecc_decode(i32 noundef %cond.i213, i32 noundef %cond.i218, i32 noundef %syndrome.0, ptr noundef nonnull %bad_data_bit, ptr noundef nonnull %bad_ecc_bit)
  %53 = ptrtoint ptr %bad_data_bit to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bad_data_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp47.not = icmp eq i32 %54, -1
  br i1 %cmp47.not, label %if.then46.if.end56_crit_edge, label %do.end52

if.then46.if.end56_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.end52:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %mc_idx, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %56, i32 noundef %54) #11
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %if.then46.if.end56_crit_edge
  %57 = ptrtoint ptr %bad_ecc_bit to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bad_ecc_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp57.not = icmp eq i32 %58, -1
  br i1 %cmp57.not, label %if.end56.do.end69_crit_edge, label %do.end62

if.end56.do.end69_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end69

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mc_idx, align 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %60, i32 noundef %58) #11
  br label %do.end69

do.end69:                                         ; preds = %do.end62, %if.end56.do.end69_crit_edge
  %61 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mc_idx, align 4
  %sub = add i32 %54, -32
  %shl72 = shl nuw i32 1, %sub
  %xor = xor i32 %shl72, %cond.i213
  %shl73 = shl nuw i32 1, %54
  %xor74 = xor i32 %shl73, %cond.i218
  %shl75 = shl nuw i32 1, %58
  %xor76 = xor i32 %shl75, %syndrome.0
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %62, i32 noundef %xor, i32 noundef %xor74, i32 noundef %xor76) #11
  br label %do.end81

do.end81:                                         ; preds = %do.end69, %ddr_in32.exit219.do.end81_crit_edge
  %63 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mc_idx, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %64, i32 noundef %cond.i213, i32 noundef %cond.i218, i32 noundef %syndrome.0) #11
  %65 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mc_idx, align 4
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %66, i64 noundef %or) #11
  %67 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mc_idx, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %68, i32 noundef %conv26) #11
  %69 = ptrtoint ptr %nr_csrows to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_csrows, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %row_index.0.lcssa, i32 %70)
  %cmp98 = icmp eq i32 %row_index.0.lcssa, %70
  br i1 %cmp98, label %do.end103, label %do.end81.if.end107_crit_edge

do.end81.if.end107_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

do.end103:                                        ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %mc_idx, align 4
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, i32 noundef %72) #11
  br label %if.end107

if.end107:                                        ; preds = %do.end103, %do.end81.if.end107_crit_edge
  br i1 %tobool42.not, label %if.end107.if.end113_crit_edge, label %if.then110

if.end107.if.end113_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end113

if.then110:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  %and111 = and i32 %cond.i208, 4095
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %73 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %mci, i16 noundef zeroext 1, i32 noundef %conv26, i32 noundef %and111, i32 noundef %syndrome.0, i32 noundef %row_index.0.lcssa, i32 noundef 0, i32 noundef -1, ptr noundef %74, ptr noundef nonnull @.str.59) #8
  br label %if.end113

if.end113:                                        ; preds = %if.then110, %if.end107.if.end113_crit_edge
  %and114 = and i32 %cond.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end113.if.end120_crit_edge, label %if.then116

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end120

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #10
  %and117 = and i32 %cond.i208, 4095
  %ctl_name119 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %75 = ptrtoint ptr %ctl_name119 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ctl_name119, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %mci, i16 noundef zeroext 1, i32 noundef %conv26, i32 noundef %and117, i32 noundef %syndrome.0, i32 noundef %row_index.0.lcssa, i32 noundef 0, i32 noundef -1, ptr noundef %76, ptr noundef nonnull @.str.59) #8
  br label %if.end120

if.end120:                                        ; preds = %if.then116, %if.end113.if.end120_crit_edge
  %77 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mc_vbase, align 4
  %add.ptr122 = getelementptr i8, ptr %78, i32 3648
  tail call fastcc void @ddr_out32(ptr noundef %add.ptr122, i32 noundef %cond.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %do.body.i, %if.then.i, %ddr_in32.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_ecc_bit) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bad_data_bit) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ddr_out32(ptr noundef %addr, i32 noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = tail call i32 @llvm.bswap.i32(i32 %value) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %1) #8, !srcloc !129
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %value) #8, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_isr(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_vbase, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 3648
  %4 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %6, %cond.true.i ], [ %5, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  br i1 %tobool.not, label %ddr_in32.exit.cleanup_crit_edge, label %if.end

ddr_in32.exit.cleanup_crit_edge:                  ; preds = %ddr_in32.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ddr_in32.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @fsl_mc_check(ptr noundef %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ddr_in32.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %ddr_in32.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fsl_mc_err_remove(ptr noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_debug_level to i32))
  %4 = load i32, ptr @edac_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %5 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp5 = icmp eq i32 %5, 2
  br i1 %cmp5, label %if.then6, label %do.end4.if.end7_crit_edge

do.end4.if.end7_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mc_vbase, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3656
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end4.if.end7_crit_edge
  %mc_vbase8 = getelementptr inbounds %struct.fsl_mc_pdata, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %mc_vbase8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mc_vbase8, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 3652
  %10 = load i32, ptr @orig_ddr_err_disable, align 4
  %11 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i18 = icmp eq i8 %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i18, label %do.body.i20, label %if.then.i19

if.then.i19:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %12) #8, !srcloc !129
  br label %ddr_out32.exit21

do.body.i20:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %10) #8, !srcloc !129
  br label %ddr_out32.exit21

ddr_out32.exit21:                                 ; preds = %do.body.i20, %if.then.i19
  %13 = ptrtoint ptr %mc_vbase8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mc_vbase8, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 3672
  %15 = load i32, ptr @orig_ddr_err_sbe, align 4
  %16 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i22 = icmp eq i8 %16, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %tobool.not.i22, label %do.body.i24, label %if.then.i23

if.then.i23:                                      ; preds = %ddr_out32.exit21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %17) #8, !srcloc !129
  br label %ddr_out32.exit25

do.body.i24:                                      ; preds = %ddr_out32.exit21
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %15) #8, !srcloc !129
  br label %ddr_out32.exit25

ddr_out32.exit25:                                 ; preds = %do.body.i24, %if.then.i23
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %call13 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #8
  tail call void @edac_mc_free(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @sbe_ecc_decode(i32 noundef %cap_high, i32 noundef %cap_low, i32 noundef %cap_ecc, ptr nocapture noundef writeonly %bad_data_bit, ptr nocapture noundef writeonly %bad_ecc_bit) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bad_data_bit to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %bad_data_bit, align 4
  %1 = ptrtoint ptr %bad_ecc_bit to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %bad_ecc_bit, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %i.035.i = phi i32 [ 0, %entry ], [ %inc18.i, %for.end.i.for.body.i_crit_edge ]
  %ecc.034.i = phi i8 [ 0, %entry ], [ %conv16.i, %for.end.i.for.body.i_crit_edge ]
  %mul.i = shl nuw i32 %i.035.i, 1
  %arrayidx.i = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %mul.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = or i32 %mul.i, 1
  %arrayidx2.i = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.i, align 4
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i
  %j.033.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body5.i.for.body5.i_crit_edge ]
  %bit_cnt.032.i = phi i32 [ 0, %for.body.i ], [ %bit_cnt.2.i, %for.body5.i.for.body5.i_crit_edge ]
  %6 = shl nuw i32 1, %j.033.i
  %7 = and i32 %6, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  %shr6.i = lshr i32 %cap_high, %j.033.i
  %and7.i = and i32 %shr6.i, 1
  %xor.i = select i1 %tobool.not.i, i32 0, i32 %and7.i
  %bit_cnt.1.i = xor i32 %xor.i, %bit_cnt.032.i
  %8 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not.i = icmp eq i32 %8, 0
  %shr12.i = lshr i32 %cap_low, %j.033.i
  %and13.i = and i32 %shr12.i, 1
  %xor14.i = select i1 %tobool10.not.i, i32 0, i32 %and13.i
  %bit_cnt.2.i = xor i32 %bit_cnt.1.i, %xor14.i
  %inc.i = add nuw nsw i32 %j.033.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.end.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body5.i

for.end.i:                                        ; preds = %for.body5.i
  %shl.i = shl i32 %bit_cnt.2.i, %i.035.i
  %9 = trunc i32 %shl.i to i8
  %conv16.i = or i8 %ecc.034.i, %9
  %inc18.i = add nuw nsw i32 %i.035.i, 1
  %exitcond36.not.i = icmp eq i32 %inc18.i, 8
  br i1 %exitcond36.not.i, label %calculate_ecc.exit, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

calculate_ecc.exit:                               ; preds = %for.end.i
  %10 = trunc i32 %cap_ecc to i8
  %conv1 = xor i8 %conv16.i, %10
  br label %for.body

for.cond8.preheader:                              ; preds = %for.inc
  %conv12 = zext i8 %conv1 to i32
  %11 = and i32 %conv12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %for.inc15, label %for.cond8.preheader.if.then13_crit_edge

for.cond8.preheader.if.then13_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %calculate_ecc.exit
  %i.036 = phi i32 [ 0, %calculate_ecc.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %rem.i = and i32 %i.036, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %i.036)
  %cmp.i = icmp ult i32 %i.036, 32
  %conv.i = zext i1 %cmp.i to i32
  %arrayidx.i29 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i29, align 4
  %shr.i = lshr i32 %13, %rem.i
  %14 = trunc i32 %shr.i to i8
  %15 = and i8 %14, 1
  %add.i31 = select i1 %cmp.i, i32 3, i32 2
  %arrayidx.i29.1 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31
  %16 = ptrtoint ptr %arrayidx.i29.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i29.1, align 4
  %shr.i.1 = lshr i32 %17, %rem.i
  %shr.i.1.tr = trunc i32 %shr.i.1 to i8
  %18 = shl i8 %shr.i.1.tr, 1
  %19 = and i8 %18, 2
  %conv4.i.1 = or i8 %15, %19
  %add.i31.1 = add nuw nsw i32 %add.i31, 2
  %arrayidx.i29.2 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.1
  %20 = ptrtoint ptr %arrayidx.i29.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i29.2, align 4
  %shr.i.2 = lshr i32 %21, %rem.i
  %shr.i.2.tr = trunc i32 %shr.i.2 to i8
  %22 = shl i8 %shr.i.2.tr, 2
  %23 = and i8 %22, 4
  %conv4.i.2 = or i8 %conv4.i.1, %23
  %add.i31.2 = or i32 %add.i31, 4
  %arrayidx.i29.3 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.2
  %24 = ptrtoint ptr %arrayidx.i29.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i29.3, align 4
  %shr.i.3 = lshr i32 %25, %rem.i
  %shr.i.3.tr = trunc i32 %shr.i.3 to i8
  %26 = shl i8 %shr.i.3.tr, 3
  %27 = and i8 %26, 8
  %conv4.i.3 = or i8 %conv4.i.2, %27
  %add.i31.3 = add nuw nsw i32 %add.i31, 6
  %arrayidx.i29.4 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.3
  %28 = ptrtoint ptr %arrayidx.i29.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i29.4, align 4
  %shr.i.4 = lshr i32 %29, %rem.i
  %shr.i.4.tr = trunc i32 %shr.i.4 to i8
  %30 = shl i8 %shr.i.4.tr, 4
  %31 = and i8 %30, 16
  %conv4.i.4 = or i8 %conv4.i.3, %31
  %add.i31.4 = or i32 %add.i31, 8
  %arrayidx.i29.5 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.4
  %32 = ptrtoint ptr %arrayidx.i29.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i29.5, align 4
  %shr.i.5 = lshr i32 %33, %rem.i
  %shr.i.5.tr = trunc i32 %shr.i.5 to i8
  %34 = shl i8 %shr.i.5.tr, 5
  %35 = and i8 %34, 32
  %conv4.i.5 = or i8 %conv4.i.4, %35
  %add.i31.5 = add nuw nsw i32 %add.i31, 10
  %arrayidx.i29.6 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.5
  %36 = ptrtoint ptr %arrayidx.i29.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i29.6, align 4
  %shr.i.6 = lshr i32 %37, %rem.i
  %shr.i.6.tr = trunc i32 %shr.i.6 to i8
  %38 = shl i8 %shr.i.6.tr, 6
  %39 = and i8 %38, 64
  %conv4.i.6 = or i8 %conv4.i.5, %39
  %add.i31.6 = or i32 %add.i31, 12
  %arrayidx.i29.7 = getelementptr [16 x i32], ptr @ecc_table, i32 0, i32 %add.i31.6
  %40 = ptrtoint ptr %arrayidx.i29.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i29.7, align 4
  %shr.i.7 = lshr i32 %41, %rem.i
  %shr.i.7.tr = trunc i32 %shr.i.7 to i8
  %42 = shl i8 %shr.i.7.tr, 7
  %conv4.i.7 = or i8 %conv4.i.6, %42
  call void @__sanitizer_cov_trace_cmp1(i8 %conv1, i8 %conv4.i.7)
  %cmp6 = icmp eq i8 %conv1, %conv4.i.7
  br i1 %cmp6, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %bad_data_bit to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %i.036, ptr %bad_data_bit, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.cond8.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then13:                                        ; preds = %for.inc15.6.if.then13_crit_edge, %for.inc15.5.if.then13_crit_edge, %for.inc15.4.if.then13_crit_edge, %for.inc15.3.if.then13_crit_edge, %for.inc15.2.if.then13_crit_edge, %for.inc15.1.if.then13_crit_edge, %for.inc15.if.then13_crit_edge, %for.cond8.preheader.if.then13_crit_edge
  %i.137.lcssa = phi i32 [ 0, %for.cond8.preheader.if.then13_crit_edge ], [ 1, %for.inc15.if.then13_crit_edge ], [ 2, %for.inc15.1.if.then13_crit_edge ], [ 3, %for.inc15.2.if.then13_crit_edge ], [ 4, %for.inc15.3.if.then13_crit_edge ], [ 5, %for.inc15.4.if.then13_crit_edge ], [ 6, %for.inc15.5.if.then13_crit_edge ], [ 7, %for.inc15.6.if.then13_crit_edge ]
  %44 = ptrtoint ptr %bad_ecc_bit to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.137.lcssa, ptr %bad_ecc_bit, align 4
  br label %cleanup

for.inc15:                                        ; preds = %for.cond8.preheader
  %45 = and i32 %conv12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1 = icmp eq i32 %45, 0
  br i1 %tobool.not.1, label %for.inc15.1, label %for.inc15.if.then13_crit_edge

for.inc15.if.then13_crit_edge:                    ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.1:                                      ; preds = %for.inc15
  %46 = and i32 %conv12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.2 = icmp eq i32 %46, 0
  br i1 %tobool.not.2, label %for.inc15.2, label %for.inc15.1.if.then13_crit_edge

for.inc15.1.if.then13_crit_edge:                  ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.2:                                      ; preds = %for.inc15.1
  %47 = and i32 %conv12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.3 = icmp eq i32 %47, 0
  br i1 %tobool.not.3, label %for.inc15.3, label %for.inc15.2.if.then13_crit_edge

for.inc15.2.if.then13_crit_edge:                  ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.3:                                      ; preds = %for.inc15.2
  %48 = and i32 %conv12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.4 = icmp eq i32 %48, 0
  br i1 %tobool.not.4, label %for.inc15.4, label %for.inc15.3.if.then13_crit_edge

for.inc15.3.if.then13_crit_edge:                  ; preds = %for.inc15.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.4:                                      ; preds = %for.inc15.3
  %49 = and i32 %conv12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.5 = icmp eq i32 %49, 0
  br i1 %tobool.not.5, label %for.inc15.5, label %for.inc15.4.if.then13_crit_edge

for.inc15.4.if.then13_crit_edge:                  ; preds = %for.inc15.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.5:                                      ; preds = %for.inc15.4
  %50 = and i32 %conv12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.6 = icmp eq i32 %50, 0
  br i1 %tobool.not.6, label %for.inc15.6, label %for.inc15.5.if.then13_crit_edge

for.inc15.5.if.then13_crit_edge:                  ; preds = %for.inc15.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.6:                                      ; preds = %for.inc15.5
  %51 = and i32 %conv12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.7 = icmp eq i32 %51, 0
  br i1 %tobool.not.7, label %for.inc15.6.cleanup_crit_edge, label %for.inc15.6.if.then13_crit_edge

for.inc15.6.if.then13_crit_edge:                  ; preds = %for.inc15.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc15.6.cleanup_crit_edge:                    ; preds = %for.inc15.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc15.6.cleanup_crit_edge, %if.then13, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_data_hi_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 3584
  %4 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %6, %cond.true.i ], [ %5, %cond.false.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.61, i32 noundef %cond.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_data_hi_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !128
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %5 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %data, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_vbase, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 3584
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call i32 @llvm.bswap.i32(i32 %10) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #8, !srcloc !129
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #8, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %count, %if.then.i ], [ %count, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_data_lo_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 3588
  %4 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %6, %cond.true.i ], [ %5, %cond.false.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.61, i32 noundef %cond.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_data_lo_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !128
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %5 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %data, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_vbase, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 3588
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call i32 @llvm.bswap.i32(i32 %10) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #8, !srcloc !129
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #8, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %count, %if.then.i ], [ %count, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_ctrl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_vbase, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 3592
  %4 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  br label %ddr_in32.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  br label %ddr_in32.exit

ddr_in32.exit:                                    ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %6, %cond.true.i ], [ %5, %cond.false.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %data, ptr noundef nonnull @.str.61, i32 noundef %cond.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_mc_inject_ctrl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mattr, ptr noundef %data, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !128
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data, align 1
  %conv = zext i8 %4 to i32
  %5 = add nsw i32 %conv, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %5)
  %6 = icmp ult i32 %5, -10
  br i1 %6, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %data, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %mc_vbase = getelementptr inbounds %struct.fsl_mc_pdata, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %mc_vbase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc_vbase, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 3592
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = load i8, ptr @little_endian, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  call void @arm_heavy_mb() #8
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call i32 @llvm.bswap.i32(i32 %10) #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #8, !srcloc !129
  br label %cleanup

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #8, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %count, %if.then.i ], [ %count, %do.body.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !103, !105, !107, !108, !110, !112, !113, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 502, i32 16}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 513, i32 57}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 517, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fsl_mc_err_probe._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @fsl_mc_err_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 524, i32 3}
!12 = !{ptr @fsl_mc_err_probe._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @fsl_mc_err_probe._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 532, i32 3}
!16 = !{ptr @fsl_mc_err_probe._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @fsl_mc_err_probe._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 540, i32 3}
!20 = !{ptr @fsl_mc_err_probe._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @fsl_mc_err_probe._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 545, i32 2}
!24 = !{ptr @fsl_mc_err_probe._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @fsl_mc_err_probe._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 552, i32 18}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 572, i32 3}
!30 = !{ptr @fsl_mc_err_probe._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fsl_mc_err_probe._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 592, i32 12}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 594, i32 4}
!36 = !{ptr @fsl_mc_err_probe._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_mc_err_probe._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 600, i32 3}
!40 = !{ptr @fsl_mc_err_probe._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_mc_err_probe._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.29, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 605, i32 2}
!44 = !{ptr @fsl_mc_err_probe._entry.28, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @fsl_mc_err_probe._entry_ptr.30, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.32, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 606, i32 2}
!48 = !{ptr @fsl_mc_err_probe._entry.31, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @fsl_mc_err_probe._entry_ptr.33, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 623, i32 2}
!52 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fsl_mc_err_remove._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @fsl_mc_err_remove._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @edac_mc_idx, !56, !"edac_mc_idx", i1 false, i1 false}
!56 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 35, i32 12}
!57 = !{ptr @orig_ddr_err_disable, !58, !"orig_ddr_err_disable", i1 false, i1 false}
!58 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 37, i32 12}
!59 = !{ptr @orig_ddr_err_sbe, !60, !"orig_ddr_err_sbe", i1 false, i1 false}
!60 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 38, i32 12}
!61 = !{ptr @little_endian, !62, !"little_endian", i1 false, i1 false}
!62 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 39, i32 13}
!63 = !{ptr @.str.36, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 296, i32 2}
!65 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @fsl_mc_check._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @fsl_mc_check._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 338, i32 4}
!70 = !{ptr @fsl_mc_check._entry.38, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @fsl_mc_check._entry_ptr.40, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 341, i32 4}
!74 = !{ptr @fsl_mc_check._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @fsl_mc_check._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 344, i32 3}
!78 = !{ptr @fsl_mc_check._entry.44, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @fsl_mc_check._entry_ptr.46, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.48, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 351, i32 2}
!82 = !{ptr @fsl_mc_check._entry.47, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @fsl_mc_check._entry_ptr.49, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 354, i32 2}
!86 = !{ptr @fsl_mc_check._entry.50, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @fsl_mc_check._entry_ptr.52, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 355, i32 2}
!90 = !{ptr @fsl_mc_check._entry.53, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @fsl_mc_check._entry_ptr.55, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 359, i32 3}
!94 = !{ptr @fsl_mc_check._entry.56, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @fsl_mc_check._entry_ptr.58, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.59, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 365, i32 25}
!98 = !{ptr @ecc_table, !99, !"ecc_table", i1 false, i1 false}
!99 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 176, i32 21}
!100 = !{ptr @fsl_ddr_dev_groups, !101, !"fsl_ddr_dev_groups", i1 false, i1 false}
!101 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 166, i32 1}
!102 = !{ptr @fsl_ddr_dev_group, !101, !"fsl_ddr_dev_group", i1 false, i1 false}
!103 = !{ptr @fsl_ddr_dev_attrs, !104, !"fsl_ddr_dev_attrs", i1 false, i1 false}
!104 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 157, i32 26}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 149, i32 8}
!107 = !{ptr @dev_attr_inject_data_hi, !106, !"dev_attr_inject_data_hi", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 65, i32 23}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 151, i32 8}
!112 = !{ptr @dev_attr_inject_data_lo, !111, !"dev_attr_inject_data_lo", i1 false, i1 false}
!113 = !{ptr @.str.63, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/edac/fsl_ddr_edac.c", i32 153, i32 8}
!115 = !{ptr @dev_attr_inject_ctrl, !114, !"dev_attr_inject_ctrl", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i8 0, i8 2}
!126 = !{i64 2152170680}
!127 = !{i64 2154670200}
!128 = !{!"auto-init"}
!129 = !{i64 4629913}
