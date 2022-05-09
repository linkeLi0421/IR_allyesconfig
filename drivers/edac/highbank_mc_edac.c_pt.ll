; ModuleID = '/llk/IR_all_yes/drivers/edac/highbank_mc_edac.c_pt.bc'
source_filename = "../drivers/edac/highbank_mc_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hb_mc_settings = type { i32, i32 }
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
%struct.hb_mc_drvdata = type { ptr, ptr }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }

@__initcall__kmod_highbank_mc_edac__236_268_highbank_mc_edac_driver_init6 = internal global ptr @highbank_mc_edac_driver_init, section ".initcall6.init", align 4
@highbank_mc_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @highbank_mc_probe, ptr @highbank_mc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hb_ddr_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_highbank_mc_edac_driver_exit = internal global ptr @highbank_mc_edac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [52 x i8] c"highbank_mc_edac.file=drivers/edac/highbank_mc_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [32 x i8] c"highbank_mc_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [38 x i8] c"highbank_mc_edac.author=Calxeda, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [62 x i8] c"highbank_mc_edac.description=EDAC Driver for Calxeda Highbank\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hb_mc_edac\00", [21 x i8] zeroinitializer }, align 32
@hb_ddr_ctrl_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,hb-ddr-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hb_settings }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"calxeda,ecx-2000-ddr-ctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mw_settings }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 182, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to get mem resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"highbank_mc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/edac/highbank_mc_edac.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry_ptr = internal global ptr @highbank_mc_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@highbank_mc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error while requesting mem region\0A\00", [61 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry_ptr.8 = internal global ptr @highbank_mc_probe._entry.6, section ".printk_index", align 4
@highbank_mc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 196, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to map regs\0A\00", [44 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry_ptr.11 = internal global ptr @highbank_mc_probe._entry.9, section ".printk_index", align 4
@highbank_mc_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"No ECC present, or ECC disabled\0A\00", [63 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry_ptr.14 = internal global ptr @highbank_mc_probe._entry.12, section ".printk_index", align 4
@highbank_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @highbank_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@highbank_mc_probe._entry_ptr.17 = internal global ptr @highbank_mc_probe._entry.15, section ".printk_index", align 4
@highbank_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @highbank_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@highbank_dev_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_inject_ctrl, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_inject_ctrl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @highbank_mc_inject_ctrl }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_ctrl\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@hb_settings = internal global { %struct.hb_mc_settings, [24 x i8] } { %struct.hb_mc_settings { i32 296, i32 384 }, [24 x i8] zeroinitializer }, align 32
@mw_settings = internal global { %struct.hb_mc_settings, [24 x i8] } { %struct.hb_mc_settings { i32 436, i32 536 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.20 = private unnamed_addr constant [24 x i8] c"highbank_mc_edac_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 259, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 263, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [21 x i8] c"hb_ddr_ctrl_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 137, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 182, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 189, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 196, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 207, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [20 x i8] c"highbank_dev_groups\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 236, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"highbank_dev_group\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 120, i32 1 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"highbank_dev_attrs\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 115, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant [21 x i8] c"dev_attr_inject_ctrl\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 113, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 68, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"hb_settings\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 127, i32 30 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"mw_settings\00", align 1
@___asan_gen_.93 = private constant [35 x i8] c"../drivers/edac/highbank_mc_edac.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 132, i32 30 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_highbank_mc_edac_driver_exit, ptr @__initcall__kmod_highbank_mc_edac__236_268_highbank_mc_edac_driver_init6, ptr @highbank_mc_edac_driver_exit, ptr @highbank_mc_probe._entry, ptr @highbank_mc_probe._entry.12, ptr @highbank_mc_probe._entry.15, ptr @highbank_mc_probe._entry.6, ptr @highbank_mc_probe._entry.9, ptr @highbank_mc_probe._entry_ptr, ptr @highbank_mc_probe._entry_ptr.11, ptr @highbank_mc_probe._entry_ptr.14, ptr @highbank_mc_probe._entry_ptr.17, ptr @highbank_mc_probe._entry_ptr.8, ptr @highbank_mc_edac_driver, ptr @.str, ptr @hb_ddr_ctrl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @highbank_dev_groups, ptr @.str.16, ptr @highbank_dev_group, ptr @highbank_dev_attrs, ptr @dev_attr_inject_ctrl, ptr @.str.18, ptr @.str.19, ptr @hb_settings, ptr @mw_settings], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_ddr_ctrl_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_mc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @highbank_dev_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_inject_ctrl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hb_settings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mw_settings to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_mc_edac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @highbank_mc_edac_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @highbank_mc_edac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @highbank_mc_edac_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_mc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #6
  %0 = getelementptr inbounds i8, ptr %layers, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 16)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @hb_ddr_ctrl_of_match, ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %4 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx3 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %arrayidx3, align 4
  %size6 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %size6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %size6, align 4
  %is_virt_csrow8 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %is_virt_csrow8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_virt_csrow8, align 4
  %call9 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 8) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %pdev14 = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 22
  %8 = ptrtoint ptr %pdev14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %pdev14, align 8
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 26
  %9 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pvt_info, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %driver_data.i.i, align 4
  %call16 = call ptr @devres_open_group(ptr noundef %dev, ptr noundef null, i32 noundef 3264) #6
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end12.cleanup_crit_edge, label %if.end19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %err

if.end24:                                         ; preds = %if.end19
  %12 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call20, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call20, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.dev_name.exit_crit_edge

if.end24.dev_name.exit_crit_edge:                 ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.end24.dev_name.exit_crit_edge ]
  %call29 = call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @iomem_resource, i32 noundef %13, i32 noundef %add.i, ptr noundef %retval.0.i) #6
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %do.end34, label %if.end36

do.end34:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  br label %err

if.end36:                                         ; preds = %dev_name.exit
  %20 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call20, align 4
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %end.i, align 4
  %sub.i149 = sub i32 1, %21
  %add.i150 = add i32 %sub.i149, %23
  %call40 = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %21, i32 noundef %add.i150) #6
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %err

if.end47:                                         ; preds = %if.end36
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %add.ptr = getelementptr i8, ptr %call40, i32 %27
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr, ptr %10, align 4
  %int_offset = getelementptr inbounds %struct.hb_mc_settings, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %int_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %int_offset, align 4
  %add.ptr48 = getelementptr i8, ptr %call40, i32 %30
  %mc_int_base = getelementptr inbounds %struct.hb_mc_drvdata, ptr %10, i32 0, i32 1
  %31 = ptrtoint ptr %mc_int_base to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr48, ptr %mc_int_base, align 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %33 = lshr i32 %32, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %and = and i32 %33, 3
  %34 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %if.end59 [
    i32 0, label %if.end47.do.end57_crit_edge
    i32 2, label %if.end47.do.end57_crit_edge162
  ]

if.end47.do.end57_crit_edge162:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

if.end47.do.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end57

do.end57:                                         ; preds = %if.end47.do.end57_crit_edge, %if.end47.do.end57_crit_edge162
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  br label %err

if.end59:                                         ; preds = %if.end47
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 4
  %35 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 32768, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 5
  %36 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 34, ptr %edac_ctl_cap, align 4
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 6
  %37 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 32, ptr %edac_cap, align 8
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %38 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 23
  %42 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %mod_name, align 4
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 2
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 24
  %43 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %compatible, ptr %ctl_name, align 8
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i152 = icmp eq ptr %45, null
  br i1 %tobool.not.i152, label %if.end.i153, label %if.end59.dev_name.exit155_crit_edge

if.end59.dev_name.exit155_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit155

if.end.i153:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  br label %dev_name.exit155

dev_name.exit155:                                 ; preds = %if.end.i153, %if.end59.dev_name.exit155_crit_edge
  %retval.0.i154 = phi ptr [ %47, %if.end.i153 ], [ %45, %if.end59.dev_name.exit155_crit_edge ]
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 25
  %48 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %retval.0.i154, ptr %dev_name, align 4
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 8
  %49 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %scrub_mode, align 8
  %dimms = getelementptr inbounds %struct.mem_ctl_info, ptr %call9, i32 0, i32 21
  %50 = ptrtoint ptr %dimms to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dimms, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %nr_pages = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1048576, ptr %nr_pages, align 4
  %grain = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 5
  %55 = ptrtoint ptr %grain to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8, ptr %grain, align 4
  %dtype = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %dtype to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %dtype, align 8
  %mtype = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 7
  %57 = ptrtoint ptr %mtype to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 15, ptr %mtype, align 4
  %edac_mode = getelementptr inbounds %struct.dimm_info, ptr %53, i32 0, i32 8
  %58 = ptrtoint ptr %edac_mode to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 5, ptr %edac_mode, align 8
  %call64 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call9, ptr noundef nonnull @highbank_dev_groups) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %dev_name.exit155.err_crit_edge, label %if.end67

dev_name.exit155.err_crit_edge:                   ; preds = %dev_name.exit155
  call void @__sanitizer_cov_trace_pc() #8
  br label %err

if.end67:                                         ; preds = %dev_name.exit155
  %call68 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %59 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i157 = icmp eq ptr %60, null
  br i1 %tobool.not.i157, label %if.end.i158, label %if.end67.dev_name.exit160_crit_edge

if.end67.dev_name.exit160_crit_edge:              ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit160

if.end.i158:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  br label %dev_name.exit160

dev_name.exit160:                                 ; preds = %if.end.i158, %if.end67.dev_name.exit160_crit_edge
  %retval.0.i159 = phi ptr [ %62, %if.end.i158 ], [ %60, %if.end67.dev_name.exit160_crit_edge ]
  %call.i = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call68, ptr noundef nonnull @highbank_mc_err_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i159, ptr noundef nonnull %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp73 = icmp slt i32 %call.i, 0
  br i1 %cmp73, label %do.end77, label %if.end79

do.end77:                                         ; preds = %dev_name.exit160
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call68) #9
  %call82 = call ptr @edac_mc_del_mc(ptr noundef %dev) #6
  br label %err

if.end79:                                         ; preds = %dev_name.exit160
  call void @__sanitizer_cov_trace_pc() #8
  call void @devres_close_group(ptr noundef %dev, ptr noundef null) #6
  br label %cleanup

err:                                              ; preds = %do.end77, %dev_name.exit155.err_crit_edge, %do.end57, %do.end45, %do.end34, %do.end
  %res.0 = phi i32 [ -19, %do.end57 ], [ %call64, %dev_name.exit155.err_crit_edge ], [ %call.i, %do.end77 ], [ -12, %do.end45 ], [ -16, %do.end34 ], [ -19, %do.end ]
  %call84 = call i32 @devres_release_group(ptr noundef %dev, ptr noundef null) #6
  call void @edac_mc_free(ptr noundef nonnull %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end79, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %res.0, %err ], [ 0, %if.end79 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_mc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #6
  tail call void @edac_mc_free(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_mc_err_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %mc_int_base = getelementptr inbounds %struct.hb_mc_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mc_int_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc_int_base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6, !srcloc !63
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  %and = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !63
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %shr = lshr i32 %9, 12
  %and8 = and i32 %9, 4095
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 24
  %10 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %dev_id, i16 noundef zeroext 1, i32 noundef %shr, i32 noundef %and8, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %11, ptr noundef nonnull @.str.19) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.do.body_crit_edge, label %if.then11

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %13, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #6, !srcloc !63
  %15 = lshr i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %and20 = and i32 %15, 255
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr24 = getelementptr i8, ptr %17, i32 24
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #6, !srcloc !63
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  %shr28 = lshr i32 %19, 12
  %and29 = and i32 %19, 4095
  %ctl_name30 = getelementptr inbounds %struct.mem_ctl_info, ptr %dev_id, i32 0, i32 24
  %20 = ptrtoint ptr %ctl_name30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctl_name30, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %dev_id, i16 noundef zeroext 1, i32 noundef %shr28, i32 noundef %and29, i32 noundef %and20, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %21, ptr noundef nonnull @.str.19) #6
  br label %do.body

do.body:                                          ; preds = %if.then11, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %mc_int_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mc_int_base, align 4
  %add.ptr33 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %4) #6, !srcloc !70
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @highbank_mc_inject_ctrl(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %synd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %synd) #6
  %0 = ptrtoint ptr %synd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %synd, align 1, !annotation !71
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 16, ptr noundef nonnull %synd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %synd to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %synd, align 1
  %pvt_info.i = getelementptr inbounds %struct.mem_ctl_info, ptr %dev, i32 0, i32 26
  %3 = ptrtoint ptr %pvt_info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pvt_info.i, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !63
  %8 = lshr i32 %7, 24
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and.i = and i32 %8, 3
  %conv.i = zext i8 %2 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or.i = or i32 %shl.i, 256
  %or2.i = or i32 %and.i, %or.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  call void @arm_heavy_mb() #6
  %9 = call i32 @llvm.bswap.i32(i32 %or2.i) #6
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %4, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %synd) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_highbank_mc_edac__236_268_highbank_mc_edac_driver_init6, !1, !"__initcall__kmod_highbank_mc_edac__236_268_highbank_mc_edac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/highbank_mc_edac.c", i32 268, i32 1}
!2 = !{ptr @__exitcall_highbank_mc_edac_driver_exit, !1, !"__exitcall_highbank_mc_edac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file237, !4, !"__UNIQUE_ID_file237", i1 false, i1 false}
!4 = !{!"../drivers/edac/highbank_mc_edac.c", i32 270, i32 1}
!5 = !{ptr @__UNIQUE_ID_license238, !4, !"__UNIQUE_ID_license238", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author239, !7, !"__UNIQUE_ID_author239", i1 false, i1 false}
!7 = !{!"../drivers/edac/highbank_mc_edac.c", i32 271, i32 1}
!8 = !{ptr @__UNIQUE_ID_description240, !9, !"__UNIQUE_ID_description240", i1 false, i1 false}
!9 = !{!"../drivers/edac/highbank_mc_edac.c", i32 272, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/edac/highbank_mc_edac.c", i32 263, i32 11}
!12 = !{ptr @highbank_mc_edac_driver, !13, !"highbank_mc_edac_driver", i1 false, i1 false}
!13 = !{!"../drivers/edac/highbank_mc_edac.c", i32 259, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/edac/highbank_mc_edac.c", i32 182, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @highbank_mc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @highbank_mc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/highbank_mc_edac.c", i32 189, i32 3}
!24 = !{ptr @highbank_mc_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @highbank_mc_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/edac/highbank_mc_edac.c", i32 196, i32 3}
!28 = !{ptr @highbank_mc_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @highbank_mc_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/edac/highbank_mc_edac.c", i32 207, i32 3}
!32 = !{ptr @highbank_mc_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @highbank_mc_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/highbank_mc_edac.c", i32 236, i32 3}
!36 = !{ptr @highbank_mc_probe._entry.15, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @highbank_mc_probe._entry_ptr.17, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @highbank_dev_groups, !39, !"highbank_dev_groups", i1 false, i1 false}
!39 = !{!"../drivers/edac/highbank_mc_edac.c", i32 120, i32 1}
!40 = !{ptr @highbank_dev_group, !39, !"highbank_dev_group", i1 false, i1 false}
!41 = !{ptr @highbank_dev_attrs, !42, !"highbank_dev_attrs", i1 false, i1 false}
!42 = !{!"../drivers/edac/highbank_mc_edac.c", i32 115, i32 26}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/highbank_mc_edac.c", i32 113, i32 8}
!45 = !{ptr @dev_attr_inject_ctrl, !44, !"dev_attr_inject_ctrl", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/edac/highbank_mc_edac.c", i32 68, i32 25}
!48 = !{ptr @hb_ddr_ctrl_of_match, !49, !"hb_ddr_ctrl_of_match", i1 false, i1 false}
!49 = !{!"../drivers/edac/highbank_mc_edac.c", i32 137, i32 34}
!50 = !{ptr @hb_settings, !51, !"hb_settings", i1 false, i1 false}
!51 = !{!"../drivers/edac/highbank_mc_edac.c", i32 127, i32 30}
!52 = !{ptr @mw_settings, !53, !"mw_settings", i1 false, i1 false}
!53 = !{!"../drivers/edac/highbank_mc_edac.c", i32 132, i32 30}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 5654873}
!64 = !{i64 2154666699}
!65 = !{i64 2154654496}
!66 = !{i64 2154655032}
!67 = !{i64 2154655600}
!68 = !{i64 2154656131}
!69 = !{i64 2154656396}
!70 = !{i64 5654455}
!71 = !{!"auto-init"}
!72 = !{i64 2154657113}
!73 = !{i64 2154657353}
