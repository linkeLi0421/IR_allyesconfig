; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/freescale/pinctrl-imx.c_pt.bc'
source_filename = "../drivers/pinctrl/freescale/pinctrl-imx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_pinctrl_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_pinctrl_probe\09\09\09\09"
module asm "\09.long\09__crc_imx_pinctrl_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+imx_pinctrl_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_pinctrl_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_imx_pinctrl_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_pinctrl_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_pinctrl_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_imx_pinctrl_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.imx_pinctrl = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.imx_pinctrl_soc_info = type { ptr, i32, i32, ptr, i32, i8, i8, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.imx_pin = type { i32, %union.anon.69 }
%union.anon.69 = type { %struct.imx_pin_mmio }
%struct.imx_pin_mmio = type { i32, i16, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_pin_reg = type { i16, i16 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.function_desc = type { ptr, ptr, i32, ptr }
%struct.imx_cfg_params_decode = type { i32, i32, i8, i8 }

@imx_pmx_ops = dso_local global { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @imx_pmx_set, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpr\00", [28 x i8] zeroinitializer }, align 32
@__const.imx_pinctrl_probe.config = private unnamed_addr constant { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8], i32, i32, ptr, i32, i8, i8, [2 x i8], i32, i32, i8, [3 x i8] } { ptr @.str, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, [3 x i8] zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, [3 x i8] zeroinitializer, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer, i32 0, i32 0, i8 0, [3 x i8] zeroinitializer }, align 4
@imx_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 795, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wrong pinctrl info\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pinctrl/freescale/pinctrl-imx.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr = internal global ptr @imx_pinctrl_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,input-sel\00", [18 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 829, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"iomuxc fsl,input-sel property not found\0A\00", [55 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr.9 = internal global ptr @imx_pinctrl_probe._entry.7, section ".printk_index", align 4
@imx_pinctrl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"iomuxc input select base address not found\0A\00", [52 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr.12 = internal global ptr @imx_pinctrl_probe._entry.10, section ".printk_index", align 4
@imx_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr @imx_pin_dbg_show, ptr @imx_dt_node_to_map, ptr @imx_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@imx_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @imx_pinconf_get, ptr @imx_pinconf_set, ptr null, ptr null, ptr @imx_pinconf_dbg_show, ptr @imx_pinconf_group_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ipctl->mutex\00", [18 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"could not register IMX pinctrl driver\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr.16 = internal global ptr @imx_pinctrl_probe._entry.14, section ".printk_index", align 4
@imx_pinctrl_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 878, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"fail to probe dt properties\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr.19 = internal global ptr @imx_pinctrl_probe._entry.17, section ".printk_index", align 4
@imx_pinctrl_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 882, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"initialized IMX pinctrl driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe._entry_ptr.23 = internal global ptr @imx_pinctrl_probe._entry.20, section ".printk_index", align 4
@__kstrtab_imx_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pinctrl_probe to i32), ptr @__kstrtab_imx_pinctrl_probe, ptr @__kstrtabns_imx_pinctrl_probe }, section "___ksymtab_gpl+imx_pinctrl_probe", align 4
@imx_pinctrl_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr @imx_pinctrl_suspend, ptr @imx_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_imx_pinctrl_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_pinctrl_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_pinctrl_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_pinctrl_pm_ops to i32), ptr @__kstrtab_imx_pinctrl_pm_ops, ptr @__kstrtabns_imx_pinctrl_pm_ops }, section "___ksymtab_gpl+imx_pinctrl_pm_ops", align 4
@__UNIQUE_ID_author235 = internal constant [55 x i8] c"pinctrl_imx.author=Dong Aisheng <aisheng.dong@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [55 x i8] c"pinctrl_imx.description=NXP i.MX common pinctrl driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [55 x i8] c"pinctrl_imx.file=drivers/pinctrl/freescale/pinctrl-imx\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [27 x i8] c"pinctrl_imx.license=GPL v2\00", section ".modinfo", align 1
@imx_pmx_set.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinctrl_imx\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"imx_pmx_set\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"enable function %s group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_pmx_set_one_pin_mmio\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pin(%s) does not support mux function\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"write: offset 0x%x val 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.3, ptr @.str.29, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.27, ptr @.str.3, ptr @.str.30, i8 0, i8 58, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"==>select_input: offset 0x%x val 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@imx_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to find group for node %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_dt_node_to_map\00", [45 x i8] zeroinitializer }, align 32
@imx_dt_node_to_map._entry_ptr = internal global ptr @imx_dt_node_to_map._entry, section ".printk_index", align 4
@imx_dt_node_to_map.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 0, i8 35, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"maps: function %s group %s num %d\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_pinconf_get_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 358, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Pin(%s) does not support config function\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_pinconf_get_mmio\00", [43 x i8] zeroinitializer }, align 32
@imx_pinconf_get_mmio._entry_ptr = internal global ptr @imx_pinconf_get_mmio._entry, section ".printk_index", align 4
@imx_pinconf_set_mmio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.37, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_pinconf_set_mmio\00", [43 x i8] zeroinitializer }, align 32
@imx_pinconf_set_mmio._entry_ptr = internal global ptr @imx_pinconf_set_mmio._entry, section ".printk_index", align 4
@imx_pinconf_set_mmio.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinconf set pin %s\0A\00", [44 x i8] zeroinitializer }, align 32
@imx_pinconf_set_mmio.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.37, ptr @.str.3, ptr @.str.29, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@imx_pinconf_set_mmio.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.37, ptr @.str.3, ptr @.str.39, i8 0, i8 103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"write: offset 0x%x val 0x%lx\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_pinconf_dbg_show._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 447, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get %s pinconf\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_pinconf_dbg_show\00", [43 x i8] zeroinitializer }, align 32
@imx_pinconf_dbg_show._entry_ptr = internal global ptr @imx_pinconf_dbg_show._entry, section ".printk_index", align 4
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%lx\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"  %s: 0x%lx\0A\00", [19 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 744, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no functions defined\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imx_pinctrl_probe_dt\00", [43 x i8] zeroinitializer }, align 32
@imx_pinctrl_probe_dt._entry_ptr = internal global ptr @imx_pinctrl_probe_dt._entry, section ".printk_index", align 4
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl,pins\00", [23 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_functions.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 0, i8 -93, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imx_pinctrl_parse_functions\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parse function(%d): %pOFn\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 664, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no groups defined in %pOF\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_functions._entry_ptr = internal global ptr @imx_pinctrl_parse_functions._entry, section ".printk_index", align 4
@imx_pinctrl_parse_groups.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.52, ptr @.str.3, ptr @.str.53, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_pinctrl_parse_groups\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"group(%d): %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.52, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no fsl,pins and pins property in node %pOF\0A\00", [52 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_groups._entry_ptr = internal global ptr @imx_pinctrl_parse_groups._entry, section ".printk_index", align 4
@imx_pinctrl_parse_groups._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.3, i32 616, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid fsl,pins or pins property in node %pOF\0A\00", [48 x i8] zeroinitializer }, align 32
@imx_pinctrl_parse_groups._entry_ptr.58 = internal global ptr @imx_pinctrl_parse_groups._entry.56, section ".printk_index", align 4
@imx_pinctrl_parse_pin_mmio.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.24, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"imx_pinctrl_parse_pin_mmio\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: 0x%x 0x%08lx\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant [12 x i8] c"imx_pmx_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 286, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 786, i32 42 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 795, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 826, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 829, i32 5 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 836, i32 5 }
@___asan_gen_.100 = private unnamed_addr constant [14 x i8] c"imx_pctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 154, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"imx_pinconf_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 491, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 863, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 872, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 878, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 882, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [19 x i8] c"imx_pinctrl_pm_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 902, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 266, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 175, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 187, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 233, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 53, i32 16 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 75, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 142, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 357, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 392, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 397, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 411, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 446, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 448, i32 16 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 461, i32 16 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 475, i32 14 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 487, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 744, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 708, i32 42 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 654, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 664, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 579, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 606, i32 30 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 608, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 616, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.263 = private constant [43 x i8] c"../drivers/pinctrl/freescale/pinctrl-imx.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 564, i32 2 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__ksymtab_imx_pinctrl_pm_ops, ptr @__ksymtab_imx_pinctrl_probe, ptr @imx_dt_node_to_map._entry, ptr @imx_dt_node_to_map._entry_ptr, ptr @imx_pinconf_dbg_show._entry, ptr @imx_pinconf_dbg_show._entry_ptr, ptr @imx_pinconf_get_mmio._entry, ptr @imx_pinconf_get_mmio._entry_ptr, ptr @imx_pinconf_set_mmio._entry, ptr @imx_pinconf_set_mmio._entry_ptr, ptr @imx_pinctrl_parse_functions._entry, ptr @imx_pinctrl_parse_functions._entry_ptr, ptr @imx_pinctrl_parse_groups._entry, ptr @imx_pinctrl_parse_groups._entry.56, ptr @imx_pinctrl_parse_groups._entry_ptr, ptr @imx_pinctrl_parse_groups._entry_ptr.58, ptr @imx_pinctrl_probe._entry, ptr @imx_pinctrl_probe._entry.10, ptr @imx_pinctrl_probe._entry.14, ptr @imx_pinctrl_probe._entry.17, ptr @imx_pinctrl_probe._entry.20, ptr @imx_pinctrl_probe._entry.7, ptr @imx_pinctrl_probe._entry_ptr, ptr @imx_pinctrl_probe._entry_ptr.12, ptr @imx_pinctrl_probe._entry_ptr.16, ptr @imx_pinctrl_probe._entry_ptr.19, ptr @imx_pinctrl_probe._entry_ptr.23, ptr @imx_pinctrl_probe._entry_ptr.9, ptr @imx_pinctrl_probe_dt._entry, ptr @imx_pinctrl_probe_dt._entry_ptr, ptr @imx_pmx_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @imx_pctrl_ops, ptr @imx_pinconf_ops, ptr @imx_pinctrl_probe.__key, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @imx_pinctrl_pm_ops, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinconf_get_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinconf_set_mmio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinconf_dbg_show._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_parse_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_parse_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_pinctrl_parse_groups._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_get_function_groups(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pmx_set(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %call2 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pmx_set.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pmx_set, %do.end)) #7
          to label %if.then12 [label %do.end], !srcloc !154

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call3, align 4
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pmx_set.__UNIQUE_ID_ddebug228, ptr noundef %5, ptr noundef nonnull @.str.26, ptr noundef %7, ptr noundef %9) #7
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp41.not = icmp eq i32 %3, 0
  br i1 %cmp41.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %data = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.imx_pin, ptr %13, i32 %i.042
  tail call fastcc void @imx_pmx_set_one_pin_mmio(ptr noundef %call, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @imx_pinctrl_probe(ptr noundef %pdev, ptr noundef %info) #1 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %config = alloca %struct.regmap_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 172, ptr nonnull %config) #7
  %0 = call ptr @memcpy(ptr %config, ptr @__const.imx_pinctrl_probe.config, i32 172)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %tobool1.not = icmp eq ptr %4, null
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %lor.lhs.false2

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %npins = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 1
  %5 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false2.do.end_crit_edge, label %if.end

lor.lhs.false2.do.end_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false2.do.end_crit_edge, %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %gpr_compatible = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %gpr_compatible to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpr_compatible, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %if.then6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %8) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6.if.end13_crit_edge, label %if.then9

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @regmap_attach_dev(ptr noundef %dev, ptr noundef %call, ptr noundef nonnull %config) #7
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.then6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #7
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end59_crit_edge

if.end18.if.end59_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then20:                                        ; preds = %if.end18
  %11 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %npins, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #7
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !155

devm_kmalloc_array.exit.thread:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %pin_regs185 = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %pin_regs185 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %pin_regs185, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.then20
  %16 = extractvalue { i32, i1 } %13, 0
  %call5.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %16, i32 noundef 3264) #7
  %pin_regs = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %pin_regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i, ptr %pin_regs, align 4
  %tobool25.not = icmp eq ptr %call5.i, null
  br i1 %tobool25.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %18 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp189.not = icmp eq i32 %19, 0
  br i1 %cmp189.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0190 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %20 = ptrtoint ptr %pin_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pin_regs, align 4
  %arrayidx = getelementptr %struct.imx_pin_reg, ptr %21, i32 %i.0190
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %arrayidx, align 2
  %23 = load ptr, ptr %pin_regs, align 4
  %conf_reg = getelementptr %struct.imx_pin_reg, ptr %23, i32 %i.0190, i32 1
  %24 = ptrtoint ptr %conf_reg to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %conf_reg, align 2
  %inc = add nuw i32 %i.0190, 1
  %25 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call32 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call32, ptr %base, align 4
  %cmp.i175 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then35, label %if.end38

if.then35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %for.end
  %call.i176 = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i176, null
  br i1 %tobool.i.not, label %if.end38.if.end59_crit_edge, label %if.then40

if.end38.if.end59_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then40:                                        ; preds = %if.end38
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %29 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i177 = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end46

of_parse_phandle.exit:                            ; preds = %if.then40
  %30 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool42.not = icmp eq ptr %31, null
  br i1 %tobool42.not, label %of_parse_phandle.exit.do.end46_crit_edge, label %if.end48

of_parse_phandle.exit.do.end46_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end46

do.end46:                                         ; preds = %of_parse_phandle.exit.do.end46_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end48:                                         ; preds = %of_parse_phandle.exit
  %call49 = call ptr @of_iomap(ptr noundef nonnull %31, i32 noundef 0) #7
  %input_sel_base = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %input_sel_base to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call49, ptr %input_sel_base, align 4
  call void @of_node_put(ptr noundef nonnull %31) #7
  %tobool51.not = icmp eq ptr %call49, null
  br i1 %tobool51.not, label %do.end55, label %if.end48.if.end59_crit_edge

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end59:                                         ; preds = %if.end48.if.end59_crit_edge, %if.end38.if.end59_crit_edge, %if.end18.if.end59_crit_edge
  %call.i180 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #7
  %tobool62.not = icmp eq ptr %call.i180, null
  br i1 %tobool62.not, label %if.end59.cleanup_crit_edge, label %if.end64

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end64:                                         ; preds = %if.end59
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i181 = icmp eq ptr %34, null
  br i1 %tobool.not.i181, label %if.end.i182, label %if.end64.dev_name.exit_crit_edge

if.end64.dev_name.exit_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i182:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i182, %if.end64.dev_name.exit_crit_edge
  %retval.0.i183 = phi ptr [ %36, %if.end.i182 ], [ %34, %if.end64.dev_name.exit_crit_edge ]
  %37 = ptrtoint ptr %call.i180 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %retval.0.i183, ptr %call.i180, align 4
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %pins68 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 1
  %40 = ptrtoint ptr %pins68 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %pins68, align 4
  %41 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %npins, align 4
  %npins70 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 2
  %43 = ptrtoint ptr %npins70 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %npins70, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 3
  %44 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @imx_pctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 4
  %45 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @imx_pmx_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 5
  %46 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @imx_pinconf_ops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 6
  %47 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %owner, align 4
  %custom_params = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 7
  %48 = ptrtoint ptr %custom_params to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %custom_params, align 4
  %custom_params71 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 8
  %50 = ptrtoint ptr %custom_params71 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %custom_params71, align 4
  %num_custom_params = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 8
  %51 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_custom_params, align 4
  %num_custom_params72 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i180, i32 0, i32 7
  %53 = ptrtoint ptr %num_custom_params72 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %num_custom_params72, align 4
  %gpio_set_direction = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %info, i32 0, i32 12
  %54 = ptrtoint ptr %gpio_set_direction to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpio_set_direction, align 4
  store ptr %55, ptr getelementptr inbounds (%struct.pinmux_ops, ptr @imx_pmx_ops, i32 0, i32 8), align 4
  %mutex = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @imx_pinctrl_probe.__key) #7
  %info76 = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %info76 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %info, ptr %info76, align 4
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %58 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pctl = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 1
  %call80 = call i32 @devm_pinctrl_register_and_init(ptr noundef %dev, ptr noundef nonnull %call.i180, ptr noundef nonnull %call.i, ptr noundef %pctl) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end87:                                         ; preds = %dev_name.exit
  %call88 = call fastcc i32 @imx_pinctrl_probe_dt(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %do.end98, label %do.end93

do.end93:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup

do.end98:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21) #10
  %59 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pctl, align 4
  %call101 = call i32 @pinctrl_enable(ptr noundef %60) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end98, %do.end93, %do.end85, %if.end59.cleanup_crit_edge, %do.end55, %do.end46, %if.then35, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call80, %do.end85 ], [ %call88, %do.end93 ], [ %call101, %do.end98 ], [ %28, %if.then35 ], [ -12, %do.end55 ], [ -22, %do.end46 ], [ -22, %do.end ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ -12, %if.end59.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 172, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_attach_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_pinctrl_probe_dt(ptr noundef %pdev, ptr noundef %ipctl) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %pctl1 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 1
  %2 = ptrtoint ptr %pctl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not31.i = icmp eq ptr %call.i, null
  br i1 %cmp.not31.i, label %if.end.for.body.lr.ph_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

for.body.i:                                       ; preds = %for.inc10.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %function_np.032.i = phi ptr [ %call11.i, %for.inc10.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %function_np.032.i, ptr noundef nonnull @.str.48, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i, label %imx_pinctrl_dt_is_flat_functions.exit.thread110

imx_pinctrl_dt_is_flat_functions.exit.thread110:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %function_np.032.i) #7
  br label %for.body.lr.ph

if.end.i:                                         ; preds = %for.body.i
  %call2.i = tail call ptr @of_get_next_child(ptr noundef nonnull %function_np.032.i, ptr noundef null) #7
  %cmp4.not29.i = icmp eq ptr %call2.i, null
  br i1 %cmp4.not29.i, label %if.end.i.for.inc10.i_crit_edge, label %if.end.i.for.body5.i_crit_edge

if.end.i.for.body5.i_crit_edge:                   ; preds = %if.end.i
  br label %for.body5.i

if.end.i.for.inc10.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i

for.body5.i:                                      ; preds = %for.inc.i.for.body5.i_crit_edge, %if.end.i.for.body5.i_crit_edge
  %pinctrl_np.030.i = phi ptr [ %call9.i, %for.inc.i.for.body5.i_crit_edge ], [ %call2.i, %if.end.i.for.body5.i_crit_edge ]
  %call.i24.i = tail call ptr @of_find_property(ptr noundef nonnull %pinctrl_np.030.i, ptr noundef nonnull @.str.48, ptr noundef null) #7
  %tobool.i25.not.i = icmp eq ptr %call.i24.i, null
  br i1 %tobool.i25.not.i, label %for.inc.i, label %if.else

for.inc.i:                                        ; preds = %for.body5.i
  %call9.i = tail call ptr @of_get_next_child(ptr noundef nonnull %function_np.032.i, ptr noundef nonnull %pinctrl_np.030.i) #7
  %cmp4.not.i = icmp eq ptr %call9.i, null
  br i1 %cmp4.not.i, label %for.inc.i.for.inc10.i_crit_edge, label %for.inc.i.for.body5.i_crit_edge

for.inc.i.for.body5.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.inc.i.for.inc10.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc10.i

for.inc10.i:                                      ; preds = %for.inc.i.for.inc10.i_crit_edge, %if.end.i.for.inc10.i_crit_edge
  %call11.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %function_np.032.i) #7
  %cmp.not.i = icmp eq ptr %call11.i, null
  br i1 %cmp.not.i, label %for.inc10.i.for.body.lr.ph_crit_edge, label %for.inc10.i.for.body.i_crit_edge

for.inc10.i.for.body.i_crit_edge:                 ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc10.i.for.body.lr.ph_crit_edge:             ; preds = %for.inc10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.else:                                          ; preds = %for.body5.i
  tail call void @of_node_put(ptr noundef nonnull %pinctrl_np.030.i) #7
  tail call void @of_node_put(ptr noundef nonnull %function_np.032.i) #7
  %call.i84 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i84, null
  br i1 %cmp.not5.i, label %if.else.do.end_crit_edge, label %if.else.for.body.i86_crit_edge

if.else.for.body.i86_crit_edge:                   ; preds = %if.else
  br label %for.body.i86

if.else.do.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i86:                                     ; preds = %for.body.i86.for.body.i86_crit_edge, %if.else.for.body.i86_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i86.for.body.i86_crit_edge ], [ 0, %if.else.for.body.i86_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i86.for.body.i86_crit_edge ], [ %call.i84, %if.else.for.body.i86_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i85 = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i85, label %of_get_child_count.exit, label %for.body.i86.for.body.i86_crit_edge

for.body.i86.for.body.i86_crit_edge:              ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i86

of_get_child_count.exit:                          ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.do.end_crit_edge, label %of_get_child_count.exit.for.body.lr.ph_crit_edge

of_get_child_count.exit.for.body.lr.ph_crit_edge: ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

of_get_child_count.exit.do.end_crit_edge:         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %of_get_child_count.exit.do.end_crit_edge, %if.else.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #10
  br label %cleanup46

for.body.lr.ph:                                   ; preds = %of_get_child_count.exit.for.body.lr.ph_crit_edge, %for.inc10.i.for.body.lr.ph_crit_edge, %imx_pinctrl_dt_is_flat_functions.exit.thread110, %if.end.for.body.lr.ph_crit_edge
  %retval.0.i109 = phi i1 [ false, %of_get_child_count.exit.for.body.lr.ph_crit_edge ], [ true, %imx_pinctrl_dt_is_flat_functions.exit.thread110 ], [ true, %if.end.for.body.lr.ph_crit_edge ], [ true, %for.inc10.i.for.body.lr.ph_crit_edge ]
  %nfuncs.0 = phi i32 [ %inc.i, %of_get_child_count.exit.for.body.lr.ph_crit_edge ], [ 1, %imx_pinctrl_dt_is_flat_functions.exit.thread110 ], [ 1, %if.end.for.body.lr.ph_crit_edge ], [ 1, %for.inc10.i.for.body.lr.ph_crit_edge ]
  %mutex = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 7
  %pin_function_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end14.for.body_crit_edge ]
  %call.i87 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i87, null
  br i1 %tobool12.not, label %for.body.cleanup46_crit_edge, label %if.end14

for.body.cleanup46_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end14:                                         ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %call15 = tail call i32 @radix_tree_insert(ptr noundef %pin_function_tree, i32 noundef %i.0120, ptr noundef nonnull %call.i87) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %inc = add nuw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, %nfuncs.0
  br i1 %exitcond.not, label %for.end, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end14
  %num_functions = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %num_functions to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %nfuncs.0, ptr %num_functions, align 4
  %group_index = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 6
  %5 = ptrtoint ptr %group_index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %group_index, align 4
  br i1 %retval.0.i109, label %if.then18, label %if.else20

if.then18:                                        ; preds = %for.end
  %call.i88 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not5.i89 = icmp eq ptr %call.i88, null
  br i1 %cmp.not5.i89, label %if.then18.if.then33_crit_edge, label %if.then18.for.body.i95_crit_edge

if.then18.for.body.i95_crit_edge:                 ; preds = %if.then18
  br label %for.body.i95

if.then18.if.then33_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

for.body.i95:                                     ; preds = %for.body.i95.for.body.i95_crit_edge, %if.then18.for.body.i95_crit_edge
  %num.07.i90 = phi i32 [ %inc.i92, %for.body.i95.for.body.i95_crit_edge ], [ 0, %if.then18.for.body.i95_crit_edge ]
  %child.06.i91 = phi ptr [ %call1.i93, %for.body.i95.for.body.i95_crit_edge ], [ %call.i88, %if.then18.for.body.i95_crit_edge ]
  %inc.i92 = add i32 %num.07.i90, 1
  %call1.i93 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i91) #7
  %cmp.not.i94 = icmp eq ptr %call1.i93, null
  br i1 %cmp.not.i94, label %for.body.i95.if.then33_crit_edge, label %for.body.i95.for.body.i95_crit_edge

for.body.i95.for.body.i95_crit_edge:              ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i95

for.body.i95.if.then33_crit_edge:                 ; preds = %for.body.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.else20:                                        ; preds = %for.end
  %num_groups21 = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %num_groups21 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_groups21, align 4
  %call22 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp24.not121 = icmp eq ptr %call22, null
  br i1 %cmp24.not121, label %if.else20.if.else35_crit_edge, label %if.else20.for.body25_crit_edge

if.else20.for.body25_crit_edge:                   ; preds = %if.else20
  br label %for.body25

if.else20.if.else35_crit_edge:                    ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

for.body25:                                       ; preds = %of_get_child_count.exit107.for.body25_crit_edge, %if.else20.for.body25_crit_edge
  %child.0122 = phi ptr [ %call29, %of_get_child_count.exit107.for.body25_crit_edge ], [ %call22, %if.else20.for.body25_crit_edge ]
  %call.i98 = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0122, ptr noundef null) #7
  %cmp.not5.i99 = icmp eq ptr %call.i98, null
  br i1 %cmp.not5.i99, label %for.body25.of_get_child_count.exit107_crit_edge, label %for.body25.for.body.i105_crit_edge

for.body25.for.body.i105_crit_edge:               ; preds = %for.body25
  br label %for.body.i105

for.body25.of_get_child_count.exit107_crit_edge:  ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit107

for.body.i105:                                    ; preds = %for.body.i105.for.body.i105_crit_edge, %for.body25.for.body.i105_crit_edge
  %num.07.i100 = phi i32 [ %inc.i102, %for.body.i105.for.body.i105_crit_edge ], [ 0, %for.body25.for.body.i105_crit_edge ]
  %child.06.i101 = phi ptr [ %call1.i103, %for.body.i105.for.body.i105_crit_edge ], [ %call.i98, %for.body25.for.body.i105_crit_edge ]
  %inc.i102 = add i32 %num.07.i100, 1
  %call1.i103 = tail call ptr @of_get_next_child(ptr noundef nonnull %child.0122, ptr noundef nonnull %child.06.i101) #7
  %cmp.not.i104 = icmp eq ptr %call1.i103, null
  br i1 %cmp.not.i104, label %for.body.i105.of_get_child_count.exit107_crit_edge, label %for.body.i105.for.body.i105_crit_edge

for.body.i105.for.body.i105_crit_edge:            ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i105

for.body.i105.of_get_child_count.exit107_crit_edge: ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit107

of_get_child_count.exit107:                       ; preds = %for.body.i105.of_get_child_count.exit107_crit_edge, %for.body25.of_get_child_count.exit107_crit_edge
  %num.0.lcssa.i106 = phi i32 [ 0, %for.body25.of_get_child_count.exit107_crit_edge ], [ %inc.i102, %for.body.i105.of_get_child_count.exit107_crit_edge ]
  %7 = ptrtoint ptr %num_groups21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_groups21, align 4
  %add = add i32 %8, %num.0.lcssa.i106
  store i32 %add, ptr %num_groups21, align 4
  %call29 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0122) #7
  %cmp24.not = icmp eq ptr %call29, null
  br i1 %cmp24.not, label %of_get_child_count.exit107.if.else35_crit_edge, label %of_get_child_count.exit107.for.body25_crit_edge

of_get_child_count.exit107.for.body25_crit_edge:  ; preds = %of_get_child_count.exit107
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body25

of_get_child_count.exit107.if.else35_crit_edge:   ; preds = %of_get_child_count.exit107
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else35

if.then33:                                        ; preds = %for.body.i95.if.then33_crit_edge, %if.then18.if.then33_crit_edge
  %num.0.lcssa.i96 = phi i32 [ 0, %if.then18.if.then33_crit_edge ], [ %inc.i92, %for.body.i95.if.then33_crit_edge ]
  %num_groups = getelementptr inbounds %struct.pinctrl_dev, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %num.0.lcssa.i96, ptr %num_groups, align 4
  tail call fastcc void @imx_pinctrl_parse_functions(ptr noundef nonnull %1, ptr noundef %ipctl, i32 noundef 0)
  br label %cleanup46

if.else35:                                        ; preds = %of_get_child_count.exit107.if.else35_crit_edge, %if.else20.if.else35_crit_edge
  %call36 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp38.not124 = icmp eq ptr %call36, null
  br i1 %cmp38.not124, label %if.else35.cleanup46_crit_edge, label %if.else35.for.body39_crit_edge

if.else35.for.body39_crit_edge:                   ; preds = %if.else35
  br label %for.body39

if.else35.cleanup46_crit_edge:                    ; preds = %if.else35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.else35.for.body39_crit_edge
  %i.1126 = phi i32 [ %inc40, %for.body39.for.body39_crit_edge ], [ 0, %if.else35.for.body39_crit_edge ]
  %child.1125 = phi ptr [ %call43, %for.body39.for.body39_crit_edge ], [ %call36, %if.else35.for.body39_crit_edge ]
  %inc40 = add i32 %i.1126, 1
  tail call fastcc void @imx_pinctrl_parse_functions(ptr noundef nonnull %child.1125, ptr noundef %ipctl, i32 noundef %i.1126)
  %call43 = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.1125) #7
  %cmp38.not = icmp eq ptr %call43, null
  br i1 %cmp38.not, label %for.body39.cleanup46_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

for.body39.cleanup46_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

cleanup46:                                        ; preds = %for.body39.cleanup46_crit_edge, %if.else35.cleanup46_crit_edge, %if.then33, %for.body.cleanup46_crit_edge, %do.end, %entry.cleanup46_crit_edge
  %retval.2 = phi i32 [ -22, %do.end ], [ -19, %entry.cleanup46_crit_edge ], [ 0, %if.then33 ], [ 0, %if.else35.cleanup46_crit_edge ], [ 0, %for.body39.cleanup46_crit_edge ], [ -12, %for.body.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pinctrl_suspend(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctl = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  %call1 = tail call i32 @pinctrl_force_sleep(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pinctrl_resume(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctl = getelementptr inbounds %struct.imx_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctl, align 4
  %call1 = tail call i32 @pinctrl_force_default(ptr noundef %3) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_pmx_set_one_pin_mmio(ptr nocapture noundef readonly %ipctl, ptr nocapture noundef readonly %pin) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %conf = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %pin_regs = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 5
  %4 = ptrtoint ptr %pin_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_regs, align 4
  %arrayidx = getelementptr %struct.imx_pin_reg, ptr %5, i32 %3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp = icmp eq i16 %7, -1
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pmx_set_one_pin_mmio, %cleanup)) #7
          to label %if.then7 [label %cleanup], !srcloc !154

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ipctl, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %11, i32 %3, i32 1
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug224, ptr noundef %9, ptr noundef nonnull @.str.28, ptr noundef %13) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.body47, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %conv
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !156
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %mux_mask = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %mux_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mux_mask, align 4
  %neg = xor i32 %21, -1
  %and17 = and i32 %19, %neg
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %conf, align 4
  %mux_shift = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %mux_shift to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %mux_shift, align 4
  %conv18 = zext i8 %25 to i32
  %shl = shl i32 %23, %conv18
  %or = or i32 %shl, %and17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %26 = tail call i32 @llvm.bswap.i32(i32 %or)
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx, align 2
  %conv24 = sext i16 %30 to i32
  %add.ptr25 = getelementptr i8, ptr %28, i32 %conv24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %26) #7, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pmx_set_one_pin_mmio, %if.end77)) #7
          to label %if.then40 [label %if.end77], !srcloc !154

if.then40:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ipctl, align 4
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 2
  %conv43 = sext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug225, ptr noundef %32, ptr noundef nonnull @.str.29, i32 noundef %conv43, i32 noundef %or) #7
  br label %if.end77

do.body47:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %conf, align 4
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %base51 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 2
  %38 = ptrtoint ptr %base51 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base51, align 4
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx, align 2
  %conv53 = sext i16 %41 to i32
  %add.ptr54 = getelementptr i8, ptr %39, i32 %conv53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %37) #7, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pmx_set_one_pin_mmio, %if.end77)) #7
          to label %if.then69 [label %if.end77], !srcloc !154

if.then69:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ipctl, align 4
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx, align 2
  %conv72 = sext i16 %45 to i32
  %46 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %conf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug226, ptr noundef %43, ptr noundef nonnull @.str.29, i32 noundef %conv72, i32 noundef %47) #7
  br label %if.end77

if.end77:                                         ; preds = %if.then69, %do.body47, %if.then40, %if.then11
  %input_val = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 2
  %48 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %input_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %49)
  %cmp78 = icmp ugt i32 %49, -16777217
  br i1 %cmp78, label %if.then80, label %if.else115

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %shr84 = lshr i32 %49, 8
  %shr87 = lshr i32 %49, 16
  %conv90 = and i32 %shr84, 255
  %notmask = shl nsw i32 -1, %conv90
  %sub = xor i32 %notmask, -1
  %conv92 = and i32 %shr87, 255
  %shl93 = shl i32 %sub, %conv92
  %base96 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 2
  %50 = ptrtoint ptr %base96 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base96, align 4
  %input_reg = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 1
  %52 = ptrtoint ptr %input_reg to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %input_reg, align 4
  %conv97 = zext i16 %53 to i32
  %add.ptr98 = getelementptr i8, ptr %51, i32 %conv97
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #7, !srcloc !156
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %neg102 = xor i32 %shl93, -1
  %and103 = and i32 %55, %neg102
  %conv104 = and i32 %49, 255
  %shl106 = shl i32 %conv104, %conv92
  %or107 = or i32 %and103, %shl106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %56 = tail call i32 @llvm.bswap.i32(i32 %or107)
  %57 = ptrtoint ptr %base96 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base96, align 4
  %59 = ptrtoint ptr %input_reg to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %input_reg, align 4
  %conv113 = zext i16 %60 to i32
  %add.ptr114 = getelementptr i8, ptr %58, i32 %conv113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 %56) #7, !srcloc !159
  br label %cleanup

if.else115:                                       ; preds = %if.end77
  %input_reg116 = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 1
  %61 = ptrtoint ptr %input_reg116 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %input_reg116, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool117.not = icmp eq i16 %62, 0
  br i1 %tobool117.not, label %if.else115.cleanup_crit_edge, label %if.then118

if.else115.cleanup_crit_edge:                     ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then118:                                       ; preds = %if.else115
  %input_sel_base = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 3
  %63 = ptrtoint ptr %input_sel_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input_sel_base, align 4
  %tobool119.not = icmp eq ptr %64, null
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %65 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %input_val, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  br i1 %tobool119.not, label %do.body130, label %do.body121

do.body121:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %input_sel_base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input_sel_base, align 4
  %70 = ptrtoint ptr %input_reg116 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %input_reg116, align 4
  %conv127 = zext i16 %71 to i32
  %add.ptr128 = getelementptr i8, ptr %69, i32 %conv127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr128, i32 %67) #7, !srcloc !159
  br label %do.body139

do.body130:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #9
  %base134 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 2
  %72 = ptrtoint ptr %base134 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base134, align 4
  %74 = ptrtoint ptr %input_reg116 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %input_reg116, align 4
  %conv136 = zext i16 %75 to i32
  %add.ptr137 = getelementptr i8, ptr %73, i32 %conv136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr137, i32 %67) #7, !srcloc !159
  br label %do.body139

do.body139:                                       ; preds = %do.body130, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pmx_set_one_pin_mmio, %cleanup)) #7
          to label %if.then153 [label %cleanup], !srcloc !154

if.then153:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ipctl, align 4
  %78 = ptrtoint ptr %input_reg116 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %input_reg116, align 4
  %conv156 = zext i16 %79 to i32
  %80 = ptrtoint ptr %input_val to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %input_val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug227, ptr noundef %77, ptr noundef nonnull @.str.30, i32 noundef %conv156, i32 noundef %81) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then153, %do.body139, %if.else115.cleanup_crit_edge, %if.then80, %if.then7, %do.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_pin_dbg_show(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %offset) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %num_groups.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 4
  %4 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not.i = icmp eq i32 %5, 0
  br i1 %cmp9.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.i:                                       ; preds = %for.body.i.backedge, %entry.for.body.i_crit_edge
  %i.010.i = phi i32 [ %i.010.i.be, %for.body.i.backedge ], [ 0, %entry.for.body.i_crit_edge ]
  %call.i = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %i.010.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.inc.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call2.i = tail call i32 @strcmp(ptr noundef %7, ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end_crit_edge, label %for.inc.i.thread

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.010.i, 1
  %8 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %9)
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.inc.i.for.body.i.backedge_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.i.for.body.i.backedge_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

for.body.i.backedge:                              ; preds = %for.inc.i.thread.for.body.i.backedge_crit_edge, %for.inc.i.for.body.i.backedge_crit_edge
  %i.010.i.be = phi i32 [ %inc.i, %for.inc.i.for.body.i.backedge_crit_edge ], [ %inc.i172, %for.inc.i.thread.for.body.i.backedge_crit_edge ]
  br label %for.body.i

for.inc.i.thread:                                 ; preds = %land.lhs.true.i
  %inc.i172 = add nuw i32 %i.010.i, 1
  %10 = ptrtoint ptr %num_groups.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_groups.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i172, i32 %11)
  %cmp.i173 = icmp ult i32 %inc.i172, %11
  br i1 %cmp.i173, label %for.inc.i.thread.for.body.i.backedge_crit_edge, label %for.inc.i.thread.if.end_crit_edge

for.inc.i.thread.if.end_crit_edge:                ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.inc.i.thread.for.body.i.backedge_crit_edge:   ; preds = %for.inc.i.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.backedge

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.32, ptr noundef %np) #10
  br label %cleanup

if.end:                                           ; preds = %for.inc.i.thread.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %num_pins5 = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %num_pins5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_pins5, align 4
  br i1 %tobool3.not, label %for.cond.preheader, label %if.then4

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp161 = icmp sgt i32 %17, 0
  br i1 %cmp161, label %for.body.lr.ph, label %for.cond.preheader.if.end11_crit_edge

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %data = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %17, 1
  br label %if.end11

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0163 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.body.for.body_crit_edge ]
  %map_num.0162 = phi i32 [ 1, %for.body.lr.ph ], [ %spec.select, %for.body.for.body_crit_edge ]
  %config = getelementptr %struct.imx_pin, ptr %19, i32 %i.0163, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %config, align 4
  %22 = xor i32 %21, -1
  %.lobit.not = lshr i32 %22, 31
  %spec.select = add i32 %.lobit.not, %map_num.0162
  %inc10 = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc10, %17
  br i1 %exitcond.not, label %for.body.if.end11_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.end11:                                         ; preds = %for.body.if.end11_crit_edge, %if.then4, %for.cond.preheader.if.end11_crit_edge
  %map_num.2 = phi i32 [ %add, %if.then4 ], [ 1, %for.cond.preheader.if.end11_crit_edge ], [ %spec.select, %for.body.if.end11_crit_edge ]
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %map_num.2, i32 28) #7
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %if.end11.cleanup_crit_edge, label %if.end7.i, !prof !155

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end11
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3264) #12
  %tobool13.not = icmp eq ptr %call8.i, null
  br i1 %tobool13.not, label %if.end7.i.cleanup_crit_edge, label %if.end15

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end7.i
  %26 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i, ptr %map, align 4
  %27 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %map_num.2, ptr %num_maps, align 4
  %call16 = tail call ptr @of_get_parent(ptr noundef %np) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i, i32 0, i32 2
  %28 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %type, align 8
  %29 = ptrtoint ptr %call16 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call16, align 4
  %data23 = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i, i32 0, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %call8.i, i32 0, i32 4, i32 0, i32 1
  %31 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %function, align 4
  %32 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %np, align 4
  %34 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %data23, align 16
  tail call void @of_node_put(ptr noundef nonnull %call16) #7
  %incdec.ptr = getelementptr %struct.pinctrl_map, ptr %call8.i, i32 1
  %num_pins28 = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %num_pins28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_pins28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp29164 = icmp sgt i32 %36, 0
  br i1 %cmp29164, label %for.body30.lr.ph, label %if.end19.do.body71_crit_edge

if.end19.do.body71_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

for.body30.lr.ph:                                 ; preds = %if.end19
  %data31 = getelementptr inbounds %struct.group_desc, ptr %call.i, i32 0, i32 3
  br label %for.body30

for.body30:                                       ; preds = %for.inc68.for.body30_crit_edge, %for.body30.lr.ph
  %j.0168 = phi i32 [ 0, %for.body30.lr.ph ], [ %j.1, %for.inc68.for.body30_crit_edge ]
  %i.1165 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc69, %for.inc68.for.body30_crit_edge ]
  %37 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data31, align 4
  %arrayidx32 = getelementptr %struct.imx_pin, ptr %38, i32 %i.1165
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and34 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %land.lhs.true, label %for.body30.if.end41_crit_edge

for.body30.if.end41_crit_edge:                    ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %for.body30
  %config37 = getelementptr %struct.imx_pin, ptr %38, i32 %i.1165, i32 1, i32 0, i32 3
  %41 = ptrtoint ptr %config37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %config37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %42)
  %tobool39.not = icmp sgt i32 %42, -1
  br i1 %tobool39.not, label %land.lhs.true.if.end41_crit_edge, label %land.lhs.true.for.inc68_crit_edge

land.lhs.true.for.inc68_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc68

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true.if.end41_crit_edge, %for.body30.if.end41_crit_edge
  %arrayidx42 = getelementptr %struct.pinctrl_map, ptr %incdec.ptr, i32 %j.0168
  %type43 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx42, i32 0, i32 2
  %43 = ptrtoint ptr %type43 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %type43, align 4
  %44 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx32, align 4
  %call45 = tail call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %45) #7
  %data47 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx42, i32 0, i32 4
  %46 = ptrtoint ptr %data47 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call45, ptr %data47, align 4
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  %config59 = getelementptr %struct.imx_pin, ptr %38, i32 %i.1165, i32 1, i32 0, i32 3
  %conf52 = getelementptr %struct.imx_pin, ptr %38, i32 %i.1165, i32 1
  %conf52.sink = select i1 %tobool50.not, ptr %config59, ptr %conf52
  %.sink = select i1 %tobool50.not, i32 1, i32 2
  %49 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data47, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %conf52.sink, ptr %49, align 4
  %51 = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data47, i32 0, i32 2
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %.sink, ptr %51, align 4
  %inc67 = add i32 %j.0168, 1
  br label %for.inc68

for.inc68:                                        ; preds = %if.end41, %land.lhs.true.for.inc68_crit_edge
  %j.1 = phi i32 [ %inc67, %if.end41 ], [ %j.0168, %land.lhs.true.for.inc68_crit_edge ]
  %inc69 = add nuw nsw i32 %i.1165, 1
  %53 = ptrtoint ptr %num_pins28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pins28, align 4
  %cmp29 = icmp slt i32 %inc69, %54
  br i1 %cmp29, label %for.inc68.for.body30_crit_edge, label %for.inc68.do.body71_crit_edge

for.inc68.do.body71_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body71

for.inc68.for.body30_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body30

do.body71:                                        ; preds = %for.inc68.do.body71_crit_edge, %if.end19.do.body71_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_dt_node_to_map.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_dt_node_to_map, %cleanup)) #7
          to label %if.then77 [label %cleanup], !srcloc !154

if.then77:                                        ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #9
  %dev78 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %55 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev78, align 4
  %57 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %map, align 4
  %data79 = getelementptr inbounds %struct.pinctrl_map, ptr %58, i32 0, i32 4
  %function80 = getelementptr inbounds %struct.pinctrl_map, ptr %58, i32 0, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %function80 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %function80, align 4
  %61 = ptrtoint ptr %data79 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_dt_node_to_map.__UNIQUE_ID_ddebug223, ptr noundef %56, ptr noundef nonnull @.str.34, ptr noundef %60, ptr noundef %62, i32 noundef %map_num.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %do.body71, %if.then18, %if.end7.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %if.then18 ], [ -22, %do.end ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %if.then77 ], [ -12, %if.end11.cleanup_crit_edge ], [ 0, %do.body71 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_dt_free_map(ptr nocapture noundef readnone %pctldev, ptr noundef %map, i32 noundef %num_maps) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %map) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %config) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %imx_pinconf_get = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %imx_pinconf_get to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imx_pinconf_get, align 4
  %call2 = tail call i32 %5(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %config) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1.i = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %info1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info1.i, align 4
  %pin_regs.i = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %pin_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pin_regs.i, align 4
  %conf_reg.i = getelementptr %struct.imx_pin_reg, ptr %9, i32 %pin_id, i32 1
  %10 = ptrtoint ptr %conf_reg.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %conf_reg.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %cmp.i = icmp eq i16 %11, -1
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %15, i32 %pin_id, i32 1
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.35, ptr noundef %17) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.else
  %conv.i = sext i16 %11 to i32
  %base.i = getelementptr inbounds %struct.imx_pinctrl, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !156
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %22 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %config, align 4
  %flags.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 2
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.then8.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %mux_mask.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %7, i32 0, i32 4
  %25 = ptrtoint ptr %mux_mask.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mux_mask.i, align 4
  %neg.i = xor i32 %26, -1
  %and9.i = and i32 %21, %neg.i
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and9.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i.cleanup_crit_edge, %do.end.i, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -22, %do.end.i ], [ 0, %if.then8.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_pinconf_set(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %configs, i32 noundef %num_configs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %imx_pinconf_set = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %imx_pinconf_set to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %imx_pinconf_set, align 4
  %call2 = tail call i32 %5(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %configs, i32 noundef %num_configs) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call fastcc i32 @imx_pinconf_set_mmio(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %configs, i32 noundef %num_configs)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin_id) #1 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %config, align 4, !annotation !164
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %imx_pinconf_get = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %imx_pinconf_get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %imx_pinconf_get, align 4
  %call2 = call i32 %6(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef nonnull %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end13_crit_edge, label %do.end

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %call5 = call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %pin_id) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.40, ptr noundef %call5) #10
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %pin_regs = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 5
  %9 = ptrtoint ptr %pin_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin_regs, align 4
  %conf_reg = getelementptr %struct.imx_pin_reg, ptr %10, i32 %pin_id, i32 1
  %11 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %conf_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp = icmp eq i16 %12, -1
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #7
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %conv = sext i16 %12 to i32
  %base = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %conv
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !156
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  %17 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %config, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end8, %if.then.if.end13_crit_edge
  %18 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %config, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %19) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_pinconf_group_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %group) #1 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !164
  %num_groups = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 4
  %1 = ptrtoint ptr %num_groups to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %group)
  %cmp.not = icmp ugt i32 %2, %group
  br i1 %cmp.not, label %if.end, label %entry.cleanup11_crit_edge

entry.cleanup11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

if.end:                                           ; preds = %entry
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.44) #7
  %call = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup11_crit_edge, label %for.cond.preheader

if.end.cleanup11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.cond.preheader:                               ; preds = %if.end
  %data = getelementptr inbounds %struct.group_desc, ptr %call, i32 0, i32 3
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp328 = icmp sgt i32 %4, 0
  br i1 %cmp328, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup11_crit_edge

for.cond.preheader.cleanup11_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %if.end10.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.imx_pin, ptr %6, i32 %i.029
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call5 = call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %8) #7
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call7 = call i32 @imx_pinconf_get(ptr noundef %pctldev, i32 noundef %10, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %for.body.cleanup11_crit_edge

for.body.cleanup11_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

if.end10:                                         ; preds = %for.body
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %config, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, ptr noundef %call5, i32 noundef %12) #7
  %inc = add nuw nsw i32 %i.029, 1
  %13 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_pins, align 4
  %cmp3 = icmp slt i32 %inc, %14
  br i1 %cmp3, label %if.end10.for.body_crit_edge, label %if.end10.cleanup11_crit_edge

if.end10.cleanup11_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup11

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup11:                                        ; preds = %if.end10.cleanup11_crit_edge, %for.body.cleanup11_crit_edge, %for.cond.preheader.cleanup11_crit_edge, %if.end.cleanup11_crit_edge, %entry.cleanup11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imx_pinconf_set_mmio(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %pin_regs = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %pin_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_regs, align 4
  %conf_reg = getelementptr %struct.imx_pin_reg, ptr %3, i32 %pin_id, i32 1
  %4 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %conf_reg, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %cmp = icmp eq i16 %5, -1
  br i1 %cmp, label %do.end, label %do.body4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %pin_id, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.35, ptr noundef %11) #10
  br label %cleanup

do.body4:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinconf_set_mmio, %do.end16)) #7
          to label %if.then9 [label %do.end16], !srcloc !154

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %name13 = getelementptr %struct.pinctrl_pin_desc, ptr %15, i32 %pin_id, i32 1
  %16 = ptrtoint ptr %name13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug229, ptr noundef %13, ptr noundef nonnull @.str.38, ptr noundef %17) #7
  br label %do.end16

do.end16:                                         ; preds = %if.then9, %do.body4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp17126.not = icmp eq i32 %num_configs, 0
  br i1 %cmp17126.not, label %do.end16.cleanup_crit_edge, label %for.body.lr.ph

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end16
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %base = getelementptr inbounds %struct.imx_pinctrl, ptr %call, i32 0, i32 2
  %mux_mask = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0127 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body56, label %if.then20

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %conf_reg, align 2
  %conv22 = sext i16 %23 to i32
  %add.ptr = getelementptr i8, ptr %21, i32 %conv22
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !156
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  %26 = ptrtoint ptr %mux_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mux_mask, align 4
  %and26 = and i32 %27, %25
  %arrayidx27 = getelementptr i32, ptr %configs, i32 %i.0127
  %28 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx27, align 4
  %or = or i32 %and26, %29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %33 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %conf_reg, align 2
  %conv33 = sext i16 %34 to i32
  %add.ptr34 = getelementptr i8, ptr %32, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %30) #7, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinconf_set_mmio, %for.inc)) #7
          to label %if.then49 [label %for.inc], !srcloc !154

if.then49:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  %37 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %conf_reg, align 2
  %conv52 = sext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug230, ptr noundef %36, ptr noundef nonnull @.str.29, i32 noundef %conv52, i32 noundef %or) #7
  br label %for.inc

do.body56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %arrayidx59 = getelementptr i32, ptr %configs, i32 %i.0127
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx59, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %44 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %conf_reg, align 2
  %conv62 = sext i16 %45 to i32
  %add.ptr63 = getelementptr i8, ptr %43, i32 %conv62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %41) #7, !srcloc !159
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinconf_set_mmio, %for.inc)) #7
          to label %if.then78 [label %for.inc], !srcloc !154

if.then78:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %48 = ptrtoint ptr %conf_reg to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %conf_reg, align 2
  %conv81 = sext i16 %49 to i32
  %50 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug231, ptr noundef %47, ptr noundef nonnull @.str.39, i32 noundef %conv81, i32 noundef %51) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then78, %do.body56, %if.then49, %if.then20
  %inc = add nuw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end16.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @radix_tree_insert(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_pinctrl_parse_functions(ptr noundef %np, ptr noundef %ipctl, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pctl1 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 1
  %0 = ptrtoint ptr %pctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pctl1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinctrl_parse_functions.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinctrl_parse_functions, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !154

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinctrl_parse_functions.__UNIQUE_ID_ddebug234, ptr noundef %3, ptr noundef nonnull @.str.50, i32 noundef %index, ptr noundef %np) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call5 = tail call ptr @pinmux_generic_get_function(ptr noundef %1, i32 noundef %index) #7
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %4 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %np, align 4
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call5, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %of_get_child_count.exit.thread, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

of_get_child_count.exit.thread:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %num_group_names4 = getelementptr inbounds %struct.function_desc, ptr %call5, i32 0, i32 2
  %7 = ptrtoint ptr %num_group_names4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_group_names4, align 4
  br label %do.end15

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end8.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end8.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  %num_group_names = getelementptr inbounds %struct.function_desc, ptr %call5, i32 0, i32 2
  %8 = ptrtoint ptr %num_group_names to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc.i, ptr %num_group_names, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %cmp = icmp eq i32 %inc.i, 0
  br i1 %cmp, label %of_get_child_count.exit.do.end15_crit_edge, label %if.end17

of_get_child_count.exit.do.end15_crit_edge:       ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end15

do.end15:                                         ; preds = %of_get_child_count.exit.do.end15_crit_edge, %of_get_child_count.exit.thread
  %9 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.51, ptr noundef %np) #10
  br label %cleanup

if.end17:                                         ; preds = %of_get_child_count.exit
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i, i32 4) #7
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end17.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !155

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end17
  %13 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipctl, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #7
  %tobool21.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool21.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end23

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %devm_kcalloc.exit
  %call24 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp25.not9 = icmp eq ptr %call24, null
  br i1 %cmp25.not9, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %child.010 = phi ptr [ %call27, %for.body.for.body_crit_edge ], [ %call24, %if.end23.for.body_crit_edge ]
  %16 = ptrtoint ptr %child.010 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %child.010, align 4
  %inc = add i32 %i.011, 1
  %arrayidx = getelementptr ptr, ptr %call5.i.i, i32 %i.011
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx, align 4
  %call27 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.010) #7
  %cmp25.not = icmp eq ptr %call27, null
  br i1 %cmp25.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end23.for.end_crit_edge
  %group_names28 = getelementptr inbounds %struct.function_desc, ptr %call5, i32 0, i32 1
  %19 = ptrtoint ptr %group_names28 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %group_names28, align 4
  %call29 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp31.not12 = icmp eq ptr %call29, null
  br i1 %cmp31.not12, label %for.end.cleanup_crit_edge, label %for.body32.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body32.lr.ph:                                 ; preds = %for.end
  %mutex = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 7
  %pin_group_tree = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 3
  %group_index = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 6
  br label %for.body32

for.body32:                                       ; preds = %if.end37.for.body32_crit_edge, %for.body32.lr.ph
  %i.114 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc41, %if.end37.for.body32_crit_edge ]
  %child.113 = phi ptr [ %call29, %for.body32.lr.ph ], [ %call44, %if.end37.for.body32_crit_edge ]
  %20 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ipctl, align 4
  %call.i1 = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef 16, i32 noundef 3520) #7
  %tobool35.not = icmp eq ptr %call.i1, null
  br i1 %tobool35.not, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_node_put(ptr noundef nonnull %child.113) #7
  br label %cleanup

if.end37:                                         ; preds = %for.body32
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %22 = ptrtoint ptr %group_index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %group_index, align 4
  %inc38 = add i32 %23, 1
  store i32 %inc38, ptr %group_index, align 4
  %call39 = tail call i32 @radix_tree_insert(ptr noundef %pin_group_tree, i32 noundef %23, ptr noundef nonnull %call.i1) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %inc41 = add i32 %i.114, 1
  tail call fastcc void @imx_pinctrl_parse_groups(ptr noundef nonnull %child.113, ptr noundef nonnull %call.i1, ptr noundef %ipctl, i32 noundef %i.114)
  %call44 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.113) #7
  %cmp31.not = icmp eq ptr %call44, null
  br i1 %cmp31.not, label %if.end37.cleanup_crit_edge, label %if.end37.for.body32_crit_edge

if.end37.for.body32_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body32

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %if.then36, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end15, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_pinctrl_parse_groups(ptr noundef %np, ptr nocapture noundef %grp, ptr noundef %ipctl, i32 noundef %index) unnamed_addr #1 align 64 {
entry:
  %size = alloca i32, align 4
  %list = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %size, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %list) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinctrl_parse_groups.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinctrl_parse_groups, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !154

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ipctl, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinctrl_parse_groups.__UNIQUE_ID_ddebug233, ptr noundef %4, ptr noundef nonnull @.str.53, i32 noundef %index, ptr noundef %np) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  %and8 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %. = select i1 %tobool9.not, i32 24, i32 20
  %pin_size.0 = select i1 %tobool5.not, i32 %., i32 12
  %generic_pinconf = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %generic_pinconf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %generic_pinconf, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  %sub = add nsw i32 %pin_size.0, -4
  %pin_size.1 = select i1 %tobool14.not, i32 %pin_size.0, i32 %sub
  %9 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %np, align 4
  %11 = ptrtoint ptr %grp to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %grp, align 4
  %call18 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.48, ptr noundef nonnull %size) #7
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %list, align 4
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then20:                                        ; preds = %do.end
  %call21 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.54, ptr noundef nonnull %size) #7
  %13 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %list, align 4
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %do.end26, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ipctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.55, ptr noundef %np) #10
  br label %cleanup

if.end29:                                         ; preds = %if.then20.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %if.end29.do.end35_crit_edge, label %lor.lhs.false

if.end29.do.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

lor.lhs.false:                                    ; preds = %if.end29
  %.frozen = freeze i32 %17
  %pin_size.1.frozen = freeze i32 %pin_size.1
  %div = sdiv i32 %.frozen, %pin_size.1.frozen
  %18 = mul i32 %div, %pin_size.1.frozen
  %rem.decomposed = sub i32 %.frozen, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool31.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool31.not, label %if.end37, label %lor.lhs.false.do.end35_crit_edge

lor.lhs.false.do.end35_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end35

do.end35:                                         ; preds = %lor.lhs.false.do.end35_crit_edge, %if.end29.do.end35_crit_edge
  %19 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipctl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.57, ptr noundef %np) #10
  br label %cleanup

if.end37:                                         ; preds = %lor.lhs.false
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %grp, i32 0, i32 2
  %21 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div, ptr %num_pins, align 4
  %22 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 20) #7
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %if.end37.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !155

if.end37.devm_kcalloc.exit_crit_edge:             ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ipctl, align 4
  %26 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef %26, i32 noundef 3520) #7
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %if.end37.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %if.end37.devm_kcalloc.exit_crit_edge ]
  %data = getelementptr inbounds %struct.group_desc, ptr %grp, i32 0, i32 3
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i.i, ptr %data, align 4
  %28 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_pins, align 4
  %30 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 4) #7
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %devm_kcalloc.exit4.thread, label %devm_kcalloc.exit4, !prof !155

devm_kcalloc.exit4.thread:                        ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %pins7 = getelementptr inbounds %struct.group_desc, ptr %grp, i32 0, i32 1
  %32 = ptrtoint ptr %pins7 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pins7, align 4
  br label %cleanup

devm_kcalloc.exit4:                               ; preds = %devm_kcalloc.exit
  %33 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ipctl, align 4
  %35 = extractvalue { i32, i1 } %30, 0
  %call5.i.i1 = call noalias ptr @devm_kmalloc(ptr noundef %34, i32 noundef %35, i32 noundef 3520) #7
  %pins = getelementptr inbounds %struct.group_desc, ptr %grp, i32 0, i32 1
  %36 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i1, ptr %pins, align 4
  %tobool45.not = icmp eq ptr %call5.i.i1, null
  br i1 %tobool45.not, label %devm_kcalloc.exit4.cleanup_crit_edge, label %lor.lhs.false46

devm_kcalloc.exit4.cleanup_crit_edge:             ; preds = %devm_kcalloc.exit4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false46:                                  ; preds = %devm_kcalloc.exit4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %tobool48.not = icmp eq ptr %38, null
  br i1 %tobool48.not, label %lor.lhs.false46.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false46
  %39 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp9 = icmp sgt i32 %40, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %imx_pinctrl_parse_pin = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr %struct.imx_pin, ptr %42, i32 %i.010
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags, align 4
  %and54 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else59, label %if.then56

if.then56:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %imx_pinctrl_parse_pin to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %imx_pinctrl_parse_pin, align 4
  %47 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pins, align 4
  %arrayidx58 = getelementptr i32, ptr %48, i32 %i.010
  call void %46(ptr noundef %ipctl, ptr noundef %arrayidx58, ptr noundef %arrayidx, ptr noundef nonnull %list) #7
  br label %for.inc

if.else59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pins, align 4
  %arrayidx61 = getelementptr i32, ptr %50, i32 %i.010
  call fastcc void @imx_pinctrl_parse_pin_mmio(ptr noundef %ipctl, ptr noundef %arrayidx61, ptr noundef %arrayidx, ptr noundef nonnull %list, ptr noundef %np)
  br label %for.inc

for.inc:                                          ; preds = %if.else59, %if.then56
  %inc = add nuw nsw i32 %i.010, 1
  %51 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %devm_kcalloc.exit4.cleanup_crit_edge, %devm_kcalloc.exit4.thread, %do.end35, %do.end26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %list) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imx_pinctrl_parse_pin_mmio(ptr nocapture noundef readonly %ipctl, ptr nocapture noundef %pin_id, ptr nocapture noundef %pin, ptr nocapture noundef %list_p, ptr noundef %np) unnamed_addr #1 align 64 {
entry:
  %raw_config.i.i = alloca i32, align 4
  %num_configs.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %conf = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1
  %2 = ptrtoint ptr %list_p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list_p, align 4
  %incdec.ptr = getelementptr i32, ptr %3, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %flags = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  %8 = select i1 %tobool.not, i1 %tobool2.not, i1 false
  %mux_reg.0 = select i1 %8, i32 -1, i32 %5
  %and4 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr7 = getelementptr i32, ptr %3, i32 2
  %9 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  %spec.store.select44 = select i1 %tobool8.not, i32 -1, i32 %10
  br label %if.end11

if.end11:                                         ; preds = %if.else, %entry.if.end11_crit_edge
  %list.0 = phi ptr [ %incdec.ptr7, %if.else ], [ %incdec.ptr, %entry.if.end11_crit_edge ]
  %conf_reg.0 = phi i32 [ %spec.store.select44, %if.else ], [ %mux_reg.0, %entry.if.end11_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mux_reg.0)
  %cmp.not = icmp eq i32 %mux_reg.0, -1
  %conf_reg.0.mux_reg.0 = select i1 %cmp.not, i32 %conf_reg.0, i32 %mux_reg.0
  %cond = lshr i32 %conf_reg.0.mux_reg.0, 2
  %11 = ptrtoint ptr %pin_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %pin_id, align 4
  %pin_regs = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 5
  %12 = ptrtoint ptr %pin_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pin_regs, align 4
  %arrayidx = getelementptr %struct.imx_pin_reg, ptr %13, i32 %cond
  %14 = ptrtoint ptr %pin to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %cond, ptr %pin, align 4
  %conv = trunc i32 %mux_reg.0 to i16
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv, ptr %arrayidx, align 2
  %conv15 = trunc i32 %conf_reg.0 to i16
  %conf_reg16 = getelementptr %struct.imx_pin_reg, ptr %13, i32 %cond, i32 1
  %16 = ptrtoint ptr %conf_reg16 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv15, ptr %conf_reg16, align 2
  %incdec.ptr17 = getelementptr i32, ptr %list.0, i32 1
  %17 = ptrtoint ptr %list.0 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %list.0, align 4
  %conv18 = trunc i32 %18 to i16
  %input_reg = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %input_reg to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18, ptr %input_reg, align 4
  %incdec.ptr19 = getelementptr i32, ptr %list.0, i32 2
  %20 = ptrtoint ptr %incdec.ptr17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %incdec.ptr17, align 4
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %conf, align 4
  %incdec.ptr20 = getelementptr i32, ptr %list.0, i32 3
  %23 = ptrtoint ptr %incdec.ptr19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %incdec.ptr19, align 4
  %input_val = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 2
  %25 = ptrtoint ptr %input_val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %input_val, align 4
  %generic_pinconf = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %generic_pinconf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %generic_pinconf, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not = icmp eq i8 %27, 0
  br i1 %tobool21.not, label %if.else24, label %if.then22

if.then22:                                        ; preds = %if.end11
  %28 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info1, align 4
  %pctl2.i = getelementptr inbounds %struct.imx_pinctrl, ptr %ipctl, i32 0, i32 1
  %30 = ptrtoint ptr %pctl2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pctl2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #7
  %32 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %num_configs.i, align 4, !annotation !164
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #7
  %33 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs.i, align 4, !annotation !164
  %generic_pinconf.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %29, i32 0, i32 6
  %34 = ptrtoint ptr %generic_pinconf.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %generic_pinconf.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i, label %if.then22.imx_pinconf_parse_generic_config.exit_crit_edge, label %if.end.i

if.then22.imx_pinconf_parse_generic_config.exit_crit_edge: ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_pinconf_parse_generic_config.exit

if.end.i:                                         ; preds = %if.then22
  %call.i = call i32 @pinconf_generic_parse_dt_config(ptr noundef %np, ptr noundef %31, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.imx_pinconf_parse_generic_config.exit_crit_edge

if.end.i.imx_pinconf_parse_generic_config.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_pinconf_parse_generic_config.exit

if.end5.i:                                        ; preds = %if.end.i
  %36 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %configs.i, align 4
  %38 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_configs.i, align 4
  %40 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_config.i.i) #7
  %42 = ptrtoint ptr %raw_config.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %raw_config.i.i, align 4
  %num_decodes.i.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %41, i32 0, i32 10
  %43 = ptrtoint ptr %num_decodes.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_decodes.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %39)
  %cmp.i.i = icmp ult i32 %44, %39
  br i1 %cmp.i.i, label %if.end.thread.i.i, label %if.end.i.i, !prof !155

if.end.thread.i.i:                                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 305, i32 noundef 9, ptr noundef null) #7
  %45 = ptrtoint ptr %num_decodes.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i.i = load i32, ptr %num_decodes.i.i, align 4
  br label %for.body.lr.ph.i.i

if.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp2066.not.i.i = icmp eq i32 %39, 0
  br i1 %cmp2066.not.i.i, label %if.end.i.i.for.end39.i.i_crit_edge, label %if.end.i.i.for.body.lr.ph.i.i_crit_edge

if.end.i.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i.i

if.end.i.i.for.end39.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i.for.body.lr.ph.i.i_crit_edge, %if.end.thread.i.i
  %46 = phi i32 [ %.pr.i.i, %if.end.thread.i.i ], [ %44, %if.end.i.i.for.body.lr.ph.i.i_crit_edge ]
  %decodes.i.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %41, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp2563.not.i.i = icmp eq i32 %46, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc37.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.067.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc38.i.i, %for.inc37.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %37, i32 %i.067.i.i
  %47 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i.i = and i32 %48, 255
  %shr.i.i.i = lshr i32 %48, 8
  br i1 %cmp2563.not.i.i, label %for.body.i.i.for.inc37.i.i_crit_edge, label %for.body26.preheader.i.i

for.body.i.i.for.inc37.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc37.i.i

for.body26.preheader.i.i:                         ; preds = %for.body.i.i
  %49 = ptrtoint ptr %decodes.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %decodes.i.i, align 4
  br label %for.body26.i.i

for.body26.i.i:                                   ; preds = %if.end36.i.i.for.body26.i.i_crit_edge, %for.body26.preheader.i.i
  %j.065.i.i = phi i32 [ %inc.i.i, %if.end36.i.i.for.body26.i.i_crit_edge ], [ 0, %for.body26.preheader.i.i ]
  %decode.064.i.i = phi ptr [ %incdec.ptr.i.i, %if.end36.i.i.for.body26.i.i_crit_edge ], [ %50, %for.body26.preheader.i.i ]
  %51 = ptrtoint ptr %decode.064.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %decode.064.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i.i, i32 %52)
  %cmp28.i.i = icmp eq i32 %and.i.i.i, %52
  br i1 %cmp28.i.i, label %if.then29.i.i, label %if.end36.i.i

if.then29.i.i:                                    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %invert.i.i = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %decode.064.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %invert.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %invert.i.i, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool30.not.i.i = icmp eq i8 %54, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %48)
  %tobool32.not.i.i = icmp ult i32 %48, 256
  %lnot.ext34.i.i = zext i1 %tobool32.not.i.i to i32
  %param_val.0.i.i = select i1 %tobool30.not.i.i, i32 %shr.i.i.i, i32 %lnot.ext34.i.i
  %shift.i.i = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %decode.064.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %shift.i.i, align 4
  %conv.i.i = zext i8 %56 to i32
  %shl.i.i = shl i32 %param_val.0.i.i, %conv.i.i
  %mask.i.i = getelementptr inbounds %struct.imx_cfg_params_decode, ptr %decode.064.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shl.i.i, %58
  %59 = ptrtoint ptr %raw_config.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %raw_config.i.i, align 4
  %or.i.i = or i32 %and.i.i, %60
  store i32 %or.i.i, ptr %raw_config.i.i, align 4
  br label %for.inc37.i.i

if.end36.i.i:                                     ; preds = %for.body26.i.i
  %incdec.ptr.i.i = getelementptr %struct.imx_cfg_params_decode, ptr %decode.064.i.i, i32 1
  %inc.i.i = add nuw i32 %j.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %46
  br i1 %exitcond.not.i.i, label %if.end36.i.i.for.inc37.i.i_crit_edge, label %if.end36.i.i.for.body26.i.i_crit_edge

if.end36.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body26.i.i

if.end36.i.i.for.inc37.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc37.i.i

for.inc37.i.i:                                    ; preds = %if.end36.i.i.for.inc37.i.i_crit_edge, %if.then29.i.i, %for.body.i.i.for.inc37.i.i_crit_edge
  %inc38.i.i = add nuw i32 %i.067.i.i, 1
  %exitcond69.not.i.i = icmp eq i32 %inc38.i.i, %39
  br i1 %exitcond69.not.i.i, label %for.inc37.i.i.for.end39.i.i_crit_edge, label %for.inc37.i.i.for.body.i.i_crit_edge

for.inc37.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc37.i.i.for.end39.i.i_crit_edge:            ; preds = %for.inc37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end39.i.i

for.end39.i.i:                                    ; preds = %for.inc37.i.i.for.end39.i.i_crit_edge, %if.end.i.i.for.end39.i.i_crit_edge
  %fixup.i.i = getelementptr inbounds %struct.imx_pinctrl_soc_info, ptr %41, i32 0, i32 11
  %61 = ptrtoint ptr %fixup.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fixup.i.i, align 4
  %tobool40.not.i.i = icmp eq ptr %62, null
  br i1 %tobool40.not.i.i, label %for.end39.i.i.imx_pinconf_decode_generic_config.exit.i_crit_edge, label %if.then41.i.i

for.end39.i.i.imx_pinconf_decode_generic_config.exit.i_crit_edge: ; preds = %for.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %imx_pinconf_decode_generic_config.exit.i

if.then41.i.i:                                    ; preds = %for.end39.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %62(ptr noundef %37, i32 noundef %39, ptr noundef nonnull %raw_config.i.i) #7
  br label %imx_pinconf_decode_generic_config.exit.i

imx_pinconf_decode_generic_config.exit.i:         ; preds = %if.then41.i.i, %for.end39.i.i.imx_pinconf_decode_generic_config.exit.i_crit_edge
  %63 = ptrtoint ptr %raw_config.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %raw_config.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_config.i.i) #7
  br label %imx_pinconf_parse_generic_config.exit

imx_pinconf_parse_generic_config.exit:            ; preds = %imx_pinconf_decode_generic_config.exit.i, %if.end.i.imx_pinconf_parse_generic_config.exit_crit_edge, %if.then22.imx_pinconf_parse_generic_config.exit_crit_edge
  %retval.0.i79 = phi i32 [ %64, %imx_pinconf_decode_generic_config.exit.i ], [ 0, %if.then22.imx_pinconf_parse_generic_config.exit_crit_edge ], [ 0, %if.end.i.imx_pinconf_parse_generic_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #7
  br label %if.end33

if.else24:                                        ; preds = %if.end11
  %incdec.ptr25 = getelementptr i32, ptr %list.0, i32 4
  %65 = ptrtoint ptr %incdec.ptr20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %incdec.ptr20, align 4
  %and26 = and i32 %66, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else24.if.end30_crit_edge, label %if.then28

if.else24.if.end30_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %21, 16
  %67 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or, ptr %conf, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else24.if.end30_crit_edge
  %and31 = and i32 %66, -1073741825
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %imx_pinconf_parse_generic_config.exit
  %and31.sink = phi i32 [ %and31, %if.end30 ], [ %retval.0.i79, %imx_pinconf_parse_generic_config.exit ]
  %list.1 = phi ptr [ %incdec.ptr25, %if.end30 ], [ %incdec.ptr20, %imx_pinconf_parse_generic_config.exit ]
  %config32 = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 3
  %68 = ptrtoint ptr %config32 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %and31.sink, ptr %config32, align 4
  %69 = ptrtoint ptr %list_p to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %list.1, ptr %list_p, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imx_pinctrl_parse_pin_mmio.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imx_pinctrl_parse_pin_mmio, %do.end)) #7
          to label %if.then39 [label %do.end], !srcloc !154

if.then39:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %ipctl to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ipctl, align 4
  %72 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %1, align 4
  %74 = ptrtoint ptr %pin_id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pin_id, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %73, i32 %75, i32 1
  %76 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name, align 4
  %78 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %conf, align 4
  %config42 = getelementptr inbounds %struct.imx_pin, ptr %pin, i32 0, i32 1, i32 0, i32 3
  %80 = ptrtoint ptr %config42 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %config42, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imx_pinctrl_parse_pin_mmio.__UNIQUE_ID_ddebug232, ptr noundef %71, ptr noundef nonnull @.str.60, ptr noundef %77, i32 noundef %79, i32 noundef %81) #7
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.end33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !70, !72, !74, !75, !76, !77, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !99, !101, !102, !103, !104, !106, !108, !110, !112, !114, !115, !116, !117, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !135, !136, !137, !139, !140, !141, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @imx_pmx_ops, !1, !"imx_pmx_ops", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 286, i32 19}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 786, i32 42}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 795, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @imx_pinctrl_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @imx_pinctrl_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 826, i32 37}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 829, i32 5}
!16 = !{ptr @imx_pinctrl_probe._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @imx_pinctrl_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 836, i32 5}
!20 = !{ptr @imx_pinctrl_probe._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @imx_pinctrl_probe._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @imx_pinctrl_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 863, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 872, i32 3}
!27 = !{ptr @imx_pinctrl_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @imx_pinctrl_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 878, i32 3}
!31 = !{ptr @imx_pinctrl_probe._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_pinctrl_probe._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 882, i32 2}
!35 = !{ptr @.str.22, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @imx_pinctrl_probe._entry.20, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @imx_pinctrl_probe._entry_ptr.23, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_imx_pinctrl_probe, !39, !"__ksymtab_imx_pinctrl_probe", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 886, i32 1}
!40 = !{ptr @imx_pinctrl_pm_ops, !41, !"imx_pinctrl_pm_ops", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 902, i32 25}
!42 = !{ptr @__ksymtab_imx_pinctrl_pm_ops, !43, !"__ksymtab_imx_pinctrl_pm_ops", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 906, i32 1}
!44 = !{ptr @__UNIQUE_ID_author235, !45, !"__UNIQUE_ID_author235", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 908, i32 1}
!46 = !{ptr @__UNIQUE_ID_description236, !47, !"__UNIQUE_ID_description236", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 909, i32 1}
!48 = !{ptr @__UNIQUE_ID_file237, !49, !"__UNIQUE_ID_file237", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 910, i32 1}
!50 = !{ptr @__UNIQUE_ID_license238, !49, !"__UNIQUE_ID_license238", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 266, i32 2}
!53 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @imx_pmx_set.__UNIQUE_ID_ddebug228, !52, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 175, i32 3}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug224, !57, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 187, i32 3}
!62 = !{ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug225, !61, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!63 = !{ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug226, !64, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 191, i32 3}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 233, i32 3}
!67 = !{ptr @imx_pmx_set_one_pin_mmio.__UNIQUE_ID_ddebug227, !66, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!68 = !{ptr @imx_pctrl_ops, !69, !"imx_pctrl_ops", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 154, i32 33}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 53, i32 16}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 75, i32 3}
!74 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @imx_dt_node_to_map._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @imx_dt_node_to_map._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 142, i32 2}
!79 = !{ptr @imx_dt_node_to_map.__UNIQUE_ID_ddebug223, !78, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!80 = !{ptr @imx_pinconf_ops, !81, !"imx_pinconf_ops", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 491, i32 33}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 357, i32 3}
!84 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @imx_pinconf_get_mmio._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @imx_pinconf_get_mmio._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 392, i32 3}
!89 = !{ptr @imx_pinconf_set_mmio._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @imx_pinconf_set_mmio._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 397, i32 2}
!93 = !{ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug229, !92, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!94 = !{ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug230, !95, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 407, i32 4}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 411, i32 4}
!98 = !{ptr @imx_pinconf_set_mmio.__UNIQUE_ID_ddebug231, !97, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 446, i32 4}
!101 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @imx_pinconf_dbg_show._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @imx_pinconf_dbg_show._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 448, i32 16}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 461, i32 16}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 475, i32 14}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 487, i32 17}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 744, i32 4}
!114 = !{ptr @.str.47, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @imx_pinctrl_probe_dt._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx_pinctrl_probe_dt._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 708, i32 42}
!119 = !{ptr @.str.49, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 654, i32 2}
!121 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @imx_pinctrl_parse_functions.__UNIQUE_ID_ddebug234, !120, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 664, i32 3}
!125 = !{ptr @imx_pinctrl_parse_functions._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @imx_pinctrl_parse_functions._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 579, i32 2}
!129 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @imx_pinctrl_parse_groups.__UNIQUE_ID_ddebug233, !128, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 606, i32 30}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 608, i32 4}
!135 = !{ptr @imx_pinctrl_parse_groups._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @imx_pinctrl_parse_groups._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 616, i32 3}
!139 = !{ptr @imx_pinctrl_parse_groups._entry.56, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @imx_pinctrl_parse_groups._entry_ptr.58, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/pinctrl/freescale/pinctrl-imx.c", i32 564, i32 2}
!143 = !{ptr @.str.60, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @imx_pinctrl_parse_pin_mmio.__UNIQUE_ID_ddebug232, !142, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2148184870, i64 2148184875, i64 2148184888, i64 2148184932, i64 2148184966, i64 2148184987}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{i64 707647}
!157 = !{i64 2153823974}
!158 = !{i64 2153824201}
!159 = !{i64 707229}
!160 = !{i64 2153827051}
!161 = !{i64 2153830314}
!162 = !{i64 2153830544}
!163 = !{i64 2153839735}
!164 = !{!"auto-init"}
!165 = !{i64 2153852828}
!166 = !{i64 2153844690}
!167 = !{i64 2153844918}
!168 = !{i64 2153847766}
!169 = !{i8 0, i8 2}
